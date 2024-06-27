# Kernel Project: Advanced System Call Interface for RISC-V

## Overview

This project implements a sophisticated system call interface for the RISC-V architecture, providing a robust foundation for kernel-level threading, memory management, and synchronization primitives. The design emphasizes modularity, efficiency, and scalability, making it suitable for educational purposes and further development in professional environments.

## Goals

- **Thread Management**: Implement kernel-level threading with support for thread creation, execution, and termination.
- **Memory Management**: Provide dynamic memory allocation and deallocation with alignment and boundary checks.
- **Synchronization Primitives**: Include semaphores for process synchronization, supporting basic and timed operations.
- **Console I/O**: Facilitate console input and output operations.

## Features

### Memory Management

The memory management module supports dynamic allocation and deallocation of memory blocks aligned to the required memory block size. 

**Functions:**
- `void* mem_alloc(size_t size)`: Allocates memory of the given size.
- `int mem_free(void* memory)`: Frees allocated memory.

### Thread Management

This module provides functionality to create, manage, and terminate threads within the kernel.

**Functions:**
- `int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg)`: Creates a new thread.
- `int thread_exit()`: Exits the current thread.
- `void thread_dispatch()`: Switches context to another thread.

**Classes:**
- `Thread`: Manages thread lifecycle and execution.
- `PeriodicThread`: Supports periodic activation and termination of threads.

### Synchronization Primitives

The semaphore module facilitates synchronization between threads, with support for waiting, signaling, and timed operations.

**Functions:**
- `int sem_open(sem_t *handle, unsigned init)`: Initializes a semaphore.
- `int sem_close(sem_t handle)`: Closes a semaphore.
- `int sem_wait(sem_t id)`: Decrements semaphore, blocking if zero.
- `int sem_signal(sem_t id)`: Increments semaphore, potentially unblocking waiting threads.
- `int sem_timedwait(sem_t id, time_t timeout)`: Waits on a semaphore with a timeout.
- `int sem_trywait(sem_t id)`: Attempts to decrement semaphore without blocking.

**Class:**
- `Semaphore`: Encapsulates semaphore operations.

### Console I/O

This module handles basic console input and output operations.

**Functions:**
- `int getc()`: Reads a character from the console.
- `void putc(char c)`: Writes a character to the console.

**Class:**
- `Console`: Static methods for console I/O operations.

## System Call Handling

The core of the project lies in the system call handling mechanism implemented in `RISCV::handleSupervisorTrap`. It manages various system calls, including memory management, threading, synchronization, and console I/O, ensuring efficient and secure execution of these operations.

## Conclusion

This project provides a comprehensive and extensible framework for kernel-level system call management on the RISC-V architecture. It is designed to be modular, allowing for easy expansion and integration with other kernel components. The emphasis on clear interfaces and robust functionality makes it an excellent foundation for further research, development, and educational purposes.
