# RISC‑V System Call Interface Library

This library provides a lightweight C++ wrapper over low‑level RISC‑V system calls, offering kernel‑level threading, synchronization, and memory management primitives. It is designed for educational kernels or small real‑time operating systems, and highlights clean separation between user‑level APIs (`syscall_cpp.hpp`) and the underlying C entry points (`syscall_c.hpp`), plus direct CSR manipulation in `RISCV.hpp`.

## Overview

At its core, the API exposes `new`/`delete` overrides so that any dynamic allocation funnels through your kernel’s memory allocator. Thread creation, dispatch, and sleeping are offered via the `Thread` class, which hides the raw `thread_create`, `thread_dispatch`, and `time_sleep` system calls behind a simple C++ interface. Synchronization is built on `Semaphore`, wrapping `sem_wait`, `sem_signal`, and their timed variants. For periodic work, you can subclass `PeriodicThread`, implement `periodicActivation()`, and call `terminate()` when finished.

### Memory Management

All dynamic allocations in user code—`new`, `new[]`, `delete`, and `delete[]`—are forwarded to your kernel allocator via the C entry points:

```cpp
extern void *mem_alloc(size_t size);
extern SuccessIndicator mem_free(void *memory);
```

Inside the kernel, the `MemoryAllocator` singleton manages a free list of blocks aligned to `MEM_BLOCK_SIZE`. It splits and merges blocks on demand, returning a raw pointer or an error code. Kernel classes derive from `KernelClass`, whose `operator new` and `operator delete` ensure that kernel objects use `kmalloc` and `kfree` in lieu of the standard heap.

### Threading API

The `Thread` class encapsulates:

```cpp
Thread(Body body, void* arg);
~Thread();
SuccessIndicator start();
static void dispatch();
static SuccessIndicator sleep(time_t);
```

You supply a function pointer `Body` and an argument; `start()` invokes the `thread_create` syscall and schedules your thread. `Thread::dispatch()` forces a voluntary context switch, while `sleep()` blocks for a given number of internal ticks. Underneath, a private `wrapper` function transfers control to your `run()` method, which you can override in subclasses.

For recurring tasks, inherit from `PeriodicThread`, pass the activation period to its protected constructor, and implement `periodicActivation()`. Its `run()` loop automatically waits for the next period, and `terminate()` cleanly stops the cycle.

### Synchronization Primitives

`Semaphore` wraps the kernel’s counting semaphore mechanism:

```cpp
Semaphore(unsigned init = 1);
~Semaphore();
SuccessIndicator wait();
SuccessIndicator signal();
SuccessIndicator timedWait(time_t);
SuccessIndicator tryWait();
```

It holds an opaque `sem_t` handle and converts the raw syscalls into RAII‑friendly methods. Threads blocked on `wait()` will be parked until another thread calls `signal()`. The `timedWait()` variant respects a timeout, and `tryWait()` never blocks.

### CSR and Trap Handling

`RISCV.hpp` abstracts RISC‑V Control and Status Registers (CSRs) and trap handling. You can read or write `scause`, `sepc`, `sstatus`, and `sip` with inline assembly, and set or clear interrupt bits via `maskSetSstatus` and `maskClearSip`. The static methods

```cpp
static void supervisorTrap();
static void handleSupervisorTrap();
static void popSppSpie();
```

are stubs for your trap entry point and dispatcher; they tie into the low‑level exception mechanism by inspecting `scause` and redirecting control flow.

### Kernel Classes and Allocation

Any object inheriting from `KernelClass` allocates memory through `kmalloc(size_t)` and `kfree(void*)`, ensuring kernel objects are placed in privileged memory regions. For example, `KernelSemaphore` extends this base to manage its own wait queue (a `List<KernelThread>`), unblocking threads on `signal()`, or timing them out on `timedWait()`.

```cpp
class KernelSemaphore : public KernelClass {
    void wait();
    void signal();
    void timedWait(time_t);
    int tryWait();
    void close();
    // ...
};
```

It offers fine‑grained control over thread blocking, closing the semaphore (waking all waiters), and inspecting its internal count.

## Building and Integration

Include the headers in your kernel build, link against the corresponding C syscall stubs, and ensure `lib/hw.h` is available to provide the hardware definitions (e.g. `MEM_BLOCK_SIZE`). No standard library dependencies are required beyond the minimal C++ runtime—everything operates with plain pointers, function pointers, and raw integers for speed and predictability.

## Extending the Library

To add a new system call, append an entry to the `ABI_Index` enum in `syscall_c.hpp`, implement the C stub to trap into your kernel, and expose a C++ wrapper in `syscall_cpp.hpp`. For custom kernel objects, subclass `KernelClass` and override allocation as needed. The two‑layer design keeps user‑facing code clean, while giving full control over the low‑level mechanics in your kernel’s source.

```cpp
enum ABI_Index : uint64 {
    // existing entries...
    CUSTOM_SERVICE = 0x50
};

// in syscall_c.cpp
extern SuccessIndicator custom_service(uint64 arg) {
    return callException(CUSTOM_SERVICE, arg, 0, 0, 0);
}
```

With this foundation, you have a modular, efficient, and easily understood syscall interface for building a RISC‑V microkernel or embedded OS.
