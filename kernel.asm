
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	99013103          	ld	sp,-1648(sp) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	648060ef          	jal	ra,80006664 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RISCV14supervisorTrapEv>:
.extern _ZN5RISCV20handleSupervisorTrapEv
.global _ZN5RISCV14supervisorTrapEv
.align 4
_ZN5RISCV14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RISCV20handleSupervisorTrapEv
    80001084:	65d000ef          	jal	ra,80001ee0 <_ZN5RISCV20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN12KernelThread13contextSwitchEPNS_7ContextES1_>:
.global _ZN12KernelThread13contextSwitchEPNS_7ContextES1_
.type _ZN12KernelThread13contextSwitchEPNS_7ContextES1_, @function
_ZN12KernelThread13contextSwitchEPNS_7ContextES1_:
    # a0 = &old->context
    # a1 = &running->context
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    ret
    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z13callException9ABI_Indexmmmm>:
#include "../h/syscall_c.hpp"
#include "../h/KernelThread.hpp"
#include "../test/printing.hpp"
uint64 callException(enum ABI_Index arg0, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00113423          	sd	ra,8(sp)
    8000114c:	00813023          	sd	s0,0(sp)
    80001150:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    80001154:	00000073          	ecall
    if (!KernelThread::running) {
    80001158:	0000b797          	auipc	a5,0xb
    8000115c:	8287b783          	ld	a5,-2008(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001160:	0007b783          	ld	a5,0(a5)
    80001164:	02078463          	beqz	a5,8000118c <_Z13callException9ABI_Indexmmmm+0x48>
        printString("Ha sta je ovo\n");
    }
    return KernelThread::running->getInterruptResult();
    80001168:	0000b797          	auipc	a5,0xb
    8000116c:	8187b783          	ld	a5,-2024(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001170:	0007b503          	ld	a0,0(a5)
    80001174:	00002097          	auipc	ra,0x2
    80001178:	ea8080e7          	jalr	-344(ra) # 8000301c <_ZNK12KernelThread18getInterruptResultEv>
}
    8000117c:	00813083          	ld	ra,8(sp)
    80001180:	00013403          	ld	s0,0(sp)
    80001184:	01010113          	addi	sp,sp,16
    80001188:	00008067          	ret
        printString("Ha sta je ovo\n");
    8000118c:	00008517          	auipc	a0,0x8
    80001190:	e9450513          	addi	a0,a0,-364 # 80009020 <CONSOLE_STATUS+0x10>
    80001194:	00004097          	auipc	ra,0x4
    80001198:	27c080e7          	jalr	636(ra) # 80005410 <_Z11printStringPKc>
    8000119c:	fcdff06f          	j	80001168 <_Z13callException9ABI_Indexmmmm+0x24>

00000000800011a0 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    800011a0:	ff010113          	addi	sp,sp,-16
    800011a4:	00113423          	sd	ra,8(sp)
    800011a8:	00813023          	sd	s0,0(sp)
    800011ac:	01010413          	addi	s0,sp,16
    uint64 numberOfBlocks = size / MEM_BLOCK_SIZE;
    800011b0:	00655593          	srli	a1,a0,0x6
    if (size % MEM_BLOCK_SIZE) {
    800011b4:	03f57513          	andi	a0,a0,63
    800011b8:	00050463          	beqz	a0,800011c0 <_Z9mem_allocm+0x20>
        numberOfBlocks++;
    800011bc:	00158593          	addi	a1,a1,1
    }
    return (void *) callException(MEM_ALLOC, numberOfBlocks, 0, 0, 0);
    800011c0:	00000713          	li	a4,0
    800011c4:	00000693          	li	a3,0
    800011c8:	00000613          	li	a2,0
    800011cc:	00100513          	li	a0,1
    800011d0:	00000097          	auipc	ra,0x0
    800011d4:	f74080e7          	jalr	-140(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    800011d8:	00813083          	ld	ra,8(sp)
    800011dc:	00013403          	ld	s0,0(sp)
    800011e0:	01010113          	addi	sp,sp,16
    800011e4:	00008067          	ret

00000000800011e8 <_Z8mem_freePv>:
int mem_free(void *memory) {
    800011e8:	ff010113          	addi	sp,sp,-16
    800011ec:	00113423          	sd	ra,8(sp)
    800011f0:	00813023          	sd	s0,0(sp)
    800011f4:	01010413          	addi	s0,sp,16
    800011f8:	00050593          	mv	a1,a0
    return (int) callException(MEM_FREE, (uint64) memory, 0, 0, 0);
    800011fc:	00000713          	li	a4,0
    80001200:	00000693          	li	a3,0
    80001204:	00000613          	li	a2,0
    80001208:	00200513          	li	a0,2
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	f38080e7          	jalr	-200(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001214:	0005051b          	sext.w	a0,a0
    80001218:	00813083          	ld	ra,8(sp)
    8000121c:	00013403          	ld	s0,0(sp)
    80001220:	01010113          	addi	sp,sp,16
    80001224:	00008067          	ret

0000000080001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>:

int thread_create(
        thread_t *handle,
        void(*start_routine)(void *),
        void *arg
) {
    80001228:	ff010113          	addi	sp,sp,-16
    8000122c:	00113423          	sd	ra,8(sp)
    80001230:	00813023          	sd	s0,0(sp)
    80001234:	01010413          	addi	s0,sp,16
    80001238:	00060693          	mv	a3,a2
    return (int) callException(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, 0);
    8000123c:	00000713          	li	a4,0
    80001240:	00058613          	mv	a2,a1
    80001244:	00050593          	mv	a1,a0
    80001248:	01100513          	li	a0,17
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	ef8080e7          	jalr	-264(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001254:	0005051b          	sext.w	a0,a0
    80001258:	00813083          	ld	ra,8(sp)
    8000125c:	00013403          	ld	s0,0(sp)
    80001260:	01010113          	addi	sp,sp,16
    80001264:	00008067          	ret

0000000080001268 <_Z11thread_exitv>:

int thread_exit() {
    80001268:	ff010113          	addi	sp,sp,-16
    8000126c:	00113423          	sd	ra,8(sp)
    80001270:	00813023          	sd	s0,0(sp)
    80001274:	01010413          	addi	s0,sp,16
    return (int) callException(THREAD_EXIT, 0, 0, 0, 0);
    80001278:	00000713          	li	a4,0
    8000127c:	00000693          	li	a3,0
    80001280:	00000613          	li	a2,0
    80001284:	00000593          	li	a1,0
    80001288:	01200513          	li	a0,18
    8000128c:	00000097          	auipc	ra,0x0
    80001290:	eb8080e7          	jalr	-328(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001294:	0005051b          	sext.w	a0,a0
    80001298:	00813083          	ld	ra,8(sp)
    8000129c:	00013403          	ld	s0,0(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00113423          	sd	ra,8(sp)
    800012b0:	00813023          	sd	s0,0(sp)
    800012b4:	01010413          	addi	s0,sp,16
    callException(THREAD_DISPATCH, 0, 0, 0, 0);
    800012b8:	00000713          	li	a4,0
    800012bc:	00000693          	li	a3,0
    800012c0:	00000613          	li	a2,0
    800012c4:	00000593          	li	a1,0
    800012c8:	01300513          	li	a0,19
    800012cc:	00000097          	auipc	ra,0x0
    800012d0:	e78080e7          	jalr	-392(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    800012d4:	00813083          	ld	ra,8(sp)
    800012d8:	00013403          	ld	s0,0(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_Z8sem_openPP15KernelSemaphorej>:

int sem_open(
        sem_t *handle,
        unsigned init
) {
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00113423          	sd	ra,8(sp)
    800012ec:	00813023          	sd	s0,0(sp)
    800012f0:	01010413          	addi	s0,sp,16
    return (int) callException(SEM_OPEN, (uint64) handle, (uint64) init, 0, 0);
    800012f4:	00000713          	li	a4,0
    800012f8:	00000693          	li	a3,0
    800012fc:	02059613          	slli	a2,a1,0x20
    80001300:	02065613          	srli	a2,a2,0x20
    80001304:	00050593          	mv	a1,a0
    80001308:	02100513          	li	a0,33
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	e38080e7          	jalr	-456(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001314:	0005051b          	sext.w	a0,a0
    80001318:	00813083          	ld	ra,8(sp)
    8000131c:	00013403          	ld	s0,0(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z9sem_closeP15KernelSemaphore>:

int sem_close(sem_t handle) {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00113423          	sd	ra,8(sp)
    80001330:	00813023          	sd	s0,0(sp)
    80001334:	01010413          	addi	s0,sp,16
    80001338:	00050593          	mv	a1,a0
    return (int) callException(SEM_CLOSE, (uint64) handle, 0, 0, 0);
    8000133c:	00000713          	li	a4,0
    80001340:	00000693          	li	a3,0
    80001344:	00000613          	li	a2,0
    80001348:	02200513          	li	a0,34
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	df8080e7          	jalr	-520(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001354:	0005051b          	sext.w	a0,a0
    80001358:	00813083          	ld	ra,8(sp)
    8000135c:	00013403          	ld	s0,0(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_Z8sem_waitP15KernelSemaphore>:

int sem_wait(sem_t id) {
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00113423          	sd	ra,8(sp)
    80001370:	00813023          	sd	s0,0(sp)
    80001374:	01010413          	addi	s0,sp,16
    80001378:	00050593          	mv	a1,a0
    return (int) callException(SEM_WAIT, (uint64) id, 0, 0, 0);
    8000137c:	00000713          	li	a4,0
    80001380:	00000693          	li	a3,0
    80001384:	00000613          	li	a2,0
    80001388:	02300513          	li	a0,35
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	db8080e7          	jalr	-584(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	00813083          	ld	ra,8(sp)
    8000139c:	00013403          	ld	s0,0(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z10sem_signalP15KernelSemaphore>:

int sem_signal(sem_t id) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00113423          	sd	ra,8(sp)
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	01010413          	addi	s0,sp,16
    800013b8:	00050593          	mv	a1,a0
    return (int) callException(SEM_SIGNAL, (uint64) id, 0, 0, 0);
    800013bc:	00000713          	li	a4,0
    800013c0:	00000693          	li	a3,0
    800013c4:	00000613          	li	a2,0
    800013c8:	02400513          	li	a0,36
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	d78080e7          	jalr	-648(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    800013d4:	0005051b          	sext.w	a0,a0
    800013d8:	00813083          	ld	ra,8(sp)
    800013dc:	00013403          	ld	s0,0(sp)
    800013e0:	01010113          	addi	sp,sp,16
    800013e4:	00008067          	ret

00000000800013e8 <_Z13sem_timedwaitP15KernelSemaphorem>:

int sem_timedwait(
        sem_t id,
        time_t timeout
) {
    800013e8:	ff010113          	addi	sp,sp,-16
    800013ec:	00113423          	sd	ra,8(sp)
    800013f0:	00813023          	sd	s0,0(sp)
    800013f4:	01010413          	addi	s0,sp,16
    800013f8:	00058613          	mv	a2,a1
    return (int) callException(SEM_TIMEDWAIT, (uint64) id, (uint64) timeout, 0, 0);
    800013fc:	00000713          	li	a4,0
    80001400:	00000693          	li	a3,0
    80001404:	00050593          	mv	a1,a0
    80001408:	02500513          	li	a0,37
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	d38080e7          	jalr	-712(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001414:	0005051b          	sext.w	a0,a0
    80001418:	00813083          	ld	ra,8(sp)
    8000141c:	00013403          	ld	s0,0(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z11sem_trywaitP15KernelSemaphore>:

int sem_trywait(sem_t id) {
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00113423          	sd	ra,8(sp)
    80001430:	00813023          	sd	s0,0(sp)
    80001434:	01010413          	addi	s0,sp,16
    80001438:	00050593          	mv	a1,a0
    return (int) callException(SEM_TRYWAIT, (uint64) id, 0, 0, 0);
    8000143c:	00000713          	li	a4,0
    80001440:	00000693          	li	a3,0
    80001444:	00000613          	li	a2,0
    80001448:	02600513          	li	a0,38
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	cf8080e7          	jalr	-776(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813083          	ld	ra,8(sp)
    8000145c:	00013403          	ld	s0,0(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00113423          	sd	ra,8(sp)
    80001470:	00813023          	sd	s0,0(sp)
    80001474:	01010413          	addi	s0,sp,16
    80001478:	00050593          	mv	a1,a0
    return (int) callException(TIME_SLEEP, (uint64) time, 0, 0, 0);
    8000147c:	00000713          	li	a4,0
    80001480:	00000693          	li	a3,0
    80001484:	00000613          	li	a2,0
    80001488:	03100513          	li	a0,49
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	cb8080e7          	jalr	-840(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    80001494:	0005051b          	sext.w	a0,a0
    80001498:	00813083          	ld	ra,8(sp)
    8000149c:	00013403          	ld	s0,0(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z4getcv>:

#include "../lib/console.h"

int getc() {
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00113423          	sd	ra,8(sp)
    800014b0:	00813023          	sd	s0,0(sp)
    800014b4:	01010413          	addi	s0,sp,16
    return (int) callException(GETC, 0, 0, 0, 0);
    800014b8:	00000713          	li	a4,0
    800014bc:	00000693          	li	a3,0
    800014c0:	00000613          	li	a2,0
    800014c4:	00000593          	li	a1,0
    800014c8:	04100513          	li	a0,65
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	c78080e7          	jalr	-904(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
}
    800014d4:	0005051b          	sext.w	a0,a0
    800014d8:	00813083          	ld	ra,8(sp)
    800014dc:	00013403          	ld	s0,0(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z4putcc>:

void putc(char c) {
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00113423          	sd	ra,8(sp)
    800014f0:	00813023          	sd	s0,0(sp)
    800014f4:	01010413          	addi	s0,sp,16
    800014f8:	00050593          	mv	a1,a0
    callException(PUTC, (uint64) c, 0, 0, 0);
    800014fc:	00000713          	li	a4,0
    80001500:	00000693          	li	a3,0
    80001504:	00000613          	li	a2,0
    80001508:	04200513          	li	a0,66
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	c38080e7          	jalr	-968(ra) # 80001144 <_Z13callException9ABI_Indexmmmm>
    80001514:	00813083          	ld	ra,8(sp)
    80001518:	00013403          	ld	s0,0(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_Z41__static_initialization_and_destruction_0ii>:
    return ready.dequeue();
}

void Scheduler::put(KernelThread *thread) {
    ready.enqueue(thread);
}
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00813423          	sd	s0,8(sp)
    8000152c:	01010413          	addi	s0,sp,16
    80001530:	00100793          	li	a5,1
    80001534:	00f50863          	beq	a0,a5,80001544 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret
    80001544:	000107b7          	lui	a5,0x10
    80001548:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000154c:	fef596e3          	bne	a1,a5,80001538 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Element(T *data, Element *next) : data(data), next(next) {}
    };

    Element *head, *tail;

    List() : head(0), tail(0) {}
    80001550:	0000a797          	auipc	a5,0xa
    80001554:	4c078793          	addi	a5,a5,1216 # 8000ba10 <_ZN9Scheduler5readyE>
    80001558:	0007b023          	sd	zero,0(a5)
    8000155c:	0007b423          	sd	zero,8(a5)
    80001560:	fd9ff06f          	j	80001538 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001564 <_ZN9Scheduler3getEv>:
KernelThread *Scheduler::get() {
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	02010413          	addi	s0,sp,32
            head = tail = element;
        }
    }

    T *dequeue() {
        if (!head) {
    80001578:	0000a517          	auipc	a0,0xa
    8000157c:	49853503          	ld	a0,1176(a0) # 8000ba10 <_ZN9Scheduler5readyE>
    80001580:	04050263          	beqz	a0,800015c4 <_ZN9Scheduler3getEv+0x60>
            return 0;
        }
        Element *element = head;
        head = head->next;
    80001584:	00853783          	ld	a5,8(a0)
    80001588:	0000a717          	auipc	a4,0xa
    8000158c:	48f73423          	sd	a5,1160(a4) # 8000ba10 <_ZN9Scheduler5readyE>
        if (!head) {
    80001590:	02078463          	beqz	a5,800015b8 <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T *result = element->data;
    80001594:	00053483          	ld	s1,0(a0)
        delete element;
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	8a4080e7          	jalr	-1884(ra) # 80001e3c <_ZN11KernelClassdlEPv>
}
    800015a0:	00048513          	mv	a0,s1
    800015a4:	01813083          	ld	ra,24(sp)
    800015a8:	01013403          	ld	s0,16(sp)
    800015ac:	00813483          	ld	s1,8(sp)
    800015b0:	02010113          	addi	sp,sp,32
    800015b4:	00008067          	ret
            tail = 0;
    800015b8:	0000a797          	auipc	a5,0xa
    800015bc:	4607b023          	sd	zero,1120(a5) # 8000ba18 <_ZN9Scheduler5readyE+0x8>
    800015c0:	fd5ff06f          	j	80001594 <_ZN9Scheduler3getEv+0x30>
            return 0;
    800015c4:	00050493          	mv	s1,a0
    return ready.dequeue();
    800015c8:	fd9ff06f          	j	800015a0 <_ZN9Scheduler3getEv+0x3c>

00000000800015cc <_ZN9Scheduler3putEP12KernelThread>:
void Scheduler::put(KernelThread *thread) {
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00113c23          	sd	ra,24(sp)
    800015d4:	00813823          	sd	s0,16(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	02010413          	addi	s0,sp,32
    800015e0:	00050493          	mv	s1,a0
        Element *element = new Element(data, 0);
    800015e4:	01000513          	li	a0,16
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	7c4080e7          	jalr	1988(ra) # 80001dac <_ZN11KernelClassnwEm>
        Element(T *data, Element *next) : data(data), next(next) {}
    800015f0:	00953023          	sd	s1,0(a0)
    800015f4:	00053423          	sd	zero,8(a0)
        if (tail) {
    800015f8:	0000a797          	auipc	a5,0xa
    800015fc:	4207b783          	ld	a5,1056(a5) # 8000ba18 <_ZN9Scheduler5readyE+0x8>
    80001600:	02078263          	beqz	a5,80001624 <_ZN9Scheduler3putEP12KernelThread+0x58>
            tail->next = element;
    80001604:	00a7b423          	sd	a0,8(a5)
            tail = element;
    80001608:	0000a797          	auipc	a5,0xa
    8000160c:	40a7b823          	sd	a0,1040(a5) # 8000ba18 <_ZN9Scheduler5readyE+0x8>
}
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	01013403          	ld	s0,16(sp)
    80001618:	00813483          	ld	s1,8(sp)
    8000161c:	02010113          	addi	sp,sp,32
    80001620:	00008067          	ret
            head = tail = element;
    80001624:	0000a797          	auipc	a5,0xa
    80001628:	3ec78793          	addi	a5,a5,1004 # 8000ba10 <_ZN9Scheduler5readyE>
    8000162c:	00a7b423          	sd	a0,8(a5)
    80001630:	00a7b023          	sd	a0,0(a5)
    80001634:	fddff06f          	j	80001610 <_ZN9Scheduler3putEP12KernelThread+0x44>

0000000080001638 <_GLOBAL__sub_I__ZN9Scheduler5readyE>:
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00113423          	sd	ra,8(sp)
    80001640:	00813023          	sd	s0,0(sp)
    80001644:	01010413          	addi	s0,sp,16
    80001648:	000105b7          	lui	a1,0x10
    8000164c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001650:	00100513          	li	a0,1
    80001654:	00000097          	auipc	ra,0x0
    80001658:	ed0080e7          	jalr	-304(ra) # 80001524 <_Z41__static_initialization_and_destruction_0ii>
    8000165c:	00813083          	ld	ra,8(sp)
    80001660:	00013403          	ld	s0,0(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_Z6writerPv>:

extern void userMain();

static volatile bool kernelFinished = false;
void writer(void *arg) {
    while(!kernelFinished) {
    8000166c:	0000a797          	auipc	a5,0xa
    80001670:	3b47c783          	lbu	a5,948(a5) # 8000ba20 <_ZL14kernelFinished>
    80001674:	10079463          	bnez	a5,8000177c <_Z6writerPv+0x110>
void writer(void *arg) {
    80001678:	fd010113          	addi	sp,sp,-48
    8000167c:	02113423          	sd	ra,40(sp)
    80001680:	02813023          	sd	s0,32(sp)
    80001684:	00913c23          	sd	s1,24(sp)
    80001688:	01213823          	sd	s2,16(sp)
    8000168c:	01313423          	sd	s3,8(sp)
    80001690:	03010413          	addi	s0,sp,48
    80001694:	0180006f          	j	800016ac <_Z6writerPv+0x40>
        while ((*(volatile uint8 *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) && !KernelConsole::getOutput().isEmpty()) {
            // write
            *(volatile uint8 *) CONSOLE_TX_DATA = KernelConsole::getOutput().take();
        }
        KernelThread::yield();
    80001698:	00002097          	auipc	ra,0x2
    8000169c:	85c080e7          	jalr	-1956(ra) # 80002ef4 <_ZN12KernelThread5yieldEv>
    while(!kernelFinished) {
    800016a0:	0000a797          	auipc	a5,0xa
    800016a4:	3807c783          	lbu	a5,896(a5) # 8000ba20 <_ZL14kernelFinished>
    800016a8:	0a079c63          	bnez	a5,80001760 <_Z6writerPv+0xf4>
        while ((*(volatile uint8 *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) && !KernelConsole::getOutput().isEmpty()) {
    800016ac:	0000a797          	auipc	a5,0xa
    800016b0:	2c47b783          	ld	a5,708(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016b4:	0007b783          	ld	a5,0(a5)
    800016b8:	0007c783          	lbu	a5,0(a5)
    800016bc:	0ff7f793          	andi	a5,a5,255
    800016c0:	0207f793          	andi	a5,a5,32
    800016c4:	fc078ae3          	beqz	a5,80001698 <_Z6writerPv+0x2c>
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	7c8080e7          	jalr	1992(ra) # 80002e90 <_ZN13KernelConsole9getOutputEv>
    800016d0:	00050493          	mv	s1,a0
        spaceAvailable->signal();
        return data;
    }

    bool isEmpty() const {
        mutex->wait();
    800016d4:	00053503          	ld	a0,0(a0)
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	024080e7          	jalr	36(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        bool result = head == tail;
    800016e0:	2184a983          	lw	s3,536(s1)
    800016e4:	21c4a903          	lw	s2,540(s1)
        mutex->signal();
    800016e8:	0004b503          	ld	a0,0(s1)
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	f70080e7          	jalr	-144(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
    800016f4:	fb2982e3          	beq	s3,s2,80001698 <_Z6writerPv+0x2c>
            *(volatile uint8 *) CONSOLE_TX_DATA = KernelConsole::getOutput().take();
    800016f8:	00001097          	auipc	ra,0x1
    800016fc:	798080e7          	jalr	1944(ra) # 80002e90 <_ZN13KernelConsole9getOutputEv>
    80001700:	00050493          	mv	s1,a0
    80001704:	0000a797          	auipc	a5,0xa
    80001708:	2847b783          	ld	a5,644(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000170c:	0007b903          	ld	s2,0(a5)
        itemAvailable->wait();
    80001710:	01053503          	ld	a0,16(a0)
    80001714:	00001097          	auipc	ra,0x1
    80001718:	fe8080e7          	jalr	-24(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        mutex->wait();
    8000171c:	0004b503          	ld	a0,0(s1)
    80001720:	00001097          	auipc	ra,0x1
    80001724:	fdc080e7          	jalr	-36(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        T data = buffer[head];
    80001728:	2184a783          	lw	a5,536(s1)
    8000172c:	00f48733          	add	a4,s1,a5
    80001730:	01874983          	lbu	s3,24(a4)
        head = (head + 1) % N;
    80001734:	0017879b          	addiw	a5,a5,1
    80001738:	1ff7f793          	andi	a5,a5,511
    8000173c:	20f4ac23          	sw	a5,536(s1)
        mutex->signal();
    80001740:	0004b503          	ld	a0,0(s1)
    80001744:	00001097          	auipc	ra,0x1
    80001748:	f18080e7          	jalr	-232(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
        spaceAvailable->signal();
    8000174c:	0084b503          	ld	a0,8(s1)
    80001750:	00001097          	auipc	ra,0x1
    80001754:	f0c080e7          	jalr	-244(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
    80001758:	01390023          	sb	s3,0(s2)
        while ((*(volatile uint8 *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) && !KernelConsole::getOutput().isEmpty()) {
    8000175c:	f51ff06f          	j	800016ac <_Z6writerPv+0x40>
    }
}
    80001760:	02813083          	ld	ra,40(sp)
    80001764:	02013403          	ld	s0,32(sp)
    80001768:	01813483          	ld	s1,24(sp)
    8000176c:	01013903          	ld	s2,16(sp)
    80001770:	00813983          	ld	s3,8(sp)
    80001774:	03010113          	addi	sp,sp,48
    80001778:	00008067          	ret
    8000177c:	00008067          	ret

0000000080001780 <main>:

void main() {
    80001780:	fc010113          	addi	sp,sp,-64
    80001784:	02113c23          	sd	ra,56(sp)
    80001788:	02813823          	sd	s0,48(sp)
    8000178c:	02913423          	sd	s1,40(sp)
    80001790:	03213023          	sd	s2,32(sp)
    80001794:	01313c23          	sd	s3,24(sp)
    80001798:	04010413          	addi	s0,sp,64
    KernelThread *threadKernel = KernelThread::createThread(nullptr, nullptr);
    8000179c:	00000593          	li	a1,0
    800017a0:	00000513          	li	a0,0
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	928080e7          	jalr	-1752(ra) # 800030cc <_ZN12KernelThread12createThreadEPFvPvES0_>
    800017ac:	00050493          	mv	s1,a0
    KernelThread::running = threadKernel;
    800017b0:	0000a797          	auipc	a5,0xa
    800017b4:	1d07b783          	ld	a5,464(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017b8:	00a7b023          	sd	a0,0(a5)
    KernelThread *threadWriter = KernelThread::createThread(&writer, nullptr);
    800017bc:	00000593          	li	a1,0
    800017c0:	00000517          	auipc	a0,0x0
    800017c4:	eac50513          	addi	a0,a0,-340 # 8000166c <_Z6writerPv>
    800017c8:	00002097          	auipc	ra,0x2
    800017cc:	904080e7          	jalr	-1788(ra) # 800030cc <_ZN12KernelThread12createThreadEPFvPvES0_>
    800017d0:	00050913          	mv	s2,a0
    KernelThread *threadUser;

    //printString("Dosli 1\n");

    RISCV::setStvec((uint64)&RISCV::supervisorTrap);
    800017d4:	0000a797          	auipc	a5,0xa
    800017d8:	1cc7b783          	ld	a5,460(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x48>
        asm volatile("csrr %0, stvec" : "=r"(stvec));
        return stvec;
    }

    static void setStvec(uint64 stvec) {
        asm volatile("csrw stvec, %0" : : "r"(stvec));
    800017dc:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));
    800017e0:	00200793          	li	a5,2
    800017e4:	1007a073          	csrs	sstatus,a5
    RISCV::maskSetSstatus(RISCV::SSTATUS::SIE);

    RISCV::privileged = false;
    800017e8:	0000a797          	auipc	a5,0xa
    800017ec:	1c87b783          	ld	a5,456(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800017f0:	00078023          	sb	zero,0(a5)

    thread_create(&threadUser, (Body) userMain, nullptr);
    800017f4:	00000613          	li	a2,0
    800017f8:	0000a597          	auipc	a1,0xa
    800017fc:	1685b583          	ld	a1,360(a1) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001800:	fc840513          	addi	a0,s0,-56
    80001804:	00000097          	auipc	ra,0x0
    80001808:	a24080e7          	jalr	-1500(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>

    while(!threadUser->isFinished()) {
    8000180c:	fc843503          	ld	a0,-56(s0)
    80001810:	00001097          	auipc	ra,0x1
    80001814:	6ac080e7          	jalr	1708(ra) # 80002ebc <_ZNK12KernelThread10isFinishedEv>
    80001818:	00051863          	bnez	a0,80001828 <main+0xa8>
        thread_dispatch();
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	a8c080e7          	jalr	-1396(ra) # 800012a8 <_Z15thread_dispatchv>
    80001824:	fe9ff06f          	j	8000180c <main+0x8c>
    }
    kernelFinished = true;
    80001828:	00100793          	li	a5,1
    8000182c:	0000a717          	auipc	a4,0xa
    80001830:	1ef70a23          	sb	a5,500(a4) # 8000ba20 <_ZL14kernelFinished>
            // write
            *(volatile uint8 *) CONSOLE_TX_DATA = KernelConsole::getOutput().take();
        }
    }
*/
    RISCV::privileged = true;
    80001834:	0000a717          	auipc	a4,0xa
    80001838:	17c73703          	ld	a4,380(a4) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000183c:	00f70023          	sb	a5,0(a4)

    delete threadUser;
    80001840:	fc843983          	ld	s3,-56(s0)
    80001844:	00098e63          	beqz	s3,80001860 <main+0xe0>
    80001848:	00098513          	mv	a0,s3
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	7a4080e7          	jalr	1956(ra) # 80002ff0 <_ZN12KernelThreadD1Ev>
    80001854:	00098513          	mv	a0,s3
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	5e4080e7          	jalr	1508(ra) # 80001e3c <_ZN11KernelClassdlEPv>
    delete threadWriter;
    80001860:	00090e63          	beqz	s2,8000187c <main+0xfc>
    80001864:	00090513          	mv	a0,s2
    80001868:	00001097          	auipc	ra,0x1
    8000186c:	788080e7          	jalr	1928(ra) # 80002ff0 <_ZN12KernelThreadD1Ev>
    80001870:	00090513          	mv	a0,s2
    80001874:	00000097          	auipc	ra,0x0
    80001878:	5c8080e7          	jalr	1480(ra) # 80001e3c <_ZN11KernelClassdlEPv>
    delete threadKernel;
    8000187c:	00048e63          	beqz	s1,80001898 <main+0x118>
    80001880:	00048513          	mv	a0,s1
    80001884:	00001097          	auipc	ra,0x1
    80001888:	76c080e7          	jalr	1900(ra) # 80002ff0 <_ZN12KernelThreadD1Ev>
    8000188c:	00048513          	mv	a0,s1
    80001890:	00000097          	auipc	ra,0x0
    80001894:	5ac080e7          	jalr	1452(ra) # 80001e3c <_ZN11KernelClassdlEPv>
    static void supervisorTrap();
    static void handleSupervisorTrap();
    static void popSppSpie();

    static void exit() {
        asm volatile("li a0, 0x100000");
    80001898:	00100537          	lui	a0,0x100
        asm volatile("li a1, 0x5555");
    8000189c:	000055b7          	lui	a1,0x5
    800018a0:	5555859b          	addiw	a1,a1,1365
        asm volatile("sw a1, 0(a0)");
    800018a4:	00b52023          	sw	a1,0(a0) # 100000 <_entry-0x7ff00000>
    RISCV::exit();
    800018a8:	03813083          	ld	ra,56(sp)
    800018ac:	03013403          	ld	s0,48(sp)
    800018b0:	02813483          	ld	s1,40(sp)
    800018b4:	02013903          	ld	s2,32(sp)
    800018b8:	01813983          	ld	s3,24(sp)
    800018bc:	04010113          	addi	sp,sp,64
    800018c0:	00008067          	ret

00000000800018c4 <_ZN6ThreadD1Ev>:
    mem_free(memory);
}

Thread::Thread(Body body, void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00813423          	sd	s0,8(sp)
    800018cc:	01010413          	addi	s0,sp,16
    // todo: doraditi

}
    800018d0:	00813403          	ld	s0,8(sp)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret

00000000800018dc <_ZN6Thread7wrapperEPv>:

SuccessIndicator Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::wrapper(void *argument) {
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00113423          	sd	ra,8(sp)
    800018e4:	00813023          	sd	s0,0(sp)
    800018e8:	01010413          	addi	s0,sp,16
    ((Thread *) argument)->run();
    800018ec:	00053783          	ld	a5,0(a0)
    800018f0:	0107b783          	ld	a5,16(a5)
    800018f4:	000780e7          	jalr	a5
}
    800018f8:	00813083          	ld	ra,8(sp)
    800018fc:	00013403          	ld	s0,0(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00113423          	sd	ra,8(sp)
    80001910:	00813023          	sd	s0,0(sp)
    80001914:	01010413          	addi	s0,sp,16
    80001918:	0000a797          	auipc	a5,0xa
    8000191c:	e5078793          	addi	a5,a5,-432 # 8000b768 <_ZTV9Semaphore+0x10>
    80001920:	00f53023          	sd	a5,0(a0)
    // todo: doraditi
    sem_close(myHandle);
    80001924:	00853503          	ld	a0,8(a0)
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	a00080e7          	jalr	-1536(ra) # 80001328 <_Z9sem_closeP15KernelSemaphore>
}
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_Znwm>:
void *operator new(uint64 n) {
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001950:	00000097          	auipc	ra,0x0
    80001954:	850080e7          	jalr	-1968(ra) # 800011a0 <_Z9mem_allocm>
}
    80001958:	00813083          	ld	ra,8(sp)
    8000195c:	00013403          	ld	s0,0(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret

0000000080001968 <_Znam>:
void *operator new[](uint64 n) {
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00113423          	sd	ra,8(sp)
    80001970:	00813023          	sd	s0,0(sp)
    80001974:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	828080e7          	jalr	-2008(ra) # 800011a0 <_Z9mem_allocm>
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_ZdlPv>:
void operator delete(void *memory) {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    mem_free(memory);
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	848080e7          	jalr	-1976(ra) # 800011e8 <_Z8mem_freePv>
}
    800019a8:	00813083          	ld	ra,8(sp)
    800019ac:	00013403          	ld	s0,0(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
}
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	fc8080e7          	jalr	-56(ra) # 80001990 <_ZdlPv>
    800019d0:	00813083          	ld	ra,8(sp)
    800019d4:	00013403          	ld	s0,0(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	02010413          	addi	s0,sp,32
    800019f4:	00050493          	mv	s1,a0
}
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	f10080e7          	jalr	-240(ra) # 80001908 <_ZN9SemaphoreD1Ev>
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	f8c080e7          	jalr	-116(ra) # 80001990 <_ZdlPv>
    80001a0c:	01813083          	ld	ra,24(sp)
    80001a10:	01013403          	ld	s0,16(sp)
    80001a14:	00813483          	ld	s1,8(sp)
    80001a18:	02010113          	addi	sp,sp,32
    80001a1c:	00008067          	ret

0000000080001a20 <_ZdaPv>:
void operator delete[](void *memory) {
    80001a20:	ff010113          	addi	sp,sp,-16
    80001a24:	00113423          	sd	ra,8(sp)
    80001a28:	00813023          	sd	s0,0(sp)
    80001a2c:	01010413          	addi	s0,sp,16
    mem_free(memory);
    80001a30:	fffff097          	auipc	ra,0xfffff
    80001a34:	7b8080e7          	jalr	1976(ra) # 800011e8 <_Z8mem_freePv>
}
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(Body body, void *arg) : myHandle(nullptr), body(body), arg(arg) {}
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00813423          	sd	s0,8(sp)
    80001a50:	01010413          	addi	s0,sp,16
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	cec78793          	addi	a5,a5,-788 # 8000b740 <_ZTV6Thread+0x10>
    80001a5c:	00f53023          	sd	a5,0(a0)
    80001a60:	00053423          	sd	zero,8(a0)
    80001a64:	00b53823          	sd	a1,16(a0)
    80001a68:	00c53c23          	sd	a2,24(a0)
    80001a6c:	00813403          	ld	s0,8(sp)
    80001a70:	01010113          	addi	sp,sp,16
    80001a74:	00008067          	ret

0000000080001a78 <_ZN6Thread5startEv>:
SuccessIndicator Thread::start() {
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00113423          	sd	ra,8(sp)
    80001a80:	00813023          	sd	s0,0(sp)
    80001a84:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, &wrapper, (void *)this);
    80001a88:	00050613          	mv	a2,a0
    80001a8c:	00000597          	auipc	a1,0x0
    80001a90:	e5058593          	addi	a1,a1,-432 # 800018dc <_ZN6Thread7wrapperEPv>
    80001a94:	00850513          	addi	a0,a0,8
    80001a98:	fffff097          	auipc	ra,0xfffff
    80001a9c:	790080e7          	jalr	1936(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
}
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	7e8080e7          	jalr	2024(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN6Thread5sleepEm>:
SuccessIndicator Thread::sleep(time_t time) {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	980080e7          	jalr	-1664(ra) # 80001468 <_Z10time_sleepm>
}
    80001af0:	00813083          	ld	ra,8(sp)
    80001af4:	00013403          	ld	s0,0(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00113423          	sd	ra,8(sp)
    80001b08:	00813023          	sd	s0,0(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    80001b10:	0000a797          	auipc	a5,0xa
    80001b14:	c5878793          	addi	a5,a5,-936 # 8000b768 <_ZTV9Semaphore+0x10>
    80001b18:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001b1c:	00850513          	addi	a0,a0,8
    80001b20:	fffff097          	auipc	ra,0xfffff
    80001b24:	7c4080e7          	jalr	1988(ra) # 800012e4 <_Z8sem_openPP15KernelSemaphorej>
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <_ZN9Semaphore4waitEv>:

SuccessIndicator Semaphore::wait() {
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00113423          	sd	ra,8(sp)
    80001b40:	00813023          	sd	s0,0(sp)
    80001b44:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001b48:	00853503          	ld	a0,8(a0)
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	81c080e7          	jalr	-2020(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>
}
    80001b54:	00813083          	ld	ra,8(sp)
    80001b58:	00013403          	ld	s0,0(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret

0000000080001b64 <_ZN9Semaphore6signalEv>:

SuccessIndicator Semaphore::signal() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001b74:	00853503          	ld	a0,8(a0)
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	830080e7          	jalr	-2000(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>
}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN9Semaphore9timedWaitEm>:

SuccessIndicator Semaphore::timedWait(time_t time) {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80001ba0:	00853503          	ld	a0,8(a0)
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	844080e7          	jalr	-1980(ra) # 800013e8 <_Z13sem_timedwaitP15KernelSemaphorem>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN9Semaphore7tryWaitEv>:

SuccessIndicator Semaphore::tryWait() {
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001bcc:	00853503          	ld	a0,8(a0)
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	858080e7          	jalr	-1960(ra) # 80001428 <_Z11sem_trywaitP15KernelSemaphore>
}
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00813423          	sd	s0,8(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    period = 0;
    80001bf4:	02053023          	sd	zero,32(a0)
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::run() {
    80001c04:	fe010113          	addi	sp,sp,-32
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	00913423          	sd	s1,8(sp)
    80001c14:	02010413          	addi	s0,sp,32
    80001c18:	00050493          	mv	s1,a0
    while (period) {
    80001c1c:	0204b783          	ld	a5,32(s1)
    80001c20:	02078a63          	beqz	a5,80001c54 <_ZN14PeriodicThread3runEv+0x50>
        periodicActivation();
    80001c24:	0004b783          	ld	a5,0(s1)
    80001c28:	0187b783          	ld	a5,24(a5)
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	000780e7          	jalr	a5
        int result = sleep(period);
    80001c34:	0204b503          	ld	a0,32(s1)
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	ea0080e7          	jalr	-352(ra) # 80001ad8 <_ZN6Thread5sleepEm>
        if (result < 0) {
    80001c40:	fc055ee3          	bgez	a0,80001c1c <_ZN14PeriodicThread3runEv+0x18>
            terminate();
    80001c44:	00048513          	mv	a0,s1
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	fa0080e7          	jalr	-96(ra) # 80001be8 <_ZN14PeriodicThread9terminateEv>
    80001c50:	fcdff06f          	j	80001c1c <_ZN14PeriodicThread3runEv+0x18>
        }
    }
}
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret

0000000080001c68 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : period(period) {}
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    80001c74:	0000a797          	auipc	a5,0xa
    80001c78:	b1478793          	addi	a5,a5,-1260 # 8000b788 <_ZTV14PeriodicThread+0x10>
    80001c7c:	00f53023          	sd	a5,0(a0)
    80001c80:	02b53023          	sd	a1,32(a0)
    80001c84:	00813403          	ld	s0,8(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN7Console4getcEv>:

char Console::getc() {
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00113423          	sd	ra,8(sp)
    80001c98:	00813023          	sd	s0,0(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    return (char) ::getc();
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	808080e7          	jalr	-2040(ra) # 800014a8 <_Z4getcv>
}
    80001ca8:	0ff57513          	andi	a0,a0,255
    80001cac:	00813083          	ld	ra,8(sp)
    80001cb0:	00013403          	ld	s0,0(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret

0000000080001cbc <_ZN7Console4putcEc>:

void Console::putc(char character) {
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	00813023          	sd	s0,0(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    ::putc(character);
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	81c080e7          	jalr	-2020(ra) # 800014e8 <_Z4putcc>
}
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_ZN6Thread3runEv>:
    static void dispatch ();
    static SuccessIndicator sleep (time_t);

protected:
    Thread () = default;
    virtual void run () {}
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate ();

protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    80001d08:	00813403          	ld	s0,8(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00813423          	sd	s0,8(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	0000a797          	auipc	a5,0xa
    80001d24:	a6878793          	addi	a5,a5,-1432 # 8000b788 <_ZTV14PeriodicThread+0x10>
    80001d28:	00f53023          	sd	a5,0(a0)
    80001d2c:	00813403          	ld	s0,8(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_ZN14PeriodicThreadD0Ev>:
    80001d38:	ff010113          	addi	sp,sp,-16
    80001d3c:	00113423          	sd	ra,8(sp)
    80001d40:	00813023          	sd	s0,0(sp)
    80001d44:	01010413          	addi	s0,sp,16
    80001d48:	0000a797          	auipc	a5,0xa
    80001d4c:	a4078793          	addi	a5,a5,-1472 # 8000b788 <_ZTV14PeriodicThread+0x10>
    80001d50:	00f53023          	sd	a5,0(a0)
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	c3c080e7          	jalr	-964(ra) # 80001990 <_ZdlPv>
    80001d5c:	00813083          	ld	ra,8(sp)
    80001d60:	00013403          	ld	s0,0(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_Z7kmallocm>:

void KernelClass::operator delete[](void *memory) {
    kfree(memory);
}

void *kmalloc(size_t size) {
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	00913423          	sd	s1,8(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    80001d80:	00050493          	mv	s1,a0
    return MemoryAllocator::getInstance().malloc(size);
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	e00080e7          	jalr	-512(ra) # 80002b84 <_ZN15MemoryAllocator11getInstanceEv>
    80001d8c:	00048593          	mv	a1,s1
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	d58080e7          	jalr	-680(ra) # 80002ae8 <_ZN15MemoryAllocator6mallocEm>
}
    80001d98:	01813083          	ld	ra,24(sp)
    80001d9c:	01013403          	ld	s0,16(sp)
    80001da0:	00813483          	ld	s1,8(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret

0000000080001dac <_ZN11KernelClassnwEm>:
void *KernelClass::operator new(size_t size) {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	fb0080e7          	jalr	-80(ra) # 80001d6c <_Z7kmallocm>
}
    80001dc4:	00813083          	ld	ra,8(sp)
    80001dc8:	00013403          	ld	s0,0(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN11KernelClassnaEm>:
void *KernelClass::operator new[](size_t size) {
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	f88080e7          	jalr	-120(ra) # 80001d6c <_Z7kmallocm>
}
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_Z5kfreePv>:

void kfree(void *memory) {
    80001dfc:	fe010113          	addi	sp,sp,-32
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	00813823          	sd	s0,16(sp)
    80001e08:	00913423          	sd	s1,8(sp)
    80001e0c:	02010413          	addi	s0,sp,32
    80001e10:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(memory);
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	d70080e7          	jalr	-656(ra) # 80002b84 <_ZN15MemoryAllocator11getInstanceEv>
    80001e1c:	00048593          	mv	a1,s1
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	e0c080e7          	jalr	-500(ra) # 80002c2c <_ZN15MemoryAllocator4freeEPv>
}
    80001e28:	01813083          	ld	ra,24(sp)
    80001e2c:	01013403          	ld	s0,16(sp)
    80001e30:	00813483          	ld	s1,8(sp)
    80001e34:	02010113          	addi	sp,sp,32
    80001e38:	00008067          	ret

0000000080001e3c <_ZN11KernelClassdlEPv>:
void KernelClass::operator delete(void *memory) {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    kfree(memory);
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	fb0080e7          	jalr	-80(ra) # 80001dfc <_Z5kfreePv>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_ZN11KernelClassdaEPv>:
void KernelClass::operator delete[](void *memory) {
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    kfree(memory);
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	f88080e7          	jalr	-120(ra) # 80001dfc <_Z5kfreePv>
}
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZN5RISCV9getAsleepEv>:

    }
}

KernelSemaphore &RISCV::getAsleep() {
    if (!asleep) {
    80001e8c:	0000a797          	auipc	a5,0xa
    80001e90:	b9c7b783          	ld	a5,-1124(a5) # 8000ba28 <_ZN5RISCV6asleepE>
    80001e94:	00078863          	beqz	a5,80001ea4 <_ZN5RISCV9getAsleepEv+0x18>
        asleep = KernelSemaphore::createKernelSemaphore(0);
    }
    return *asleep;
}
    80001e98:	0000a517          	auipc	a0,0xa
    80001e9c:	b9053503          	ld	a0,-1136(a0) # 8000ba28 <_ZN5RISCV6asleepE>
    80001ea0:	00008067          	ret
KernelSemaphore &RISCV::getAsleep() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
        asleep = KernelSemaphore::createKernelSemaphore(0);
    80001eb4:	00000513          	li	a0,0
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	a54080e7          	jalr	-1452(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
    80001ec0:	0000a797          	auipc	a5,0xa
    80001ec4:	b6a7b423          	sd	a0,-1176(a5) # 8000ba28 <_ZN5RISCV6asleepE>
}
    80001ec8:	0000a517          	auipc	a0,0xa
    80001ecc:	b6053503          	ld	a0,-1184(a0) # 8000ba28 <_ZN5RISCV6asleepE>
    80001ed0:	00813083          	ld	ra,8(sp)
    80001ed4:	00013403          	ld	s0,0(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN5RISCV20handleSupervisorTrapEv>:
void RISCV::handleSupervisorTrap() {
    80001ee0:	f4010113          	addi	sp,sp,-192
    80001ee4:	0a113c23          	sd	ra,184(sp)
    80001ee8:	0a813823          	sd	s0,176(sp)
    80001eec:	0a913423          	sd	s1,168(sp)
    80001ef0:	0b213023          	sd	s2,160(sp)
    80001ef4:	09313c23          	sd	s3,152(sp)
    80001ef8:	0c010413          	addi	s0,sp,192
        asm volatile("csrr %0, scause" : "=r"(scause));
    80001efc:	142027f3          	csrr	a5,scause
    80001f00:	f8f43823          	sd	a5,-112(s0)
        return scause;
    80001f04:	f9043783          	ld	a5,-112(s0)
    uint64 volatile scause = getScause();
    80001f08:	fcf43423          	sd	a5,-56(s0)
    if (scause == SCAUSE::TIMER) {
    80001f0c:	fc843703          	ld	a4,-56(s0)
    80001f10:	fff00793          	li	a5,-1
    80001f14:	03f79793          	slli	a5,a5,0x3f
    80001f18:	00178793          	addi	a5,a5,1
    80001f1c:	0af70863          	beq	a4,a5,80001fcc <_ZN5RISCV20handleSupervisorTrapEv+0xec>
    } else if (scause == SCAUSE::CONSOLE) {
    80001f20:	fc843703          	ld	a4,-56(s0)
    80001f24:	fff00793          	li	a5,-1
    80001f28:	03f79793          	slli	a5,a5,0x3f
    80001f2c:	00978793          	addi	a5,a5,9
    80001f30:	10f70c63          	beq	a4,a5,80002048 <_ZN5RISCV20handleSupervisorTrapEv+0x168>
    } else if (scause == SCAUSE::SUPERVISOR || scause == SCAUSE::USER) {
    80001f34:	fc843703          	ld	a4,-56(s0)
    80001f38:	00900793          	li	a5,9
    80001f3c:	00f70863          	beq	a4,a5,80001f4c <_ZN5RISCV20handleSupervisorTrapEv+0x6c>
    80001f40:	fc843703          	ld	a4,-56(s0)
    80001f44:	00800793          	li	a5,8
    80001f48:	18f71e63          	bne	a4,a5,800020e4 <_ZN5RISCV20handleSupervisorTrapEv+0x204>
        asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001f4c:	141027f3          	csrr	a5,sepc
    80001f50:	faf43823          	sd	a5,-80(s0)
        return sepc;
    80001f54:	fb043783          	ld	a5,-80(s0)
        volatile uint64 sepc = getSepc() + 4; // skip ecall
    80001f58:	00478793          	addi	a5,a5,4
    80001f5c:	f4f43823          	sd	a5,-176(s0)
        asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001f60:	100027f3          	csrr	a5,sstatus
    80001f64:	faf43423          	sd	a5,-88(s0)
        return sstatus;
    80001f68:	fa843783          	ld	a5,-88(s0)
        volatile uint64 sstatus = getSstatus();
    80001f6c:	f4f43c23          	sd	a5,-168(s0)
        asm volatile("mv %0, a0" : "=r"(arg0));
    80001f70:	00050793          	mv	a5,a0
    80001f74:	f6f43023          	sd	a5,-160(s0)
        asm volatile("mv %0, a1" : "=r"(arg1));
    80001f78:	00058793          	mv	a5,a1
    80001f7c:	f6f43423          	sd	a5,-152(s0)
        asm volatile("mv %0, a2" : "=r"(arg2));
    80001f80:	00060793          	mv	a5,a2
    80001f84:	f6f43823          	sd	a5,-144(s0)
        asm volatile("mv %0, a3" : "=r"(arg3));
    80001f88:	00068793          	mv	a5,a3
    80001f8c:	f6f43c23          	sd	a5,-136(s0)
        asm volatile("mv %0, a4" : "=r"(arg4));
    80001f90:	00070793          	mv	a5,a4
    80001f94:	f8f43023          	sd	a5,-128(s0)
        ABI_Index index = (ABI_Index) arg0;
    80001f98:	f6043783          	ld	a5,-160(s0)
        uint64 volatile result = 9999;
    80001f9c:	00002737          	lui	a4,0x2
    80001fa0:	70f70713          	addi	a4,a4,1807 # 270f <_entry-0x7fffd8f1>
    80001fa4:	f8e43423          	sd	a4,-120(s0)
        switch (index) {
    80001fa8:	04200713          	li	a4,66
    80001fac:	1cf76263          	bltu	a4,a5,80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
    80001fb0:	00279793          	slli	a5,a5,0x2
    80001fb4:	00007717          	auipc	a4,0x7
    80001fb8:	09c70713          	addi	a4,a4,156 # 80009050 <CONSOLE_STATUS+0x40>
    80001fbc:	00e787b3          	add	a5,a5,a4
    80001fc0:	0007a783          	lw	a5,0(a5)
    80001fc4:	00e787b3          	add	a5,a5,a4
    80001fc8:	00078067          	jr	a5
        Timer::update();
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	a30080e7          	jalr	-1488(ra) # 800029fc <_ZN5Timer6updateEv>
        KernelThread::timeSliceCounter++;
    80001fd4:	0000a497          	auipc	s1,0xa
    80001fd8:	9c44b483          	ld	s1,-1596(s1) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001fdc:	0004b783          	ld	a5,0(s1)
    80001fe0:	00178793          	addi	a5,a5,1
    80001fe4:	00f4b023          	sd	a5,0(s1)
        KernelSemaphore::update();
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	8dc080e7          	jalr	-1828(ra) # 800028c4 <_ZN15KernelSemaphore6updateEv>
        if (KernelThread::timeSliceCounter >= DEFAULT_TIME_SLICE) {
    80001ff0:	0004b703          	ld	a4,0(s1)
    80001ff4:	00100793          	li	a5,1
    80001ff8:	00e7e863          	bltu	a5,a4,80002008 <_ZN5RISCV20handleSupervisorTrapEv+0x128>
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001ffc:	00200793          	li	a5,2
    80002000:	1447b073          	csrc	sip,a5
    }
    80002004:	1900006f          	j	80002194 <_ZN5RISCV20handleSupervisorTrapEv+0x2b4>
        asm volatile("csrr %0, sepc" : "=r"(sepc));
    80002008:	141027f3          	csrr	a5,sepc
    8000200c:	faf43023          	sd	a5,-96(s0)
        return sepc;
    80002010:	fa043783          	ld	a5,-96(s0)
            uint64 volatile sepc = getSepc();
    80002014:	f4f43023          	sd	a5,-192(s0)
        asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002018:	100027f3          	csrr	a5,sstatus
    8000201c:	f8f43c23          	sd	a5,-104(s0)
        return sstatus;
    80002020:	f9843783          	ld	a5,-104(s0)
            uint64 volatile sstatus = getSstatus();
    80002024:	f4f43423          	sd	a5,-184(s0)
            KernelThread::timeSliceCounter = 0;
    80002028:	0004b023          	sd	zero,0(s1)
            KernelThread::dispatch();
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	f4c080e7          	jalr	-180(ra) # 80002f78 <_ZN12KernelThread8dispatchEv>
            setSstatus(sstatus);
    80002034:	f4843783          	ld	a5,-184(s0)
        asm volatile("csrw sstatus, %0" : : "r"(sstatus));
    80002038:	10079073          	csrw	sstatus,a5
            setSepc(sepc);
    8000203c:	f4043783          	ld	a5,-192(s0)
        asm volatile("csrw sepc, %0" : : "r"(sepc));
    80002040:	14179073          	csrw	sepc,a5
    }
    80002044:	fb9ff06f          	j	80001ffc <_ZN5RISCV20handleSupervisorTrapEv+0x11c>
        int irq = plic_claim();
    80002048:	00005097          	auipc	ra,0x5
    8000204c:	e7c080e7          	jalr	-388(ra) # 80006ec4 <plic_claim>
    80002050:	00050913          	mv	s2,a0
        while ((*(volatile uint8 *) CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002054:	0000a797          	auipc	a5,0xa
    80002058:	91c7b783          	ld	a5,-1764(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000205c:	0007b783          	ld	a5,0(a5)
    80002060:	0007c783          	lbu	a5,0(a5)
    80002064:	0017f793          	andi	a5,a5,1
    80002068:	06078663          	beqz	a5,800020d4 <_ZN5RISCV20handleSupervisorTrapEv+0x1f4>
            KernelConsole::getInput().append(*(uint8 *) CONSOLE_RX_DATA);
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	df8080e7          	jalr	-520(ra) # 80002e64 <_ZN13KernelConsole8getInputEv>
    80002074:	00050493          	mv	s1,a0
    80002078:	0000a797          	auipc	a5,0xa
    8000207c:	8f07b783          	ld	a5,-1808(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002080:	0007b783          	ld	a5,0(a5)
    80002084:	0007c983          	lbu	s3,0(a5)
        spaceAvailable->wait();
    80002088:	00853503          	ld	a0,8(a0)
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	670080e7          	jalr	1648(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        mutex->wait();
    80002094:	0004b503          	ld	a0,0(s1)
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	664080e7          	jalr	1636(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        buffer[tail] = data;
    800020a0:	21c4a783          	lw	a5,540(s1)
    800020a4:	00f48733          	add	a4,s1,a5
    800020a8:	01370c23          	sb	s3,24(a4)
        tail = (tail + 1) % N;
    800020ac:	0017879b          	addiw	a5,a5,1
    800020b0:	1ff7f793          	andi	a5,a5,511
    800020b4:	20f4ae23          	sw	a5,540(s1)
        mutex->signal();
    800020b8:	0004b503          	ld	a0,0(s1)
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	5a0080e7          	jalr	1440(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
        itemAvailable->signal();
    800020c4:	0104b503          	ld	a0,16(s1)
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	594080e7          	jalr	1428(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
    }
    800020d0:	f85ff06f          	j	80002054 <_ZN5RISCV20handleSupervisorTrapEv+0x174>
        plic_complete(irq);
    800020d4:	00090513          	mv	a0,s2
    800020d8:	00005097          	auipc	ra,0x5
    800020dc:	e24080e7          	jalr	-476(ra) # 80006efc <plic_complete>
    800020e0:	0b40006f          	j	80002194 <_ZN5RISCV20handleSupervisorTrapEv+0x2b4>
        printString("\nERROR sepc = ");
    800020e4:	00007517          	auipc	a0,0x7
    800020e8:	f4c50513          	addi	a0,a0,-180 # 80009030 <CONSOLE_STATUS+0x20>
    800020ec:	00003097          	auipc	ra,0x3
    800020f0:	324080e7          	jalr	804(ra) # 80005410 <_Z11printStringPKc>
        asm volatile("csrr %0, sepc" : "=r"(sepc));
    800020f4:	141027f3          	csrr	a5,sepc
    800020f8:	fcf43023          	sd	a5,-64(s0)
        return sepc;
    800020fc:	fc043503          	ld	a0,-64(s0)
        printInt(getSepc(), 16);
    80002100:	00000613          	li	a2,0
    80002104:	01000593          	li	a1,16
    80002108:	0005051b          	sext.w	a0,a0
    8000210c:	00003097          	auipc	ra,0x3
    80002110:	4b8080e7          	jalr	1208(ra) # 800055c4 <_Z8printIntiii>
        printString(", scause =  ");
    80002114:	00007517          	auipc	a0,0x7
    80002118:	f2c50513          	addi	a0,a0,-212 # 80009040 <CONSOLE_STATUS+0x30>
    8000211c:	00003097          	auipc	ra,0x3
    80002120:	2f4080e7          	jalr	756(ra) # 80005410 <_Z11printStringPKc>
        asm volatile("csrr %0, scause" : "=r"(scause));
    80002124:	142027f3          	csrr	a5,scause
    80002128:	faf43c23          	sd	a5,-72(s0)
        return scause;
    8000212c:	fb843503          	ld	a0,-72(s0)
        printInt(getScause(), 16);
    80002130:	00000613          	li	a2,0
    80002134:	01000593          	li	a1,16
    80002138:	0005051b          	sext.w	a0,a0
    8000213c:	00003097          	auipc	ra,0x3
    80002140:	488080e7          	jalr	1160(ra) # 800055c4 <_Z8printIntiii>
        printString("\n");
    80002144:	00007517          	auipc	a0,0x7
    80002148:	35450513          	addi	a0,a0,852 # 80009498 <CONSOLE_STATUS+0x488>
    8000214c:	00003097          	auipc	ra,0x3
    80002150:	2c4080e7          	jalr	708(ra) # 80005410 <_Z11printStringPKc>
    80002154:	0400006f          	j	80002194 <_ZN5RISCV20handleSupervisorTrapEv+0x2b4>
                result = (uint64) MemoryAllocator::getInstance().malloc(arg1);
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	a2c080e7          	jalr	-1492(ra) # 80002b84 <_ZN15MemoryAllocator11getInstanceEv>
    80002160:	f6843583          	ld	a1,-152(s0)
    80002164:	00001097          	auipc	ra,0x1
    80002168:	984080e7          	jalr	-1660(ra) # 80002ae8 <_ZN15MemoryAllocator6mallocEm>
    8000216c:	f8a43423          	sd	a0,-120(s0)
        KernelThread::running->interruptResult = result;
    80002170:	0000a797          	auipc	a5,0xa
    80002174:	8107b783          	ld	a5,-2032(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002178:	0007b783          	ld	a5,0(a5)
    8000217c:	f8843703          	ld	a4,-120(s0)
    80002180:	02e7bc23          	sd	a4,56(a5)
        setSepc(sepc);
    80002184:	f5043783          	ld	a5,-176(s0)
        asm volatile("csrw sepc, %0" : : "r"(sepc));
    80002188:	14179073          	csrw	sepc,a5
        setSstatus(sstatus);
    8000218c:	f5843783          	ld	a5,-168(s0)
        asm volatile("csrw sstatus, %0" : : "r"(sstatus));
    80002190:	10079073          	csrw	sstatus,a5
}
    80002194:	0b813083          	ld	ra,184(sp)
    80002198:	0b013403          	ld	s0,176(sp)
    8000219c:	0a813483          	ld	s1,168(sp)
    800021a0:	0a013903          	ld	s2,160(sp)
    800021a4:	09813983          	ld	s3,152(sp)
    800021a8:	0c010113          	addi	sp,sp,192
    800021ac:	00008067          	ret
                result = (uint64) MemoryAllocator::getInstance().free((void *)arg1);
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	9d4080e7          	jalr	-1580(ra) # 80002b84 <_ZN15MemoryAllocator11getInstanceEv>
    800021b8:	f6843583          	ld	a1,-152(s0)
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	a70080e7          	jalr	-1424(ra) # 80002c2c <_ZN15MemoryAllocator4freeEPv>
    800021c4:	f8a43423          	sd	a0,-120(s0)
                break;
    800021c8:	fa9ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                *(thread_t *) arg1 = KernelThread::createThread((Body) arg2, (void *)arg3);
    800021cc:	f7043503          	ld	a0,-144(s0)
    800021d0:	f7843583          	ld	a1,-136(s0)
    800021d4:	f6843483          	ld	s1,-152(s0)
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	ef4080e7          	jalr	-268(ra) # 800030cc <_ZN12KernelThread12createThreadEPFvPvES0_>
    800021e0:	00a4b023          	sd	a0,0(s1)
                result = *(thread_t *) arg1 ? 0 : -1;
    800021e4:	f6843783          	ld	a5,-152(s0)
    800021e8:	0007b783          	ld	a5,0(a5)
    800021ec:	00078863          	beqz	a5,800021fc <_ZN5RISCV20handleSupervisorTrapEv+0x31c>
    800021f0:	00000793          	li	a5,0
    800021f4:	f8f43423          	sd	a5,-120(s0)
                break;
    800021f8:	f79ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                result = *(thread_t *) arg1 ? 0 : -1;
    800021fc:	fff00793          	li	a5,-1
    80002200:	ff5ff06f          	j	800021f4 <_ZN5RISCV20handleSupervisorTrapEv+0x314>
                KernelThread::running->setFinished(true);
    80002204:	00100593          	li	a1,1
    80002208:	00009797          	auipc	a5,0x9
    8000220c:	7787b783          	ld	a5,1912(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002210:	0007b503          	ld	a0,0(a5)
    80002214:	00001097          	auipc	ra,0x1
    80002218:	cc4080e7          	jalr	-828(ra) # 80002ed8 <_ZN12KernelThread11setFinishedEb>
                KernelThread::timeSliceCounter = 0;
    8000221c:	00009797          	auipc	a5,0x9
    80002220:	77c7b783          	ld	a5,1916(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002224:	0007b023          	sd	zero,0(a5)
                KernelThread::dispatch();
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	d50080e7          	jalr	-688(ra) # 80002f78 <_ZN12KernelThread8dispatchEv>
                break;
    80002230:	f41ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                KernelThread::timeSliceCounter = 0;
    80002234:	00009797          	auipc	a5,0x9
    80002238:	7647b783          	ld	a5,1892(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000223c:	0007b023          	sd	zero,0(a5)
                KernelThread::dispatch();
    80002240:	00001097          	auipc	ra,0x1
    80002244:	d38080e7          	jalr	-712(ra) # 80002f78 <_ZN12KernelThread8dispatchEv>
                break;
    80002248:	f29ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                *(sem_t *) arg1 = KernelSemaphore::createKernelSemaphore(arg2);
    8000224c:	f7043503          	ld	a0,-144(s0)
    80002250:	f6843483          	ld	s1,-152(s0)
    80002254:	00000097          	auipc	ra,0x0
    80002258:	6b8080e7          	jalr	1720(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
    8000225c:	00a4b023          	sd	a0,0(s1)
                result = *(sem_t *) arg1 ? 0 : -1;
    80002260:	f6843783          	ld	a5,-152(s0)
    80002264:	0007b783          	ld	a5,0(a5)
    80002268:	00078863          	beqz	a5,80002278 <_ZN5RISCV20handleSupervisorTrapEv+0x398>
    8000226c:	00000793          	li	a5,0
    80002270:	f8f43423          	sd	a5,-120(s0)
                break;
    80002274:	efdff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                result = *(sem_t *) arg1 ? 0 : -1;
    80002278:	fff00793          	li	a5,-1
    8000227c:	ff5ff06f          	j	80002270 <_ZN5RISCV20handleSupervisorTrapEv+0x390>
                ((sem_t) arg1)->close();
    80002280:	f6843503          	ld	a0,-152(s0)
    80002284:	00000097          	auipc	ra,0x0
    80002288:	538080e7          	jalr	1336(ra) # 800027bc <_ZN15KernelSemaphore5closeEv>
                result = 0;
    8000228c:	f8043423          	sd	zero,-120(s0)
                break;
    80002290:	ee1ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                ((sem_t) arg1)->wait();
    80002294:	f6843503          	ld	a0,-152(s0)
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	464080e7          	jalr	1124(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
                result = KernelThread::running->interruptResult;
    800022a0:	00009797          	auipc	a5,0x9
    800022a4:	6e07b783          	ld	a5,1760(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022a8:	0007b783          	ld	a5,0(a5)
    800022ac:	0387b783          	ld	a5,56(a5)
    800022b0:	f8f43423          	sd	a5,-120(s0)
                break;
    800022b4:	ebdff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                ((sem_t) arg1)->signal();
    800022b8:	f6843503          	ld	a0,-152(s0)
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	3a0080e7          	jalr	928(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
                result = 0;
    800022c4:	f8043423          	sd	zero,-120(s0)
                break;
    800022c8:	ea9ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                ((sem_t) arg1)->timedWait((time_t) arg2);
    800022cc:	f6843503          	ld	a0,-152(s0)
    800022d0:	f7043583          	ld	a1,-144(s0)
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	3e8080e7          	jalr	1000(ra) # 800026bc <_ZN15KernelSemaphore9timedWaitEm>
                result = KernelThread::running->interruptResult;
    800022dc:	00009797          	auipc	a5,0x9
    800022e0:	6a47b783          	ld	a5,1700(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022e4:	0007b783          	ld	a5,0(a5)
    800022e8:	0387b783          	ld	a5,56(a5)
    800022ec:	f8f43423          	sd	a5,-120(s0)
                break;
    800022f0:	e81ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                ((sem_t) arg1)->tryWait();
    800022f4:	f6843503          	ld	a0,-152(s0)
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	434080e7          	jalr	1076(ra) # 8000272c <_ZN15KernelSemaphore7tryWaitEv>
                result = KernelThread::running->interruptResult;
    80002300:	00009797          	auipc	a5,0x9
    80002304:	6807b783          	ld	a5,1664(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002308:	0007b783          	ld	a5,0(a5)
    8000230c:	0387b783          	ld	a5,56(a5)
    80002310:	f8f43423          	sd	a5,-120(s0)
                break;
    80002314:	e5dff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                getAsleep().timedWait(arg1);
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	b74080e7          	jalr	-1164(ra) # 80001e8c <_ZN5RISCV9getAsleepEv>
    80002320:	f6843583          	ld	a1,-152(s0)
    80002324:	00000097          	auipc	ra,0x0
    80002328:	398080e7          	jalr	920(ra) # 800026bc <_ZN15KernelSemaphore9timedWaitEm>
                break;
    8000232c:	e45ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                result = KernelConsole::getInput().take();
    80002330:	00001097          	auipc	ra,0x1
    80002334:	b34080e7          	jalr	-1228(ra) # 80002e64 <_ZN13KernelConsole8getInputEv>
    80002338:	00050493          	mv	s1,a0
        itemAvailable->wait();
    8000233c:	01053503          	ld	a0,16(a0)
    80002340:	00000097          	auipc	ra,0x0
    80002344:	3bc080e7          	jalr	956(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        mutex->wait();
    80002348:	0004b503          	ld	a0,0(s1)
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	3b0080e7          	jalr	944(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        T data = buffer[head];
    80002354:	2184a783          	lw	a5,536(s1)
    80002358:	00f48733          	add	a4,s1,a5
    8000235c:	01874903          	lbu	s2,24(a4)
        head = (head + 1) % N;
    80002360:	0017879b          	addiw	a5,a5,1
    80002364:	1ff7f793          	andi	a5,a5,511
    80002368:	20f4ac23          	sw	a5,536(s1)
        mutex->signal();
    8000236c:	0004b503          	ld	a0,0(s1)
    80002370:	00000097          	auipc	ra,0x0
    80002374:	2ec080e7          	jalr	748(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
        spaceAvailable->signal();
    80002378:	0084b503          	ld	a0,8(s1)
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	2e0080e7          	jalr	736(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
    80002384:	f9243423          	sd	s2,-120(s0)
                break;
    80002388:	de9ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>
                KernelConsole::getOutput().append((char) arg1);
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	b04080e7          	jalr	-1276(ra) # 80002e90 <_ZN13KernelConsole9getOutputEv>
    80002394:	00050493          	mv	s1,a0
    80002398:	f6843903          	ld	s2,-152(s0)
    8000239c:	0ff97913          	andi	s2,s2,255
        spaceAvailable->wait();
    800023a0:	00853503          	ld	a0,8(a0)
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	358080e7          	jalr	856(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        mutex->wait();
    800023ac:	0004b503          	ld	a0,0(s1)
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	34c080e7          	jalr	844(ra) # 800026fc <_ZN15KernelSemaphore4waitEv>
        buffer[tail] = data;
    800023b8:	21c4a783          	lw	a5,540(s1)
    800023bc:	00f48733          	add	a4,s1,a5
    800023c0:	01270c23          	sb	s2,24(a4)
        tail = (tail + 1) % N;
    800023c4:	0017879b          	addiw	a5,a5,1
    800023c8:	1ff7f793          	andi	a5,a5,511
    800023cc:	20f4ae23          	sw	a5,540(s1)
        mutex->signal();
    800023d0:	0004b503          	ld	a0,0(s1)
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	288080e7          	jalr	648(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
        itemAvailable->signal();
    800023dc:	0104b503          	ld	a0,16(s1)
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	27c080e7          	jalr	636(ra) # 8000265c <_ZN15KernelSemaphore6signalEv>
    }
    800023e8:	d89ff06f          	j	80002170 <_ZN5RISCV20handleSupervisorTrapEv+0x290>

00000000800023ec <_ZN5RISCV10popSppSpieEv>:

// must not be inline
void RISCV::popSppSpie() {
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00813423          	sd	s0,8(sp)
    800023f4:	01010413          	addi	s0,sp,16
    privileged ? maskSetSstatus(SPP) : maskClearSstatus(SPP);
    800023f8:	00009797          	auipc	a5,0x9
    800023fc:	6387c783          	lbu	a5,1592(a5) # 8000ba30 <_ZN5RISCV10privilegedE>
    80002400:	02078063          	beqz	a5,80002420 <_ZN5RISCV10popSppSpieEv+0x34>
        asm volatile("csrs sstatus, %0" : : "r"(mask));
    80002404:	10000793          	li	a5,256
    80002408:	1007a073          	csrs	sstatus,a5
    asm volatile("csrw sepc, ra");
    8000240c:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    80002410:	10200073          	sret
}
    80002414:	00813403          	ld	s0,8(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret
        asm volatile("csrc sstatus, %0" : : "r"(mask));
    80002420:	10000793          	li	a5,256
    80002424:	1007b073          	csrc	sstatus,a5
    }
    80002428:	fe5ff06f          	j	8000240c <_ZN5RISCV10popSppSpieEv+0x20>

000000008000242c <_Z41__static_initialization_and_destruction_0ii>:

KernelSemaphore *KernelSemaphore::createKernelSemaphore(uint64 value) {
    KernelSemaphore *handle = new KernelSemaphore(value);
    declaredSemaphores.enqueue(handle);
    return handle;
}
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00813423          	sd	s0,8(sp)
    80002434:	01010413          	addi	s0,sp,16
    80002438:	00100793          	li	a5,1
    8000243c:	00f50863          	beq	a0,a5,8000244c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002440:	00813403          	ld	s0,8(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret
    8000244c:	000107b7          	lui	a5,0x10
    80002450:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002454:	fef596e3          	bne	a1,a5,80002440 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Element(T *data, Element *next) : data(data), next(next) {}
    };

    Element *head, *tail;

    List() : head(0), tail(0) {}
    80002458:	00009797          	auipc	a5,0x9
    8000245c:	5e078793          	addi	a5,a5,1504 # 8000ba38 <_ZN15KernelSemaphore18declaredSemaphoresE>
    80002460:	0007b023          	sd	zero,0(a5)
    80002464:	0007b423          	sd	zero,8(a5)
    80002468:	fd9ff06f          	j	80002440 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000246c <_ZN15KernelSemaphore7unblockEv>:
void KernelSemaphore::unblock() {
    8000246c:	fe010113          	addi	sp,sp,-32
    80002470:	00113c23          	sd	ra,24(sp)
    80002474:	00813823          	sd	s0,16(sp)
    80002478:	00913423          	sd	s1,8(sp)
    8000247c:	01213023          	sd	s2,0(sp)
    80002480:	02010413          	addi	s0,sp,32
    80002484:	00050493          	mv	s1,a0
            head = tail = element;
        }
    }

    T *dequeue() {
        if (!head) {
    80002488:	00853503          	ld	a0,8(a0)
    8000248c:	06050663          	beqz	a0,800024f8 <_ZN15KernelSemaphore7unblockEv+0x8c>
            return 0;
        }
        Element *element = head;
        head = head->next;
    80002490:	00853783          	ld	a5,8(a0)
    80002494:	00f4b423          	sd	a5,8(s1)
        if (!head) {
    80002498:	04078c63          	beqz	a5,800024f0 <_ZN15KernelSemaphore7unblockEv+0x84>
            tail = 0;
        }
        T *result = element->data;
    8000249c:	00053903          	ld	s2,0(a0)
        delete element;
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	99c080e7          	jalr	-1636(ra) # 80001e3c <_ZN11KernelClassdlEPv>
    if (thread->isFinished()) {
    800024a8:	00090513          	mv	a0,s2
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	a10080e7          	jalr	-1520(ra) # 80002ebc <_ZNK12KernelThread10isFinishedEv>
    800024b4:	02051263          	bnez	a0,800024d8 <_ZN15KernelSemaphore7unblockEv+0x6c>
    if (closed) {
    800024b8:	01c4c783          	lbu	a5,28(s1)
    800024bc:	0ff7f793          	andi	a5,a5,255
    800024c0:	00078663          	beqz	a5,800024cc <_ZN15KernelSemaphore7unblockEv+0x60>
        thread->interruptResult = SEMDEAD;
    800024c4:	fff00793          	li	a5,-1
    800024c8:	02f93c23          	sd	a5,56(s2)
    Scheduler::put(thread);
    800024cc:	00090513          	mv	a0,s2
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	0fc080e7          	jalr	252(ra) # 800015cc <_ZN9Scheduler3putEP12KernelThread>
}
    800024d8:	01813083          	ld	ra,24(sp)
    800024dc:	01013403          	ld	s0,16(sp)
    800024e0:	00813483          	ld	s1,8(sp)
    800024e4:	00013903          	ld	s2,0(sp)
    800024e8:	02010113          	addi	sp,sp,32
    800024ec:	00008067          	ret
            tail = 0;
    800024f0:	0004b823          	sd	zero,16(s1)
    800024f4:	fa9ff06f          	j	8000249c <_ZN15KernelSemaphore7unblockEv+0x30>
            return 0;
    800024f8:	00050913          	mv	s2,a0
    800024fc:	fadff06f          	j	800024a8 <_ZN15KernelSemaphore7unblockEv+0x3c>

0000000080002500 <_ZN15KernelSemaphore5blockEm>:
void KernelSemaphore::block(time_t time) {
    80002500:	fd010113          	addi	sp,sp,-48
    80002504:	02113423          	sd	ra,40(sp)
    80002508:	02813023          	sd	s0,32(sp)
    8000250c:	00913c23          	sd	s1,24(sp)
    80002510:	01213823          	sd	s2,16(sp)
    80002514:	01313423          	sd	s3,8(sp)
    80002518:	03010413          	addi	s0,sp,48
    8000251c:	00050913          	mv	s2,a0
    80002520:	00058993          	mv	s3,a1
    KernelThread *old = KernelThread::running;
    80002524:	00009797          	auipc	a5,0x9
    80002528:	45c7b783          	ld	a5,1116(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000252c:	0007b483          	ld	s1,0(a5)
    old->whenFinished = Timer::now() + time;
    80002530:	00000097          	auipc	ra,0x0
    80002534:	4ac080e7          	jalr	1196(ra) # 800029dc <_ZN5Timer3nowEv>
    80002538:	01350533          	add	a0,a0,s3
    8000253c:	02a4b823          	sd	a0,48(s1)
    old->interruptResult = SUCCESS;
    80002540:	0204bc23          	sd	zero,56(s1)
    auto *element = new List<KernelThread>::Element(old, 0);
    80002544:	01000513          	li	a0,16
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	864080e7          	jalr	-1948(ra) # 80001dac <_ZN11KernelClassnwEm>
        Element(T *data, Element *next) : data(data), next(next) {}
    80002550:	00953023          	sd	s1,0(a0)
    80002554:	00053423          	sd	zero,8(a0)
    List<KernelThread>::Element *prev = nullptr, *curr = blocked.head;
    80002558:	00893583          	ld	a1,8(s2)
    8000255c:	00058793          	mv	a5,a1
    80002560:	00000613          	li	a2,0
    while (curr) {
    80002564:	02078063          	beqz	a5,80002584 <_ZN15KernelSemaphore5blockEm+0x84>
        if (element->data->whenFinished < curr->data->whenFinished) {
    80002568:	0304b683          	ld	a3,48(s1)
    8000256c:	0007b703          	ld	a4,0(a5)
    80002570:	03073703          	ld	a4,48(a4)
    80002574:	00e6e863          	bltu	a3,a4,80002584 <_ZN15KernelSemaphore5blockEm+0x84>
        prev = curr;
    80002578:	00078613          	mv	a2,a5
        curr = curr->next;
    8000257c:	0087b783          	ld	a5,8(a5)
    while (curr) {
    80002580:	fe5ff06f          	j	80002564 <_ZN15KernelSemaphore5blockEm+0x64>
    if (!blocked.head) {
    80002584:	06058063          	beqz	a1,800025e4 <_ZN15KernelSemaphore5blockEm+0xe4>
        (prev ? prev->next : blocked.head) = element;
    80002588:	06060463          	beqz	a2,800025f0 <_ZN15KernelSemaphore5blockEm+0xf0>
    8000258c:	00a63423          	sd	a0,8(a2)
        element->next = curr;
    80002590:	00f53423          	sd	a5,8(a0)
        if (curr == nullptr) {
    80002594:	06078263          	beqz	a5,800025f8 <_ZN15KernelSemaphore5blockEm+0xf8>
    KernelThread::running = Scheduler::get();
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	fcc080e7          	jalr	-52(ra) # 80001564 <_ZN9Scheduler3getEv>
    800025a0:	00009797          	auipc	a5,0x9
    800025a4:	3e07b783          	ld	a5,992(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025a8:	00a7b023          	sd	a0,0(a5)
    KernelThread::running->timeSliceCounter = 0;
    800025ac:	00009797          	auipc	a5,0x9
    800025b0:	3ec7b783          	ld	a5,1004(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x40>
    800025b4:	0007b023          	sd	zero,0(a5)
    KernelThread::contextSwitch(&old->context, &KernelThread::running->context);
    800025b8:	01850593          	addi	a1,a0,24
    800025bc:	01848513          	addi	a0,s1,24
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	b50080e7          	jalr	-1200(ra) # 80001110 <_ZN12KernelThread13contextSwitchEPNS_7ContextES1_>
}
    800025c8:	02813083          	ld	ra,40(sp)
    800025cc:	02013403          	ld	s0,32(sp)
    800025d0:	01813483          	ld	s1,24(sp)
    800025d4:	01013903          	ld	s2,16(sp)
    800025d8:	00813983          	ld	s3,8(sp)
    800025dc:	03010113          	addi	sp,sp,48
    800025e0:	00008067          	ret
        blocked.head = blocked.tail = element;
    800025e4:	00a93823          	sd	a0,16(s2)
    800025e8:	00a93423          	sd	a0,8(s2)
    800025ec:	fadff06f          	j	80002598 <_ZN15KernelSemaphore5blockEm+0x98>
        (prev ? prev->next : blocked.head) = element;
    800025f0:	00a93423          	sd	a0,8(s2)
    800025f4:	f9dff06f          	j	80002590 <_ZN15KernelSemaphore5blockEm+0x90>
            blocked.tail = element;
    800025f8:	00a93823          	sd	a0,16(s2)
    800025fc:	f9dff06f          	j	80002598 <_ZN15KernelSemaphore5blockEm+0x98>

0000000080002600 <_ZN15KernelSemaphore8doSwitchEP12KernelThread>:
void KernelSemaphore::doSwitch(KernelThread *old) {
    80002600:	fe010113          	addi	sp,sp,-32
    80002604:	00113c23          	sd	ra,24(sp)
    80002608:	00813823          	sd	s0,16(sp)
    8000260c:	00913423          	sd	s1,8(sp)
    80002610:	02010413          	addi	s0,sp,32
    80002614:	00050493          	mv	s1,a0
    KernelThread::running = Scheduler::get();
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	f4c080e7          	jalr	-180(ra) # 80001564 <_ZN9Scheduler3getEv>
    80002620:	00009797          	auipc	a5,0x9
    80002624:	3607b783          	ld	a5,864(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002628:	00a7b023          	sd	a0,0(a5)
    KernelThread::running->timeSliceCounter = 0;
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	36c7b783          	ld	a5,876(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002634:	0007b023          	sd	zero,0(a5)
    KernelThread::contextSwitch(&old->context, &KernelThread::running->context);
    80002638:	01850593          	addi	a1,a0,24
    8000263c:	01848513          	addi	a0,s1,24
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	ad0080e7          	jalr	-1328(ra) # 80001110 <_ZN12KernelThread13contextSwitchEPNS_7ContextES1_>
}
    80002648:	01813083          	ld	ra,24(sp)
    8000264c:	01013403          	ld	s0,16(sp)
    80002650:	00813483          	ld	s1,8(sp)
    80002654:	02010113          	addi	sp,sp,32
    80002658:	00008067          	ret

000000008000265c <_ZN15KernelSemaphore6signalEv>:
    if (closed) {
    8000265c:	01c54783          	lbu	a5,28(a0)
    80002660:	0ff7f793          	andi	a5,a5,255
    80002664:	00078c63          	beqz	a5,8000267c <_ZN15KernelSemaphore6signalEv+0x20>
        KernelThread::running->interruptResult = SEMDEAD;
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	3187b783          	ld	a5,792(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002670:	0007b783          	ld	a5,0(a5)
    80002674:	fff00713          	li	a4,-1
    80002678:	02e7bc23          	sd	a4,56(a5)
    if (++value <= 0) {
    8000267c:	01852783          	lw	a5,24(a0)
    80002680:	0017879b          	addiw	a5,a5,1
    80002684:	0007871b          	sext.w	a4,a5
    80002688:	00f52c23          	sw	a5,24(a0)
    8000268c:	00e05463          	blez	a4,80002694 <_ZN15KernelSemaphore6signalEv+0x38>
    80002690:	00008067          	ret
void KernelSemaphore::signal() {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
        unblock();
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	dc8080e7          	jalr	-568(ra) # 8000246c <_ZN15KernelSemaphore7unblockEv>
}
    800026ac:	00813083          	ld	ra,8(sp)
    800026b0:	00013403          	ld	s0,0(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_ZN15KernelSemaphore9timedWaitEm>:
    if (--value < 0) {
    800026bc:	01852783          	lw	a5,24(a0)
    800026c0:	fff7879b          	addiw	a5,a5,-1
    800026c4:	00f52c23          	sw	a5,24(a0)
    800026c8:	02079713          	slli	a4,a5,0x20
    800026cc:	00074463          	bltz	a4,800026d4 <_ZN15KernelSemaphore9timedWaitEm+0x18>
    800026d0:	00008067          	ret
void KernelSemaphore::timedWait(time_t time) {
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00113423          	sd	ra,8(sp)
    800026dc:	00813023          	sd	s0,0(sp)
    800026e0:	01010413          	addi	s0,sp,16
        block(time);
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	e1c080e7          	jalr	-484(ra) # 80002500 <_ZN15KernelSemaphore5blockEm>
}
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN15KernelSemaphore4waitEv>:
void KernelSemaphore::wait() {
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    timedWait(INFINITY);
    8000270c:	fff00593          	li	a1,-1
    80002710:	03f59593          	slli	a1,a1,0x3f
    80002714:	00000097          	auipc	ra,0x0
    80002718:	fa8080e7          	jalr	-88(ra) # 800026bc <_ZN15KernelSemaphore9timedWaitEm>
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_ZN15KernelSemaphore7tryWaitEv>:
int KernelSemaphore::tryWait() {
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00813423          	sd	s0,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    if (closed) {
    80002738:	01c54783          	lbu	a5,28(a0)
    8000273c:	0ff7f793          	andi	a5,a5,255
    80002740:	02079a63          	bnez	a5,80002774 <_ZN15KernelSemaphore7tryWaitEv+0x48>
    if (value > 0) {
    80002744:	01852783          	lw	a5,24(a0)
    80002748:	0007879b          	sext.w	a5,a5
    8000274c:	00f04a63          	bgtz	a5,80002760 <_ZN15KernelSemaphore7tryWaitEv+0x34>
    return SUCCESS;
    80002750:	00000513          	li	a0,0
}
    80002754:	00813403          	ld	s0,8(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret
        --value;
    80002760:	01852783          	lw	a5,24(a0)
    80002764:	fff7879b          	addiw	a5,a5,-1
    80002768:	00f52c23          	sw	a5,24(a0)
        return UNLOCKED;
    8000276c:	00100513          	li	a0,1
    80002770:	fe5ff06f          	j	80002754 <_ZN15KernelSemaphore7tryWaitEv+0x28>
        return SEMDEAD;
    80002774:	fff00513          	li	a0,-1
    80002778:	fddff06f          	j	80002754 <_ZN15KernelSemaphore7tryWaitEv+0x28>

000000008000277c <_ZNK15KernelSemaphore8getValueEv>:
int KernelSemaphore::getValue() const {
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00813423          	sd	s0,8(sp)
    80002784:	01010413          	addi	s0,sp,16
    return value;
    80002788:	01852503          	lw	a0,24(a0)
}
    8000278c:	0005051b          	sext.w	a0,a0
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZNK15KernelSemaphore8isClosedEv>:
bool KernelSemaphore::isClosed() const {
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    return closed;
    800027a8:	01c54503          	lbu	a0,28(a0)
}
    800027ac:	0ff57513          	andi	a0,a0,255
    800027b0:	00813403          	ld	s0,8(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN15KernelSemaphore5closeEv>:
void KernelSemaphore::close() {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    800027d0:	00050493          	mv	s1,a0
    closed = true;
    800027d4:	00100793          	li	a5,1
    800027d8:	00f50e23          	sb	a5,28(a0)
        }
        return tail->data;
    }

    bool isEmpty() const {
        return head == nullptr;
    800027dc:	0084b703          	ld	a4,8(s1)
    while (!blocked.isEmpty()) {
    800027e0:	00070a63          	beqz	a4,800027f4 <_ZN15KernelSemaphore5closeEv+0x38>
        unblock();
    800027e4:	00048513          	mv	a0,s1
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	c84080e7          	jalr	-892(ra) # 8000246c <_ZN15KernelSemaphore7unblockEv>
    while (!blocked.isEmpty()) {
    800027f0:	fedff06f          	j	800027dc <_ZN15KernelSemaphore5closeEv+0x20>
    }

    void removeFromList(const T *data) {
        Element *prev = nullptr, *curr = head;
    800027f4:	00009797          	auipc	a5,0x9
    800027f8:	2447b783          	ld	a5,580(a5) # 8000ba38 <_ZN15KernelSemaphore18declaredSemaphoresE>
    800027fc:	0140006f          	j	80002810 <_ZN15KernelSemaphore5closeEv+0x54>
        while (curr) {
            if (curr->data == data) {
                (prev ? prev->next : head) = curr->next;
    80002800:	02070263          	beqz	a4,80002824 <_ZN15KernelSemaphore5closeEv+0x68>
    80002804:	0087b683          	ld	a3,8(a5)
    80002808:	00d73423          	sd	a3,8(a4)
            } else {
                prev = curr;
            }
            curr = curr->next;
    8000280c:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80002810:	02078263          	beqz	a5,80002834 <_ZN15KernelSemaphore5closeEv+0x78>
            if (curr->data == data) {
    80002814:	0007b683          	ld	a3,0(a5)
    80002818:	fed484e3          	beq	s1,a3,80002800 <_ZN15KernelSemaphore5closeEv+0x44>
                prev = curr;
    8000281c:	00078713          	mv	a4,a5
    80002820:	fedff06f          	j	8000280c <_ZN15KernelSemaphore5closeEv+0x50>
                (prev ? prev->next : head) = curr->next;
    80002824:	0087b683          	ld	a3,8(a5)
    80002828:	00009617          	auipc	a2,0x9
    8000282c:	20d63823          	sd	a3,528(a2) # 8000ba38 <_ZN15KernelSemaphore18declaredSemaphoresE>
    80002830:	fddff06f          	j	8000280c <_ZN15KernelSemaphore5closeEv+0x50>
}
    80002834:	01813083          	ld	ra,24(sp)
    80002838:	01013403          	ld	s0,16(sp)
    8000283c:	00813483          	ld	s1,8(sp)
    80002840:	02010113          	addi	sp,sp,32
    80002844:	00008067          	ret

0000000080002848 <_ZN15KernelSemaphore18updateIndividuallyEv>:
void KernelSemaphore::updateIndividually() {
    80002848:	fe010113          	addi	sp,sp,-32
    8000284c:	00113c23          	sd	ra,24(sp)
    80002850:	00813823          	sd	s0,16(sp)
    80002854:	00913423          	sd	s1,8(sp)
    80002858:	01213023          	sd	s2,0(sp)
    8000285c:	02010413          	addi	s0,sp,32
    80002860:	00050493          	mv	s1,a0
    80002864:	0180006f          	j	8000287c <_ZN15KernelSemaphore18updateIndividuallyEv+0x34>
        blocked.peekFirst()->interruptResult = TIMEOUT;
    80002868:	ffe00713          	li	a4,-2
    8000286c:	02e7bc23          	sd	a4,56(a5)
        unblock();
    80002870:	00048513          	mv	a0,s1
    80002874:	00000097          	auipc	ra,0x0
    80002878:	bf8080e7          	jalr	-1032(ra) # 8000246c <_ZN15KernelSemaphore7unblockEv>
        return head == nullptr;
    8000287c:	0084b783          	ld	a5,8(s1)
    while (!blocked.isEmpty() && blocked.peekFirst()->whenFinished <= Timer::now()) {
    80002880:	02078663          	beqz	a5,800028ac <_ZN15KernelSemaphore18updateIndividuallyEv+0x64>
        if (!head) {
    80002884:	00078463          	beqz	a5,8000288c <_ZN15KernelSemaphore18updateIndividuallyEv+0x44>
        return head->data;
    80002888:	0007b783          	ld	a5,0(a5)
    8000288c:	0307b903          	ld	s2,48(a5)
    80002890:	00000097          	auipc	ra,0x0
    80002894:	14c080e7          	jalr	332(ra) # 800029dc <_ZN5Timer3nowEv>
    80002898:	01256a63          	bltu	a0,s2,800028ac <_ZN15KernelSemaphore18updateIndividuallyEv+0x64>
        if (!head) {
    8000289c:	0084b783          	ld	a5,8(s1)
    800028a0:	fc0784e3          	beqz	a5,80002868 <_ZN15KernelSemaphore18updateIndividuallyEv+0x20>
        return head->data;
    800028a4:	0007b783          	ld	a5,0(a5)
    800028a8:	fc1ff06f          	j	80002868 <_ZN15KernelSemaphore18updateIndividuallyEv+0x20>
}
    800028ac:	01813083          	ld	ra,24(sp)
    800028b0:	01013403          	ld	s0,16(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	00013903          	ld	s2,0(sp)
    800028bc:	02010113          	addi	sp,sp,32
    800028c0:	00008067          	ret

00000000800028c4 <_ZN15KernelSemaphore6updateEv>:
void KernelSemaphore::update() {
    800028c4:	fe010113          	addi	sp,sp,-32
    800028c8:	00113c23          	sd	ra,24(sp)
    800028cc:	00813823          	sd	s0,16(sp)
    800028d0:	00913423          	sd	s1,8(sp)
    800028d4:	02010413          	addi	s0,sp,32
    for (auto *curr = declaredSemaphores.head; curr; curr = curr->next) {
    800028d8:	00009497          	auipc	s1,0x9
    800028dc:	1604b483          	ld	s1,352(s1) # 8000ba38 <_ZN15KernelSemaphore18declaredSemaphoresE>
    800028e0:	00048c63          	beqz	s1,800028f8 <_ZN15KernelSemaphore6updateEv+0x34>
        curr->data->updateIndividually();
    800028e4:	0004b503          	ld	a0,0(s1)
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	f60080e7          	jalr	-160(ra) # 80002848 <_ZN15KernelSemaphore18updateIndividuallyEv>
    for (auto *curr = declaredSemaphores.head; curr; curr = curr->next) {
    800028f0:	0084b483          	ld	s1,8(s1)
    800028f4:	fedff06f          	j	800028e0 <_ZN15KernelSemaphore6updateEv+0x1c>
}
    800028f8:	01813083          	ld	ra,24(sp)
    800028fc:	01013403          	ld	s0,16(sp)
    80002900:	00813483          	ld	s1,8(sp)
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00008067          	ret

000000008000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>:
KernelSemaphore *KernelSemaphore::createKernelSemaphore(uint64 value) {
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	01213023          	sd	s2,0(sp)
    80002920:	02010413          	addi	s0,sp,32
    80002924:	00050913          	mv	s2,a0
    KernelSemaphore *handle = new KernelSemaphore(value);
    80002928:	02000513          	li	a0,32
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	480080e7          	jalr	1152(ra) # 80001dac <_ZN11KernelClassnwEm>
    80002934:	00050493          	mv	s1,a0
    List() : head(0), tail(0) {}
    80002938:	00053423          	sd	zero,8(a0)
    8000293c:	00053823          	sd	zero,16(a0)
private:
    List<KernelThread> blocked;
    volatile int value;
    volatile bool closed;

    KernelSemaphore(uint64 value = 1) : value((int) value), closed(false) {}
    80002940:	0009091b          	sext.w	s2,s2
    80002944:	01252c23          	sw	s2,24(a0)
    80002948:	00050e23          	sb	zero,28(a0)
        Element *element = new Element(data, 0);
    8000294c:	01000513          	li	a0,16
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	45c080e7          	jalr	1116(ra) # 80001dac <_ZN11KernelClassnwEm>
        Element(T *data, Element *next) : data(data), next(next) {}
    80002958:	00953023          	sd	s1,0(a0)
    8000295c:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002960:	00009797          	auipc	a5,0x9
    80002964:	0e07b783          	ld	a5,224(a5) # 8000ba40 <_ZN15KernelSemaphore18declaredSemaphoresE+0x8>
    80002968:	02078663          	beqz	a5,80002994 <_ZN15KernelSemaphore21createKernelSemaphoreEm+0x88>
            tail->next = element;
    8000296c:	00a7b423          	sd	a0,8(a5)
            tail = element;
    80002970:	00009797          	auipc	a5,0x9
    80002974:	0ca7b823          	sd	a0,208(a5) # 8000ba40 <_ZN15KernelSemaphore18declaredSemaphoresE+0x8>
}
    80002978:	00048513          	mv	a0,s1
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	00013903          	ld	s2,0(sp)
    8000298c:	02010113          	addi	sp,sp,32
    80002990:	00008067          	ret
            head = tail = element;
    80002994:	00009797          	auipc	a5,0x9
    80002998:	0a478793          	addi	a5,a5,164 # 8000ba38 <_ZN15KernelSemaphore18declaredSemaphoresE>
    8000299c:	00a7b423          	sd	a0,8(a5)
    800029a0:	00a7b023          	sd	a0,0(a5)
    return handle;
    800029a4:	fd5ff06f          	j	80002978 <_ZN15KernelSemaphore21createKernelSemaphoreEm+0x6c>

00000000800029a8 <_GLOBAL__sub_I__ZN15KernelSemaphore18declaredSemaphoresE>:
}
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00113423          	sd	ra,8(sp)
    800029b0:	00813023          	sd	s0,0(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	000105b7          	lui	a1,0x10
    800029bc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800029c0:	00100513          	li	a0,1
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	a68080e7          	jalr	-1432(ra) # 8000242c <_Z41__static_initialization_and_destruction_0ii>
    800029cc:	00813083          	ld	ra,8(sp)
    800029d0:	00013403          	ld	s0,0(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN5Timer3nowEv>:
#include "../h/Timer.hpp"

uint64 Timer::timeCounter = 0;

uint64 Timer::now() {
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813423          	sd	s0,8(sp)
    800029e4:	01010413          	addi	s0,sp,16
    return timeCounter;
}
    800029e8:	00009517          	auipc	a0,0x9
    800029ec:	06053503          	ld	a0,96(a0) # 8000ba48 <_ZN5Timer11timeCounterE>
    800029f0:	00813403          	ld	s0,8(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_ZN5Timer6updateEv>:

void Timer::update() {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00813423          	sd	s0,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    timeCounter++;
    80002a08:	00009717          	auipc	a4,0x9
    80002a0c:	04070713          	addi	a4,a4,64 # 8000ba48 <_ZN5Timer11timeCounterE>
    80002a10:	00073783          	ld	a5,0(a4)
    80002a14:	00178793          	addi	a5,a5,1
    80002a18:	00f73023          	sd	a5,0(a4)
}
    80002a1c:	00813403          	ld	s0,8(sp)
    80002a20:	01010113          	addi	sp,sp,16
    80002a24:	00008067          	ret

0000000080002a28 <_ZL7alignUpPKv>:
#include "../h/MemoryAllocator.hpp"

static const void *alignUp(const void *address) {
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00813423          	sd	s0,8(sp)
    80002a30:	01010413          	addi	s0,sp,16
    size_t result = (size_t) address;
    if (result % MEM_BLOCK_SIZE) result = (result / MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;
    80002a34:	03f57793          	andi	a5,a0,63
    80002a38:	00078863          	beqz	a5,80002a48 <_ZL7alignUpPKv+0x20>
    80002a3c:	00655513          	srli	a0,a0,0x6
    80002a40:	00150513          	addi	a0,a0,1
    80002a44:	00651513          	slli	a0,a0,0x6
    return (const void *) result;
}
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret

0000000080002a54 <_ZL9alignDownPKv>:

static const void *alignDown(const void *address) {
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    return (const void *) ((size_t) address / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
}
    80002a60:	fc057513          	andi	a0,a0,-64
    80002a64:	00813403          	ld	s0,8(sp)
    80002a68:	01010113          	addi	sp,sp,16
    80002a6c:	00008067          	ret

0000000080002a70 <_ZN15MemoryAllocatorC1Ev>:

MemoryAllocator::MemoryAllocator() {
    80002a70:	fe010113          	addi	sp,sp,-32
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00813823          	sd	s0,16(sp)
    80002a7c:	00913423          	sd	s1,8(sp)
    80002a80:	01213023          	sd	s2,0(sp)
    80002a84:	02010413          	addi	s0,sp,32
    80002a88:	00050913          	mv	s2,a0
    head = (BlockHeader *) alignUp(HEAP_START_ADDR);
    80002a8c:	00009797          	auipc	a5,0x9
    80002a90:	eec7b783          	ld	a5,-276(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a94:	0007b503          	ld	a0,0(a5)
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	f90080e7          	jalr	-112(ra) # 80002a28 <_ZL7alignUpPKv>
    80002aa0:	00050493          	mv	s1,a0
    80002aa4:	00a93023          	sd	a0,0(s2)
    head->numberOfBlock = ((char *) alignDown(HEAP_END_ADDR) - (char *) head) / MEM_BLOCK_SIZE;
    80002aa8:	00009797          	auipc	a5,0x9
    80002aac:	f007b783          	ld	a5,-256(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ab0:	0007b503          	ld	a0,0(a5)
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	fa0080e7          	jalr	-96(ra) # 80002a54 <_ZL9alignDownPKv>
    80002abc:	409507b3          	sub	a5,a0,s1
    80002ac0:	0067d793          	srli	a5,a5,0x6
    80002ac4:	00f4b423          	sd	a5,8(s1)
    head->next = nullptr;
    80002ac8:	00093783          	ld	a5,0(s2)
    80002acc:	0007b023          	sd	zero,0(a5)
}
    80002ad0:	01813083          	ld	ra,24(sp)
    80002ad4:	01013403          	ld	s0,16(sp)
    80002ad8:	00813483          	ld	s1,8(sp)
    80002adc:	00013903          	ld	s2,0(sp)
    80002ae0:	02010113          	addi	sp,sp,32
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN15MemoryAllocator6mallocEm>:

void *MemoryAllocator::malloc(size_t numberOfBlocks) {
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00813423          	sd	s0,8(sp)
    80002af0:	01010413          	addi	s0,sp,16
    80002af4:	00050693          	mv	a3,a0
    // we need one more block for bookkeeping
    numberOfBlocks++;
    80002af8:	00158593          	addi	a1,a1,1

    BlockHeader *current = head, *previous = nullptr;
    80002afc:	00053503          	ld	a0,0(a0)
    80002b00:	00000713          	li	a4,0
    while (current && current->numberOfBlock < numberOfBlocks) {
    80002b04:	00050c63          	beqz	a0,80002b1c <_ZN15MemoryAllocator6mallocEm+0x34>
    80002b08:	00853783          	ld	a5,8(a0)
    80002b0c:	00b7f863          	bgeu	a5,a1,80002b1c <_ZN15MemoryAllocator6mallocEm+0x34>
        previous = current;
    80002b10:	00050713          	mv	a4,a0
        current = current->next;
    80002b14:	00053503          	ld	a0,0(a0)
    while (current && current->numberOfBlock < numberOfBlocks) {
    80002b18:	fedff06f          	j	80002b04 <_ZN15MemoryAllocator6mallocEm+0x1c>
    }
    if (!current) {
    80002b1c:	02050c63          	beqz	a0,80002b54 <_ZN15MemoryAllocator6mallocEm+0x6c>
        // not enough memory
        return nullptr;
    }
    if (current->numberOfBlock > numberOfBlocks) {
    80002b20:	00853783          	ld	a5,8(a0)
    80002b24:	04f5f263          	bgeu	a1,a5,80002b68 <_ZN15MemoryAllocator6mallocEm+0x80>
        BlockHeader *newBlock = (BlockHeader *) ((char *)current + numberOfBlocks * MEM_BLOCK_SIZE);
    80002b28:	00659793          	slli	a5,a1,0x6
    80002b2c:	00f507b3          	add	a5,a0,a5
        (previous ? previous->next : head) = newBlock;
    80002b30:	02070863          	beqz	a4,80002b60 <_ZN15MemoryAllocator6mallocEm+0x78>
    80002b34:	00f73023          	sd	a5,0(a4)
        newBlock->numberOfBlock = current->numberOfBlock - numberOfBlocks;
    80002b38:	00853703          	ld	a4,8(a0)
    80002b3c:	40b70733          	sub	a4,a4,a1
    80002b40:	00e7b423          	sd	a4,8(a5)
        newBlock->next = current->next;
    80002b44:	00053703          	ld	a4,0(a0)
    80002b48:	00e7b023          	sd	a4,0(a5)
        // bookkeeping
        current->numberOfBlock = numberOfBlocks;
    80002b4c:	00b53423          	sd	a1,8(a0)
    } else if (previous) {
        previous->next = current->next;
    } else {
        head = current->next;
    }
    return (char *) current + MEM_BLOCK_SIZE;
    80002b50:	04050513          	addi	a0,a0,64
}
    80002b54:	00813403          	ld	s0,8(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret
        (previous ? previous->next : head) = newBlock;
    80002b60:	00f6b023          	sd	a5,0(a3)
    80002b64:	fd5ff06f          	j	80002b38 <_ZN15MemoryAllocator6mallocEm+0x50>
    } else if (previous) {
    80002b68:	00070863          	beqz	a4,80002b78 <_ZN15MemoryAllocator6mallocEm+0x90>
        previous->next = current->next;
    80002b6c:	00053783          	ld	a5,0(a0)
    80002b70:	00f73023          	sd	a5,0(a4)
    80002b74:	fddff06f          	j	80002b50 <_ZN15MemoryAllocator6mallocEm+0x68>
        head = current->next;
    80002b78:	00053783          	ld	a5,0(a0)
    80002b7c:	00f6b023          	sd	a5,0(a3)
    80002b80:	fd1ff06f          	j	80002b50 <_ZN15MemoryAllocator6mallocEm+0x68>

0000000080002b84 <_ZN15MemoryAllocator11getInstanceEv>:
    merge(block);
    return SUCCESS;
}

MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    80002b84:	00009797          	auipc	a5,0x9
    80002b88:	ecc7c783          	lbu	a5,-308(a5) # 8000ba50 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002b8c:	00078863          	beqz	a5,80002b9c <_ZN15MemoryAllocator11getInstanceEv+0x18>
    return instance;
}
    80002b90:	00009517          	auipc	a0,0x9
    80002b94:	ec850513          	addi	a0,a0,-312 # 8000ba58 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002b98:	00008067          	ret
MemoryAllocator &MemoryAllocator::getInstance() {
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	00813023          	sd	s0,0(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80002bac:	00009517          	auipc	a0,0x9
    80002bb0:	eac50513          	addi	a0,a0,-340 # 8000ba58 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	ebc080e7          	jalr	-324(ra) # 80002a70 <_ZN15MemoryAllocatorC1Ev>
    80002bbc:	00100793          	li	a5,1
    80002bc0:	00009717          	auipc	a4,0x9
    80002bc4:	e8f70823          	sb	a5,-368(a4) # 8000ba50 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
}
    80002bc8:	00009517          	auipc	a0,0x9
    80002bcc:	e9050513          	addi	a0,a0,-368 # 8000ba58 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002bd0:	00813083          	ld	ra,8(sp)
    80002bd4:	00013403          	ld	s0,0(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret

0000000080002be0 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE>:

void MemoryAllocator::merge(BlockHeader *block) {
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00813423          	sd	s0,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    if (block && block->next && (char *)block + block->numberOfBlock * MEM_BLOCK_SIZE == (char *) block->next) {
    80002bec:	00058e63          	beqz	a1,80002c08 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE+0x28>
    80002bf0:	0005b783          	ld	a5,0(a1)
    80002bf4:	00078a63          	beqz	a5,80002c08 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE+0x28>
    80002bf8:	0085b683          	ld	a3,8(a1)
    80002bfc:	00669713          	slli	a4,a3,0x6
    80002c00:	00e58733          	add	a4,a1,a4
    80002c04:	00e78863          	beq	a5,a4,80002c14 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE+0x34>
        block->numberOfBlock += block->next->numberOfBlock;
        block->next = block->next->next;
    }
    80002c08:	00813403          	ld	s0,8(sp)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret
        block->numberOfBlock += block->next->numberOfBlock;
    80002c14:	0087b703          	ld	a4,8(a5)
    80002c18:	00e686b3          	add	a3,a3,a4
    80002c1c:	00d5b423          	sd	a3,8(a1)
        block->next = block->next->next;
    80002c20:	0007b783          	ld	a5,0(a5)
    80002c24:	00f5b023          	sd	a5,0(a1)
    80002c28:	fe1ff06f          	j	80002c08 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE+0x28>

0000000080002c2c <_ZN15MemoryAllocator4freeEPv>:
    if (!memory) {
    80002c2c:	0a058c63          	beqz	a1,80002ce4 <_ZN15MemoryAllocator4freeEPv+0xb8>
int MemoryAllocator::free(void *memory) {
    80002c30:	fe010113          	addi	sp,sp,-32
    80002c34:	00113c23          	sd	ra,24(sp)
    80002c38:	00813823          	sd	s0,16(sp)
    80002c3c:	00913423          	sd	s1,8(sp)
    80002c40:	01213023          	sd	s2,0(sp)
    80002c44:	02010413          	addi	s0,sp,32
    80002c48:	00050913          	mv	s2,a0
    80002c4c:	00058713          	mv	a4,a1
    BlockHeader *block = (BlockHeader *)((char *)memory - MEM_BLOCK_SIZE);
    80002c50:	fc058493          	addi	s1,a1,-64
    if ((size_t) block % MEM_BLOCK_SIZE) {
    80002c54:	03f5f793          	andi	a5,a1,63
    80002c58:	08079a63          	bnez	a5,80002cec <_ZN15MemoryAllocator4freeEPv+0xc0>
    if ((const void *) block < HEAP_START_ADDR || (const void *) block >= HEAP_END_ADDR) {
    80002c5c:	00009797          	auipc	a5,0x9
    80002c60:	d1c7b783          	ld	a5,-740(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c64:	0007b783          	ld	a5,0(a5)
    80002c68:	08f4e663          	bltu	s1,a5,80002cf4 <_ZN15MemoryAllocator4freeEPv+0xc8>
    80002c6c:	00009797          	auipc	a5,0x9
    80002c70:	d3c7b783          	ld	a5,-708(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c74:	0007b783          	ld	a5,0(a5)
    80002c78:	08f4f263          	bgeu	s1,a5,80002cfc <_ZN15MemoryAllocator4freeEPv+0xd0>
    BlockHeader *previous = nullptr, *current = head;
    80002c7c:	00053783          	ld	a5,0(a0)
    80002c80:	00000593          	li	a1,0
    80002c84:	00c0006f          	j	80002c90 <_ZN15MemoryAllocator4freeEPv+0x64>
        previous = current;
    80002c88:	00078593          	mv	a1,a5
        current = current->next;
    80002c8c:	0007b783          	ld	a5,0(a5)
    while (current && current < block) {
    80002c90:	00078463          	beqz	a5,80002c98 <_ZN15MemoryAllocator4freeEPv+0x6c>
    80002c94:	fe97eae3          	bltu	a5,s1,80002c88 <_ZN15MemoryAllocator4freeEPv+0x5c>
    block->next = current;
    80002c98:	fcf73023          	sd	a5,-64(a4)
    (previous ? previous->next : head) = block;
    80002c9c:	04058063          	beqz	a1,80002cdc <_ZN15MemoryAllocator4freeEPv+0xb0>
    80002ca0:	0095b023          	sd	s1,0(a1)
    merge(previous);
    80002ca4:	00090513          	mv	a0,s2
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	f38080e7          	jalr	-200(ra) # 80002be0 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE>
    merge(block);
    80002cb0:	00048593          	mv	a1,s1
    80002cb4:	00090513          	mv	a0,s2
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	f28080e7          	jalr	-216(ra) # 80002be0 <_ZN15MemoryAllocator5mergeEPNS_11BlockHeaderE>
    return SUCCESS;
    80002cc0:	00000513          	li	a0,0
}
    80002cc4:	01813083          	ld	ra,24(sp)
    80002cc8:	01013403          	ld	s0,16(sp)
    80002ccc:	00813483          	ld	s1,8(sp)
    80002cd0:	00013903          	ld	s2,0(sp)
    80002cd4:	02010113          	addi	sp,sp,32
    80002cd8:	00008067          	ret
    (previous ? previous->next : head) = block;
    80002cdc:	00993023          	sd	s1,0(s2)
    80002ce0:	fc5ff06f          	j	80002ca4 <_ZN15MemoryAllocator4freeEPv+0x78>
        return SUCCESS;
    80002ce4:	00000513          	li	a0,0
}
    80002ce8:	00008067          	ret
        return MEMORY_MISALIGNED;
    80002cec:	ffe00513          	li	a0,-2
    80002cf0:	fd5ff06f          	j	80002cc4 <_ZN15MemoryAllocator4freeEPv+0x98>
        return MEMORY_OUT_OF_BOUNDS;
    80002cf4:	fff00513          	li	a0,-1
    80002cf8:	fcdff06f          	j	80002cc4 <_ZN15MemoryAllocator4freeEPv+0x98>
    80002cfc:	fff00513          	li	a0,-1
    80002d00:	fc5ff06f          	j	80002cc4 <_ZN15MemoryAllocator4freeEPv+0x98>

0000000080002d04 <_ZN13KernelConsole11getInstanceEv>:
#include "../h/KernelConsole.hpp"

KernelConsole *KernelConsole::instance = nullptr;

KernelConsole &KernelConsole::getInstance() {
    if (!instance) {
    80002d04:	00009797          	auipc	a5,0x9
    80002d08:	d5c7b783          	ld	a5,-676(a5) # 8000ba60 <_ZN13KernelConsole8instanceE>
    80002d0c:	00078863          	beqz	a5,80002d1c <_ZN13KernelConsole11getInstanceEv+0x18>
        instance = new KernelConsole;
    }
    return *instance;
    80002d10:	00009517          	auipc	a0,0x9
    80002d14:	d5053503          	ld	a0,-688(a0) # 8000ba60 <_ZN13KernelConsole8instanceE>
}
    80002d18:	00008067          	ret
KernelConsole &KernelConsole::getInstance() {
    80002d1c:	fd010113          	addi	sp,sp,-48
    80002d20:	02113423          	sd	ra,40(sp)
    80002d24:	02813023          	sd	s0,32(sp)
    80002d28:	00913c23          	sd	s1,24(sp)
    80002d2c:	01213823          	sd	s2,16(sp)
    80002d30:	01313423          	sd	s3,8(sp)
    80002d34:	03010413          	addi	s0,sp,48
        instance = new KernelConsole;
    80002d38:	44800513          	li	a0,1096
    80002d3c:	fffff097          	auipc	ra,0xfffff
    80002d40:	070080e7          	jalr	112(ra) # 80001dac <_ZN11KernelClassnwEm>
    80002d44:	00050493          	mv	s1,a0
class KernelConsole : public KernelClass {
public:
    static Buffer<char> &getInput();
    static Buffer<char> &getOutput();
private:
    KernelConsole() = default;
    80002d48:	00850913          	addi	s2,a0,8
    Buffer() : mutex(KernelSemaphore::createKernelSemaphore(1)),
    80002d4c:	00100513          	li	a0,1
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	bbc080e7          	jalr	-1092(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
               head(0), tail(0) {}
    80002d58:	00a4b423          	sd	a0,8(s1)
               spaceAvailable(KernelSemaphore::createKernelSemaphore(N)),
    80002d5c:	20000513          	li	a0,512
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	bac080e7          	jalr	-1108(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
               head(0), tail(0) {}
    80002d68:	00a93423          	sd	a0,8(s2)
               itemAvailable(KernelSemaphore::createKernelSemaphore(0)),
    80002d6c:	00000513          	li	a0,0
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	b9c080e7          	jalr	-1124(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
               head(0), tail(0) {}
    80002d78:	00a93823          	sd	a0,16(s2)
    80002d7c:	20092c23          	sw	zero,536(s2)
    80002d80:	20092e23          	sw	zero,540(s2)
    80002d84:	22848993          	addi	s3,s1,552
    Buffer() : mutex(KernelSemaphore::createKernelSemaphore(1)),
    80002d88:	00100513          	li	a0,1
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	b80080e7          	jalr	-1152(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
               head(0), tail(0) {}
    80002d94:	22a4b423          	sd	a0,552(s1)
               spaceAvailable(KernelSemaphore::createKernelSemaphore(N)),
    80002d98:	20000513          	li	a0,512
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	b70080e7          	jalr	-1168(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
               head(0), tail(0) {}
    80002da4:	00a9b423          	sd	a0,8(s3)
               itemAvailable(KernelSemaphore::createKernelSemaphore(0)),
    80002da8:	00000513          	li	a0,0
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	b60080e7          	jalr	-1184(ra) # 8000290c <_ZN15KernelSemaphore21createKernelSemaphoreEm>
               head(0), tail(0) {}
    80002db4:	00a9b823          	sd	a0,16(s3)
    80002db8:	2009ac23          	sw	zero,536(s3)
    80002dbc:	2009ae23          	sw	zero,540(s3)
    80002dc0:	00009797          	auipc	a5,0x9
    80002dc4:	ca97b023          	sd	s1,-864(a5) # 8000ba60 <_ZN13KernelConsole8instanceE>
    return *instance;
    80002dc8:	00009517          	auipc	a0,0x9
    80002dcc:	c9853503          	ld	a0,-872(a0) # 8000ba60 <_ZN13KernelConsole8instanceE>
}
    80002dd0:	02813083          	ld	ra,40(sp)
    80002dd4:	02013403          	ld	s0,32(sp)
    80002dd8:	01813483          	ld	s1,24(sp)
    80002ddc:	01013903          	ld	s2,16(sp)
    80002de0:	00813983          	ld	s3,8(sp)
    80002de4:	03010113          	addi	sp,sp,48
    80002de8:	00008067          	ret
    80002dec:	00050993          	mv	s3,a0
        return result;
    }

    ~Buffer() {
        mutex->close();
    80002df0:	0084b503          	ld	a0,8(s1)
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	9c8080e7          	jalr	-1592(ra) # 800027bc <_ZN15KernelSemaphore5closeEv>
        itemAvailable->close();
    80002dfc:	01093503          	ld	a0,16(s2)
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	9bc080e7          	jalr	-1604(ra) # 800027bc <_ZN15KernelSemaphore5closeEv>
        spaceAvailable->close();
    80002e08:	00893503          	ld	a0,8(s2)
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	9b0080e7          	jalr	-1616(ra) # 800027bc <_ZN15KernelSemaphore5closeEv>
        delete mutex;
    80002e14:	0084b503          	ld	a0,8(s1)
    80002e18:	00050663          	beqz	a0,80002e24 <_ZN13KernelConsole11getInstanceEv+0x120>
    80002e1c:	fffff097          	auipc	ra,0xfffff
    80002e20:	020080e7          	jalr	32(ra) # 80001e3c <_ZN11KernelClassdlEPv>
        delete itemAvailable;
    80002e24:	01093503          	ld	a0,16(s2)
    80002e28:	00050663          	beqz	a0,80002e34 <_ZN13KernelConsole11getInstanceEv+0x130>
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	010080e7          	jalr	16(ra) # 80001e3c <_ZN11KernelClassdlEPv>
        delete spaceAvailable;
    80002e34:	00893503          	ld	a0,8(s2)
    80002e38:	00050663          	beqz	a0,80002e44 <_ZN13KernelConsole11getInstanceEv+0x140>
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	000080e7          	jalr	ra # 80001e3c <_ZN11KernelClassdlEPv>
        instance = new KernelConsole;
    80002e44:	00048513          	mv	a0,s1
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	ff4080e7          	jalr	-12(ra) # 80001e3c <_ZN11KernelClassdlEPv>
    80002e50:	00098513          	mv	a0,s3
    80002e54:	0000a097          	auipc	ra,0xa
    80002e58:	d44080e7          	jalr	-700(ra) # 8000cb98 <_Unwind_Resume>
    80002e5c:	00050993          	mv	s3,a0
    80002e60:	fe5ff06f          	j	80002e44 <_ZN13KernelConsole11getInstanceEv+0x140>

0000000080002e64 <_ZN13KernelConsole8getInputEv>:

Buffer<char> &KernelConsole::getInput() {
    80002e64:	ff010113          	addi	sp,sp,-16
    80002e68:	00113423          	sd	ra,8(sp)
    80002e6c:	00813023          	sd	s0,0(sp)
    80002e70:	01010413          	addi	s0,sp,16
    return getInstance().input;
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	e90080e7          	jalr	-368(ra) # 80002d04 <_ZN13KernelConsole11getInstanceEv>
}
    80002e7c:	00850513          	addi	a0,a0,8
    80002e80:	00813083          	ld	ra,8(sp)
    80002e84:	00013403          	ld	s0,0(sp)
    80002e88:	01010113          	addi	sp,sp,16
    80002e8c:	00008067          	ret

0000000080002e90 <_ZN13KernelConsole9getOutputEv>:

Buffer<char> &KernelConsole::getOutput() {
    80002e90:	ff010113          	addi	sp,sp,-16
    80002e94:	00113423          	sd	ra,8(sp)
    80002e98:	00813023          	sd	s0,0(sp)
    80002e9c:	01010413          	addi	s0,sp,16
    return getInstance().output;
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	e64080e7          	jalr	-412(ra) # 80002d04 <_ZN13KernelConsole11getInstanceEv>
}
    80002ea8:	22850513          	addi	a0,a0,552
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_ZNK12KernelThread10isFinishedEv>:

KernelThread *KernelThread::createThread(Body body, void *argument) {
    return new KernelThread(body, argument);
}

bool KernelThread::isFinished() const {
    80002ebc:	ff010113          	addi	sp,sp,-16
    80002ec0:	00813423          	sd	s0,8(sp)
    80002ec4:	01010413          	addi	s0,sp,16
    return finished;
}
    80002ec8:	02854503          	lbu	a0,40(a0)
    80002ecc:	00813403          	ld	s0,8(sp)
    80002ed0:	01010113          	addi	sp,sp,16
    80002ed4:	00008067          	ret

0000000080002ed8 <_ZN12KernelThread11setFinishedEb>:

void KernelThread::setFinished(bool finished) {
    80002ed8:	ff010113          	addi	sp,sp,-16
    80002edc:	00813423          	sd	s0,8(sp)
    80002ee0:	01010413          	addi	s0,sp,16
    KernelThread::finished = finished;
    80002ee4:	02b50423          	sb	a1,40(a0)
}
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <_ZN12KernelThread5yieldEv>:

#include "../h/syscall_c.hpp"
void KernelThread::yield() {
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	00813023          	sd	s0,0(sp)
    80002f00:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002f04:	ffffe097          	auipc	ra,0xffffe
    80002f08:	3a4080e7          	jalr	932(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002f0c:	00813083          	ld	ra,8(sp)
    80002f10:	00013403          	ld	s0,0(sp)
    80002f14:	01010113          	addi	sp,sp,16
    80002f18:	00008067          	ret

0000000080002f1c <_ZN12KernelThread7wrapperEv>:
    running = Scheduler::get();
    running->timeSliceCounter = 0;
    contextSwitch(&old->context, &running->context);
}

void KernelThread::wrapper() {
    80002f1c:	fe010113          	addi	sp,sp,-32
    80002f20:	00113c23          	sd	ra,24(sp)
    80002f24:	00813823          	sd	s0,16(sp)
    80002f28:	00913423          	sd	s1,8(sp)
    80002f2c:	02010413          	addi	s0,sp,32
    RISCV::popSppSpie();
    80002f30:	fffff097          	auipc	ra,0xfffff
    80002f34:	4bc080e7          	jalr	1212(ra) # 800023ec <_ZN5RISCV10popSppSpieEv>
    running->body(running->argument);
    80002f38:	00009497          	auipc	s1,0x9
    80002f3c:	b3048493          	addi	s1,s1,-1232 # 8000ba68 <_ZN12KernelThread7runningE>
    80002f40:	0004b783          	ld	a5,0(s1)
    80002f44:	0007b703          	ld	a4,0(a5)
    80002f48:	0087b503          	ld	a0,8(a5)
    80002f4c:	000700e7          	jalr	a4
    running->finished = true;
    80002f50:	0004b783          	ld	a5,0(s1)
    80002f54:	00100713          	li	a4,1
    80002f58:	02e78423          	sb	a4,40(a5)
    KernelThread::yield();
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	f98080e7          	jalr	-104(ra) # 80002ef4 <_ZN12KernelThread5yieldEv>
}
    80002f64:	01813083          	ld	ra,24(sp)
    80002f68:	01013403          	ld	s0,16(sp)
    80002f6c:	00813483          	ld	s1,8(sp)
    80002f70:	02010113          	addi	sp,sp,32
    80002f74:	00008067          	ret

0000000080002f78 <_ZN12KernelThread8dispatchEv>:
void KernelThread::dispatch() {
    80002f78:	fe010113          	addi	sp,sp,-32
    80002f7c:	00113c23          	sd	ra,24(sp)
    80002f80:	00813823          	sd	s0,16(sp)
    80002f84:	00913423          	sd	s1,8(sp)
    80002f88:	02010413          	addi	s0,sp,32
    KernelThread *old = running;
    80002f8c:	00009497          	auipc	s1,0x9
    80002f90:	adc4b483          	ld	s1,-1316(s1) # 8000ba68 <_ZN12KernelThread7runningE>
    if (!old->isFinished()) {
    80002f94:	00048513          	mv	a0,s1
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	f24080e7          	jalr	-220(ra) # 80002ebc <_ZNK12KernelThread10isFinishedEv>
    80002fa0:	04050063          	beqz	a0,80002fe0 <_ZN12KernelThread8dispatchEv+0x68>
    running = Scheduler::get();
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	5c0080e7          	jalr	1472(ra) # 80001564 <_ZN9Scheduler3getEv>
    80002fac:	00009797          	auipc	a5,0x9
    80002fb0:	abc78793          	addi	a5,a5,-1348 # 8000ba68 <_ZN12KernelThread7runningE>
    80002fb4:	00a7b023          	sd	a0,0(a5)
    running->timeSliceCounter = 0;
    80002fb8:	0007b423          	sd	zero,8(a5)
    contextSwitch(&old->context, &running->context);
    80002fbc:	01850593          	addi	a1,a0,24
    80002fc0:	01848513          	addi	a0,s1,24
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	14c080e7          	jalr	332(ra) # 80001110 <_ZN12KernelThread13contextSwitchEPNS_7ContextES1_>
}
    80002fcc:	01813083          	ld	ra,24(sp)
    80002fd0:	01013403          	ld	s0,16(sp)
    80002fd4:	00813483          	ld	s1,8(sp)
    80002fd8:	02010113          	addi	sp,sp,32
    80002fdc:	00008067          	ret
        Scheduler::put(old);
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	5e8080e7          	jalr	1512(ra) # 800015cc <_ZN9Scheduler3putEP12KernelThread>
    80002fec:	fb9ff06f          	j	80002fa4 <_ZN12KernelThread8dispatchEv+0x2c>

0000000080002ff0 <_ZN12KernelThreadD1Ev>:

KernelThread::~KernelThread() {
    80002ff0:	ff010113          	addi	sp,sp,-16
    80002ff4:	00113423          	sd	ra,8(sp)
    80002ff8:	00813023          	sd	s0,0(sp)
    80002ffc:	01010413          	addi	s0,sp,16
    kfree(stack);
    80003000:	01053503          	ld	a0,16(a0)
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	df8080e7          	jalr	-520(ra) # 80001dfc <_Z5kfreePv>
}
    8000300c:	00813083          	ld	ra,8(sp)
    80003010:	00013403          	ld	s0,0(sp)
    80003014:	01010113          	addi	sp,sp,16
    80003018:	00008067          	ret

000000008000301c <_ZNK12KernelThread18getInterruptResultEv>:

uint64 KernelThread::getInterruptResult() const {
    8000301c:	ff010113          	addi	sp,sp,-16
    80003020:	00813423          	sd	s0,8(sp)
    80003024:	01010413          	addi	s0,sp,16
    return interruptResult;
}
    80003028:	03853503          	ld	a0,56(a0)
    8000302c:	00813403          	ld	s0,8(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret

0000000080003038 <_ZN12KernelThreadC1EPFvPvES0_>:

KernelThread::KernelThread(Body body, void *argument)
    80003038:	fe010113          	addi	sp,sp,-32
    8000303c:	00113c23          	sd	ra,24(sp)
    80003040:	00813823          	sd	s0,16(sp)
    80003044:	00913423          	sd	s1,8(sp)
    80003048:	01213023          	sd	s2,0(sp)
    8000304c:	02010413          	addi	s0,sp,32
    80003050:	00050493          	mv	s1,a0
    80003054:	00058913          	mv	s2,a1
    : body(body), argument(argument),
      stack(body ? (uint64 *) kmalloc(DEFAULT_STACK_SIZE * sizeof(uint64)) : nullptr),
      context({(uint64) &wrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
      finished(false) {
    80003058:	00b53023          	sd	a1,0(a0)
    8000305c:	00c53423          	sd	a2,8(a0)
      stack(body ? (uint64 *) kmalloc(DEFAULT_STACK_SIZE * sizeof(uint64)) : nullptr),
    80003060:	04058e63          	beqz	a1,800030bc <_ZN12KernelThreadC1EPFvPvES0_+0x84>
    80003064:	00008537          	lui	a0,0x8
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	d04080e7          	jalr	-764(ra) # 80001d6c <_Z7kmallocm>
      finished(false) {
    80003070:	00a4b823          	sd	a0,16(s1)
    80003074:	00000797          	auipc	a5,0x0
    80003078:	ea878793          	addi	a5,a5,-344 # 80002f1c <_ZN12KernelThread7wrapperEv>
    8000307c:	00f4bc23          	sd	a5,24(s1)
      context({(uint64) &wrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
    80003080:	04050263          	beqz	a0,800030c4 <_ZN12KernelThreadC1EPFvPvES0_+0x8c>
    80003084:	000087b7          	lui	a5,0x8
    80003088:	00f50533          	add	a0,a0,a5
      finished(false) {
    8000308c:	02a4b023          	sd	a0,32(s1)
    80003090:	02048423          	sb	zero,40(s1)
    if (body) {
    80003094:	00090863          	beqz	s2,800030a4 <_ZN12KernelThreadC1EPFvPvES0_+0x6c>
        Scheduler::put(this);
    80003098:	00048513          	mv	a0,s1
    8000309c:	ffffe097          	auipc	ra,0xffffe
    800030a0:	530080e7          	jalr	1328(ra) # 800015cc <_ZN9Scheduler3putEP12KernelThread>
    }
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	01013403          	ld	s0,16(sp)
    800030ac:	00813483          	ld	s1,8(sp)
    800030b0:	00013903          	ld	s2,0(sp)
    800030b4:	02010113          	addi	sp,sp,32
    800030b8:	00008067          	ret
      stack(body ? (uint64 *) kmalloc(DEFAULT_STACK_SIZE * sizeof(uint64)) : nullptr),
    800030bc:	00000513          	li	a0,0
    800030c0:	fb1ff06f          	j	80003070 <_ZN12KernelThreadC1EPFvPvES0_+0x38>
      context({(uint64) &wrapper, stack ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0}),
    800030c4:	00000513          	li	a0,0
    800030c8:	fc5ff06f          	j	8000308c <_ZN12KernelThreadC1EPFvPvES0_+0x54>

00000000800030cc <_ZN12KernelThread12createThreadEPFvPvES0_>:
KernelThread *KernelThread::createThread(Body body, void *argument) {
    800030cc:	fd010113          	addi	sp,sp,-48
    800030d0:	02113423          	sd	ra,40(sp)
    800030d4:	02813023          	sd	s0,32(sp)
    800030d8:	00913c23          	sd	s1,24(sp)
    800030dc:	01213823          	sd	s2,16(sp)
    800030e0:	01313423          	sd	s3,8(sp)
    800030e4:	03010413          	addi	s0,sp,48
    800030e8:	00050913          	mv	s2,a0
    800030ec:	00058993          	mv	s3,a1
    return new KernelThread(body, argument);
    800030f0:	04000513          	li	a0,64
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	cb8080e7          	jalr	-840(ra) # 80001dac <_ZN11KernelClassnwEm>
    800030fc:	00050493          	mv	s1,a0
    80003100:	00098613          	mv	a2,s3
    80003104:	00090593          	mv	a1,s2
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	f30080e7          	jalr	-208(ra) # 80003038 <_ZN12KernelThreadC1EPFvPvES0_>
    80003110:	0200006f          	j	80003130 <_ZN12KernelThread12createThreadEPFvPvES0_+0x64>
    80003114:	00050913          	mv	s2,a0
    80003118:	00048513          	mv	a0,s1
    8000311c:	fffff097          	auipc	ra,0xfffff
    80003120:	d20080e7          	jalr	-736(ra) # 80001e3c <_ZN11KernelClassdlEPv>
    80003124:	00090513          	mv	a0,s2
    80003128:	0000a097          	auipc	ra,0xa
    8000312c:	a70080e7          	jalr	-1424(ra) # 8000cb98 <_Unwind_Resume>
}
    80003130:	00048513          	mv	a0,s1
    80003134:	02813083          	ld	ra,40(sp)
    80003138:	02013403          	ld	s0,32(sp)
    8000313c:	01813483          	ld	s1,24(sp)
    80003140:	01013903          	ld	s2,16(sp)
    80003144:	00813983          	ld	s3,8(sp)
    80003148:	03010113          	addi	sp,sp,48
    8000314c:	00008067          	ret

0000000080003150 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003150:	fe010113          	addi	sp,sp,-32
    80003154:	00113c23          	sd	ra,24(sp)
    80003158:	00813823          	sd	s0,16(sp)
    8000315c:	00913423          	sd	s1,8(sp)
    80003160:	01213023          	sd	s2,0(sp)
    80003164:	02010413          	addi	s0,sp,32
    80003168:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000316c:	00000913          	li	s2,0
    80003170:	00c0006f          	j	8000317c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	134080e7          	jalr	308(ra) # 800012a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	32c080e7          	jalr	812(ra) # 800014a8 <_Z4getcv>
    80003184:	00050593          	mv	a1,a0
    80003188:	01b00793          	li	a5,27
    8000318c:	02f50a63          	beq	a0,a5,800031c0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003190:	0084b503          	ld	a0,8(s1)
    80003194:	00003097          	auipc	ra,0x3
    80003198:	24c080e7          	jalr	588(ra) # 800063e0 <_ZN6Buffer3putEi>
        i++;
    8000319c:	0019071b          	addiw	a4,s2,1
    800031a0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800031a4:	0004a683          	lw	a3,0(s1)
    800031a8:	0026979b          	slliw	a5,a3,0x2
    800031ac:	00d787bb          	addw	a5,a5,a3
    800031b0:	0017979b          	slliw	a5,a5,0x1
    800031b4:	02f767bb          	remw	a5,a4,a5
    800031b8:	fc0792e3          	bnez	a5,8000317c <_ZL16producerKeyboardPv+0x2c>
    800031bc:	fb9ff06f          	j	80003174 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800031c0:	00100793          	li	a5,1
    800031c4:	00009717          	auipc	a4,0x9
    800031c8:	8af72a23          	sw	a5,-1868(a4) # 8000ba78 <_ZL9threadEnd>
    data->buffer->put('!');
    800031cc:	02100593          	li	a1,33
    800031d0:	0084b503          	ld	a0,8(s1)
    800031d4:	00003097          	auipc	ra,0x3
    800031d8:	20c080e7          	jalr	524(ra) # 800063e0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800031dc:	0104b503          	ld	a0,16(s1)
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	1c8080e7          	jalr	456(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>
}
    800031e8:	01813083          	ld	ra,24(sp)
    800031ec:	01013403          	ld	s0,16(sp)
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	00013903          	ld	s2,0(sp)
    800031f8:	02010113          	addi	sp,sp,32
    800031fc:	00008067          	ret

0000000080003200 <_ZL8producerPv>:

static void producer(void *arg) {
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00813823          	sd	s0,16(sp)
    8000320c:	00913423          	sd	s1,8(sp)
    80003210:	01213023          	sd	s2,0(sp)
    80003214:	02010413          	addi	s0,sp,32
    80003218:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000321c:	00000913          	li	s2,0
    80003220:	00c0006f          	j	8000322c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	084080e7          	jalr	132(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000322c:	00009797          	auipc	a5,0x9
    80003230:	84c7a783          	lw	a5,-1972(a5) # 8000ba78 <_ZL9threadEnd>
    80003234:	02079e63          	bnez	a5,80003270 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003238:	0004a583          	lw	a1,0(s1)
    8000323c:	0305859b          	addiw	a1,a1,48
    80003240:	0084b503          	ld	a0,8(s1)
    80003244:	00003097          	auipc	ra,0x3
    80003248:	19c080e7          	jalr	412(ra) # 800063e0 <_ZN6Buffer3putEi>
        i++;
    8000324c:	0019071b          	addiw	a4,s2,1
    80003250:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003254:	0004a683          	lw	a3,0(s1)
    80003258:	0026979b          	slliw	a5,a3,0x2
    8000325c:	00d787bb          	addw	a5,a5,a3
    80003260:	0017979b          	slliw	a5,a5,0x1
    80003264:	02f767bb          	remw	a5,a4,a5
    80003268:	fc0792e3          	bnez	a5,8000322c <_ZL8producerPv+0x2c>
    8000326c:	fb9ff06f          	j	80003224 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003270:	0104b503          	ld	a0,16(s1)
    80003274:	ffffe097          	auipc	ra,0xffffe
    80003278:	134080e7          	jalr	308(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>
}
    8000327c:	01813083          	ld	ra,24(sp)
    80003280:	01013403          	ld	s0,16(sp)
    80003284:	00813483          	ld	s1,8(sp)
    80003288:	00013903          	ld	s2,0(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret

0000000080003294 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003294:	fd010113          	addi	sp,sp,-48
    80003298:	02113423          	sd	ra,40(sp)
    8000329c:	02813023          	sd	s0,32(sp)
    800032a0:	00913c23          	sd	s1,24(sp)
    800032a4:	01213823          	sd	s2,16(sp)
    800032a8:	01313423          	sd	s3,8(sp)
    800032ac:	03010413          	addi	s0,sp,48
    800032b0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800032b4:	00000993          	li	s3,0
    800032b8:	01c0006f          	j	800032d4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800032bc:	ffffe097          	auipc	ra,0xffffe
    800032c0:	fec080e7          	jalr	-20(ra) # 800012a8 <_Z15thread_dispatchv>
    800032c4:	0500006f          	j	80003314 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800032c8:	00a00513          	li	a0,10
    800032cc:	ffffe097          	auipc	ra,0xffffe
    800032d0:	21c080e7          	jalr	540(ra) # 800014e8 <_Z4putcc>
    while (!threadEnd) {
    800032d4:	00008797          	auipc	a5,0x8
    800032d8:	7a47a783          	lw	a5,1956(a5) # 8000ba78 <_ZL9threadEnd>
    800032dc:	06079063          	bnez	a5,8000333c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800032e0:	00893503          	ld	a0,8(s2)
    800032e4:	00003097          	auipc	ra,0x3
    800032e8:	18c080e7          	jalr	396(ra) # 80006470 <_ZN6Buffer3getEv>
        i++;
    800032ec:	0019849b          	addiw	s1,s3,1
    800032f0:	0004899b          	sext.w	s3,s1
        putc(key);
    800032f4:	0ff57513          	andi	a0,a0,255
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	1f0080e7          	jalr	496(ra) # 800014e8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003300:	00092703          	lw	a4,0(s2)
    80003304:	0027179b          	slliw	a5,a4,0x2
    80003308:	00e787bb          	addw	a5,a5,a4
    8000330c:	02f4e7bb          	remw	a5,s1,a5
    80003310:	fa0786e3          	beqz	a5,800032bc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003314:	05000793          	li	a5,80
    80003318:	02f4e4bb          	remw	s1,s1,a5
    8000331c:	fa049ce3          	bnez	s1,800032d4 <_ZL8consumerPv+0x40>
    80003320:	fa9ff06f          	j	800032c8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003324:	00893503          	ld	a0,8(s2)
    80003328:	00003097          	auipc	ra,0x3
    8000332c:	148080e7          	jalr	328(ra) # 80006470 <_ZN6Buffer3getEv>
        putc(key);
    80003330:	0ff57513          	andi	a0,a0,255
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	1b4080e7          	jalr	436(ra) # 800014e8 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000333c:	00893503          	ld	a0,8(s2)
    80003340:	00003097          	auipc	ra,0x3
    80003344:	1bc080e7          	jalr	444(ra) # 800064fc <_ZN6Buffer6getCntEv>
    80003348:	fca04ee3          	bgtz	a0,80003324 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000334c:	01093503          	ld	a0,16(s2)
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	058080e7          	jalr	88(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>
}
    80003358:	02813083          	ld	ra,40(sp)
    8000335c:	02013403          	ld	s0,32(sp)
    80003360:	01813483          	ld	s1,24(sp)
    80003364:	01013903          	ld	s2,16(sp)
    80003368:	00813983          	ld	s3,8(sp)
    8000336c:	03010113          	addi	sp,sp,48
    80003370:	00008067          	ret

0000000080003374 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003374:	f9010113          	addi	sp,sp,-112
    80003378:	06113423          	sd	ra,104(sp)
    8000337c:	06813023          	sd	s0,96(sp)
    80003380:	04913c23          	sd	s1,88(sp)
    80003384:	05213823          	sd	s2,80(sp)
    80003388:	05313423          	sd	s3,72(sp)
    8000338c:	05413023          	sd	s4,64(sp)
    80003390:	03513c23          	sd	s5,56(sp)
    80003394:	03613823          	sd	s6,48(sp)
    80003398:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000339c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800033a0:	00006517          	auipc	a0,0x6
    800033a4:	dc050513          	addi	a0,a0,-576 # 80009160 <CONSOLE_STATUS+0x150>
    800033a8:	00002097          	auipc	ra,0x2
    800033ac:	068080e7          	jalr	104(ra) # 80005410 <_Z11printStringPKc>
    getString(input, 30);
    800033b0:	01e00593          	li	a1,30
    800033b4:	fa040493          	addi	s1,s0,-96
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	0dc080e7          	jalr	220(ra) # 80005498 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800033c4:	00048513          	mv	a0,s1
    800033c8:	00002097          	auipc	ra,0x2
    800033cc:	1ac080e7          	jalr	428(ra) # 80005574 <_Z11stringToIntPKc>
    800033d0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800033d4:	00006517          	auipc	a0,0x6
    800033d8:	dac50513          	addi	a0,a0,-596 # 80009180 <CONSOLE_STATUS+0x170>
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	034080e7          	jalr	52(ra) # 80005410 <_Z11printStringPKc>
    getString(input, 30);
    800033e4:	01e00593          	li	a1,30
    800033e8:	00048513          	mv	a0,s1
    800033ec:	00002097          	auipc	ra,0x2
    800033f0:	0ac080e7          	jalr	172(ra) # 80005498 <_Z9getStringPci>
    n = stringToInt(input);
    800033f4:	00048513          	mv	a0,s1
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	17c080e7          	jalr	380(ra) # 80005574 <_Z11stringToIntPKc>
    80003400:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003404:	00006517          	auipc	a0,0x6
    80003408:	d9c50513          	addi	a0,a0,-612 # 800091a0 <CONSOLE_STATUS+0x190>
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	004080e7          	jalr	4(ra) # 80005410 <_Z11printStringPKc>
    80003414:	00000613          	li	a2,0
    80003418:	00a00593          	li	a1,10
    8000341c:	00090513          	mv	a0,s2
    80003420:	00002097          	auipc	ra,0x2
    80003424:	1a4080e7          	jalr	420(ra) # 800055c4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	d9050513          	addi	a0,a0,-624 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	fe0080e7          	jalr	-32(ra) # 80005410 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	00048513          	mv	a0,s1
    80003444:	00002097          	auipc	ra,0x2
    80003448:	180080e7          	jalr	384(ra) # 800055c4 <_Z8printIntiii>
    printString(".\n");
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	d8450513          	addi	a0,a0,-636 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	fbc080e7          	jalr	-68(ra) # 80005410 <_Z11printStringPKc>
    if(threadNum > n) {
    8000345c:	0324c463          	blt	s1,s2,80003484 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003460:	03205c63          	blez	s2,80003498 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003464:	03800513          	li	a0,56
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	4d8080e7          	jalr	1240(ra) # 80001940 <_Znwm>
    80003470:	00050a13          	mv	s4,a0
    80003474:	00048593          	mv	a1,s1
    80003478:	00003097          	auipc	ra,0x3
    8000347c:	ecc080e7          	jalr	-308(ra) # 80006344 <_ZN6BufferC1Ei>
    80003480:	0300006f          	j	800034b0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003484:	00006517          	auipc	a0,0x6
    80003488:	d5450513          	addi	a0,a0,-684 # 800091d8 <CONSOLE_STATUS+0x1c8>
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	f84080e7          	jalr	-124(ra) # 80005410 <_Z11printStringPKc>
        return;
    80003494:	0140006f          	j	800034a8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003498:	00006517          	auipc	a0,0x6
    8000349c:	d8050513          	addi	a0,a0,-640 # 80009218 <CONSOLE_STATUS+0x208>
    800034a0:	00002097          	auipc	ra,0x2
    800034a4:	f70080e7          	jalr	-144(ra) # 80005410 <_Z11printStringPKc>
        return;
    800034a8:	000b0113          	mv	sp,s6
    800034ac:	1500006f          	j	800035fc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800034b0:	00000593          	li	a1,0
    800034b4:	00008517          	auipc	a0,0x8
    800034b8:	5cc50513          	addi	a0,a0,1484 # 8000ba80 <_ZL10waitForAll>
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	e28080e7          	jalr	-472(ra) # 800012e4 <_Z8sem_openPP15KernelSemaphorej>
    thread_t threads[threadNum];
    800034c4:	00391793          	slli	a5,s2,0x3
    800034c8:	00f78793          	addi	a5,a5,15
    800034cc:	ff07f793          	andi	a5,a5,-16
    800034d0:	40f10133          	sub	sp,sp,a5
    800034d4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800034d8:	0019071b          	addiw	a4,s2,1
    800034dc:	00171793          	slli	a5,a4,0x1
    800034e0:	00e787b3          	add	a5,a5,a4
    800034e4:	00379793          	slli	a5,a5,0x3
    800034e8:	00f78793          	addi	a5,a5,15
    800034ec:	ff07f793          	andi	a5,a5,-16
    800034f0:	40f10133          	sub	sp,sp,a5
    800034f4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800034f8:	00191613          	slli	a2,s2,0x1
    800034fc:	012607b3          	add	a5,a2,s2
    80003500:	00379793          	slli	a5,a5,0x3
    80003504:	00f987b3          	add	a5,s3,a5
    80003508:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000350c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003510:	00008717          	auipc	a4,0x8
    80003514:	57073703          	ld	a4,1392(a4) # 8000ba80 <_ZL10waitForAll>
    80003518:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000351c:	00078613          	mv	a2,a5
    80003520:	00000597          	auipc	a1,0x0
    80003524:	d7458593          	addi	a1,a1,-652 # 80003294 <_ZL8consumerPv>
    80003528:	f9840513          	addi	a0,s0,-104
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	cfc080e7          	jalr	-772(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003534:	00000493          	li	s1,0
    80003538:	0280006f          	j	80003560 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000353c:	00000597          	auipc	a1,0x0
    80003540:	c1458593          	addi	a1,a1,-1004 # 80003150 <_ZL16producerKeyboardPv>
                      data + i);
    80003544:	00179613          	slli	a2,a5,0x1
    80003548:	00f60633          	add	a2,a2,a5
    8000354c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003550:	00c98633          	add	a2,s3,a2
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	cd4080e7          	jalr	-812(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000355c:	0014849b          	addiw	s1,s1,1
    80003560:	0524d263          	bge	s1,s2,800035a4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003564:	00149793          	slli	a5,s1,0x1
    80003568:	009787b3          	add	a5,a5,s1
    8000356c:	00379793          	slli	a5,a5,0x3
    80003570:	00f987b3          	add	a5,s3,a5
    80003574:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003578:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000357c:	00008717          	auipc	a4,0x8
    80003580:	50473703          	ld	a4,1284(a4) # 8000ba80 <_ZL10waitForAll>
    80003584:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003588:	00048793          	mv	a5,s1
    8000358c:	00349513          	slli	a0,s1,0x3
    80003590:	00aa8533          	add	a0,s5,a0
    80003594:	fa9054e3          	blez	s1,8000353c <_Z22producerConsumer_C_APIv+0x1c8>
    80003598:	00000597          	auipc	a1,0x0
    8000359c:	c6858593          	addi	a1,a1,-920 # 80003200 <_ZL8producerPv>
    800035a0:	fa5ff06f          	j	80003544 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	d04080e7          	jalr	-764(ra) # 800012a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800035ac:	00000493          	li	s1,0
    800035b0:	00994e63          	blt	s2,s1,800035cc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800035b4:	00008517          	auipc	a0,0x8
    800035b8:	4cc53503          	ld	a0,1228(a0) # 8000ba80 <_ZL10waitForAll>
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	dac080e7          	jalr	-596(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800035c4:	0014849b          	addiw	s1,s1,1
    800035c8:	fe9ff06f          	j	800035b0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800035cc:	00008517          	auipc	a0,0x8
    800035d0:	4b453503          	ld	a0,1204(a0) # 8000ba80 <_ZL10waitForAll>
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	d54080e7          	jalr	-684(ra) # 80001328 <_Z9sem_closeP15KernelSemaphore>
    delete buffer;
    800035dc:	000a0e63          	beqz	s4,800035f8 <_Z22producerConsumer_C_APIv+0x284>
    800035e0:	000a0513          	mv	a0,s4
    800035e4:	00003097          	auipc	ra,0x3
    800035e8:	fa0080e7          	jalr	-96(ra) # 80006584 <_ZN6BufferD1Ev>
    800035ec:	000a0513          	mv	a0,s4
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	3a0080e7          	jalr	928(ra) # 80001990 <_ZdlPv>
    800035f8:	000b0113          	mv	sp,s6

}
    800035fc:	f9040113          	addi	sp,s0,-112
    80003600:	06813083          	ld	ra,104(sp)
    80003604:	06013403          	ld	s0,96(sp)
    80003608:	05813483          	ld	s1,88(sp)
    8000360c:	05013903          	ld	s2,80(sp)
    80003610:	04813983          	ld	s3,72(sp)
    80003614:	04013a03          	ld	s4,64(sp)
    80003618:	03813a83          	ld	s5,56(sp)
    8000361c:	03013b03          	ld	s6,48(sp)
    80003620:	07010113          	addi	sp,sp,112
    80003624:	00008067          	ret
    80003628:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000362c:	000a0513          	mv	a0,s4
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	360080e7          	jalr	864(ra) # 80001990 <_ZdlPv>
    80003638:	00048513          	mv	a0,s1
    8000363c:	00009097          	auipc	ra,0x9
    80003640:	55c080e7          	jalr	1372(ra) # 8000cb98 <_Unwind_Resume>

0000000080003644 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003644:	fe010113          	addi	sp,sp,-32
    80003648:	00113c23          	sd	ra,24(sp)
    8000364c:	00813823          	sd	s0,16(sp)
    80003650:	00913423          	sd	s1,8(sp)
    80003654:	01213023          	sd	s2,0(sp)
    80003658:	02010413          	addi	s0,sp,32
    8000365c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003660:	00100793          	li	a5,1
    80003664:	02a7f863          	bgeu	a5,a0,80003694 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003668:	00a00793          	li	a5,10
    8000366c:	02f577b3          	remu	a5,a0,a5
    80003670:	02078e63          	beqz	a5,800036ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003674:	fff48513          	addi	a0,s1,-1
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	fcc080e7          	jalr	-52(ra) # 80003644 <_ZL9fibonaccim>
    80003680:	00050913          	mv	s2,a0
    80003684:	ffe48513          	addi	a0,s1,-2
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	fbc080e7          	jalr	-68(ra) # 80003644 <_ZL9fibonaccim>
    80003690:	00a90533          	add	a0,s2,a0
}
    80003694:	01813083          	ld	ra,24(sp)
    80003698:	01013403          	ld	s0,16(sp)
    8000369c:	00813483          	ld	s1,8(sp)
    800036a0:	00013903          	ld	s2,0(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	bfc080e7          	jalr	-1028(ra) # 800012a8 <_Z15thread_dispatchv>
    800036b4:	fc1ff06f          	j	80003674 <_ZL9fibonaccim+0x30>

00000000800036b8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800036b8:	fe010113          	addi	sp,sp,-32
    800036bc:	00113c23          	sd	ra,24(sp)
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	01213023          	sd	s2,0(sp)
    800036cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800036d0:	00000913          	li	s2,0
    800036d4:	0380006f          	j	8000370c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	bd0080e7          	jalr	-1072(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036e0:	00148493          	addi	s1,s1,1
    800036e4:	000027b7          	lui	a5,0x2
    800036e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036ec:	0097ee63          	bltu	a5,s1,80003708 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036f0:	00000713          	li	a4,0
    800036f4:	000077b7          	lui	a5,0x7
    800036f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036fc:	fce7eee3          	bltu	a5,a4,800036d8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003700:	00170713          	addi	a4,a4,1
    80003704:	ff1ff06f          	j	800036f4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003708:	00190913          	addi	s2,s2,1
    8000370c:	00900793          	li	a5,9
    80003710:	0527e063          	bltu	a5,s2,80003750 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003714:	00006517          	auipc	a0,0x6
    80003718:	b3450513          	addi	a0,a0,-1228 # 80009248 <CONSOLE_STATUS+0x238>
    8000371c:	00002097          	auipc	ra,0x2
    80003720:	cf4080e7          	jalr	-780(ra) # 80005410 <_Z11printStringPKc>
    80003724:	00000613          	li	a2,0
    80003728:	00a00593          	li	a1,10
    8000372c:	0009051b          	sext.w	a0,s2
    80003730:	00002097          	auipc	ra,0x2
    80003734:	e94080e7          	jalr	-364(ra) # 800055c4 <_Z8printIntiii>
    80003738:	00006517          	auipc	a0,0x6
    8000373c:	d6050513          	addi	a0,a0,-672 # 80009498 <CONSOLE_STATUS+0x488>
    80003740:	00002097          	auipc	ra,0x2
    80003744:	cd0080e7          	jalr	-816(ra) # 80005410 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003748:	00000493          	li	s1,0
    8000374c:	f99ff06f          	j	800036e4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003750:	00006517          	auipc	a0,0x6
    80003754:	b0050513          	addi	a0,a0,-1280 # 80009250 <CONSOLE_STATUS+0x240>
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	cb8080e7          	jalr	-840(ra) # 80005410 <_Z11printStringPKc>
    finishedA = true;
    80003760:	00100793          	li	a5,1
    80003764:	00008717          	auipc	a4,0x8
    80003768:	32f70223          	sb	a5,804(a4) # 8000ba88 <_ZL9finishedA>
}
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	00013903          	ld	s2,0(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	01213023          	sd	s2,0(sp)
    80003798:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000379c:	00000913          	li	s2,0
    800037a0:	0380006f          	j	800037d8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	b04080e7          	jalr	-1276(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800037ac:	00148493          	addi	s1,s1,1
    800037b0:	000027b7          	lui	a5,0x2
    800037b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800037b8:	0097ee63          	bltu	a5,s1,800037d4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800037bc:	00000713          	li	a4,0
    800037c0:	000077b7          	lui	a5,0x7
    800037c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800037c8:	fce7eee3          	bltu	a5,a4,800037a4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800037cc:	00170713          	addi	a4,a4,1
    800037d0:	ff1ff06f          	j	800037c0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800037d4:	00190913          	addi	s2,s2,1
    800037d8:	00f00793          	li	a5,15
    800037dc:	0527e063          	bltu	a5,s2,8000381c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800037e0:	00006517          	auipc	a0,0x6
    800037e4:	a8050513          	addi	a0,a0,-1408 # 80009260 <CONSOLE_STATUS+0x250>
    800037e8:	00002097          	auipc	ra,0x2
    800037ec:	c28080e7          	jalr	-984(ra) # 80005410 <_Z11printStringPKc>
    800037f0:	00000613          	li	a2,0
    800037f4:	00a00593          	li	a1,10
    800037f8:	0009051b          	sext.w	a0,s2
    800037fc:	00002097          	auipc	ra,0x2
    80003800:	dc8080e7          	jalr	-568(ra) # 800055c4 <_Z8printIntiii>
    80003804:	00006517          	auipc	a0,0x6
    80003808:	c9450513          	addi	a0,a0,-876 # 80009498 <CONSOLE_STATUS+0x488>
    8000380c:	00002097          	auipc	ra,0x2
    80003810:	c04080e7          	jalr	-1020(ra) # 80005410 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003814:	00000493          	li	s1,0
    80003818:	f99ff06f          	j	800037b0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000381c:	00006517          	auipc	a0,0x6
    80003820:	a4c50513          	addi	a0,a0,-1460 # 80009268 <CONSOLE_STATUS+0x258>
    80003824:	00002097          	auipc	ra,0x2
    80003828:	bec080e7          	jalr	-1044(ra) # 80005410 <_Z11printStringPKc>
    finishedB = true;
    8000382c:	00100793          	li	a5,1
    80003830:	00008717          	auipc	a4,0x8
    80003834:	24f70ca3          	sb	a5,601(a4) # 8000ba89 <_ZL9finishedB>
    thread_dispatch();
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	a70080e7          	jalr	-1424(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	00813483          	ld	s1,8(sp)
    8000384c:	00013903          	ld	s2,0(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret

0000000080003858 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003858:	fe010113          	addi	sp,sp,-32
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	00813823          	sd	s0,16(sp)
    80003864:	00913423          	sd	s1,8(sp)
    80003868:	01213023          	sd	s2,0(sp)
    8000386c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003870:	00000493          	li	s1,0
    80003874:	0400006f          	j	800038b4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003878:	00006517          	auipc	a0,0x6
    8000387c:	a0050513          	addi	a0,a0,-1536 # 80009278 <CONSOLE_STATUS+0x268>
    80003880:	00002097          	auipc	ra,0x2
    80003884:	b90080e7          	jalr	-1136(ra) # 80005410 <_Z11printStringPKc>
    80003888:	00000613          	li	a2,0
    8000388c:	00a00593          	li	a1,10
    80003890:	00048513          	mv	a0,s1
    80003894:	00002097          	auipc	ra,0x2
    80003898:	d30080e7          	jalr	-720(ra) # 800055c4 <_Z8printIntiii>
    8000389c:	00006517          	auipc	a0,0x6
    800038a0:	bfc50513          	addi	a0,a0,-1028 # 80009498 <CONSOLE_STATUS+0x488>
    800038a4:	00002097          	auipc	ra,0x2
    800038a8:	b6c080e7          	jalr	-1172(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800038ac:	0014849b          	addiw	s1,s1,1
    800038b0:	0ff4f493          	andi	s1,s1,255
    800038b4:	00200793          	li	a5,2
    800038b8:	fc97f0e3          	bgeu	a5,s1,80003878 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	9c450513          	addi	a0,a0,-1596 # 80009280 <CONSOLE_STATUS+0x270>
    800038c4:	00002097          	auipc	ra,0x2
    800038c8:	b4c080e7          	jalr	-1204(ra) # 80005410 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800038cc:	00700313          	li	t1,7
    thread_dispatch();
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	9d8080e7          	jalr	-1576(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800038d8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800038dc:	00006517          	auipc	a0,0x6
    800038e0:	9b450513          	addi	a0,a0,-1612 # 80009290 <CONSOLE_STATUS+0x280>
    800038e4:	00002097          	auipc	ra,0x2
    800038e8:	b2c080e7          	jalr	-1236(ra) # 80005410 <_Z11printStringPKc>
    800038ec:	00000613          	li	a2,0
    800038f0:	00a00593          	li	a1,10
    800038f4:	0009051b          	sext.w	a0,s2
    800038f8:	00002097          	auipc	ra,0x2
    800038fc:	ccc080e7          	jalr	-820(ra) # 800055c4 <_Z8printIntiii>
    80003900:	00006517          	auipc	a0,0x6
    80003904:	b9850513          	addi	a0,a0,-1128 # 80009498 <CONSOLE_STATUS+0x488>
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	b08080e7          	jalr	-1272(ra) # 80005410 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003910:	00c00513          	li	a0,12
    80003914:	00000097          	auipc	ra,0x0
    80003918:	d30080e7          	jalr	-720(ra) # 80003644 <_ZL9fibonaccim>
    8000391c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003920:	00006517          	auipc	a0,0x6
    80003924:	97850513          	addi	a0,a0,-1672 # 80009298 <CONSOLE_STATUS+0x288>
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	ae8080e7          	jalr	-1304(ra) # 80005410 <_Z11printStringPKc>
    80003930:	00000613          	li	a2,0
    80003934:	00a00593          	li	a1,10
    80003938:	0009051b          	sext.w	a0,s2
    8000393c:	00002097          	auipc	ra,0x2
    80003940:	c88080e7          	jalr	-888(ra) # 800055c4 <_Z8printIntiii>
    80003944:	00006517          	auipc	a0,0x6
    80003948:	b5450513          	addi	a0,a0,-1196 # 80009498 <CONSOLE_STATUS+0x488>
    8000394c:	00002097          	auipc	ra,0x2
    80003950:	ac4080e7          	jalr	-1340(ra) # 80005410 <_Z11printStringPKc>
    80003954:	0400006f          	j	80003994 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003958:	00006517          	auipc	a0,0x6
    8000395c:	92050513          	addi	a0,a0,-1760 # 80009278 <CONSOLE_STATUS+0x268>
    80003960:	00002097          	auipc	ra,0x2
    80003964:	ab0080e7          	jalr	-1360(ra) # 80005410 <_Z11printStringPKc>
    80003968:	00000613          	li	a2,0
    8000396c:	00a00593          	li	a1,10
    80003970:	00048513          	mv	a0,s1
    80003974:	00002097          	auipc	ra,0x2
    80003978:	c50080e7          	jalr	-944(ra) # 800055c4 <_Z8printIntiii>
    8000397c:	00006517          	auipc	a0,0x6
    80003980:	b1c50513          	addi	a0,a0,-1252 # 80009498 <CONSOLE_STATUS+0x488>
    80003984:	00002097          	auipc	ra,0x2
    80003988:	a8c080e7          	jalr	-1396(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000398c:	0014849b          	addiw	s1,s1,1
    80003990:	0ff4f493          	andi	s1,s1,255
    80003994:	00500793          	li	a5,5
    80003998:	fc97f0e3          	bgeu	a5,s1,80003958 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000399c:	00006517          	auipc	a0,0x6
    800039a0:	8b450513          	addi	a0,a0,-1868 # 80009250 <CONSOLE_STATUS+0x240>
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	a6c080e7          	jalr	-1428(ra) # 80005410 <_Z11printStringPKc>
    finishedC = true;
    800039ac:	00100793          	li	a5,1
    800039b0:	00008717          	auipc	a4,0x8
    800039b4:	0cf70d23          	sb	a5,218(a4) # 8000ba8a <_ZL9finishedC>
    thread_dispatch();
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	8f0080e7          	jalr	-1808(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00813483          	ld	s1,8(sp)
    800039cc:	00013903          	ld	s2,0(sp)
    800039d0:	02010113          	addi	sp,sp,32
    800039d4:	00008067          	ret

00000000800039d8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800039d8:	fe010113          	addi	sp,sp,-32
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	01213023          	sd	s2,0(sp)
    800039ec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800039f0:	00a00493          	li	s1,10
    800039f4:	0400006f          	j	80003a34 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039f8:	00006517          	auipc	a0,0x6
    800039fc:	8b050513          	addi	a0,a0,-1872 # 800092a8 <CONSOLE_STATUS+0x298>
    80003a00:	00002097          	auipc	ra,0x2
    80003a04:	a10080e7          	jalr	-1520(ra) # 80005410 <_Z11printStringPKc>
    80003a08:	00000613          	li	a2,0
    80003a0c:	00a00593          	li	a1,10
    80003a10:	00048513          	mv	a0,s1
    80003a14:	00002097          	auipc	ra,0x2
    80003a18:	bb0080e7          	jalr	-1104(ra) # 800055c4 <_Z8printIntiii>
    80003a1c:	00006517          	auipc	a0,0x6
    80003a20:	a7c50513          	addi	a0,a0,-1412 # 80009498 <CONSOLE_STATUS+0x488>
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	9ec080e7          	jalr	-1556(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003a2c:	0014849b          	addiw	s1,s1,1
    80003a30:	0ff4f493          	andi	s1,s1,255
    80003a34:	00c00793          	li	a5,12
    80003a38:	fc97f0e3          	bgeu	a5,s1,800039f8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003a3c:	00006517          	auipc	a0,0x6
    80003a40:	87450513          	addi	a0,a0,-1932 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	9cc080e7          	jalr	-1588(ra) # 80005410 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003a4c:	00500313          	li	t1,5
    thread_dispatch();
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	858080e7          	jalr	-1960(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003a58:	01000513          	li	a0,16
    80003a5c:	00000097          	auipc	ra,0x0
    80003a60:	be8080e7          	jalr	-1048(ra) # 80003644 <_ZL9fibonaccim>
    80003a64:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003a68:	00006517          	auipc	a0,0x6
    80003a6c:	85850513          	addi	a0,a0,-1960 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	9a0080e7          	jalr	-1632(ra) # 80005410 <_Z11printStringPKc>
    80003a78:	00000613          	li	a2,0
    80003a7c:	00a00593          	li	a1,10
    80003a80:	0009051b          	sext.w	a0,s2
    80003a84:	00002097          	auipc	ra,0x2
    80003a88:	b40080e7          	jalr	-1216(ra) # 800055c4 <_Z8printIntiii>
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	a0c50513          	addi	a0,a0,-1524 # 80009498 <CONSOLE_STATUS+0x488>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	97c080e7          	jalr	-1668(ra) # 80005410 <_Z11printStringPKc>
    80003a9c:	0400006f          	j	80003adc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003aa0:	00006517          	auipc	a0,0x6
    80003aa4:	80850513          	addi	a0,a0,-2040 # 800092a8 <CONSOLE_STATUS+0x298>
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	968080e7          	jalr	-1688(ra) # 80005410 <_Z11printStringPKc>
    80003ab0:	00000613          	li	a2,0
    80003ab4:	00a00593          	li	a1,10
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	00002097          	auipc	ra,0x2
    80003ac0:	b08080e7          	jalr	-1272(ra) # 800055c4 <_Z8printIntiii>
    80003ac4:	00006517          	auipc	a0,0x6
    80003ac8:	9d450513          	addi	a0,a0,-1580 # 80009498 <CONSOLE_STATUS+0x488>
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	944080e7          	jalr	-1724(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ad4:	0014849b          	addiw	s1,s1,1
    80003ad8:	0ff4f493          	andi	s1,s1,255
    80003adc:	00f00793          	li	a5,15
    80003ae0:	fc97f0e3          	bgeu	a5,s1,80003aa0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	7ec50513          	addi	a0,a0,2028 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	924080e7          	jalr	-1756(ra) # 80005410 <_Z11printStringPKc>
    finishedD = true;
    80003af4:	00100793          	li	a5,1
    80003af8:	00008717          	auipc	a4,0x8
    80003afc:	f8f709a3          	sb	a5,-109(a4) # 8000ba8b <_ZL9finishedD>
    thread_dispatch();
    80003b00:	ffffd097          	auipc	ra,0xffffd
    80003b04:	7a8080e7          	jalr	1960(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	00013903          	ld	s2,0(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret

0000000080003b20 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003b20:	fc010113          	addi	sp,sp,-64
    80003b24:	02113c23          	sd	ra,56(sp)
    80003b28:	02813823          	sd	s0,48(sp)
    80003b2c:	02913423          	sd	s1,40(sp)
    80003b30:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003b34:	02000513          	li	a0,32
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	e08080e7          	jalr	-504(ra) # 80001940 <_Znwm>
    WorkerA():Thread() {}
    80003b40:	00008797          	auipc	a5,0x8
    80003b44:	c8078793          	addi	a5,a5,-896 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80003b48:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    80003b4c:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	79050513          	addi	a0,a0,1936 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	8b8080e7          	jalr	-1864(ra) # 80005410 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003b60:	02000513          	li	a0,32
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	ddc080e7          	jalr	-548(ra) # 80001940 <_Znwm>
    WorkerB():Thread() {}
    80003b6c:	00008797          	auipc	a5,0x8
    80003b70:	c7c78793          	addi	a5,a5,-900 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80003b74:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80003b78:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80003b7c:	00005517          	auipc	a0,0x5
    80003b80:	77c50513          	addi	a0,a0,1916 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	88c080e7          	jalr	-1908(ra) # 80005410 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003b8c:	02000513          	li	a0,32
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	db0080e7          	jalr	-592(ra) # 80001940 <_Znwm>
    WorkerC():Thread() {}
    80003b98:	00008797          	auipc	a5,0x8
    80003b9c:	c7878793          	addi	a5,a5,-904 # 8000b810 <_ZTV7WorkerC+0x10>
    80003ba0:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    80003ba4:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	76850513          	addi	a0,a0,1896 # 80009310 <CONSOLE_STATUS+0x300>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	860080e7          	jalr	-1952(ra) # 80005410 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003bb8:	02000513          	li	a0,32
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	d84080e7          	jalr	-636(ra) # 80001940 <_Znwm>
    WorkerD():Thread() {}
    80003bc4:	00008797          	auipc	a5,0x8
    80003bc8:	c7478793          	addi	a5,a5,-908 # 8000b838 <_ZTV7WorkerD+0x10>
    80003bcc:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80003bd0:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	75450513          	addi	a0,a0,1876 # 80009328 <CONSOLE_STATUS+0x318>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	834080e7          	jalr	-1996(ra) # 80005410 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003be4:	00000493          	li	s1,0
    80003be8:	00300793          	li	a5,3
    80003bec:	0297c663          	blt	a5,s1,80003c18 <_Z20Threads_CPP_API_testv+0xf8>
        threads[i]->start();
    80003bf0:	00349793          	slli	a5,s1,0x3
    80003bf4:	fe040713          	addi	a4,s0,-32
    80003bf8:	00f707b3          	add	a5,a4,a5
    80003bfc:	fe07b503          	ld	a0,-32(a5)
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	e78080e7          	jalr	-392(ra) # 80001a78 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003c08:	0014849b          	addiw	s1,s1,1
    80003c0c:	fddff06f          	j	80003be8 <_Z20Threads_CPP_API_testv+0xc8>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	ea0080e7          	jalr	-352(ra) # 80001ab0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003c18:	00008797          	auipc	a5,0x8
    80003c1c:	e707c783          	lbu	a5,-400(a5) # 8000ba88 <_ZL9finishedA>
    80003c20:	fe0788e3          	beqz	a5,80003c10 <_Z20Threads_CPP_API_testv+0xf0>
    80003c24:	00008797          	auipc	a5,0x8
    80003c28:	e657c783          	lbu	a5,-411(a5) # 8000ba89 <_ZL9finishedB>
    80003c2c:	fe0782e3          	beqz	a5,80003c10 <_Z20Threads_CPP_API_testv+0xf0>
    80003c30:	00008797          	auipc	a5,0x8
    80003c34:	e5a7c783          	lbu	a5,-422(a5) # 8000ba8a <_ZL9finishedC>
    80003c38:	fc078ce3          	beqz	a5,80003c10 <_Z20Threads_CPP_API_testv+0xf0>
    80003c3c:	00008797          	auipc	a5,0x8
    80003c40:	e4f7c783          	lbu	a5,-433(a5) # 8000ba8b <_ZL9finishedD>
    80003c44:	fc0786e3          	beqz	a5,80003c10 <_Z20Threads_CPP_API_testv+0xf0>
    80003c48:	fc040493          	addi	s1,s0,-64
    80003c4c:	0080006f          	j	80003c54 <_Z20Threads_CPP_API_testv+0x134>
    }

    for (auto thread: threads) { delete thread; }
    80003c50:	00848493          	addi	s1,s1,8
    80003c54:	fe040793          	addi	a5,s0,-32
    80003c58:	00f48e63          	beq	s1,a5,80003c74 <_Z20Threads_CPP_API_testv+0x154>
    80003c5c:	0004b503          	ld	a0,0(s1)
    80003c60:	fe0508e3          	beqz	a0,80003c50 <_Z20Threads_CPP_API_testv+0x130>
    80003c64:	00053783          	ld	a5,0(a0)
    80003c68:	0087b783          	ld	a5,8(a5)
    80003c6c:	000780e7          	jalr	a5
    80003c70:	fe1ff06f          	j	80003c50 <_Z20Threads_CPP_API_testv+0x130>
}
    80003c74:	03813083          	ld	ra,56(sp)
    80003c78:	03013403          	ld	s0,48(sp)
    80003c7c:	02813483          	ld	s1,40(sp)
    80003c80:	04010113          	addi	sp,sp,64
    80003c84:	00008067          	ret

0000000080003c88 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	00813023          	sd	s0,0(sp)
    80003c94:	01010413          	addi	s0,sp,16
    80003c98:	00008797          	auipc	a5,0x8
    80003c9c:	b2878793          	addi	a5,a5,-1240 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80003ca0:	00f53023          	sd	a5,0(a0)
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	c20080e7          	jalr	-992(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003cac:	00813083          	ld	ra,8(sp)
    80003cb0:	00013403          	ld	s0,0(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret

0000000080003cbc <_ZN7WorkerAD0Ev>:
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00113c23          	sd	ra,24(sp)
    80003cc4:	00813823          	sd	s0,16(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	00050493          	mv	s1,a0
    80003cd4:	00008797          	auipc	a5,0x8
    80003cd8:	aec78793          	addi	a5,a5,-1300 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80003cdc:	00f53023          	sd	a5,0(a0)
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	be4080e7          	jalr	-1052(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	ca4080e7          	jalr	-860(ra) # 80001990 <_ZdlPv>
    80003cf4:	01813083          	ld	ra,24(sp)
    80003cf8:	01013403          	ld	s0,16(sp)
    80003cfc:	00813483          	ld	s1,8(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret

0000000080003d08 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003d08:	ff010113          	addi	sp,sp,-16
    80003d0c:	00113423          	sd	ra,8(sp)
    80003d10:	00813023          	sd	s0,0(sp)
    80003d14:	01010413          	addi	s0,sp,16
    80003d18:	00008797          	auipc	a5,0x8
    80003d1c:	ad078793          	addi	a5,a5,-1328 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80003d20:	00f53023          	sd	a5,0(a0)
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	ba0080e7          	jalr	-1120(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003d2c:	00813083          	ld	ra,8(sp)
    80003d30:	00013403          	ld	s0,0(sp)
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret

0000000080003d3c <_ZN7WorkerBD0Ev>:
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    80003d50:	00050493          	mv	s1,a0
    80003d54:	00008797          	auipc	a5,0x8
    80003d58:	a9478793          	addi	a5,a5,-1388 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80003d5c:	00f53023          	sd	a5,0(a0)
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	b64080e7          	jalr	-1180(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	c24080e7          	jalr	-988(ra) # 80001990 <_ZdlPv>
    80003d74:	01813083          	ld	ra,24(sp)
    80003d78:	01013403          	ld	s0,16(sp)
    80003d7c:	00813483          	ld	s1,8(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00008067          	ret

0000000080003d88 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003d88:	ff010113          	addi	sp,sp,-16
    80003d8c:	00113423          	sd	ra,8(sp)
    80003d90:	00813023          	sd	s0,0(sp)
    80003d94:	01010413          	addi	s0,sp,16
    80003d98:	00008797          	auipc	a5,0x8
    80003d9c:	a7878793          	addi	a5,a5,-1416 # 8000b810 <_ZTV7WorkerC+0x10>
    80003da0:	00f53023          	sd	a5,0(a0)
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	b20080e7          	jalr	-1248(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003dac:	00813083          	ld	ra,8(sp)
    80003db0:	00013403          	ld	s0,0(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret

0000000080003dbc <_ZN7WorkerCD0Ev>:
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00050493          	mv	s1,a0
    80003dd4:	00008797          	auipc	a5,0x8
    80003dd8:	a3c78793          	addi	a5,a5,-1476 # 8000b810 <_ZTV7WorkerC+0x10>
    80003ddc:	00f53023          	sd	a5,0(a0)
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	ae4080e7          	jalr	-1308(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003de8:	00048513          	mv	a0,s1
    80003dec:	ffffe097          	auipc	ra,0xffffe
    80003df0:	ba4080e7          	jalr	-1116(ra) # 80001990 <_ZdlPv>
    80003df4:	01813083          	ld	ra,24(sp)
    80003df8:	01013403          	ld	s0,16(sp)
    80003dfc:	00813483          	ld	s1,8(sp)
    80003e00:	02010113          	addi	sp,sp,32
    80003e04:	00008067          	ret

0000000080003e08 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003e08:	ff010113          	addi	sp,sp,-16
    80003e0c:	00113423          	sd	ra,8(sp)
    80003e10:	00813023          	sd	s0,0(sp)
    80003e14:	01010413          	addi	s0,sp,16
    80003e18:	00008797          	auipc	a5,0x8
    80003e1c:	a2078793          	addi	a5,a5,-1504 # 8000b838 <_ZTV7WorkerD+0x10>
    80003e20:	00f53023          	sd	a5,0(a0)
    80003e24:	ffffe097          	auipc	ra,0xffffe
    80003e28:	aa0080e7          	jalr	-1376(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003e2c:	00813083          	ld	ra,8(sp)
    80003e30:	00013403          	ld	s0,0(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret

0000000080003e3c <_ZN7WorkerDD0Ev>:
    80003e3c:	fe010113          	addi	sp,sp,-32
    80003e40:	00113c23          	sd	ra,24(sp)
    80003e44:	00813823          	sd	s0,16(sp)
    80003e48:	00913423          	sd	s1,8(sp)
    80003e4c:	02010413          	addi	s0,sp,32
    80003e50:	00050493          	mv	s1,a0
    80003e54:	00008797          	auipc	a5,0x8
    80003e58:	9e478793          	addi	a5,a5,-1564 # 8000b838 <_ZTV7WorkerD+0x10>
    80003e5c:	00f53023          	sd	a5,0(a0)
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	a64080e7          	jalr	-1436(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80003e68:	00048513          	mv	a0,s1
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	b24080e7          	jalr	-1244(ra) # 80001990 <_ZdlPv>
    80003e74:	01813083          	ld	ra,24(sp)
    80003e78:	01013403          	ld	s0,16(sp)
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret

0000000080003e88 <_ZN7WorkerA3runEv>:
    void run() override {
    80003e88:	ff010113          	addi	sp,sp,-16
    80003e8c:	00113423          	sd	ra,8(sp)
    80003e90:	00813023          	sd	s0,0(sp)
    80003e94:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003e98:	00000593          	li	a1,0
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	81c080e7          	jalr	-2020(ra) # 800036b8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003ea4:	00813083          	ld	ra,8(sp)
    80003ea8:	00013403          	ld	s0,0(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003ec4:	00000593          	li	a1,0
    80003ec8:	00000097          	auipc	ra,0x0
    80003ecc:	8bc080e7          	jalr	-1860(ra) # 80003784 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ed0:	00813083          	ld	ra,8(sp)
    80003ed4:	00013403          	ld	s0,0(sp)
    80003ed8:	01010113          	addi	sp,sp,16
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00113423          	sd	ra,8(sp)
    80003ee8:	00813023          	sd	s0,0(sp)
    80003eec:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003ef0:	00000593          	li	a1,0
    80003ef4:	00000097          	auipc	ra,0x0
    80003ef8:	964080e7          	jalr	-1692(ra) # 80003858 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003efc:	00813083          	ld	ra,8(sp)
    80003f00:	00013403          	ld	s0,0(sp)
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00008067          	ret

0000000080003f0c <_ZN7WorkerD3runEv>:
    void run() override {
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00113423          	sd	ra,8(sp)
    80003f14:	00813023          	sd	s0,0(sp)
    80003f18:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003f1c:	00000593          	li	a1,0
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	ab8080e7          	jalr	-1352(ra) # 800039d8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003f28:	00813083          	ld	ra,8(sp)
    80003f2c:	00013403          	ld	s0,0(sp)
    80003f30:	01010113          	addi	sp,sp,16
    80003f34:	00008067          	ret

0000000080003f38 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003f38:	f9010113          	addi	sp,sp,-112
    80003f3c:	06113423          	sd	ra,104(sp)
    80003f40:	06813023          	sd	s0,96(sp)
    80003f44:	04913c23          	sd	s1,88(sp)
    80003f48:	05213823          	sd	s2,80(sp)
    80003f4c:	05313423          	sd	s3,72(sp)
    80003f50:	05413023          	sd	s4,64(sp)
    80003f54:	03513c23          	sd	s5,56(sp)
    80003f58:	03613823          	sd	s6,48(sp)
    80003f5c:	03713423          	sd	s7,40(sp)
    80003f60:	03813023          	sd	s8,32(sp)
    80003f64:	07010413          	addi	s0,sp,112
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f68:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f6c:	00005517          	auipc	a0,0x5
    80003f70:	1f450513          	addi	a0,a0,500 # 80009160 <CONSOLE_STATUS+0x150>
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	49c080e7          	jalr	1180(ra) # 80005410 <_Z11printStringPKc>
    getString(input, 30);
    80003f7c:	01e00593          	li	a1,30
    80003f80:	f9040493          	addi	s1,s0,-112
    80003f84:	00048513          	mv	a0,s1
    80003f88:	00001097          	auipc	ra,0x1
    80003f8c:	510080e7          	jalr	1296(ra) # 80005498 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f90:	00048513          	mv	a0,s1
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	5e0080e7          	jalr	1504(ra) # 80005574 <_Z11stringToIntPKc>
    80003f9c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003fa0:	00005517          	auipc	a0,0x5
    80003fa4:	1e050513          	addi	a0,a0,480 # 80009180 <CONSOLE_STATUS+0x170>
    80003fa8:	00001097          	auipc	ra,0x1
    80003fac:	468080e7          	jalr	1128(ra) # 80005410 <_Z11printStringPKc>
    getString(input, 30);
    80003fb0:	01e00593          	li	a1,30
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	4e0080e7          	jalr	1248(ra) # 80005498 <_Z9getStringPci>
    n = stringToInt(input);
    80003fc0:	00048513          	mv	a0,s1
    80003fc4:	00001097          	auipc	ra,0x1
    80003fc8:	5b0080e7          	jalr	1456(ra) # 80005574 <_Z11stringToIntPKc>
    80003fcc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003fd0:	00005517          	auipc	a0,0x5
    80003fd4:	1d050513          	addi	a0,a0,464 # 800091a0 <CONSOLE_STATUS+0x190>
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	438080e7          	jalr	1080(ra) # 80005410 <_Z11printStringPKc>
    printInt(threadNum);
    80003fe0:	00000613          	li	a2,0
    80003fe4:	00a00593          	li	a1,10
    80003fe8:	00098513          	mv	a0,s3
    80003fec:	00001097          	auipc	ra,0x1
    80003ff0:	5d8080e7          	jalr	1496(ra) # 800055c4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003ff4:	00005517          	auipc	a0,0x5
    80003ff8:	1c450513          	addi	a0,a0,452 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003ffc:	00001097          	auipc	ra,0x1
    80004000:	414080e7          	jalr	1044(ra) # 80005410 <_Z11printStringPKc>
    printInt(n);
    80004004:	00000613          	li	a2,0
    80004008:	00a00593          	li	a1,10
    8000400c:	00048513          	mv	a0,s1
    80004010:	00001097          	auipc	ra,0x1
    80004014:	5b4080e7          	jalr	1460(ra) # 800055c4 <_Z8printIntiii>
    printString(".\n");
    80004018:	00005517          	auipc	a0,0x5
    8000401c:	1b850513          	addi	a0,a0,440 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	3f0080e7          	jalr	1008(ra) # 80005410 <_Z11printStringPKc>
    if (threadNum > n) {
    80004028:	0334c463          	blt	s1,s3,80004050 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    8000402c:	03305c63          	blez	s3,80004064 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80004030:	03800513          	li	a0,56
    80004034:	ffffe097          	auipc	ra,0xffffe
    80004038:	90c080e7          	jalr	-1780(ra) # 80001940 <_Znwm>
    8000403c:	00050a93          	mv	s5,a0
    80004040:	00048593          	mv	a1,s1
    80004044:	00001097          	auipc	ra,0x1
    80004048:	6a0080e7          	jalr	1696(ra) # 800056e4 <_ZN9BufferCPPC1Ei>
    8000404c:	0300006f          	j	8000407c <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004050:	00005517          	auipc	a0,0x5
    80004054:	18850513          	addi	a0,a0,392 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	3b8080e7          	jalr	952(ra) # 80005410 <_Z11printStringPKc>
        return;
    80004060:	0140006f          	j	80004074 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004064:	00005517          	auipc	a0,0x5
    80004068:	1b450513          	addi	a0,a0,436 # 80009218 <CONSOLE_STATUS+0x208>
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	3a4080e7          	jalr	932(ra) # 80005410 <_Z11printStringPKc>
        return;
    80004074:	000c0113          	mv	sp,s8
    80004078:	1e40006f          	j	8000425c <_Z20testConsumerProducerv+0x324>
    waitForAll = new Semaphore(0);
    8000407c:	01000513          	li	a0,16
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	8c0080e7          	jalr	-1856(ra) # 80001940 <_Znwm>
    80004088:	00050b93          	mv	s7,a0
    8000408c:	00000593          	li	a1,0
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	a70080e7          	jalr	-1424(ra) # 80001b00 <_ZN9SemaphoreC1Ej>
    80004098:	00008917          	auipc	s2,0x8
    8000409c:	9f890913          	addi	s2,s2,-1544 # 8000ba90 <_ZL9threadEnd>
    800040a0:	01793423          	sd	s7,8(s2)
    Thread *producers[threadNum];
    800040a4:	00399793          	slli	a5,s3,0x3
    800040a8:	00f78793          	addi	a5,a5,15
    800040ac:	ff07f793          	andi	a5,a5,-16
    800040b0:	40f10133          	sub	sp,sp,a5
    800040b4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800040b8:	0019871b          	addiw	a4,s3,1
    800040bc:	00171793          	slli	a5,a4,0x1
    800040c0:	00e787b3          	add	a5,a5,a4
    800040c4:	00379793          	slli	a5,a5,0x3
    800040c8:	00f78793          	addi	a5,a5,15
    800040cc:	ff07f793          	andi	a5,a5,-16
    800040d0:	40f10133          	sub	sp,sp,a5
    800040d4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800040d8:	00199493          	slli	s1,s3,0x1
    800040dc:	013484b3          	add	s1,s1,s3
    800040e0:	00349493          	slli	s1,s1,0x3
    800040e4:	009b04b3          	add	s1,s6,s1
    800040e8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800040ec:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800040f0:	0174b823          	sd	s7,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040f4:	02800513          	li	a0,40
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	848080e7          	jalr	-1976(ra) # 80001940 <_Znwm>
    80004100:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004104:	00007797          	auipc	a5,0x7
    80004108:	7ac78793          	addi	a5,a5,1964 # 8000b8b0 <_ZTV8Consumer+0x10>
    8000410c:	00f53023          	sd	a5,0(a0)
    80004110:	02953023          	sd	s1,32(a0)
    consumer->start();
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	964080e7          	jalr	-1692(ra) # 80001a78 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000411c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004120:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004124:	00893783          	ld	a5,8(s2)
    80004128:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000412c:	02800513          	li	a0,40
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	810080e7          	jalr	-2032(ra) # 80001940 <_Znwm>
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004138:	00007717          	auipc	a4,0x7
    8000413c:	72870713          	addi	a4,a4,1832 # 8000b860 <_ZTV16ProducerKeyborad+0x10>
    80004140:	00e53023          	sd	a4,0(a0)
    80004144:	03653023          	sd	s6,32(a0)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004148:	00aa3023          	sd	a0,0(s4)
    producers[0]->start();
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	92c080e7          	jalr	-1748(ra) # 80001a78 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004154:	00100913          	li	s2,1
    80004158:	07395063          	bge	s2,s3,800041b8 <_Z20testConsumerProducerv+0x280>
        threadData[i].id = i;
    8000415c:	00191493          	slli	s1,s2,0x1
    80004160:	012484b3          	add	s1,s1,s2
    80004164:	00349493          	slli	s1,s1,0x3
    80004168:	009b04b3          	add	s1,s6,s1
    8000416c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004170:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004174:	00008797          	auipc	a5,0x8
    80004178:	9247b783          	ld	a5,-1756(a5) # 8000ba98 <_ZL10waitForAll>
    8000417c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004180:	02800513          	li	a0,40
    80004184:	ffffd097          	auipc	ra,0xffffd
    80004188:	7bc080e7          	jalr	1980(ra) # 80001940 <_Znwm>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000418c:	00007717          	auipc	a4,0x7
    80004190:	6fc70713          	addi	a4,a4,1788 # 8000b888 <_ZTV8Producer+0x10>
    80004194:	00e53023          	sd	a4,0(a0)
    80004198:	02953023          	sd	s1,32(a0)
        producers[i] = new Producer(&threadData[i]);
    8000419c:	00391713          	slli	a4,s2,0x3
    800041a0:	00ea0733          	add	a4,s4,a4
    800041a4:	00a73023          	sd	a0,0(a4)
        producers[i]->start();
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	8d0080e7          	jalr	-1840(ra) # 80001a78 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800041b0:	0019091b          	addiw	s2,s2,1
    800041b4:	fa5ff06f          	j	80004158 <_Z20testConsumerProducerv+0x220>
    Thread::dispatch();
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	8f8080e7          	jalr	-1800(ra) # 80001ab0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800041c0:	00000493          	li	s1,0
    800041c4:	0099ce63          	blt	s3,s1,800041e0 <_Z20testConsumerProducerv+0x2a8>
        waitForAll->wait();
    800041c8:	00008517          	auipc	a0,0x8
    800041cc:	8d053503          	ld	a0,-1840(a0) # 8000ba98 <_ZL10waitForAll>
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	968080e7          	jalr	-1688(ra) # 80001b38 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041d8:	0014849b          	addiw	s1,s1,1
    800041dc:	fe9ff06f          	j	800041c4 <_Z20testConsumerProducerv+0x28c>
    delete waitForAll;
    800041e0:	00008517          	auipc	a0,0x8
    800041e4:	8b853503          	ld	a0,-1864(a0) # 8000ba98 <_ZL10waitForAll>
    800041e8:	00050863          	beqz	a0,800041f8 <_Z20testConsumerProducerv+0x2c0>
    800041ec:	00053783          	ld	a5,0(a0)
    800041f0:	0087b783          	ld	a5,8(a5)
    800041f4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800041f8:	00000493          	li	s1,0
    800041fc:	0080006f          	j	80004204 <_Z20testConsumerProducerv+0x2cc>
    for (int i = 0; i < threadNum; i++) {
    80004200:	0014849b          	addiw	s1,s1,1
    80004204:	0334d263          	bge	s1,s3,80004228 <_Z20testConsumerProducerv+0x2f0>
        delete producers[i];
    80004208:	00349793          	slli	a5,s1,0x3
    8000420c:	00fa07b3          	add	a5,s4,a5
    80004210:	0007b503          	ld	a0,0(a5)
    80004214:	fe0506e3          	beqz	a0,80004200 <_Z20testConsumerProducerv+0x2c8>
    80004218:	00053783          	ld	a5,0(a0)
    8000421c:	0087b783          	ld	a5,8(a5)
    80004220:	000780e7          	jalr	a5
    80004224:	fddff06f          	j	80004200 <_Z20testConsumerProducerv+0x2c8>
    delete consumer;
    80004228:	000b8a63          	beqz	s7,8000423c <_Z20testConsumerProducerv+0x304>
    8000422c:	000bb783          	ld	a5,0(s7)
    80004230:	0087b783          	ld	a5,8(a5)
    80004234:	000b8513          	mv	a0,s7
    80004238:	000780e7          	jalr	a5
    delete buffer;
    8000423c:	000a8e63          	beqz	s5,80004258 <_Z20testConsumerProducerv+0x320>
    80004240:	000a8513          	mv	a0,s5
    80004244:	00001097          	auipc	ra,0x1
    80004248:	798080e7          	jalr	1944(ra) # 800059dc <_ZN9BufferCPPD1Ev>
    8000424c:	000a8513          	mv	a0,s5
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	740080e7          	jalr	1856(ra) # 80001990 <_ZdlPv>
    80004258:	000c0113          	mv	sp,s8
}
    8000425c:	f9040113          	addi	sp,s0,-112
    80004260:	06813083          	ld	ra,104(sp)
    80004264:	06013403          	ld	s0,96(sp)
    80004268:	05813483          	ld	s1,88(sp)
    8000426c:	05013903          	ld	s2,80(sp)
    80004270:	04813983          	ld	s3,72(sp)
    80004274:	04013a03          	ld	s4,64(sp)
    80004278:	03813a83          	ld	s5,56(sp)
    8000427c:	03013b03          	ld	s6,48(sp)
    80004280:	02813b83          	ld	s7,40(sp)
    80004284:	02013c03          	ld	s8,32(sp)
    80004288:	07010113          	addi	sp,sp,112
    8000428c:	00008067          	ret
    80004290:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004294:	000a8513          	mv	a0,s5
    80004298:	ffffd097          	auipc	ra,0xffffd
    8000429c:	6f8080e7          	jalr	1784(ra) # 80001990 <_ZdlPv>
    800042a0:	00048513          	mv	a0,s1
    800042a4:	00009097          	auipc	ra,0x9
    800042a8:	8f4080e7          	jalr	-1804(ra) # 8000cb98 <_Unwind_Resume>
    800042ac:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800042b0:	000b8513          	mv	a0,s7
    800042b4:	ffffd097          	auipc	ra,0xffffd
    800042b8:	6dc080e7          	jalr	1756(ra) # 80001990 <_ZdlPv>
    800042bc:	00048513          	mv	a0,s1
    800042c0:	00009097          	auipc	ra,0x9
    800042c4:	8d8080e7          	jalr	-1832(ra) # 8000cb98 <_Unwind_Resume>

00000000800042c8 <_ZN8Consumer3runEv>:
    void run() override {
    800042c8:	fd010113          	addi	sp,sp,-48
    800042cc:	02113423          	sd	ra,40(sp)
    800042d0:	02813023          	sd	s0,32(sp)
    800042d4:	00913c23          	sd	s1,24(sp)
    800042d8:	01213823          	sd	s2,16(sp)
    800042dc:	01313423          	sd	s3,8(sp)
    800042e0:	03010413          	addi	s0,sp,48
    800042e4:	00050913          	mv	s2,a0
        int i = 0;
    800042e8:	00000993          	li	s3,0
    800042ec:	0100006f          	j	800042fc <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800042f0:	00a00513          	li	a0,10
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	9c8080e7          	jalr	-1592(ra) # 80001cbc <_ZN7Console4putcEc>
        while (!threadEnd) {
    800042fc:	00007797          	auipc	a5,0x7
    80004300:	7947a783          	lw	a5,1940(a5) # 8000ba90 <_ZL9threadEnd>
    80004304:	04079a63          	bnez	a5,80004358 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004308:	02093783          	ld	a5,32(s2)
    8000430c:	0087b503          	ld	a0,8(a5)
    80004310:	00001097          	auipc	ra,0x1
    80004314:	5b8080e7          	jalr	1464(ra) # 800058c8 <_ZN9BufferCPP3getEv>
            i++;
    80004318:	0019849b          	addiw	s1,s3,1
    8000431c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004320:	0ff57513          	andi	a0,a0,255
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	998080e7          	jalr	-1640(ra) # 80001cbc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000432c:	05000793          	li	a5,80
    80004330:	02f4e4bb          	remw	s1,s1,a5
    80004334:	fc0494e3          	bnez	s1,800042fc <_ZN8Consumer3runEv+0x34>
    80004338:	fb9ff06f          	j	800042f0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000433c:	02093783          	ld	a5,32(s2)
    80004340:	0087b503          	ld	a0,8(a5)
    80004344:	00001097          	auipc	ra,0x1
    80004348:	584080e7          	jalr	1412(ra) # 800058c8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000434c:	0ff57513          	andi	a0,a0,255
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	96c080e7          	jalr	-1684(ra) # 80001cbc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004358:	02093783          	ld	a5,32(s2)
    8000435c:	0087b503          	ld	a0,8(a5)
    80004360:	00001097          	auipc	ra,0x1
    80004364:	5f4080e7          	jalr	1524(ra) # 80005954 <_ZN9BufferCPP6getCntEv>
    80004368:	fca04ae3          	bgtz	a0,8000433c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000436c:	02093783          	ld	a5,32(s2)
    80004370:	0107b503          	ld	a0,16(a5)
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	7f0080e7          	jalr	2032(ra) # 80001b64 <_ZN9Semaphore6signalEv>
    }
    8000437c:	02813083          	ld	ra,40(sp)
    80004380:	02013403          	ld	s0,32(sp)
    80004384:	01813483          	ld	s1,24(sp)
    80004388:	01013903          	ld	s2,16(sp)
    8000438c:	00813983          	ld	s3,8(sp)
    80004390:	03010113          	addi	sp,sp,48
    80004394:	00008067          	ret

0000000080004398 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004398:	ff010113          	addi	sp,sp,-16
    8000439c:	00113423          	sd	ra,8(sp)
    800043a0:	00813023          	sd	s0,0(sp)
    800043a4:	01010413          	addi	s0,sp,16
    800043a8:	00007797          	auipc	a5,0x7
    800043ac:	50878793          	addi	a5,a5,1288 # 8000b8b0 <_ZTV8Consumer+0x10>
    800043b0:	00f53023          	sd	a5,0(a0)
    800043b4:	ffffd097          	auipc	ra,0xffffd
    800043b8:	510080e7          	jalr	1296(ra) # 800018c4 <_ZN6ThreadD1Ev>
    800043bc:	00813083          	ld	ra,8(sp)
    800043c0:	00013403          	ld	s0,0(sp)
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret

00000000800043cc <_ZN8ConsumerD0Ev>:
    800043cc:	fe010113          	addi	sp,sp,-32
    800043d0:	00113c23          	sd	ra,24(sp)
    800043d4:	00813823          	sd	s0,16(sp)
    800043d8:	00913423          	sd	s1,8(sp)
    800043dc:	02010413          	addi	s0,sp,32
    800043e0:	00050493          	mv	s1,a0
    800043e4:	00007797          	auipc	a5,0x7
    800043e8:	4cc78793          	addi	a5,a5,1228 # 8000b8b0 <_ZTV8Consumer+0x10>
    800043ec:	00f53023          	sd	a5,0(a0)
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	4d4080e7          	jalr	1236(ra) # 800018c4 <_ZN6ThreadD1Ev>
    800043f8:	00048513          	mv	a0,s1
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	594080e7          	jalr	1428(ra) # 80001990 <_ZdlPv>
    80004404:	01813083          	ld	ra,24(sp)
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	00813483          	ld	s1,8(sp)
    80004410:	02010113          	addi	sp,sp,32
    80004414:	00008067          	ret

0000000080004418 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00113423          	sd	ra,8(sp)
    80004420:	00813023          	sd	s0,0(sp)
    80004424:	01010413          	addi	s0,sp,16
    80004428:	00007797          	auipc	a5,0x7
    8000442c:	43878793          	addi	a5,a5,1080 # 8000b860 <_ZTV16ProducerKeyborad+0x10>
    80004430:	00f53023          	sd	a5,0(a0)
    80004434:	ffffd097          	auipc	ra,0xffffd
    80004438:	490080e7          	jalr	1168(ra) # 800018c4 <_ZN6ThreadD1Ev>
    8000443c:	00813083          	ld	ra,8(sp)
    80004440:	00013403          	ld	s0,0(sp)
    80004444:	01010113          	addi	sp,sp,16
    80004448:	00008067          	ret

000000008000444c <_ZN16ProducerKeyboradD0Ev>:
    8000444c:	fe010113          	addi	sp,sp,-32
    80004450:	00113c23          	sd	ra,24(sp)
    80004454:	00813823          	sd	s0,16(sp)
    80004458:	00913423          	sd	s1,8(sp)
    8000445c:	02010413          	addi	s0,sp,32
    80004460:	00050493          	mv	s1,a0
    80004464:	00007797          	auipc	a5,0x7
    80004468:	3fc78793          	addi	a5,a5,1020 # 8000b860 <_ZTV16ProducerKeyborad+0x10>
    8000446c:	00f53023          	sd	a5,0(a0)
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	454080e7          	jalr	1108(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80004478:	00048513          	mv	a0,s1
    8000447c:	ffffd097          	auipc	ra,0xffffd
    80004480:	514080e7          	jalr	1300(ra) # 80001990 <_ZdlPv>
    80004484:	01813083          	ld	ra,24(sp)
    80004488:	01013403          	ld	s0,16(sp)
    8000448c:	00813483          	ld	s1,8(sp)
    80004490:	02010113          	addi	sp,sp,32
    80004494:	00008067          	ret

0000000080004498 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004498:	ff010113          	addi	sp,sp,-16
    8000449c:	00113423          	sd	ra,8(sp)
    800044a0:	00813023          	sd	s0,0(sp)
    800044a4:	01010413          	addi	s0,sp,16
    800044a8:	00007797          	auipc	a5,0x7
    800044ac:	3e078793          	addi	a5,a5,992 # 8000b888 <_ZTV8Producer+0x10>
    800044b0:	00f53023          	sd	a5,0(a0)
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	410080e7          	jalr	1040(ra) # 800018c4 <_ZN6ThreadD1Ev>
    800044bc:	00813083          	ld	ra,8(sp)
    800044c0:	00013403          	ld	s0,0(sp)
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00008067          	ret

00000000800044cc <_ZN8ProducerD0Ev>:
    800044cc:	fe010113          	addi	sp,sp,-32
    800044d0:	00113c23          	sd	ra,24(sp)
    800044d4:	00813823          	sd	s0,16(sp)
    800044d8:	00913423          	sd	s1,8(sp)
    800044dc:	02010413          	addi	s0,sp,32
    800044e0:	00050493          	mv	s1,a0
    800044e4:	00007797          	auipc	a5,0x7
    800044e8:	3a478793          	addi	a5,a5,932 # 8000b888 <_ZTV8Producer+0x10>
    800044ec:	00f53023          	sd	a5,0(a0)
    800044f0:	ffffd097          	auipc	ra,0xffffd
    800044f4:	3d4080e7          	jalr	980(ra) # 800018c4 <_ZN6ThreadD1Ev>
    800044f8:	00048513          	mv	a0,s1
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	494080e7          	jalr	1172(ra) # 80001990 <_ZdlPv>
    80004504:	01813083          	ld	ra,24(sp)
    80004508:	01013403          	ld	s0,16(sp)
    8000450c:	00813483          	ld	s1,8(sp)
    80004510:	02010113          	addi	sp,sp,32
    80004514:	00008067          	ret

0000000080004518 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004518:	fe010113          	addi	sp,sp,-32
    8000451c:	00113c23          	sd	ra,24(sp)
    80004520:	00813823          	sd	s0,16(sp)
    80004524:	00913423          	sd	s1,8(sp)
    80004528:	02010413          	addi	s0,sp,32
    8000452c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004530:	ffffd097          	auipc	ra,0xffffd
    80004534:	f78080e7          	jalr	-136(ra) # 800014a8 <_Z4getcv>
    80004538:	00050593          	mv	a1,a0
    8000453c:	01b00793          	li	a5,27
    80004540:	00f50c63          	beq	a0,a5,80004558 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004544:	0204b783          	ld	a5,32(s1)
    80004548:	0087b503          	ld	a0,8(a5)
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	2ec080e7          	jalr	748(ra) # 80005838 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004554:	fddff06f          	j	80004530 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004558:	00100793          	li	a5,1
    8000455c:	00007717          	auipc	a4,0x7
    80004560:	52f72a23          	sw	a5,1332(a4) # 8000ba90 <_ZL9threadEnd>
        td->buffer->put('!');
    80004564:	0204b783          	ld	a5,32(s1)
    80004568:	02100593          	li	a1,33
    8000456c:	0087b503          	ld	a0,8(a5)
    80004570:	00001097          	auipc	ra,0x1
    80004574:	2c8080e7          	jalr	712(ra) # 80005838 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004578:	0204b783          	ld	a5,32(s1)
    8000457c:	0107b503          	ld	a0,16(a5)
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	5e4080e7          	jalr	1508(ra) # 80001b64 <_ZN9Semaphore6signalEv>
    }
    80004588:	01813083          	ld	ra,24(sp)
    8000458c:	01013403          	ld	s0,16(sp)
    80004590:	00813483          	ld	s1,8(sp)
    80004594:	02010113          	addi	sp,sp,32
    80004598:	00008067          	ret

000000008000459c <_ZN8Producer3runEv>:
    void run() override {
    8000459c:	fe010113          	addi	sp,sp,-32
    800045a0:	00113c23          	sd	ra,24(sp)
    800045a4:	00813823          	sd	s0,16(sp)
    800045a8:	00913423          	sd	s1,8(sp)
    800045ac:	01213023          	sd	s2,0(sp)
    800045b0:	02010413          	addi	s0,sp,32
    800045b4:	00050493          	mv	s1,a0
        int i = 0;
    800045b8:	00000913          	li	s2,0
        while (!threadEnd) {
    800045bc:	00007797          	auipc	a5,0x7
    800045c0:	4d47a783          	lw	a5,1236(a5) # 8000ba90 <_ZL9threadEnd>
    800045c4:	04079263          	bnez	a5,80004608 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800045c8:	0204b783          	ld	a5,32(s1)
    800045cc:	0007a583          	lw	a1,0(a5)
    800045d0:	0305859b          	addiw	a1,a1,48
    800045d4:	0087b503          	ld	a0,8(a5)
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	260080e7          	jalr	608(ra) # 80005838 <_ZN9BufferCPP3putEi>
            i++;
    800045e0:	0019071b          	addiw	a4,s2,1
    800045e4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800045e8:	0204b783          	ld	a5,32(s1)
    800045ec:	0007a783          	lw	a5,0(a5)
    800045f0:	00e787bb          	addw	a5,a5,a4
    800045f4:	00500513          	li	a0,5
    800045f8:	02a7e53b          	remw	a0,a5,a0
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	4dc080e7          	jalr	1244(ra) # 80001ad8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004604:	fb9ff06f          	j	800045bc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004608:	0204b783          	ld	a5,32(s1)
    8000460c:	0107b503          	ld	a0,16(a5)
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	554080e7          	jalr	1364(ra) # 80001b64 <_ZN9Semaphore6signalEv>
    }
    80004618:	01813083          	ld	ra,24(sp)
    8000461c:	01013403          	ld	s0,16(sp)
    80004620:	00813483          	ld	s1,8(sp)
    80004624:	00013903          	ld	s2,0(sp)
    80004628:	02010113          	addi	sp,sp,32
    8000462c:	00008067          	ret

0000000080004630 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004630:	fe010113          	addi	sp,sp,-32
    80004634:	00113c23          	sd	ra,24(sp)
    80004638:	00813823          	sd	s0,16(sp)
    8000463c:	00913423          	sd	s1,8(sp)
    80004640:	01213023          	sd	s2,0(sp)
    80004644:	02010413          	addi	s0,sp,32
    80004648:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000464c:	00100793          	li	a5,1
    80004650:	02a7f863          	bgeu	a5,a0,80004680 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004654:	00a00793          	li	a5,10
    80004658:	02f577b3          	remu	a5,a0,a5
    8000465c:	02078e63          	beqz	a5,80004698 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004660:	fff48513          	addi	a0,s1,-1
    80004664:	00000097          	auipc	ra,0x0
    80004668:	fcc080e7          	jalr	-52(ra) # 80004630 <_ZL9fibonaccim>
    8000466c:	00050913          	mv	s2,a0
    80004670:	ffe48513          	addi	a0,s1,-2
    80004674:	00000097          	auipc	ra,0x0
    80004678:	fbc080e7          	jalr	-68(ra) # 80004630 <_ZL9fibonaccim>
    8000467c:	00a90533          	add	a0,s2,a0
}
    80004680:	01813083          	ld	ra,24(sp)
    80004684:	01013403          	ld	s0,16(sp)
    80004688:	00813483          	ld	s1,8(sp)
    8000468c:	00013903          	ld	s2,0(sp)
    80004690:	02010113          	addi	sp,sp,32
    80004694:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	c10080e7          	jalr	-1008(ra) # 800012a8 <_Z15thread_dispatchv>
    800046a0:	fc1ff06f          	j	80004660 <_ZL9fibonaccim+0x30>

00000000800046a4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800046a4:	fe010113          	addi	sp,sp,-32
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	00813823          	sd	s0,16(sp)
    800046b0:	00913423          	sd	s1,8(sp)
    800046b4:	01213023          	sd	s2,0(sp)
    800046b8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800046bc:	00a00493          	li	s1,10
    800046c0:	0400006f          	j	80004700 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	be450513          	addi	a0,a0,-1052 # 800092a8 <CONSOLE_STATUS+0x298>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	d44080e7          	jalr	-700(ra) # 80005410 <_Z11printStringPKc>
    800046d4:	00000613          	li	a2,0
    800046d8:	00a00593          	li	a1,10
    800046dc:	00048513          	mv	a0,s1
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	ee4080e7          	jalr	-284(ra) # 800055c4 <_Z8printIntiii>
    800046e8:	00005517          	auipc	a0,0x5
    800046ec:	db050513          	addi	a0,a0,-592 # 80009498 <CONSOLE_STATUS+0x488>
    800046f0:	00001097          	auipc	ra,0x1
    800046f4:	d20080e7          	jalr	-736(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800046f8:	0014849b          	addiw	s1,s1,1
    800046fc:	0ff4f493          	andi	s1,s1,255
    80004700:	00c00793          	li	a5,12
    80004704:	fc97f0e3          	bgeu	a5,s1,800046c4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004708:	00005517          	auipc	a0,0x5
    8000470c:	ba850513          	addi	a0,a0,-1112 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004710:	00001097          	auipc	ra,0x1
    80004714:	d00080e7          	jalr	-768(ra) # 80005410 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004718:	00500313          	li	t1,5
    thread_dispatch();
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	b8c080e7          	jalr	-1140(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004724:	01000513          	li	a0,16
    80004728:	00000097          	auipc	ra,0x0
    8000472c:	f08080e7          	jalr	-248(ra) # 80004630 <_ZL9fibonaccim>
    80004730:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004734:	00005517          	auipc	a0,0x5
    80004738:	b8c50513          	addi	a0,a0,-1140 # 800092c0 <CONSOLE_STATUS+0x2b0>
    8000473c:	00001097          	auipc	ra,0x1
    80004740:	cd4080e7          	jalr	-812(ra) # 80005410 <_Z11printStringPKc>
    80004744:	00000613          	li	a2,0
    80004748:	00a00593          	li	a1,10
    8000474c:	0009051b          	sext.w	a0,s2
    80004750:	00001097          	auipc	ra,0x1
    80004754:	e74080e7          	jalr	-396(ra) # 800055c4 <_Z8printIntiii>
    80004758:	00005517          	auipc	a0,0x5
    8000475c:	d4050513          	addi	a0,a0,-704 # 80009498 <CONSOLE_STATUS+0x488>
    80004760:	00001097          	auipc	ra,0x1
    80004764:	cb0080e7          	jalr	-848(ra) # 80005410 <_Z11printStringPKc>
    80004768:	0400006f          	j	800047a8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000476c:	00005517          	auipc	a0,0x5
    80004770:	b3c50513          	addi	a0,a0,-1220 # 800092a8 <CONSOLE_STATUS+0x298>
    80004774:	00001097          	auipc	ra,0x1
    80004778:	c9c080e7          	jalr	-868(ra) # 80005410 <_Z11printStringPKc>
    8000477c:	00000613          	li	a2,0
    80004780:	00a00593          	li	a1,10
    80004784:	00048513          	mv	a0,s1
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	e3c080e7          	jalr	-452(ra) # 800055c4 <_Z8printIntiii>
    80004790:	00005517          	auipc	a0,0x5
    80004794:	d0850513          	addi	a0,a0,-760 # 80009498 <CONSOLE_STATUS+0x488>
    80004798:	00001097          	auipc	ra,0x1
    8000479c:	c78080e7          	jalr	-904(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800047a0:	0014849b          	addiw	s1,s1,1
    800047a4:	0ff4f493          	andi	s1,s1,255
    800047a8:	00f00793          	li	a5,15
    800047ac:	fc97f0e3          	bgeu	a5,s1,8000476c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	b2050513          	addi	a0,a0,-1248 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	c58080e7          	jalr	-936(ra) # 80005410 <_Z11printStringPKc>
    finishedD = true;
    800047c0:	00100793          	li	a5,1
    800047c4:	00007717          	auipc	a4,0x7
    800047c8:	2cf70e23          	sb	a5,732(a4) # 8000baa0 <_ZL9finishedD>
    thread_dispatch();
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	adc080e7          	jalr	-1316(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800047d4:	01813083          	ld	ra,24(sp)
    800047d8:	01013403          	ld	s0,16(sp)
    800047dc:	00813483          	ld	s1,8(sp)
    800047e0:	00013903          	ld	s2,0(sp)
    800047e4:	02010113          	addi	sp,sp,32
    800047e8:	00008067          	ret

00000000800047ec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00113c23          	sd	ra,24(sp)
    800047f4:	00813823          	sd	s0,16(sp)
    800047f8:	00913423          	sd	s1,8(sp)
    800047fc:	01213023          	sd	s2,0(sp)
    80004800:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004804:	00000493          	li	s1,0
    80004808:	0400006f          	j	80004848 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	a6c50513          	addi	a0,a0,-1428 # 80009278 <CONSOLE_STATUS+0x268>
    80004814:	00001097          	auipc	ra,0x1
    80004818:	bfc080e7          	jalr	-1028(ra) # 80005410 <_Z11printStringPKc>
    8000481c:	00000613          	li	a2,0
    80004820:	00a00593          	li	a1,10
    80004824:	00048513          	mv	a0,s1
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	d9c080e7          	jalr	-612(ra) # 800055c4 <_Z8printIntiii>
    80004830:	00005517          	auipc	a0,0x5
    80004834:	c6850513          	addi	a0,a0,-920 # 80009498 <CONSOLE_STATUS+0x488>
    80004838:	00001097          	auipc	ra,0x1
    8000483c:	bd8080e7          	jalr	-1064(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004840:	0014849b          	addiw	s1,s1,1
    80004844:	0ff4f493          	andi	s1,s1,255
    80004848:	00200793          	li	a5,2
    8000484c:	fc97f0e3          	bgeu	a5,s1,8000480c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	a3050513          	addi	a0,a0,-1488 # 80009280 <CONSOLE_STATUS+0x270>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	bb8080e7          	jalr	-1096(ra) # 80005410 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004860:	00700313          	li	t1,7
    thread_dispatch();
    80004864:	ffffd097          	auipc	ra,0xffffd
    80004868:	a44080e7          	jalr	-1468(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000486c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	a2050513          	addi	a0,a0,-1504 # 80009290 <CONSOLE_STATUS+0x280>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	b98080e7          	jalr	-1128(ra) # 80005410 <_Z11printStringPKc>
    80004880:	00000613          	li	a2,0
    80004884:	00a00593          	li	a1,10
    80004888:	0009051b          	sext.w	a0,s2
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	d38080e7          	jalr	-712(ra) # 800055c4 <_Z8printIntiii>
    80004894:	00005517          	auipc	a0,0x5
    80004898:	c0450513          	addi	a0,a0,-1020 # 80009498 <CONSOLE_STATUS+0x488>
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	b74080e7          	jalr	-1164(ra) # 80005410 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800048a4:	00c00513          	li	a0,12
    800048a8:	00000097          	auipc	ra,0x0
    800048ac:	d88080e7          	jalr	-632(ra) # 80004630 <_ZL9fibonaccim>
    800048b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	9e450513          	addi	a0,a0,-1564 # 80009298 <CONSOLE_STATUS+0x288>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	b54080e7          	jalr	-1196(ra) # 80005410 <_Z11printStringPKc>
    800048c4:	00000613          	li	a2,0
    800048c8:	00a00593          	li	a1,10
    800048cc:	0009051b          	sext.w	a0,s2
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	cf4080e7          	jalr	-780(ra) # 800055c4 <_Z8printIntiii>
    800048d8:	00005517          	auipc	a0,0x5
    800048dc:	bc050513          	addi	a0,a0,-1088 # 80009498 <CONSOLE_STATUS+0x488>
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	b30080e7          	jalr	-1232(ra) # 80005410 <_Z11printStringPKc>
    800048e8:	0400006f          	j	80004928 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800048ec:	00005517          	auipc	a0,0x5
    800048f0:	98c50513          	addi	a0,a0,-1652 # 80009278 <CONSOLE_STATUS+0x268>
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	b1c080e7          	jalr	-1252(ra) # 80005410 <_Z11printStringPKc>
    800048fc:	00000613          	li	a2,0
    80004900:	00a00593          	li	a1,10
    80004904:	00048513          	mv	a0,s1
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	cbc080e7          	jalr	-836(ra) # 800055c4 <_Z8printIntiii>
    80004910:	00005517          	auipc	a0,0x5
    80004914:	b8850513          	addi	a0,a0,-1144 # 80009498 <CONSOLE_STATUS+0x488>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	af8080e7          	jalr	-1288(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004920:	0014849b          	addiw	s1,s1,1
    80004924:	0ff4f493          	andi	s1,s1,255
    80004928:	00500793          	li	a5,5
    8000492c:	fc97f0e3          	bgeu	a5,s1,800048ec <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004930:	00005517          	auipc	a0,0x5
    80004934:	92050513          	addi	a0,a0,-1760 # 80009250 <CONSOLE_STATUS+0x240>
    80004938:	00001097          	auipc	ra,0x1
    8000493c:	ad8080e7          	jalr	-1320(ra) # 80005410 <_Z11printStringPKc>
    finishedC = true;
    80004940:	00100793          	li	a5,1
    80004944:	00007717          	auipc	a4,0x7
    80004948:	14f70ea3          	sb	a5,349(a4) # 8000baa1 <_ZL9finishedC>
    thread_dispatch();
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	95c080e7          	jalr	-1700(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80004954:	01813083          	ld	ra,24(sp)
    80004958:	01013403          	ld	s0,16(sp)
    8000495c:	00813483          	ld	s1,8(sp)
    80004960:	00013903          	ld	s2,0(sp)
    80004964:	02010113          	addi	sp,sp,32
    80004968:	00008067          	ret

000000008000496c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000496c:	fe010113          	addi	sp,sp,-32
    80004970:	00113c23          	sd	ra,24(sp)
    80004974:	00813823          	sd	s0,16(sp)
    80004978:	00913423          	sd	s1,8(sp)
    8000497c:	01213023          	sd	s2,0(sp)
    80004980:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004984:	00000913          	li	s2,0
    80004988:	0380006f          	j	800049c0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	91c080e7          	jalr	-1764(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004994:	00148493          	addi	s1,s1,1
    80004998:	000027b7          	lui	a5,0x2
    8000499c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800049a0:	0097ee63          	bltu	a5,s1,800049bc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800049a4:	00000713          	li	a4,0
    800049a8:	000077b7          	lui	a5,0x7
    800049ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800049b0:	fce7eee3          	bltu	a5,a4,8000498c <_ZL11workerBodyBPv+0x20>
    800049b4:	00170713          	addi	a4,a4,1
    800049b8:	ff1ff06f          	j	800049a8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800049bc:	00190913          	addi	s2,s2,1
    800049c0:	00f00793          	li	a5,15
    800049c4:	0527e063          	bltu	a5,s2,80004a04 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800049c8:	00005517          	auipc	a0,0x5
    800049cc:	89850513          	addi	a0,a0,-1896 # 80009260 <CONSOLE_STATUS+0x250>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	a40080e7          	jalr	-1472(ra) # 80005410 <_Z11printStringPKc>
    800049d8:	00000613          	li	a2,0
    800049dc:	00a00593          	li	a1,10
    800049e0:	0009051b          	sext.w	a0,s2
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	be0080e7          	jalr	-1056(ra) # 800055c4 <_Z8printIntiii>
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	aac50513          	addi	a0,a0,-1364 # 80009498 <CONSOLE_STATUS+0x488>
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	a1c080e7          	jalr	-1508(ra) # 80005410 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800049fc:	00000493          	li	s1,0
    80004a00:	f99ff06f          	j	80004998 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004a04:	00005517          	auipc	a0,0x5
    80004a08:	86450513          	addi	a0,a0,-1948 # 80009268 <CONSOLE_STATUS+0x258>
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	a04080e7          	jalr	-1532(ra) # 80005410 <_Z11printStringPKc>
    finishedB = true;
    80004a14:	00100793          	li	a5,1
    80004a18:	00007717          	auipc	a4,0x7
    80004a1c:	08f70523          	sb	a5,138(a4) # 8000baa2 <_ZL9finishedB>
    thread_dispatch();
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	888080e7          	jalr	-1912(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80004a28:	01813083          	ld	ra,24(sp)
    80004a2c:	01013403          	ld	s0,16(sp)
    80004a30:	00813483          	ld	s1,8(sp)
    80004a34:	00013903          	ld	s2,0(sp)
    80004a38:	02010113          	addi	sp,sp,32
    80004a3c:	00008067          	ret

0000000080004a40 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004a40:	fe010113          	addi	sp,sp,-32
    80004a44:	00113c23          	sd	ra,24(sp)
    80004a48:	00813823          	sd	s0,16(sp)
    80004a4c:	00913423          	sd	s1,8(sp)
    80004a50:	01213023          	sd	s2,0(sp)
    80004a54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a58:	00000913          	li	s2,0
    80004a5c:	0380006f          	j	80004a94 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	848080e7          	jalr	-1976(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004a68:	00148493          	addi	s1,s1,1
    80004a6c:	000027b7          	lui	a5,0x2
    80004a70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a74:	0097ee63          	bltu	a5,s1,80004a90 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a78:	00000713          	li	a4,0
    80004a7c:	000077b7          	lui	a5,0x7
    80004a80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a84:	fce7eee3          	bltu	a5,a4,80004a60 <_ZL11workerBodyAPv+0x20>
    80004a88:	00170713          	addi	a4,a4,1
    80004a8c:	ff1ff06f          	j	80004a7c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004a90:	00190913          	addi	s2,s2,1
    80004a94:	00900793          	li	a5,9
    80004a98:	0527e063          	bltu	a5,s2,80004ad8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004a9c:	00004517          	auipc	a0,0x4
    80004aa0:	7ac50513          	addi	a0,a0,1964 # 80009248 <CONSOLE_STATUS+0x238>
    80004aa4:	00001097          	auipc	ra,0x1
    80004aa8:	96c080e7          	jalr	-1684(ra) # 80005410 <_Z11printStringPKc>
    80004aac:	00000613          	li	a2,0
    80004ab0:	00a00593          	li	a1,10
    80004ab4:	0009051b          	sext.w	a0,s2
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	b0c080e7          	jalr	-1268(ra) # 800055c4 <_Z8printIntiii>
    80004ac0:	00005517          	auipc	a0,0x5
    80004ac4:	9d850513          	addi	a0,a0,-1576 # 80009498 <CONSOLE_STATUS+0x488>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	948080e7          	jalr	-1720(ra) # 80005410 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ad0:	00000493          	li	s1,0
    80004ad4:	f99ff06f          	j	80004a6c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004ad8:	00004517          	auipc	a0,0x4
    80004adc:	77850513          	addi	a0,a0,1912 # 80009250 <CONSOLE_STATUS+0x240>
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	930080e7          	jalr	-1744(ra) # 80005410 <_Z11printStringPKc>
    finishedA = true;
    80004ae8:	00100793          	li	a5,1
    80004aec:	00007717          	auipc	a4,0x7
    80004af0:	faf70ba3          	sb	a5,-73(a4) # 8000baa3 <_ZL9finishedA>
}
    80004af4:	01813083          	ld	ra,24(sp)
    80004af8:	01013403          	ld	s0,16(sp)
    80004afc:	00813483          	ld	s1,8(sp)
    80004b00:	00013903          	ld	s2,0(sp)
    80004b04:	02010113          	addi	sp,sp,32
    80004b08:	00008067          	ret

0000000080004b0c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004b0c:	fd010113          	addi	sp,sp,-48
    80004b10:	02113423          	sd	ra,40(sp)
    80004b14:	02813023          	sd	s0,32(sp)
    80004b18:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004b1c:	00000613          	li	a2,0
    80004b20:	00000597          	auipc	a1,0x0
    80004b24:	f2058593          	addi	a1,a1,-224 # 80004a40 <_ZL11workerBodyAPv>
    80004b28:	fd040513          	addi	a0,s0,-48
    80004b2c:	ffffc097          	auipc	ra,0xffffc
    80004b30:	6fc080e7          	jalr	1788(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004b34:	00004517          	auipc	a0,0x4
    80004b38:	7ac50513          	addi	a0,a0,1964 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	8d4080e7          	jalr	-1836(ra) # 80005410 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004b44:	00000613          	li	a2,0
    80004b48:	00000597          	auipc	a1,0x0
    80004b4c:	e2458593          	addi	a1,a1,-476 # 8000496c <_ZL11workerBodyBPv>
    80004b50:	fd840513          	addi	a0,s0,-40
    80004b54:	ffffc097          	auipc	ra,0xffffc
    80004b58:	6d4080e7          	jalr	1748(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadB created\n");
    80004b5c:	00004517          	auipc	a0,0x4
    80004b60:	79c50513          	addi	a0,a0,1948 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	8ac080e7          	jalr	-1876(ra) # 80005410 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004b6c:	00000613          	li	a2,0
    80004b70:	00000597          	auipc	a1,0x0
    80004b74:	c7c58593          	addi	a1,a1,-900 # 800047ec <_ZL11workerBodyCPv>
    80004b78:	fe040513          	addi	a0,s0,-32
    80004b7c:	ffffc097          	auipc	ra,0xffffc
    80004b80:	6ac080e7          	jalr	1708(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadC created\n");
    80004b84:	00004517          	auipc	a0,0x4
    80004b88:	78c50513          	addi	a0,a0,1932 # 80009310 <CONSOLE_STATUS+0x300>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	884080e7          	jalr	-1916(ra) # 80005410 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004b94:	00000613          	li	a2,0
    80004b98:	00000597          	auipc	a1,0x0
    80004b9c:	b0c58593          	addi	a1,a1,-1268 # 800046a4 <_ZL11workerBodyDPv>
    80004ba0:	fe840513          	addi	a0,s0,-24
    80004ba4:	ffffc097          	auipc	ra,0xffffc
    80004ba8:	684080e7          	jalr	1668(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadD created\n");
    80004bac:	00004517          	auipc	a0,0x4
    80004bb0:	77c50513          	addi	a0,a0,1916 # 80009328 <CONSOLE_STATUS+0x318>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	85c080e7          	jalr	-1956(ra) # 80005410 <_Z11printStringPKc>
    80004bbc:	00c0006f          	j	80004bc8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004bc0:	ffffc097          	auipc	ra,0xffffc
    80004bc4:	6e8080e7          	jalr	1768(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004bc8:	00007797          	auipc	a5,0x7
    80004bcc:	edb7c783          	lbu	a5,-293(a5) # 8000baa3 <_ZL9finishedA>
    80004bd0:	fe0788e3          	beqz	a5,80004bc0 <_Z18Threads_C_API_testv+0xb4>
    80004bd4:	00007797          	auipc	a5,0x7
    80004bd8:	ece7c783          	lbu	a5,-306(a5) # 8000baa2 <_ZL9finishedB>
    80004bdc:	fe0782e3          	beqz	a5,80004bc0 <_Z18Threads_C_API_testv+0xb4>
    80004be0:	00007797          	auipc	a5,0x7
    80004be4:	ec17c783          	lbu	a5,-319(a5) # 8000baa1 <_ZL9finishedC>
    80004be8:	fc078ce3          	beqz	a5,80004bc0 <_Z18Threads_C_API_testv+0xb4>
    80004bec:	00007797          	auipc	a5,0x7
    80004bf0:	eb47c783          	lbu	a5,-332(a5) # 8000baa0 <_ZL9finishedD>
    80004bf4:	fc0786e3          	beqz	a5,80004bc0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004bf8:	02813083          	ld	ra,40(sp)
    80004bfc:	02013403          	ld	s0,32(sp)
    80004c00:	03010113          	addi	sp,sp,48
    80004c04:	00008067          	ret

0000000080004c08 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004c08:	fd010113          	addi	sp,sp,-48
    80004c0c:	02113423          	sd	ra,40(sp)
    80004c10:	02813023          	sd	s0,32(sp)
    80004c14:	00913c23          	sd	s1,24(sp)
    80004c18:	01213823          	sd	s2,16(sp)
    80004c1c:	01313423          	sd	s3,8(sp)
    80004c20:	03010413          	addi	s0,sp,48
    80004c24:	00050993          	mv	s3,a0
    80004c28:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004c2c:	00000913          	li	s2,0
    80004c30:	00c0006f          	j	80004c3c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	e7c080e7          	jalr	-388(ra) # 80001ab0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	86c080e7          	jalr	-1940(ra) # 800014a8 <_Z4getcv>
    80004c44:	00050593          	mv	a1,a0
    80004c48:	01b00793          	li	a5,27
    80004c4c:	02f50a63          	beq	a0,a5,80004c80 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004c50:	0084b503          	ld	a0,8(s1)
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	be4080e7          	jalr	-1052(ra) # 80005838 <_ZN9BufferCPP3putEi>
        i++;
    80004c5c:	0019071b          	addiw	a4,s2,1
    80004c60:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004c64:	0004a683          	lw	a3,0(s1)
    80004c68:	0026979b          	slliw	a5,a3,0x2
    80004c6c:	00d787bb          	addw	a5,a5,a3
    80004c70:	0017979b          	slliw	a5,a5,0x1
    80004c74:	02f767bb          	remw	a5,a4,a5
    80004c78:	fc0792e3          	bnez	a5,80004c3c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004c7c:	fb9ff06f          	j	80004c34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004c80:	00100793          	li	a5,1
    80004c84:	00007717          	auipc	a4,0x7
    80004c88:	e2f72223          	sw	a5,-476(a4) # 8000baa8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004c8c:	0209b783          	ld	a5,32(s3)
    80004c90:	02100593          	li	a1,33
    80004c94:	0087b503          	ld	a0,8(a5)
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	ba0080e7          	jalr	-1120(ra) # 80005838 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004ca0:	0104b503          	ld	a0,16(s1)
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	ec0080e7          	jalr	-320(ra) # 80001b64 <_ZN9Semaphore6signalEv>
}
    80004cac:	02813083          	ld	ra,40(sp)
    80004cb0:	02013403          	ld	s0,32(sp)
    80004cb4:	01813483          	ld	s1,24(sp)
    80004cb8:	01013903          	ld	s2,16(sp)
    80004cbc:	00813983          	ld	s3,8(sp)
    80004cc0:	03010113          	addi	sp,sp,48
    80004cc4:	00008067          	ret

0000000080004cc8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004cc8:	fe010113          	addi	sp,sp,-32
    80004ccc:	00113c23          	sd	ra,24(sp)
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	01213023          	sd	s2,0(sp)
    80004cdc:	02010413          	addi	s0,sp,32
    80004ce0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ce4:	00000913          	li	s2,0
    80004ce8:	00c0006f          	j	80004cf4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	dc4080e7          	jalr	-572(ra) # 80001ab0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004cf4:	00007797          	auipc	a5,0x7
    80004cf8:	db47a783          	lw	a5,-588(a5) # 8000baa8 <_ZL9threadEnd>
    80004cfc:	02079e63          	bnez	a5,80004d38 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004d00:	0004a583          	lw	a1,0(s1)
    80004d04:	0305859b          	addiw	a1,a1,48
    80004d08:	0084b503          	ld	a0,8(s1)
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	b2c080e7          	jalr	-1236(ra) # 80005838 <_ZN9BufferCPP3putEi>
        i++;
    80004d14:	0019071b          	addiw	a4,s2,1
    80004d18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d1c:	0004a683          	lw	a3,0(s1)
    80004d20:	0026979b          	slliw	a5,a3,0x2
    80004d24:	00d787bb          	addw	a5,a5,a3
    80004d28:	0017979b          	slliw	a5,a5,0x1
    80004d2c:	02f767bb          	remw	a5,a4,a5
    80004d30:	fc0792e3          	bnez	a5,80004cf4 <_ZN12ProducerSync8producerEPv+0x2c>
    80004d34:	fb9ff06f          	j	80004cec <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004d38:	0104b503          	ld	a0,16(s1)
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	e28080e7          	jalr	-472(ra) # 80001b64 <_ZN9Semaphore6signalEv>
}
    80004d44:	01813083          	ld	ra,24(sp)
    80004d48:	01013403          	ld	s0,16(sp)
    80004d4c:	00813483          	ld	s1,8(sp)
    80004d50:	00013903          	ld	s2,0(sp)
    80004d54:	02010113          	addi	sp,sp,32
    80004d58:	00008067          	ret

0000000080004d5c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004d5c:	fd010113          	addi	sp,sp,-48
    80004d60:	02113423          	sd	ra,40(sp)
    80004d64:	02813023          	sd	s0,32(sp)
    80004d68:	00913c23          	sd	s1,24(sp)
    80004d6c:	01213823          	sd	s2,16(sp)
    80004d70:	01313423          	sd	s3,8(sp)
    80004d74:	01413023          	sd	s4,0(sp)
    80004d78:	03010413          	addi	s0,sp,48
    80004d7c:	00050993          	mv	s3,a0
    80004d80:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d84:	00000a13          	li	s4,0
    80004d88:	01c0006f          	j	80004da4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	d24080e7          	jalr	-732(ra) # 80001ab0 <_ZN6Thread8dispatchEv>
    80004d94:	0500006f          	j	80004de4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004d98:	00a00513          	li	a0,10
    80004d9c:	ffffc097          	auipc	ra,0xffffc
    80004da0:	74c080e7          	jalr	1868(ra) # 800014e8 <_Z4putcc>
    while (!threadEnd) {
    80004da4:	00007797          	auipc	a5,0x7
    80004da8:	d047a783          	lw	a5,-764(a5) # 8000baa8 <_ZL9threadEnd>
    80004dac:	06079263          	bnez	a5,80004e10 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004db0:	00893503          	ld	a0,8(s2)
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	b14080e7          	jalr	-1260(ra) # 800058c8 <_ZN9BufferCPP3getEv>
        i++;
    80004dbc:	001a049b          	addiw	s1,s4,1
    80004dc0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004dc4:	0ff57513          	andi	a0,a0,255
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	720080e7          	jalr	1824(ra) # 800014e8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004dd0:	00092703          	lw	a4,0(s2)
    80004dd4:	0027179b          	slliw	a5,a4,0x2
    80004dd8:	00e787bb          	addw	a5,a5,a4
    80004ddc:	02f4e7bb          	remw	a5,s1,a5
    80004de0:	fa0786e3          	beqz	a5,80004d8c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004de4:	05000793          	li	a5,80
    80004de8:	02f4e4bb          	remw	s1,s1,a5
    80004dec:	fa049ce3          	bnez	s1,80004da4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004df0:	fa9ff06f          	j	80004d98 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004df4:	0209b783          	ld	a5,32(s3)
    80004df8:	0087b503          	ld	a0,8(a5)
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	acc080e7          	jalr	-1332(ra) # 800058c8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004e04:	0ff57513          	andi	a0,a0,255
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	eb4080e7          	jalr	-332(ra) # 80001cbc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004e10:	0209b783          	ld	a5,32(s3)
    80004e14:	0087b503          	ld	a0,8(a5)
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	b3c080e7          	jalr	-1220(ra) # 80005954 <_ZN9BufferCPP6getCntEv>
    80004e20:	fca04ae3          	bgtz	a0,80004df4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004e24:	01093503          	ld	a0,16(s2)
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	d3c080e7          	jalr	-708(ra) # 80001b64 <_ZN9Semaphore6signalEv>
}
    80004e30:	02813083          	ld	ra,40(sp)
    80004e34:	02013403          	ld	s0,32(sp)
    80004e38:	01813483          	ld	s1,24(sp)
    80004e3c:	01013903          	ld	s2,16(sp)
    80004e40:	00813983          	ld	s3,8(sp)
    80004e44:	00013a03          	ld	s4,0(sp)
    80004e48:	03010113          	addi	sp,sp,48
    80004e4c:	00008067          	ret

0000000080004e50 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004e50:	f9010113          	addi	sp,sp,-112
    80004e54:	06113423          	sd	ra,104(sp)
    80004e58:	06813023          	sd	s0,96(sp)
    80004e5c:	04913c23          	sd	s1,88(sp)
    80004e60:	05213823          	sd	s2,80(sp)
    80004e64:	05313423          	sd	s3,72(sp)
    80004e68:	05413023          	sd	s4,64(sp)
    80004e6c:	03513c23          	sd	s5,56(sp)
    80004e70:	03613823          	sd	s6,48(sp)
    80004e74:	03713423          	sd	s7,40(sp)
    80004e78:	03813023          	sd	s8,32(sp)
    80004e7c:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004e80:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004e84:	00004517          	auipc	a0,0x4
    80004e88:	2dc50513          	addi	a0,a0,732 # 80009160 <CONSOLE_STATUS+0x150>
    80004e8c:	00000097          	auipc	ra,0x0
    80004e90:	584080e7          	jalr	1412(ra) # 80005410 <_Z11printStringPKc>
    getString(input, 30);
    80004e94:	01e00593          	li	a1,30
    80004e98:	f9040493          	addi	s1,s0,-112
    80004e9c:	00048513          	mv	a0,s1
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	5f8080e7          	jalr	1528(ra) # 80005498 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ea8:	00048513          	mv	a0,s1
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	6c8080e7          	jalr	1736(ra) # 80005574 <_Z11stringToIntPKc>
    80004eb4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	2c850513          	addi	a0,a0,712 # 80009180 <CONSOLE_STATUS+0x170>
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	550080e7          	jalr	1360(ra) # 80005410 <_Z11printStringPKc>
    getString(input, 30);
    80004ec8:	01e00593          	li	a1,30
    80004ecc:	00048513          	mv	a0,s1
    80004ed0:	00000097          	auipc	ra,0x0
    80004ed4:	5c8080e7          	jalr	1480(ra) # 80005498 <_Z9getStringPci>
    n = stringToInt(input);
    80004ed8:	00048513          	mv	a0,s1
    80004edc:	00000097          	auipc	ra,0x0
    80004ee0:	698080e7          	jalr	1688(ra) # 80005574 <_Z11stringToIntPKc>
    80004ee4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	2b850513          	addi	a0,a0,696 # 800091a0 <CONSOLE_STATUS+0x190>
    80004ef0:	00000097          	auipc	ra,0x0
    80004ef4:	520080e7          	jalr	1312(ra) # 80005410 <_Z11printStringPKc>
    80004ef8:	00000613          	li	a2,0
    80004efc:	00a00593          	li	a1,10
    80004f00:	00090513          	mv	a0,s2
    80004f04:	00000097          	auipc	ra,0x0
    80004f08:	6c0080e7          	jalr	1728(ra) # 800055c4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004f0c:	00004517          	auipc	a0,0x4
    80004f10:	2ac50513          	addi	a0,a0,684 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004f14:	00000097          	auipc	ra,0x0
    80004f18:	4fc080e7          	jalr	1276(ra) # 80005410 <_Z11printStringPKc>
    80004f1c:	00000613          	li	a2,0
    80004f20:	00a00593          	li	a1,10
    80004f24:	00048513          	mv	a0,s1
    80004f28:	00000097          	auipc	ra,0x0
    80004f2c:	69c080e7          	jalr	1692(ra) # 800055c4 <_Z8printIntiii>
    printString(".\n");
    80004f30:	00004517          	auipc	a0,0x4
    80004f34:	2a050513          	addi	a0,a0,672 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	4d8080e7          	jalr	1240(ra) # 80005410 <_Z11printStringPKc>
    if(threadNum > n) {
    80004f40:	0324c463          	blt	s1,s2,80004f68 <_Z29producerConsumer_CPP_Sync_APIv+0x118>
    } else if (threadNum < 1) {
    80004f44:	03205c63          	blez	s2,80004f7c <_Z29producerConsumer_CPP_Sync_APIv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80004f48:	03800513          	li	a0,56
    80004f4c:	ffffd097          	auipc	ra,0xffffd
    80004f50:	9f4080e7          	jalr	-1548(ra) # 80001940 <_Znwm>
    80004f54:	00050a93          	mv	s5,a0
    80004f58:	00048593          	mv	a1,s1
    80004f5c:	00000097          	auipc	ra,0x0
    80004f60:	788080e7          	jalr	1928(ra) # 800056e4 <_ZN9BufferCPPC1Ei>
    80004f64:	0300006f          	j	80004f94 <_Z29producerConsumer_CPP_Sync_APIv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004f68:	00004517          	auipc	a0,0x4
    80004f6c:	27050513          	addi	a0,a0,624 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004f70:	00000097          	auipc	ra,0x0
    80004f74:	4a0080e7          	jalr	1184(ra) # 80005410 <_Z11printStringPKc>
        return;
    80004f78:	0140006f          	j	80004f8c <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	29c50513          	addi	a0,a0,668 # 80009218 <CONSOLE_STATUS+0x208>
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	48c080e7          	jalr	1164(ra) # 80005410 <_Z11printStringPKc>
        return;
    80004f8c:	000b8113          	mv	sp,s7
    80004f90:	2100006f          	j	800051a0 <_Z29producerConsumer_CPP_Sync_APIv+0x350>
    waitForAll = new Semaphore(0);
    80004f94:	01000513          	li	a0,16
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	9a8080e7          	jalr	-1624(ra) # 80001940 <_Znwm>
    80004fa0:	00050493          	mv	s1,a0
    80004fa4:	00000593          	li	a1,0
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	b58080e7          	jalr	-1192(ra) # 80001b00 <_ZN9SemaphoreC1Ej>
    80004fb0:	00007797          	auipc	a5,0x7
    80004fb4:	b097b023          	sd	s1,-1280(a5) # 8000bab0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004fb8:	00391793          	slli	a5,s2,0x3
    80004fbc:	00f78793          	addi	a5,a5,15
    80004fc0:	ff07f793          	andi	a5,a5,-16
    80004fc4:	40f10133          	sub	sp,sp,a5
    80004fc8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004fcc:	0019071b          	addiw	a4,s2,1
    80004fd0:	00171793          	slli	a5,a4,0x1
    80004fd4:	00e787b3          	add	a5,a5,a4
    80004fd8:	00379793          	slli	a5,a5,0x3
    80004fdc:	00f78793          	addi	a5,a5,15
    80004fe0:	ff07f793          	andi	a5,a5,-16
    80004fe4:	40f10133          	sub	sp,sp,a5
    80004fe8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004fec:	00191c13          	slli	s8,s2,0x1
    80004ff0:	012c07b3          	add	a5,s8,s2
    80004ff4:	00379793          	slli	a5,a5,0x3
    80004ff8:	00fa07b3          	add	a5,s4,a5
    80004ffc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005000:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005004:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005008:	02800513          	li	a0,40
    8000500c:	ffffd097          	auipc	ra,0xffffd
    80005010:	934080e7          	jalr	-1740(ra) # 80001940 <_Znwm>
    80005014:	00050b13          	mv	s6,a0
    80005018:	012c0c33          	add	s8,s8,s2
    8000501c:	003c1c13          	slli	s8,s8,0x3
    80005020:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005024:	00007797          	auipc	a5,0x7
    80005028:	90478793          	addi	a5,a5,-1788 # 8000b928 <_ZTV12ConsumerSync+0x10>
    8000502c:	00f53023          	sd	a5,0(a0)
    80005030:	03853023          	sd	s8,32(a0)
    consumerThread->start();
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	a44080e7          	jalr	-1468(ra) # 80001a78 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000503c:	00000493          	li	s1,0
    80005040:	0540006f          	j	80005094 <_Z29producerConsumer_CPP_Sync_APIv+0x244>
            threads[i] = new ProducerSync(data+i);
    80005044:	02800513          	li	a0,40
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	8f8080e7          	jalr	-1800(ra) # 80001940 <_Znwm>
    80005050:	00149793          	slli	a5,s1,0x1
    80005054:	009787b3          	add	a5,a5,s1
    80005058:	00379793          	slli	a5,a5,0x3
    8000505c:	00fa07b3          	add	a5,s4,a5
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005060:	00007717          	auipc	a4,0x7
    80005064:	8a070713          	addi	a4,a4,-1888 # 8000b900 <_ZTV12ProducerSync+0x10>
    80005068:	00e53023          	sd	a4,0(a0)
    8000506c:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data+i);
    80005070:	00349793          	slli	a5,s1,0x3
    80005074:	00f987b3          	add	a5,s3,a5
    80005078:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    8000507c:	00349793          	slli	a5,s1,0x3
    80005080:	00f987b3          	add	a5,s3,a5
    80005084:	0007b503          	ld	a0,0(a5)
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	9f0080e7          	jalr	-1552(ra) # 80001a78 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005090:	0014849b          	addiw	s1,s1,1
    80005094:	0724d463          	bge	s1,s2,800050fc <_Z29producerConsumer_CPP_Sync_APIv+0x2ac>
        data[i].id = i;
    80005098:	00149793          	slli	a5,s1,0x1
    8000509c:	009787b3          	add	a5,a5,s1
    800050a0:	00379793          	slli	a5,a5,0x3
    800050a4:	00fa07b3          	add	a5,s4,a5
    800050a8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800050ac:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800050b0:	00007717          	auipc	a4,0x7
    800050b4:	a0073703          	ld	a4,-1536(a4) # 8000bab0 <_ZL10waitForAll>
    800050b8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800050bc:	f89044e3          	bgtz	s1,80005044 <_Z29producerConsumer_CPP_Sync_APIv+0x1f4>
            threads[i] = new ProducerKeyboard(data+i);
    800050c0:	02800513          	li	a0,40
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	87c080e7          	jalr	-1924(ra) # 80001940 <_Znwm>
    800050cc:	00149793          	slli	a5,s1,0x1
    800050d0:	009787b3          	add	a5,a5,s1
    800050d4:	00379793          	slli	a5,a5,0x3
    800050d8:	00fa07b3          	add	a5,s4,a5
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800050dc:	00006717          	auipc	a4,0x6
    800050e0:	7fc70713          	addi	a4,a4,2044 # 8000b8d8 <_ZTV16ProducerKeyboard+0x10>
    800050e4:	00e53023          	sd	a4,0(a0)
    800050e8:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data+i);
    800050ec:	00349793          	slli	a5,s1,0x3
    800050f0:	00f987b3          	add	a5,s3,a5
    800050f4:	00a7b023          	sd	a0,0(a5)
    800050f8:	f85ff06f          	j	8000507c <_Z29producerConsumer_CPP_Sync_APIv+0x22c>
    Thread::dispatch();
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	9b4080e7          	jalr	-1612(ra) # 80001ab0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005104:	00000493          	li	s1,0
    80005108:	00994e63          	blt	s2,s1,80005124 <_Z29producerConsumer_CPP_Sync_APIv+0x2d4>
        waitForAll->wait();
    8000510c:	00007517          	auipc	a0,0x7
    80005110:	9a453503          	ld	a0,-1628(a0) # 8000bab0 <_ZL10waitForAll>
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	a24080e7          	jalr	-1500(ra) # 80001b38 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000511c:	0014849b          	addiw	s1,s1,1
    80005120:	fe9ff06f          	j	80005108 <_Z29producerConsumer_CPP_Sync_APIv+0x2b8>
    for (int i = 0; i < threadNum; i++) {
    80005124:	00000493          	li	s1,0
    80005128:	0080006f          	j	80005130 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
    8000512c:	0014849b          	addiw	s1,s1,1
    80005130:	0324d263          	bge	s1,s2,80005154 <_Z29producerConsumer_CPP_Sync_APIv+0x304>
        delete threads[i];
    80005134:	00349793          	slli	a5,s1,0x3
    80005138:	00f987b3          	add	a5,s3,a5
    8000513c:	0007b503          	ld	a0,0(a5)
    80005140:	fe0506e3          	beqz	a0,8000512c <_Z29producerConsumer_CPP_Sync_APIv+0x2dc>
    80005144:	00053783          	ld	a5,0(a0)
    80005148:	0087b783          	ld	a5,8(a5)
    8000514c:	000780e7          	jalr	a5
    80005150:	fddff06f          	j	8000512c <_Z29producerConsumer_CPP_Sync_APIv+0x2dc>
    delete consumerThread;
    80005154:	000b0a63          	beqz	s6,80005168 <_Z29producerConsumer_CPP_Sync_APIv+0x318>
    80005158:	000b3783          	ld	a5,0(s6)
    8000515c:	0087b783          	ld	a5,8(a5)
    80005160:	000b0513          	mv	a0,s6
    80005164:	000780e7          	jalr	a5
    delete waitForAll;
    80005168:	00007517          	auipc	a0,0x7
    8000516c:	94853503          	ld	a0,-1720(a0) # 8000bab0 <_ZL10waitForAll>
    80005170:	00050863          	beqz	a0,80005180 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
    80005174:	00053783          	ld	a5,0(a0)
    80005178:	0087b783          	ld	a5,8(a5)
    8000517c:	000780e7          	jalr	a5
    delete buffer;
    80005180:	000a8e63          	beqz	s5,8000519c <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80005184:	000a8513          	mv	a0,s5
    80005188:	00001097          	auipc	ra,0x1
    8000518c:	854080e7          	jalr	-1964(ra) # 800059dc <_ZN9BufferCPPD1Ev>
    80005190:	000a8513          	mv	a0,s5
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	7fc080e7          	jalr	2044(ra) # 80001990 <_ZdlPv>
    8000519c:	000b8113          	mv	sp,s7

}
    800051a0:	f9040113          	addi	sp,s0,-112
    800051a4:	06813083          	ld	ra,104(sp)
    800051a8:	06013403          	ld	s0,96(sp)
    800051ac:	05813483          	ld	s1,88(sp)
    800051b0:	05013903          	ld	s2,80(sp)
    800051b4:	04813983          	ld	s3,72(sp)
    800051b8:	04013a03          	ld	s4,64(sp)
    800051bc:	03813a83          	ld	s5,56(sp)
    800051c0:	03013b03          	ld	s6,48(sp)
    800051c4:	02813b83          	ld	s7,40(sp)
    800051c8:	02013c03          	ld	s8,32(sp)
    800051cc:	07010113          	addi	sp,sp,112
    800051d0:	00008067          	ret
    800051d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800051d8:	000a8513          	mv	a0,s5
    800051dc:	ffffc097          	auipc	ra,0xffffc
    800051e0:	7b4080e7          	jalr	1972(ra) # 80001990 <_ZdlPv>
    800051e4:	00048513          	mv	a0,s1
    800051e8:	00008097          	auipc	ra,0x8
    800051ec:	9b0080e7          	jalr	-1616(ra) # 8000cb98 <_Unwind_Resume>
    800051f0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800051f4:	00048513          	mv	a0,s1
    800051f8:	ffffc097          	auipc	ra,0xffffc
    800051fc:	798080e7          	jalr	1944(ra) # 80001990 <_ZdlPv>
    80005200:	00090513          	mv	a0,s2
    80005204:	00008097          	auipc	ra,0x8
    80005208:	994080e7          	jalr	-1644(ra) # 8000cb98 <_Unwind_Resume>

000000008000520c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000520c:	ff010113          	addi	sp,sp,-16
    80005210:	00113423          	sd	ra,8(sp)
    80005214:	00813023          	sd	s0,0(sp)
    80005218:	01010413          	addi	s0,sp,16
    8000521c:	00006797          	auipc	a5,0x6
    80005220:	70c78793          	addi	a5,a5,1804 # 8000b928 <_ZTV12ConsumerSync+0x10>
    80005224:	00f53023          	sd	a5,0(a0)
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	69c080e7          	jalr	1692(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80005230:	00813083          	ld	ra,8(sp)
    80005234:	00013403          	ld	s0,0(sp)
    80005238:	01010113          	addi	sp,sp,16
    8000523c:	00008067          	ret

0000000080005240 <_ZN12ConsumerSyncD0Ev>:
    80005240:	fe010113          	addi	sp,sp,-32
    80005244:	00113c23          	sd	ra,24(sp)
    80005248:	00813823          	sd	s0,16(sp)
    8000524c:	00913423          	sd	s1,8(sp)
    80005250:	02010413          	addi	s0,sp,32
    80005254:	00050493          	mv	s1,a0
    80005258:	00006797          	auipc	a5,0x6
    8000525c:	6d078793          	addi	a5,a5,1744 # 8000b928 <_ZTV12ConsumerSync+0x10>
    80005260:	00f53023          	sd	a5,0(a0)
    80005264:	ffffc097          	auipc	ra,0xffffc
    80005268:	660080e7          	jalr	1632(ra) # 800018c4 <_ZN6ThreadD1Ev>
    8000526c:	00048513          	mv	a0,s1
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	720080e7          	jalr	1824(ra) # 80001990 <_ZdlPv>
    80005278:	01813083          	ld	ra,24(sp)
    8000527c:	01013403          	ld	s0,16(sp)
    80005280:	00813483          	ld	s1,8(sp)
    80005284:	02010113          	addi	sp,sp,32
    80005288:	00008067          	ret

000000008000528c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000528c:	ff010113          	addi	sp,sp,-16
    80005290:	00113423          	sd	ra,8(sp)
    80005294:	00813023          	sd	s0,0(sp)
    80005298:	01010413          	addi	s0,sp,16
    8000529c:	00006797          	auipc	a5,0x6
    800052a0:	66478793          	addi	a5,a5,1636 # 8000b900 <_ZTV12ProducerSync+0x10>
    800052a4:	00f53023          	sd	a5,0(a0)
    800052a8:	ffffc097          	auipc	ra,0xffffc
    800052ac:	61c080e7          	jalr	1564(ra) # 800018c4 <_ZN6ThreadD1Ev>
    800052b0:	00813083          	ld	ra,8(sp)
    800052b4:	00013403          	ld	s0,0(sp)
    800052b8:	01010113          	addi	sp,sp,16
    800052bc:	00008067          	ret

00000000800052c0 <_ZN12ProducerSyncD0Ev>:
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00113c23          	sd	ra,24(sp)
    800052c8:	00813823          	sd	s0,16(sp)
    800052cc:	00913423          	sd	s1,8(sp)
    800052d0:	02010413          	addi	s0,sp,32
    800052d4:	00050493          	mv	s1,a0
    800052d8:	00006797          	auipc	a5,0x6
    800052dc:	62878793          	addi	a5,a5,1576 # 8000b900 <_ZTV12ProducerSync+0x10>
    800052e0:	00f53023          	sd	a5,0(a0)
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	5e0080e7          	jalr	1504(ra) # 800018c4 <_ZN6ThreadD1Ev>
    800052ec:	00048513          	mv	a0,s1
    800052f0:	ffffc097          	auipc	ra,0xffffc
    800052f4:	6a0080e7          	jalr	1696(ra) # 80001990 <_ZdlPv>
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	02010113          	addi	sp,sp,32
    80005308:	00008067          	ret

000000008000530c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000530c:	ff010113          	addi	sp,sp,-16
    80005310:	00113423          	sd	ra,8(sp)
    80005314:	00813023          	sd	s0,0(sp)
    80005318:	01010413          	addi	s0,sp,16
    8000531c:	00006797          	auipc	a5,0x6
    80005320:	5bc78793          	addi	a5,a5,1468 # 8000b8d8 <_ZTV16ProducerKeyboard+0x10>
    80005324:	00f53023          	sd	a5,0(a0)
    80005328:	ffffc097          	auipc	ra,0xffffc
    8000532c:	59c080e7          	jalr	1436(ra) # 800018c4 <_ZN6ThreadD1Ev>
    80005330:	00813083          	ld	ra,8(sp)
    80005334:	00013403          	ld	s0,0(sp)
    80005338:	01010113          	addi	sp,sp,16
    8000533c:	00008067          	ret

0000000080005340 <_ZN16ProducerKeyboardD0Ev>:
    80005340:	fe010113          	addi	sp,sp,-32
    80005344:	00113c23          	sd	ra,24(sp)
    80005348:	00813823          	sd	s0,16(sp)
    8000534c:	00913423          	sd	s1,8(sp)
    80005350:	02010413          	addi	s0,sp,32
    80005354:	00050493          	mv	s1,a0
    80005358:	00006797          	auipc	a5,0x6
    8000535c:	58078793          	addi	a5,a5,1408 # 8000b8d8 <_ZTV16ProducerKeyboard+0x10>
    80005360:	00f53023          	sd	a5,0(a0)
    80005364:	ffffc097          	auipc	ra,0xffffc
    80005368:	560080e7          	jalr	1376(ra) # 800018c4 <_ZN6ThreadD1Ev>
    8000536c:	00048513          	mv	a0,s1
    80005370:	ffffc097          	auipc	ra,0xffffc
    80005374:	620080e7          	jalr	1568(ra) # 80001990 <_ZdlPv>
    80005378:	01813083          	ld	ra,24(sp)
    8000537c:	01013403          	ld	s0,16(sp)
    80005380:	00813483          	ld	s1,8(sp)
    80005384:	02010113          	addi	sp,sp,32
    80005388:	00008067          	ret

000000008000538c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000538c:	ff010113          	addi	sp,sp,-16
    80005390:	00113423          	sd	ra,8(sp)
    80005394:	00813023          	sd	s0,0(sp)
    80005398:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000539c:	02053583          	ld	a1,32(a0)
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	868080e7          	jalr	-1944(ra) # 80004c08 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800053a8:	00813083          	ld	ra,8(sp)
    800053ac:	00013403          	ld	s0,0(sp)
    800053b0:	01010113          	addi	sp,sp,16
    800053b4:	00008067          	ret

00000000800053b8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800053b8:	ff010113          	addi	sp,sp,-16
    800053bc:	00113423          	sd	ra,8(sp)
    800053c0:	00813023          	sd	s0,0(sp)
    800053c4:	01010413          	addi	s0,sp,16
        producer(td);
    800053c8:	02053583          	ld	a1,32(a0)
    800053cc:	00000097          	auipc	ra,0x0
    800053d0:	8fc080e7          	jalr	-1796(ra) # 80004cc8 <_ZN12ProducerSync8producerEPv>
    }
    800053d4:	00813083          	ld	ra,8(sp)
    800053d8:	00013403          	ld	s0,0(sp)
    800053dc:	01010113          	addi	sp,sp,16
    800053e0:	00008067          	ret

00000000800053e4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800053e4:	ff010113          	addi	sp,sp,-16
    800053e8:	00113423          	sd	ra,8(sp)
    800053ec:	00813023          	sd	s0,0(sp)
    800053f0:	01010413          	addi	s0,sp,16
        consumer(td);
    800053f4:	02053583          	ld	a1,32(a0)
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	964080e7          	jalr	-1692(ra) # 80004d5c <_ZN12ConsumerSync8consumerEPv>
    }
    80005400:	00813083          	ld	ra,8(sp)
    80005404:	00013403          	ld	s0,0(sp)
    80005408:	01010113          	addi	sp,sp,16
    8000540c:	00008067          	ret

0000000080005410 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005410:	fe010113          	addi	sp,sp,-32
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	00813823          	sd	s0,16(sp)
    8000541c:	00913423          	sd	s1,8(sp)
    80005420:	02010413          	addi	s0,sp,32
    80005424:	00050493          	mv	s1,a0
    LOCK();
    80005428:	00100613          	li	a2,1
    8000542c:	00000593          	li	a1,0
    80005430:	00006517          	auipc	a0,0x6
    80005434:	68850513          	addi	a0,a0,1672 # 8000bab8 <lockPrint>
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	cec080e7          	jalr	-788(ra) # 80001124 <copy_and_swap>
    80005440:	00050863          	beqz	a0,80005450 <_Z11printStringPKc+0x40>
    80005444:	ffffc097          	auipc	ra,0xffffc
    80005448:	e64080e7          	jalr	-412(ra) # 800012a8 <_Z15thread_dispatchv>
    8000544c:	fddff06f          	j	80005428 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005450:	0004c503          	lbu	a0,0(s1)
    80005454:	00050a63          	beqz	a0,80005468 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	090080e7          	jalr	144(ra) # 800014e8 <_Z4putcc>
        string++;
    80005460:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005464:	fedff06f          	j	80005450 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005468:	00000613          	li	a2,0
    8000546c:	00100593          	li	a1,1
    80005470:	00006517          	auipc	a0,0x6
    80005474:	64850513          	addi	a0,a0,1608 # 8000bab8 <lockPrint>
    80005478:	ffffc097          	auipc	ra,0xffffc
    8000547c:	cac080e7          	jalr	-852(ra) # 80001124 <copy_and_swap>
    80005480:	fe0514e3          	bnez	a0,80005468 <_Z11printStringPKc+0x58>
}
    80005484:	01813083          	ld	ra,24(sp)
    80005488:	01013403          	ld	s0,16(sp)
    8000548c:	00813483          	ld	s1,8(sp)
    80005490:	02010113          	addi	sp,sp,32
    80005494:	00008067          	ret

0000000080005498 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005498:	fd010113          	addi	sp,sp,-48
    8000549c:	02113423          	sd	ra,40(sp)
    800054a0:	02813023          	sd	s0,32(sp)
    800054a4:	00913c23          	sd	s1,24(sp)
    800054a8:	01213823          	sd	s2,16(sp)
    800054ac:	01313423          	sd	s3,8(sp)
    800054b0:	01413023          	sd	s4,0(sp)
    800054b4:	03010413          	addi	s0,sp,48
    800054b8:	00050993          	mv	s3,a0
    800054bc:	00058a13          	mv	s4,a1
    LOCK();
    800054c0:	00100613          	li	a2,1
    800054c4:	00000593          	li	a1,0
    800054c8:	00006517          	auipc	a0,0x6
    800054cc:	5f050513          	addi	a0,a0,1520 # 8000bab8 <lockPrint>
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	c54080e7          	jalr	-940(ra) # 80001124 <copy_and_swap>
    800054d8:	00050863          	beqz	a0,800054e8 <_Z9getStringPci+0x50>
    800054dc:	ffffc097          	auipc	ra,0xffffc
    800054e0:	dcc080e7          	jalr	-564(ra) # 800012a8 <_Z15thread_dispatchv>
    800054e4:	fddff06f          	j	800054c0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800054e8:	00000913          	li	s2,0
    800054ec:	00090493          	mv	s1,s2
    800054f0:	0019091b          	addiw	s2,s2,1
    800054f4:	03495c63          	bge	s2,s4,8000552c <_Z9getStringPci+0x94>
        cc = getc();
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	fb0080e7          	jalr	-80(ra) # 800014a8 <_Z4getcv>
        if(cc < 1)
    80005500:	02a05663          	blez	a0,8000552c <_Z9getStringPci+0x94>
            break;
        c = cc;
    80005504:	0ff57513          	andi	a0,a0,255
        buf[i++] = c;
    80005508:	009984b3          	add	s1,s3,s1
    8000550c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005510:	00a00793          	li	a5,10
    80005514:	00f50a63          	beq	a0,a5,80005528 <_Z9getStringPci+0x90>
    80005518:	00d00793          	li	a5,13
    8000551c:	fcf518e3          	bne	a0,a5,800054ec <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005520:	00090493          	mv	s1,s2
    80005524:	0080006f          	j	8000552c <_Z9getStringPci+0x94>
    80005528:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000552c:	009984b3          	add	s1,s3,s1
    80005530:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005534:	00000613          	li	a2,0
    80005538:	00100593          	li	a1,1
    8000553c:	00006517          	auipc	a0,0x6
    80005540:	57c50513          	addi	a0,a0,1404 # 8000bab8 <lockPrint>
    80005544:	ffffc097          	auipc	ra,0xffffc
    80005548:	be0080e7          	jalr	-1056(ra) # 80001124 <copy_and_swap>
    8000554c:	fe0514e3          	bnez	a0,80005534 <_Z9getStringPci+0x9c>
    return buf;
}
    80005550:	00098513          	mv	a0,s3
    80005554:	02813083          	ld	ra,40(sp)
    80005558:	02013403          	ld	s0,32(sp)
    8000555c:	01813483          	ld	s1,24(sp)
    80005560:	01013903          	ld	s2,16(sp)
    80005564:	00813983          	ld	s3,8(sp)
    80005568:	00013a03          	ld	s4,0(sp)
    8000556c:	03010113          	addi	sp,sp,48
    80005570:	00008067          	ret

0000000080005574 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005574:	ff010113          	addi	sp,sp,-16
    80005578:	00813423          	sd	s0,8(sp)
    8000557c:	01010413          	addi	s0,sp,16
    80005580:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005584:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005588:	0006c603          	lbu	a2,0(a3)
    8000558c:	fd06071b          	addiw	a4,a2,-48
    80005590:	0ff77713          	andi	a4,a4,255
    80005594:	00900793          	li	a5,9
    80005598:	02e7e063          	bltu	a5,a4,800055b8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000559c:	0025179b          	slliw	a5,a0,0x2
    800055a0:	00a787bb          	addw	a5,a5,a0
    800055a4:	0017979b          	slliw	a5,a5,0x1
    800055a8:	00168693          	addi	a3,a3,1
    800055ac:	00c787bb          	addw	a5,a5,a2
    800055b0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800055b4:	fd5ff06f          	j	80005588 <_Z11stringToIntPKc+0x14>
    return n;
}
    800055b8:	00813403          	ld	s0,8(sp)
    800055bc:	01010113          	addi	sp,sp,16
    800055c0:	00008067          	ret

00000000800055c4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800055c4:	fc010113          	addi	sp,sp,-64
    800055c8:	02113c23          	sd	ra,56(sp)
    800055cc:	02813823          	sd	s0,48(sp)
    800055d0:	02913423          	sd	s1,40(sp)
    800055d4:	03213023          	sd	s2,32(sp)
    800055d8:	01313c23          	sd	s3,24(sp)
    800055dc:	04010413          	addi	s0,sp,64
    800055e0:	00050493          	mv	s1,a0
    800055e4:	00058913          	mv	s2,a1
    800055e8:	00060993          	mv	s3,a2
    LOCK();
    800055ec:	00100613          	li	a2,1
    800055f0:	00000593          	li	a1,0
    800055f4:	00006517          	auipc	a0,0x6
    800055f8:	4c450513          	addi	a0,a0,1220 # 8000bab8 <lockPrint>
    800055fc:	ffffc097          	auipc	ra,0xffffc
    80005600:	b28080e7          	jalr	-1240(ra) # 80001124 <copy_and_swap>
    80005604:	00050863          	beqz	a0,80005614 <_Z8printIntiii+0x50>
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	ca0080e7          	jalr	-864(ra) # 800012a8 <_Z15thread_dispatchv>
    80005610:	fddff06f          	j	800055ec <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005614:	00098463          	beqz	s3,8000561c <_Z8printIntiii+0x58>
    80005618:	0804c463          	bltz	s1,800056a0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000561c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005620:	00000593          	li	a1,0
    }

    i = 0;
    80005624:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005628:	0009079b          	sext.w	a5,s2
    8000562c:	0325773b          	remuw	a4,a0,s2
    80005630:	00048613          	mv	a2,s1
    80005634:	0014849b          	addiw	s1,s1,1
    80005638:	02071693          	slli	a3,a4,0x20
    8000563c:	0206d693          	srli	a3,a3,0x20
    80005640:	00006717          	auipc	a4,0x6
    80005644:	30070713          	addi	a4,a4,768 # 8000b940 <digits>
    80005648:	00d70733          	add	a4,a4,a3
    8000564c:	00074683          	lbu	a3,0(a4)
    80005650:	fd040713          	addi	a4,s0,-48
    80005654:	00c70733          	add	a4,a4,a2
    80005658:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000565c:	0005071b          	sext.w	a4,a0
    80005660:	0325553b          	divuw	a0,a0,s2
    80005664:	fcf772e3          	bgeu	a4,a5,80005628 <_Z8printIntiii+0x64>
    if(neg)
    80005668:	00058c63          	beqz	a1,80005680 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000566c:	fd040793          	addi	a5,s0,-48
    80005670:	009784b3          	add	s1,a5,s1
    80005674:	02d00793          	li	a5,45
    80005678:	fef48823          	sb	a5,-16(s1)
    8000567c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005680:	fff4849b          	addiw	s1,s1,-1
    80005684:	0204c463          	bltz	s1,800056ac <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005688:	fd040793          	addi	a5,s0,-48
    8000568c:	009787b3          	add	a5,a5,s1
    80005690:	ff07c503          	lbu	a0,-16(a5)
    80005694:	ffffc097          	auipc	ra,0xffffc
    80005698:	e54080e7          	jalr	-428(ra) # 800014e8 <_Z4putcc>
    8000569c:	fe5ff06f          	j	80005680 <_Z8printIntiii+0xbc>
        x = -xx;
    800056a0:	4090053b          	negw	a0,s1
        neg = 1;
    800056a4:	00100593          	li	a1,1
        x = -xx;
    800056a8:	f7dff06f          	j	80005624 <_Z8printIntiii+0x60>

    UNLOCK();
    800056ac:	00000613          	li	a2,0
    800056b0:	00100593          	li	a1,1
    800056b4:	00006517          	auipc	a0,0x6
    800056b8:	40450513          	addi	a0,a0,1028 # 8000bab8 <lockPrint>
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	a68080e7          	jalr	-1432(ra) # 80001124 <copy_and_swap>
    800056c4:	fe0514e3          	bnez	a0,800056ac <_Z8printIntiii+0xe8>
    800056c8:	03813083          	ld	ra,56(sp)
    800056cc:	03013403          	ld	s0,48(sp)
    800056d0:	02813483          	ld	s1,40(sp)
    800056d4:	02013903          	ld	s2,32(sp)
    800056d8:	01813983          	ld	s3,24(sp)
    800056dc:	04010113          	addi	sp,sp,64
    800056e0:	00008067          	ret

00000000800056e4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800056e4:	fd010113          	addi	sp,sp,-48
    800056e8:	02113423          	sd	ra,40(sp)
    800056ec:	02813023          	sd	s0,32(sp)
    800056f0:	00913c23          	sd	s1,24(sp)
    800056f4:	01213823          	sd	s2,16(sp)
    800056f8:	01313423          	sd	s3,8(sp)
    800056fc:	03010413          	addi	s0,sp,48
    80005700:	00050493          	mv	s1,a0
    80005704:	00058913          	mv	s2,a1
    80005708:	0015879b          	addiw	a5,a1,1
    8000570c:	0007851b          	sext.w	a0,a5
    80005710:	00f4a023          	sw	a5,0(s1)
    80005714:	0004a823          	sw	zero,16(s1)
    80005718:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000571c:	00251513          	slli	a0,a0,0x2
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	a80080e7          	jalr	-1408(ra) # 800011a0 <_Z9mem_allocm>
    80005728:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000572c:	01000513          	li	a0,16
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	210080e7          	jalr	528(ra) # 80001940 <_Znwm>
    80005738:	00050993          	mv	s3,a0
    8000573c:	00000593          	li	a1,0
    80005740:	ffffc097          	auipc	ra,0xffffc
    80005744:	3c0080e7          	jalr	960(ra) # 80001b00 <_ZN9SemaphoreC1Ej>
    80005748:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000574c:	01000513          	li	a0,16
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	1f0080e7          	jalr	496(ra) # 80001940 <_Znwm>
    80005758:	00050993          	mv	s3,a0
    8000575c:	00090593          	mv	a1,s2
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	3a0080e7          	jalr	928(ra) # 80001b00 <_ZN9SemaphoreC1Ej>
    80005768:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000576c:	01000513          	li	a0,16
    80005770:	ffffc097          	auipc	ra,0xffffc
    80005774:	1d0080e7          	jalr	464(ra) # 80001940 <_Znwm>
    80005778:	00050913          	mv	s2,a0
    8000577c:	00100593          	li	a1,1
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	380080e7          	jalr	896(ra) # 80001b00 <_ZN9SemaphoreC1Ej>
    80005788:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000578c:	01000513          	li	a0,16
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	1b0080e7          	jalr	432(ra) # 80001940 <_Znwm>
    80005798:	00050913          	mv	s2,a0
    8000579c:	00100593          	li	a1,1
    800057a0:	ffffc097          	auipc	ra,0xffffc
    800057a4:	360080e7          	jalr	864(ra) # 80001b00 <_ZN9SemaphoreC1Ej>
    800057a8:	0324b823          	sd	s2,48(s1)
}
    800057ac:	02813083          	ld	ra,40(sp)
    800057b0:	02013403          	ld	s0,32(sp)
    800057b4:	01813483          	ld	s1,24(sp)
    800057b8:	01013903          	ld	s2,16(sp)
    800057bc:	00813983          	ld	s3,8(sp)
    800057c0:	03010113          	addi	sp,sp,48
    800057c4:	00008067          	ret
    800057c8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800057cc:	00098513          	mv	a0,s3
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	1c0080e7          	jalr	448(ra) # 80001990 <_ZdlPv>
    800057d8:	00048513          	mv	a0,s1
    800057dc:	00007097          	auipc	ra,0x7
    800057e0:	3bc080e7          	jalr	956(ra) # 8000cb98 <_Unwind_Resume>
    800057e4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800057e8:	00098513          	mv	a0,s3
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	1a4080e7          	jalr	420(ra) # 80001990 <_ZdlPv>
    800057f4:	00048513          	mv	a0,s1
    800057f8:	00007097          	auipc	ra,0x7
    800057fc:	3a0080e7          	jalr	928(ra) # 8000cb98 <_Unwind_Resume>
    80005800:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005804:	00090513          	mv	a0,s2
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	188080e7          	jalr	392(ra) # 80001990 <_ZdlPv>
    80005810:	00048513          	mv	a0,s1
    80005814:	00007097          	auipc	ra,0x7
    80005818:	384080e7          	jalr	900(ra) # 8000cb98 <_Unwind_Resume>
    8000581c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005820:	00090513          	mv	a0,s2
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	16c080e7          	jalr	364(ra) # 80001990 <_ZdlPv>
    8000582c:	00048513          	mv	a0,s1
    80005830:	00007097          	auipc	ra,0x7
    80005834:	368080e7          	jalr	872(ra) # 8000cb98 <_Unwind_Resume>

0000000080005838 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	01213023          	sd	s2,0(sp)
    8000584c:	02010413          	addi	s0,sp,32
    80005850:	00050493          	mv	s1,a0
    80005854:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005858:	01853503          	ld	a0,24(a0)
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	2dc080e7          	jalr	732(ra) # 80001b38 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005864:	0304b503          	ld	a0,48(s1)
    80005868:	ffffc097          	auipc	ra,0xffffc
    8000586c:	2d0080e7          	jalr	720(ra) # 80001b38 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005870:	0084b783          	ld	a5,8(s1)
    80005874:	0144a703          	lw	a4,20(s1)
    80005878:	00271713          	slli	a4,a4,0x2
    8000587c:	00e787b3          	add	a5,a5,a4
    80005880:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005884:	0144a783          	lw	a5,20(s1)
    80005888:	0017879b          	addiw	a5,a5,1
    8000588c:	0004a703          	lw	a4,0(s1)
    80005890:	02e7e7bb          	remw	a5,a5,a4
    80005894:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005898:	0304b503          	ld	a0,48(s1)
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	2c8080e7          	jalr	712(ra) # 80001b64 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800058a4:	0204b503          	ld	a0,32(s1)
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	2bc080e7          	jalr	700(ra) # 80001b64 <_ZN9Semaphore6signalEv>

}
    800058b0:	01813083          	ld	ra,24(sp)
    800058b4:	01013403          	ld	s0,16(sp)
    800058b8:	00813483          	ld	s1,8(sp)
    800058bc:	00013903          	ld	s2,0(sp)
    800058c0:	02010113          	addi	sp,sp,32
    800058c4:	00008067          	ret

00000000800058c8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800058c8:	fe010113          	addi	sp,sp,-32
    800058cc:	00113c23          	sd	ra,24(sp)
    800058d0:	00813823          	sd	s0,16(sp)
    800058d4:	00913423          	sd	s1,8(sp)
    800058d8:	01213023          	sd	s2,0(sp)
    800058dc:	02010413          	addi	s0,sp,32
    800058e0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800058e4:	02053503          	ld	a0,32(a0)
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	250080e7          	jalr	592(ra) # 80001b38 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800058f0:	0284b503          	ld	a0,40(s1)
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	244080e7          	jalr	580(ra) # 80001b38 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800058fc:	0084b703          	ld	a4,8(s1)
    80005900:	0104a783          	lw	a5,16(s1)
    80005904:	00279693          	slli	a3,a5,0x2
    80005908:	00d70733          	add	a4,a4,a3
    8000590c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005910:	0017879b          	addiw	a5,a5,1
    80005914:	0004a703          	lw	a4,0(s1)
    80005918:	02e7e7bb          	remw	a5,a5,a4
    8000591c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005920:	0284b503          	ld	a0,40(s1)
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	240080e7          	jalr	576(ra) # 80001b64 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000592c:	0184b503          	ld	a0,24(s1)
    80005930:	ffffc097          	auipc	ra,0xffffc
    80005934:	234080e7          	jalr	564(ra) # 80001b64 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005938:	00090513          	mv	a0,s2
    8000593c:	01813083          	ld	ra,24(sp)
    80005940:	01013403          	ld	s0,16(sp)
    80005944:	00813483          	ld	s1,8(sp)
    80005948:	00013903          	ld	s2,0(sp)
    8000594c:	02010113          	addi	sp,sp,32
    80005950:	00008067          	ret

0000000080005954 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005954:	fe010113          	addi	sp,sp,-32
    80005958:	00113c23          	sd	ra,24(sp)
    8000595c:	00813823          	sd	s0,16(sp)
    80005960:	00913423          	sd	s1,8(sp)
    80005964:	01213023          	sd	s2,0(sp)
    80005968:	02010413          	addi	s0,sp,32
    8000596c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005970:	02853503          	ld	a0,40(a0)
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	1c4080e7          	jalr	452(ra) # 80001b38 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000597c:	0304b503          	ld	a0,48(s1)
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	1b8080e7          	jalr	440(ra) # 80001b38 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005988:	0144a783          	lw	a5,20(s1)
    8000598c:	0104a903          	lw	s2,16(s1)
    80005990:	0327ce63          	blt	a5,s2,800059cc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005994:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005998:	0304b503          	ld	a0,48(s1)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	1c8080e7          	jalr	456(ra) # 80001b64 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800059a4:	0284b503          	ld	a0,40(s1)
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	1bc080e7          	jalr	444(ra) # 80001b64 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059b0:	00090513          	mv	a0,s2
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	00013903          	ld	s2,0(sp)
    800059c4:	02010113          	addi	sp,sp,32
    800059c8:	00008067          	ret
        ret = cap - head + tail;
    800059cc:	0004a703          	lw	a4,0(s1)
    800059d0:	4127093b          	subw	s2,a4,s2
    800059d4:	00f9093b          	addw	s2,s2,a5
    800059d8:	fc1ff06f          	j	80005998 <_ZN9BufferCPP6getCntEv+0x44>

00000000800059dc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800059dc:	fe010113          	addi	sp,sp,-32
    800059e0:	00113c23          	sd	ra,24(sp)
    800059e4:	00813823          	sd	s0,16(sp)
    800059e8:	00913423          	sd	s1,8(sp)
    800059ec:	02010413          	addi	s0,sp,32
    800059f0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800059f4:	00a00513          	li	a0,10
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	2c4080e7          	jalr	708(ra) # 80001cbc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	94050513          	addi	a0,a0,-1728 # 80009340 <CONSOLE_STATUS+0x330>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	a08080e7          	jalr	-1528(ra) # 80005410 <_Z11printStringPKc>
    while (getCnt()) {
    80005a10:	00048513          	mv	a0,s1
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	f40080e7          	jalr	-192(ra) # 80005954 <_ZN9BufferCPP6getCntEv>
    80005a1c:	02050c63          	beqz	a0,80005a54 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005a20:	0084b783          	ld	a5,8(s1)
    80005a24:	0104a703          	lw	a4,16(s1)
    80005a28:	00271713          	slli	a4,a4,0x2
    80005a2c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005a30:	0007c503          	lbu	a0,0(a5)
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	288080e7          	jalr	648(ra) # 80001cbc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005a3c:	0104a783          	lw	a5,16(s1)
    80005a40:	0017879b          	addiw	a5,a5,1
    80005a44:	0004a703          	lw	a4,0(s1)
    80005a48:	02e7e7bb          	remw	a5,a5,a4
    80005a4c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005a50:	fc1ff06f          	j	80005a10 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005a54:	02100513          	li	a0,33
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	264080e7          	jalr	612(ra) # 80001cbc <_ZN7Console4putcEc>
    Console::putc('\n');
    80005a60:	00a00513          	li	a0,10
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	258080e7          	jalr	600(ra) # 80001cbc <_ZN7Console4putcEc>
    mem_free(buffer);
    80005a6c:	0084b503          	ld	a0,8(s1)
    80005a70:	ffffb097          	auipc	ra,0xffffb
    80005a74:	778080e7          	jalr	1912(ra) # 800011e8 <_Z8mem_freePv>
    delete itemAvailable;
    80005a78:	0204b503          	ld	a0,32(s1)
    80005a7c:	00050863          	beqz	a0,80005a8c <_ZN9BufferCPPD1Ev+0xb0>
    80005a80:	00053783          	ld	a5,0(a0)
    80005a84:	0087b783          	ld	a5,8(a5)
    80005a88:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005a8c:	0184b503          	ld	a0,24(s1)
    80005a90:	00050863          	beqz	a0,80005aa0 <_ZN9BufferCPPD1Ev+0xc4>
    80005a94:	00053783          	ld	a5,0(a0)
    80005a98:	0087b783          	ld	a5,8(a5)
    80005a9c:	000780e7          	jalr	a5
    delete mutexTail;
    80005aa0:	0304b503          	ld	a0,48(s1)
    80005aa4:	00050863          	beqz	a0,80005ab4 <_ZN9BufferCPPD1Ev+0xd8>
    80005aa8:	00053783          	ld	a5,0(a0)
    80005aac:	0087b783          	ld	a5,8(a5)
    80005ab0:	000780e7          	jalr	a5
    delete mutexHead;
    80005ab4:	0284b503          	ld	a0,40(s1)
    80005ab8:	00050863          	beqz	a0,80005ac8 <_ZN9BufferCPPD1Ev+0xec>
    80005abc:	00053783          	ld	a5,0(a0)
    80005ac0:	0087b783          	ld	a5,8(a5)
    80005ac4:	000780e7          	jalr	a5
}
    80005ac8:	01813083          	ld	ra,24(sp)
    80005acc:	01013403          	ld	s0,16(sp)
    80005ad0:	00813483          	ld	s1,8(sp)
    80005ad4:	02010113          	addi	sp,sp,32
    80005ad8:	00008067          	ret

0000000080005adc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005adc:	fe010113          	addi	sp,sp,-32
    80005ae0:	00113c23          	sd	ra,24(sp)
    80005ae4:	00813823          	sd	s0,16(sp)
    80005ae8:	00913423          	sd	s1,8(sp)
    80005aec:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005af0:	00004517          	auipc	a0,0x4
    80005af4:	86850513          	addi	a0,a0,-1944 # 80009358 <CONSOLE_STATUS+0x348>
    80005af8:	00000097          	auipc	ra,0x0
    80005afc:	918080e7          	jalr	-1768(ra) # 80005410 <_Z11printStringPKc>
    int test = getc() - '0';
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	9a8080e7          	jalr	-1624(ra) # 800014a8 <_Z4getcv>
    80005b08:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	99c080e7          	jalr	-1636(ra) # 800014a8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005b14:	00700793          	li	a5,7
    80005b18:	1097e263          	bltu	a5,s1,80005c1c <_Z8userMainv+0x140>
    80005b1c:	00249493          	slli	s1,s1,0x2
    80005b20:	00004717          	auipc	a4,0x4
    80005b24:	a9070713          	addi	a4,a4,-1392 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005b28:	00e484b3          	add	s1,s1,a4
    80005b2c:	0004a783          	lw	a5,0(s1)
    80005b30:	00e787b3          	add	a5,a5,a4
    80005b34:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	fd4080e7          	jalr	-44(ra) # 80004b0c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005b40:	00004517          	auipc	a0,0x4
    80005b44:	83850513          	addi	a0,a0,-1992 # 80009378 <CONSOLE_STATUS+0x368>
    80005b48:	00000097          	auipc	ra,0x0
    80005b4c:	8c8080e7          	jalr	-1848(ra) # 80005410 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005b50:	01813083          	ld	ra,24(sp)
    80005b54:	01013403          	ld	s0,16(sp)
    80005b58:	00813483          	ld	s1,8(sp)
    80005b5c:	02010113          	addi	sp,sp,32
    80005b60:	00008067          	ret
            Threads_CPP_API_test();
    80005b64:	ffffe097          	auipc	ra,0xffffe
    80005b68:	fbc080e7          	jalr	-68(ra) # 80003b20 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005b6c:	00004517          	auipc	a0,0x4
    80005b70:	84c50513          	addi	a0,a0,-1972 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	89c080e7          	jalr	-1892(ra) # 80005410 <_Z11printStringPKc>
            break;
    80005b7c:	fd5ff06f          	j	80005b50 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005b80:	ffffd097          	auipc	ra,0xffffd
    80005b84:	7f4080e7          	jalr	2036(ra) # 80003374 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	87050513          	addi	a0,a0,-1936 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	880080e7          	jalr	-1920(ra) # 80005410 <_Z11printStringPKc>
            break;
    80005b98:	fb9ff06f          	j	80005b50 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005b9c:	fffff097          	auipc	ra,0xfffff
    80005ba0:	2b4080e7          	jalr	692(ra) # 80004e50 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	8a450513          	addi	a0,a0,-1884 # 80009448 <CONSOLE_STATUS+0x438>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	864080e7          	jalr	-1948(ra) # 80005410 <_Z11printStringPKc>
            break;
    80005bb4:	f9dff06f          	j	80005b50 <_Z8userMainv+0x74>
            testSleeping();
    80005bb8:	00000097          	auipc	ra,0x0
    80005bbc:	11c080e7          	jalr	284(ra) # 80005cd4 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	8e050513          	addi	a0,a0,-1824 # 800094a0 <CONSOLE_STATUS+0x490>
    80005bc8:	00000097          	auipc	ra,0x0
    80005bcc:	848080e7          	jalr	-1976(ra) # 80005410 <_Z11printStringPKc>
            break;
    80005bd0:	f81ff06f          	j	80005b50 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005bd4:	ffffe097          	auipc	ra,0xffffe
    80005bd8:	364080e7          	jalr	868(ra) # 80003f38 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005bdc:	00004517          	auipc	a0,0x4
    80005be0:	8f450513          	addi	a0,a0,-1804 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	82c080e7          	jalr	-2004(ra) # 80005410 <_Z11printStringPKc>
            break;
    80005bec:	f65ff06f          	j	80005b50 <_Z8userMainv+0x74>
            System_Mode_test();
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	658080e7          	jalr	1624(ra) # 80006248 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005bf8:	00004517          	auipc	a0,0x4
    80005bfc:	91850513          	addi	a0,a0,-1768 # 80009510 <CONSOLE_STATUS+0x500>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	810080e7          	jalr	-2032(ra) # 80005410 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005c08:	00004517          	auipc	a0,0x4
    80005c0c:	92850513          	addi	a0,a0,-1752 # 80009530 <CONSOLE_STATUS+0x520>
    80005c10:	00000097          	auipc	ra,0x0
    80005c14:	800080e7          	jalr	-2048(ra) # 80005410 <_Z11printStringPKc>
            break;
    80005c18:	f39ff06f          	j	80005b50 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005c1c:	00004517          	auipc	a0,0x4
    80005c20:	96c50513          	addi	a0,a0,-1684 # 80009588 <CONSOLE_STATUS+0x578>
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	7ec080e7          	jalr	2028(ra) # 80005410 <_Z11printStringPKc>
    80005c2c:	f25ff06f          	j	80005b50 <_Z8userMainv+0x74>

0000000080005c30 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005c30:	fe010113          	addi	sp,sp,-32
    80005c34:	00113c23          	sd	ra,24(sp)
    80005c38:	00813823          	sd	s0,16(sp)
    80005c3c:	00913423          	sd	s1,8(sp)
    80005c40:	01213023          	sd	s2,0(sp)
    80005c44:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005c48:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005c4c:	00600493          	li	s1,6
    while (--i > 0) {
    80005c50:	fff4849b          	addiw	s1,s1,-1
    80005c54:	04905463          	blez	s1,80005c9c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005c58:	00004517          	auipc	a0,0x4
    80005c5c:	97850513          	addi	a0,a0,-1672 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005c60:	fffff097          	auipc	ra,0xfffff
    80005c64:	7b0080e7          	jalr	1968(ra) # 80005410 <_Z11printStringPKc>
        printInt(sleep_time);
    80005c68:	00000613          	li	a2,0
    80005c6c:	00a00593          	li	a1,10
    80005c70:	0009051b          	sext.w	a0,s2
    80005c74:	00000097          	auipc	ra,0x0
    80005c78:	950080e7          	jalr	-1712(ra) # 800055c4 <_Z8printIntiii>
        printString(" !\n");
    80005c7c:	00004517          	auipc	a0,0x4
    80005c80:	95c50513          	addi	a0,a0,-1700 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005c84:	fffff097          	auipc	ra,0xfffff
    80005c88:	78c080e7          	jalr	1932(ra) # 80005410 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005c8c:	00090513          	mv	a0,s2
    80005c90:	ffffb097          	auipc	ra,0xffffb
    80005c94:	7d8080e7          	jalr	2008(ra) # 80001468 <_Z10time_sleepm>
    while (--i > 0) {
    80005c98:	fb9ff06f          	j	80005c50 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005c9c:	00a00793          	li	a5,10
    80005ca0:	02f95933          	divu	s2,s2,a5
    80005ca4:	fff90913          	addi	s2,s2,-1
    80005ca8:	00006797          	auipc	a5,0x6
    80005cac:	e1878793          	addi	a5,a5,-488 # 8000bac0 <_ZL8finished>
    80005cb0:	01278933          	add	s2,a5,s2
    80005cb4:	00100793          	li	a5,1
    80005cb8:	00f90023          	sb	a5,0(s2)
}
    80005cbc:	01813083          	ld	ra,24(sp)
    80005cc0:	01013403          	ld	s0,16(sp)
    80005cc4:	00813483          	ld	s1,8(sp)
    80005cc8:	00013903          	ld	s2,0(sp)
    80005ccc:	02010113          	addi	sp,sp,32
    80005cd0:	00008067          	ret

0000000080005cd4 <_Z12testSleepingv>:

void testSleeping() {
    80005cd4:	fc010113          	addi	sp,sp,-64
    80005cd8:	02113c23          	sd	ra,56(sp)
    80005cdc:	02813823          	sd	s0,48(sp)
    80005ce0:	02913423          	sd	s1,40(sp)
    80005ce4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ce8:	00a00793          	li	a5,10
    80005cec:	fcf43823          	sd	a5,-48(s0)
    80005cf0:	01400793          	li	a5,20
    80005cf4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005cf8:	00000493          	li	s1,0
    80005cfc:	02c0006f          	j	80005d28 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d00:	00349793          	slli	a5,s1,0x3
    80005d04:	fd040613          	addi	a2,s0,-48
    80005d08:	00f60633          	add	a2,a2,a5
    80005d0c:	00000597          	auipc	a1,0x0
    80005d10:	f2458593          	addi	a1,a1,-220 # 80005c30 <_ZL9sleepyRunPv>
    80005d14:	fc040513          	addi	a0,s0,-64
    80005d18:	00f50533          	add	a0,a0,a5
    80005d1c:	ffffb097          	auipc	ra,0xffffb
    80005d20:	50c080e7          	jalr	1292(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d24:	0014849b          	addiw	s1,s1,1
    80005d28:	00100793          	li	a5,1
    80005d2c:	fc97dae3          	bge	a5,s1,80005d00 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d30:	00006797          	auipc	a5,0x6
    80005d34:	d907c783          	lbu	a5,-624(a5) # 8000bac0 <_ZL8finished>
    80005d38:	fe078ce3          	beqz	a5,80005d30 <_Z12testSleepingv+0x5c>
    80005d3c:	00006797          	auipc	a5,0x6
    80005d40:	d857c783          	lbu	a5,-635(a5) # 8000bac1 <_ZL8finished+0x1>
    80005d44:	fe0786e3          	beqz	a5,80005d30 <_Z12testSleepingv+0x5c>
}
    80005d48:	03813083          	ld	ra,56(sp)
    80005d4c:	03013403          	ld	s0,48(sp)
    80005d50:	02813483          	ld	s1,40(sp)
    80005d54:	04010113          	addi	sp,sp,64
    80005d58:	00008067          	ret

0000000080005d5c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005d5c:	fe010113          	addi	sp,sp,-32
    80005d60:	00113c23          	sd	ra,24(sp)
    80005d64:	00813823          	sd	s0,16(sp)
    80005d68:	00913423          	sd	s1,8(sp)
    80005d6c:	01213023          	sd	s2,0(sp)
    80005d70:	02010413          	addi	s0,sp,32
    80005d74:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d78:	00100793          	li	a5,1
    80005d7c:	02a7f863          	bgeu	a5,a0,80005dac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d80:	00a00793          	li	a5,10
    80005d84:	02f577b3          	remu	a5,a0,a5
    80005d88:	02078e63          	beqz	a5,80005dc4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d8c:	fff48513          	addi	a0,s1,-1
    80005d90:	00000097          	auipc	ra,0x0
    80005d94:	fcc080e7          	jalr	-52(ra) # 80005d5c <_ZL9fibonaccim>
    80005d98:	00050913          	mv	s2,a0
    80005d9c:	ffe48513          	addi	a0,s1,-2
    80005da0:	00000097          	auipc	ra,0x0
    80005da4:	fbc080e7          	jalr	-68(ra) # 80005d5c <_ZL9fibonaccim>
    80005da8:	00a90533          	add	a0,s2,a0
}
    80005dac:	01813083          	ld	ra,24(sp)
    80005db0:	01013403          	ld	s0,16(sp)
    80005db4:	00813483          	ld	s1,8(sp)
    80005db8:	00013903          	ld	s2,0(sp)
    80005dbc:	02010113          	addi	sp,sp,32
    80005dc0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005dc4:	ffffb097          	auipc	ra,0xffffb
    80005dc8:	4e4080e7          	jalr	1252(ra) # 800012a8 <_Z15thread_dispatchv>
    80005dcc:	fc1ff06f          	j	80005d8c <_ZL9fibonaccim+0x30>

0000000080005dd0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005dd0:	fe010113          	addi	sp,sp,-32
    80005dd4:	00113c23          	sd	ra,24(sp)
    80005dd8:	00813823          	sd	s0,16(sp)
    80005ddc:	00913423          	sd	s1,8(sp)
    80005de0:	01213023          	sd	s2,0(sp)
    80005de4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005de8:	00a00493          	li	s1,10
    80005dec:	0400006f          	j	80005e2c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	4b850513          	addi	a0,a0,1208 # 800092a8 <CONSOLE_STATUS+0x298>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	618080e7          	jalr	1560(ra) # 80005410 <_Z11printStringPKc>
    80005e00:	00000613          	li	a2,0
    80005e04:	00a00593          	li	a1,10
    80005e08:	00048513          	mv	a0,s1
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	7b8080e7          	jalr	1976(ra) # 800055c4 <_Z8printIntiii>
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	68450513          	addi	a0,a0,1668 # 80009498 <CONSOLE_STATUS+0x488>
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	5f4080e7          	jalr	1524(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e24:	0014849b          	addiw	s1,s1,1
    80005e28:	0ff4f493          	andi	s1,s1,255
    80005e2c:	00c00793          	li	a5,12
    80005e30:	fc97f0e3          	bgeu	a5,s1,80005df0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e34:	00003517          	auipc	a0,0x3
    80005e38:	47c50513          	addi	a0,a0,1148 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005e3c:	fffff097          	auipc	ra,0xfffff
    80005e40:	5d4080e7          	jalr	1492(ra) # 80005410 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e44:	00500313          	li	t1,5
    thread_dispatch();
    80005e48:	ffffb097          	auipc	ra,0xffffb
    80005e4c:	460080e7          	jalr	1120(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005e50:	01000513          	li	a0,16
    80005e54:	00000097          	auipc	ra,0x0
    80005e58:	f08080e7          	jalr	-248(ra) # 80005d5c <_ZL9fibonaccim>
    80005e5c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e60:	00003517          	auipc	a0,0x3
    80005e64:	46050513          	addi	a0,a0,1120 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005e68:	fffff097          	auipc	ra,0xfffff
    80005e6c:	5a8080e7          	jalr	1448(ra) # 80005410 <_Z11printStringPKc>
    80005e70:	00000613          	li	a2,0
    80005e74:	00a00593          	li	a1,10
    80005e78:	0009051b          	sext.w	a0,s2
    80005e7c:	fffff097          	auipc	ra,0xfffff
    80005e80:	748080e7          	jalr	1864(ra) # 800055c4 <_Z8printIntiii>
    80005e84:	00003517          	auipc	a0,0x3
    80005e88:	61450513          	addi	a0,a0,1556 # 80009498 <CONSOLE_STATUS+0x488>
    80005e8c:	fffff097          	auipc	ra,0xfffff
    80005e90:	584080e7          	jalr	1412(ra) # 80005410 <_Z11printStringPKc>
    80005e94:	0400006f          	j	80005ed4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e98:	00003517          	auipc	a0,0x3
    80005e9c:	41050513          	addi	a0,a0,1040 # 800092a8 <CONSOLE_STATUS+0x298>
    80005ea0:	fffff097          	auipc	ra,0xfffff
    80005ea4:	570080e7          	jalr	1392(ra) # 80005410 <_Z11printStringPKc>
    80005ea8:	00000613          	li	a2,0
    80005eac:	00a00593          	li	a1,10
    80005eb0:	00048513          	mv	a0,s1
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	710080e7          	jalr	1808(ra) # 800055c4 <_Z8printIntiii>
    80005ebc:	00003517          	auipc	a0,0x3
    80005ec0:	5dc50513          	addi	a0,a0,1500 # 80009498 <CONSOLE_STATUS+0x488>
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	54c080e7          	jalr	1356(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ecc:	0014849b          	addiw	s1,s1,1
    80005ed0:	0ff4f493          	andi	s1,s1,255
    80005ed4:	00f00793          	li	a5,15
    80005ed8:	fc97f0e3          	bgeu	a5,s1,80005e98 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005edc:	00003517          	auipc	a0,0x3
    80005ee0:	3f450513          	addi	a0,a0,1012 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	52c080e7          	jalr	1324(ra) # 80005410 <_Z11printStringPKc>
    finishedD = true;
    80005eec:	00100793          	li	a5,1
    80005ef0:	00006717          	auipc	a4,0x6
    80005ef4:	bcf70923          	sb	a5,-1070(a4) # 8000bac2 <_ZL9finishedD>
    thread_dispatch();
    80005ef8:	ffffb097          	auipc	ra,0xffffb
    80005efc:	3b0080e7          	jalr	944(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005f00:	01813083          	ld	ra,24(sp)
    80005f04:	01013403          	ld	s0,16(sp)
    80005f08:	00813483          	ld	s1,8(sp)
    80005f0c:	00013903          	ld	s2,0(sp)
    80005f10:	02010113          	addi	sp,sp,32
    80005f14:	00008067          	ret

0000000080005f18 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f18:	fe010113          	addi	sp,sp,-32
    80005f1c:	00113c23          	sd	ra,24(sp)
    80005f20:	00813823          	sd	s0,16(sp)
    80005f24:	00913423          	sd	s1,8(sp)
    80005f28:	01213023          	sd	s2,0(sp)
    80005f2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f30:	00000493          	li	s1,0
    80005f34:	0400006f          	j	80005f74 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f38:	00003517          	auipc	a0,0x3
    80005f3c:	34050513          	addi	a0,a0,832 # 80009278 <CONSOLE_STATUS+0x268>
    80005f40:	fffff097          	auipc	ra,0xfffff
    80005f44:	4d0080e7          	jalr	1232(ra) # 80005410 <_Z11printStringPKc>
    80005f48:	00000613          	li	a2,0
    80005f4c:	00a00593          	li	a1,10
    80005f50:	00048513          	mv	a0,s1
    80005f54:	fffff097          	auipc	ra,0xfffff
    80005f58:	670080e7          	jalr	1648(ra) # 800055c4 <_Z8printIntiii>
    80005f5c:	00003517          	auipc	a0,0x3
    80005f60:	53c50513          	addi	a0,a0,1340 # 80009498 <CONSOLE_STATUS+0x488>
    80005f64:	fffff097          	auipc	ra,0xfffff
    80005f68:	4ac080e7          	jalr	1196(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005f6c:	0014849b          	addiw	s1,s1,1
    80005f70:	0ff4f493          	andi	s1,s1,255
    80005f74:	00200793          	li	a5,2
    80005f78:	fc97f0e3          	bgeu	a5,s1,80005f38 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005f7c:	00003517          	auipc	a0,0x3
    80005f80:	30450513          	addi	a0,a0,772 # 80009280 <CONSOLE_STATUS+0x270>
    80005f84:	fffff097          	auipc	ra,0xfffff
    80005f88:	48c080e7          	jalr	1164(ra) # 80005410 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005f8c:	00700313          	li	t1,7
    thread_dispatch();
    80005f90:	ffffb097          	auipc	ra,0xffffb
    80005f94:	318080e7          	jalr	792(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005f98:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	2f450513          	addi	a0,a0,756 # 80009290 <CONSOLE_STATUS+0x280>
    80005fa4:	fffff097          	auipc	ra,0xfffff
    80005fa8:	46c080e7          	jalr	1132(ra) # 80005410 <_Z11printStringPKc>
    80005fac:	00000613          	li	a2,0
    80005fb0:	00a00593          	li	a1,10
    80005fb4:	0009051b          	sext.w	a0,s2
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	60c080e7          	jalr	1548(ra) # 800055c4 <_Z8printIntiii>
    80005fc0:	00003517          	auipc	a0,0x3
    80005fc4:	4d850513          	addi	a0,a0,1240 # 80009498 <CONSOLE_STATUS+0x488>
    80005fc8:	fffff097          	auipc	ra,0xfffff
    80005fcc:	448080e7          	jalr	1096(ra) # 80005410 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005fd0:	00c00513          	li	a0,12
    80005fd4:	00000097          	auipc	ra,0x0
    80005fd8:	d88080e7          	jalr	-632(ra) # 80005d5c <_ZL9fibonaccim>
    80005fdc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005fe0:	00003517          	auipc	a0,0x3
    80005fe4:	2b850513          	addi	a0,a0,696 # 80009298 <CONSOLE_STATUS+0x288>
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	428080e7          	jalr	1064(ra) # 80005410 <_Z11printStringPKc>
    80005ff0:	00000613          	li	a2,0
    80005ff4:	00a00593          	li	a1,10
    80005ff8:	0009051b          	sext.w	a0,s2
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	5c8080e7          	jalr	1480(ra) # 800055c4 <_Z8printIntiii>
    80006004:	00003517          	auipc	a0,0x3
    80006008:	49450513          	addi	a0,a0,1172 # 80009498 <CONSOLE_STATUS+0x488>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	404080e7          	jalr	1028(ra) # 80005410 <_Z11printStringPKc>
    80006014:	0400006f          	j	80006054 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006018:	00003517          	auipc	a0,0x3
    8000601c:	26050513          	addi	a0,a0,608 # 80009278 <CONSOLE_STATUS+0x268>
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	3f0080e7          	jalr	1008(ra) # 80005410 <_Z11printStringPKc>
    80006028:	00000613          	li	a2,0
    8000602c:	00a00593          	li	a1,10
    80006030:	00048513          	mv	a0,s1
    80006034:	fffff097          	auipc	ra,0xfffff
    80006038:	590080e7          	jalr	1424(ra) # 800055c4 <_Z8printIntiii>
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	45c50513          	addi	a0,a0,1116 # 80009498 <CONSOLE_STATUS+0x488>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	3cc080e7          	jalr	972(ra) # 80005410 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000604c:	0014849b          	addiw	s1,s1,1
    80006050:	0ff4f493          	andi	s1,s1,255
    80006054:	00500793          	li	a5,5
    80006058:	fc97f0e3          	bgeu	a5,s1,80006018 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000605c:	00003517          	auipc	a0,0x3
    80006060:	1f450513          	addi	a0,a0,500 # 80009250 <CONSOLE_STATUS+0x240>
    80006064:	fffff097          	auipc	ra,0xfffff
    80006068:	3ac080e7          	jalr	940(ra) # 80005410 <_Z11printStringPKc>
    finishedC = true;
    8000606c:	00100793          	li	a5,1
    80006070:	00006717          	auipc	a4,0x6
    80006074:	a4f709a3          	sb	a5,-1453(a4) # 8000bac3 <_ZL9finishedC>
    thread_dispatch();
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	230080e7          	jalr	560(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80006080:	01813083          	ld	ra,24(sp)
    80006084:	01013403          	ld	s0,16(sp)
    80006088:	00813483          	ld	s1,8(sp)
    8000608c:	00013903          	ld	s2,0(sp)
    80006090:	02010113          	addi	sp,sp,32
    80006094:	00008067          	ret

0000000080006098 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006098:	fe010113          	addi	sp,sp,-32
    8000609c:	00113c23          	sd	ra,24(sp)
    800060a0:	00813823          	sd	s0,16(sp)
    800060a4:	00913423          	sd	s1,8(sp)
    800060a8:	01213023          	sd	s2,0(sp)
    800060ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800060b0:	00000913          	li	s2,0
    800060b4:	0400006f          	j	800060f4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800060b8:	ffffb097          	auipc	ra,0xffffb
    800060bc:	1f0080e7          	jalr	496(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060c0:	00148493          	addi	s1,s1,1
    800060c4:	000027b7          	lui	a5,0x2
    800060c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060cc:	0097ee63          	bltu	a5,s1,800060e8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060d0:	00000713          	li	a4,0
    800060d4:	000077b7          	lui	a5,0x7
    800060d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060dc:	fce7eee3          	bltu	a5,a4,800060b8 <_ZL11workerBodyBPv+0x20>
    800060e0:	00170713          	addi	a4,a4,1
    800060e4:	ff1ff06f          	j	800060d4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800060e8:	00a00793          	li	a5,10
    800060ec:	04f90663          	beq	s2,a5,80006138 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800060f0:	00190913          	addi	s2,s2,1
    800060f4:	00f00793          	li	a5,15
    800060f8:	0527e463          	bltu	a5,s2,80006140 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800060fc:	00003517          	auipc	a0,0x3
    80006100:	16450513          	addi	a0,a0,356 # 80009260 <CONSOLE_STATUS+0x250>
    80006104:	fffff097          	auipc	ra,0xfffff
    80006108:	30c080e7          	jalr	780(ra) # 80005410 <_Z11printStringPKc>
    8000610c:	00000613          	li	a2,0
    80006110:	00a00593          	li	a1,10
    80006114:	0009051b          	sext.w	a0,s2
    80006118:	fffff097          	auipc	ra,0xfffff
    8000611c:	4ac080e7          	jalr	1196(ra) # 800055c4 <_Z8printIntiii>
    80006120:	00003517          	auipc	a0,0x3
    80006124:	37850513          	addi	a0,a0,888 # 80009498 <CONSOLE_STATUS+0x488>
    80006128:	fffff097          	auipc	ra,0xfffff
    8000612c:	2e8080e7          	jalr	744(ra) # 80005410 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006130:	00000493          	li	s1,0
    80006134:	f91ff06f          	j	800060c4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006138:	14102ff3          	csrr	t6,sepc
    8000613c:	fb5ff06f          	j	800060f0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006140:	00003517          	auipc	a0,0x3
    80006144:	12850513          	addi	a0,a0,296 # 80009268 <CONSOLE_STATUS+0x258>
    80006148:	fffff097          	auipc	ra,0xfffff
    8000614c:	2c8080e7          	jalr	712(ra) # 80005410 <_Z11printStringPKc>
    finishedB = true;
    80006150:	00100793          	li	a5,1
    80006154:	00006717          	auipc	a4,0x6
    80006158:	96f70823          	sb	a5,-1680(a4) # 8000bac4 <_ZL9finishedB>
    thread_dispatch();
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	14c080e7          	jalr	332(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80006164:	01813083          	ld	ra,24(sp)
    80006168:	01013403          	ld	s0,16(sp)
    8000616c:	00813483          	ld	s1,8(sp)
    80006170:	00013903          	ld	s2,0(sp)
    80006174:	02010113          	addi	sp,sp,32
    80006178:	00008067          	ret

000000008000617c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000617c:	fe010113          	addi	sp,sp,-32
    80006180:	00113c23          	sd	ra,24(sp)
    80006184:	00813823          	sd	s0,16(sp)
    80006188:	00913423          	sd	s1,8(sp)
    8000618c:	01213023          	sd	s2,0(sp)
    80006190:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006194:	00000913          	li	s2,0
    80006198:	0380006f          	j	800061d0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	10c080e7          	jalr	268(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800061a4:	00148493          	addi	s1,s1,1
    800061a8:	000027b7          	lui	a5,0x2
    800061ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061b0:	0097ee63          	bltu	a5,s1,800061cc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061b4:	00000713          	li	a4,0
    800061b8:	000077b7          	lui	a5,0x7
    800061bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800061c0:	fce7eee3          	bltu	a5,a4,8000619c <_ZL11workerBodyAPv+0x20>
    800061c4:	00170713          	addi	a4,a4,1
    800061c8:	ff1ff06f          	j	800061b8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800061cc:	00190913          	addi	s2,s2,1
    800061d0:	00900793          	li	a5,9
    800061d4:	0527e063          	bltu	a5,s2,80006214 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800061d8:	00003517          	auipc	a0,0x3
    800061dc:	07050513          	addi	a0,a0,112 # 80009248 <CONSOLE_STATUS+0x238>
    800061e0:	fffff097          	auipc	ra,0xfffff
    800061e4:	230080e7          	jalr	560(ra) # 80005410 <_Z11printStringPKc>
    800061e8:	00000613          	li	a2,0
    800061ec:	00a00593          	li	a1,10
    800061f0:	0009051b          	sext.w	a0,s2
    800061f4:	fffff097          	auipc	ra,0xfffff
    800061f8:	3d0080e7          	jalr	976(ra) # 800055c4 <_Z8printIntiii>
    800061fc:	00003517          	auipc	a0,0x3
    80006200:	29c50513          	addi	a0,a0,668 # 80009498 <CONSOLE_STATUS+0x488>
    80006204:	fffff097          	auipc	ra,0xfffff
    80006208:	20c080e7          	jalr	524(ra) # 80005410 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000620c:	00000493          	li	s1,0
    80006210:	f99ff06f          	j	800061a8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006214:	00003517          	auipc	a0,0x3
    80006218:	03c50513          	addi	a0,a0,60 # 80009250 <CONSOLE_STATUS+0x240>
    8000621c:	fffff097          	auipc	ra,0xfffff
    80006220:	1f4080e7          	jalr	500(ra) # 80005410 <_Z11printStringPKc>
    finishedA = true;
    80006224:	00100793          	li	a5,1
    80006228:	00006717          	auipc	a4,0x6
    8000622c:	88f70ea3          	sb	a5,-1891(a4) # 8000bac5 <_ZL9finishedA>
}
    80006230:	01813083          	ld	ra,24(sp)
    80006234:	01013403          	ld	s0,16(sp)
    80006238:	00813483          	ld	s1,8(sp)
    8000623c:	00013903          	ld	s2,0(sp)
    80006240:	02010113          	addi	sp,sp,32
    80006244:	00008067          	ret

0000000080006248 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006248:	fd010113          	addi	sp,sp,-48
    8000624c:	02113423          	sd	ra,40(sp)
    80006250:	02813023          	sd	s0,32(sp)
    80006254:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006258:	00000613          	li	a2,0
    8000625c:	00000597          	auipc	a1,0x0
    80006260:	f2058593          	addi	a1,a1,-224 # 8000617c <_ZL11workerBodyAPv>
    80006264:	fd040513          	addi	a0,s0,-48
    80006268:	ffffb097          	auipc	ra,0xffffb
    8000626c:	fc0080e7          	jalr	-64(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadA created\n");
    80006270:	00003517          	auipc	a0,0x3
    80006274:	07050513          	addi	a0,a0,112 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006278:	fffff097          	auipc	ra,0xfffff
    8000627c:	198080e7          	jalr	408(ra) # 80005410 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006280:	00000613          	li	a2,0
    80006284:	00000597          	auipc	a1,0x0
    80006288:	e1458593          	addi	a1,a1,-492 # 80006098 <_ZL11workerBodyBPv>
    8000628c:	fd840513          	addi	a0,s0,-40
    80006290:	ffffb097          	auipc	ra,0xffffb
    80006294:	f98080e7          	jalr	-104(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadB created\n");
    80006298:	00003517          	auipc	a0,0x3
    8000629c:	06050513          	addi	a0,a0,96 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	170080e7          	jalr	368(ra) # 80005410 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800062a8:	00000613          	li	a2,0
    800062ac:	00000597          	auipc	a1,0x0
    800062b0:	c6c58593          	addi	a1,a1,-916 # 80005f18 <_ZL11workerBodyCPv>
    800062b4:	fe040513          	addi	a0,s0,-32
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	f70080e7          	jalr	-144(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadC created\n");
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	05050513          	addi	a0,a0,80 # 80009310 <CONSOLE_STATUS+0x300>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	148080e7          	jalr	328(ra) # 80005410 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062d0:	00000613          	li	a2,0
    800062d4:	00000597          	auipc	a1,0x0
    800062d8:	afc58593          	addi	a1,a1,-1284 # 80005dd0 <_ZL11workerBodyDPv>
    800062dc:	fe840513          	addi	a0,s0,-24
    800062e0:	ffffb097          	auipc	ra,0xffffb
    800062e4:	f48080e7          	jalr	-184(ra) # 80001228 <_Z13thread_createPP12KernelThreadPFvPvES2_>
    printString("ThreadD created\n");
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	04050513          	addi	a0,a0,64 # 80009328 <CONSOLE_STATUS+0x318>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	120080e7          	jalr	288(ra) # 80005410 <_Z11printStringPKc>
    800062f8:	00c0006f          	j	80006304 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	fac080e7          	jalr	-84(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006304:	00005797          	auipc	a5,0x5
    80006308:	7c17c783          	lbu	a5,1985(a5) # 8000bac5 <_ZL9finishedA>
    8000630c:	fe0788e3          	beqz	a5,800062fc <_Z16System_Mode_testv+0xb4>
    80006310:	00005797          	auipc	a5,0x5
    80006314:	7b47c783          	lbu	a5,1972(a5) # 8000bac4 <_ZL9finishedB>
    80006318:	fe0782e3          	beqz	a5,800062fc <_Z16System_Mode_testv+0xb4>
    8000631c:	00005797          	auipc	a5,0x5
    80006320:	7a77c783          	lbu	a5,1959(a5) # 8000bac3 <_ZL9finishedC>
    80006324:	fc078ce3          	beqz	a5,800062fc <_Z16System_Mode_testv+0xb4>
    80006328:	00005797          	auipc	a5,0x5
    8000632c:	79a7c783          	lbu	a5,1946(a5) # 8000bac2 <_ZL9finishedD>
    80006330:	fc0786e3          	beqz	a5,800062fc <_Z16System_Mode_testv+0xb4>
    }

}
    80006334:	02813083          	ld	ra,40(sp)
    80006338:	02013403          	ld	s0,32(sp)
    8000633c:	03010113          	addi	sp,sp,48
    80006340:	00008067          	ret

0000000080006344 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006344:	fe010113          	addi	sp,sp,-32
    80006348:	00113c23          	sd	ra,24(sp)
    8000634c:	00813823          	sd	s0,16(sp)
    80006350:	00913423          	sd	s1,8(sp)
    80006354:	01213023          	sd	s2,0(sp)
    80006358:	02010413          	addi	s0,sp,32
    8000635c:	00050493          	mv	s1,a0
    80006360:	00058913          	mv	s2,a1
    80006364:	0015879b          	addiw	a5,a1,1
    80006368:	0007851b          	sext.w	a0,a5
    8000636c:	00f4a023          	sw	a5,0(s1)
    80006370:	0004a823          	sw	zero,16(s1)
    80006374:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006378:	00251513          	slli	a0,a0,0x2
    8000637c:	ffffb097          	auipc	ra,0xffffb
    80006380:	e24080e7          	jalr	-476(ra) # 800011a0 <_Z9mem_allocm>
    80006384:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006388:	00000593          	li	a1,0
    8000638c:	02048513          	addi	a0,s1,32
    80006390:	ffffb097          	auipc	ra,0xffffb
    80006394:	f54080e7          	jalr	-172(ra) # 800012e4 <_Z8sem_openPP15KernelSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80006398:	00090593          	mv	a1,s2
    8000639c:	01848513          	addi	a0,s1,24
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	f44080e7          	jalr	-188(ra) # 800012e4 <_Z8sem_openPP15KernelSemaphorej>
    sem_open(&mutexHead, 1);
    800063a8:	00100593          	li	a1,1
    800063ac:	02848513          	addi	a0,s1,40
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	f34080e7          	jalr	-204(ra) # 800012e4 <_Z8sem_openPP15KernelSemaphorej>
    sem_open(&mutexTail, 1);
    800063b8:	00100593          	li	a1,1
    800063bc:	03048513          	addi	a0,s1,48
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	f24080e7          	jalr	-220(ra) # 800012e4 <_Z8sem_openPP15KernelSemaphorej>
}
    800063c8:	01813083          	ld	ra,24(sp)
    800063cc:	01013403          	ld	s0,16(sp)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	00013903          	ld	s2,0(sp)
    800063d8:	02010113          	addi	sp,sp,32
    800063dc:	00008067          	ret

00000000800063e0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800063e0:	fe010113          	addi	sp,sp,-32
    800063e4:	00113c23          	sd	ra,24(sp)
    800063e8:	00813823          	sd	s0,16(sp)
    800063ec:	00913423          	sd	s1,8(sp)
    800063f0:	01213023          	sd	s2,0(sp)
    800063f4:	02010413          	addi	s0,sp,32
    800063f8:	00050493          	mv	s1,a0
    800063fc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006400:	01853503          	ld	a0,24(a0)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	f64080e7          	jalr	-156(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>

    sem_wait(mutexTail);
    8000640c:	0304b503          	ld	a0,48(s1)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	f58080e7          	jalr	-168(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>
    buffer[tail] = val;
    80006418:	0084b783          	ld	a5,8(s1)
    8000641c:	0144a703          	lw	a4,20(s1)
    80006420:	00271713          	slli	a4,a4,0x2
    80006424:	00e787b3          	add	a5,a5,a4
    80006428:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000642c:	0144a783          	lw	a5,20(s1)
    80006430:	0017879b          	addiw	a5,a5,1
    80006434:	0004a703          	lw	a4,0(s1)
    80006438:	02e7e7bb          	remw	a5,a5,a4
    8000643c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006440:	0304b503          	ld	a0,48(s1)
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	f64080e7          	jalr	-156(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>

    sem_signal(itemAvailable);
    8000644c:	0204b503          	ld	a0,32(s1)
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	f58080e7          	jalr	-168(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>

}
    80006458:	01813083          	ld	ra,24(sp)
    8000645c:	01013403          	ld	s0,16(sp)
    80006460:	00813483          	ld	s1,8(sp)
    80006464:	00013903          	ld	s2,0(sp)
    80006468:	02010113          	addi	sp,sp,32
    8000646c:	00008067          	ret

0000000080006470 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006470:	fe010113          	addi	sp,sp,-32
    80006474:	00113c23          	sd	ra,24(sp)
    80006478:	00813823          	sd	s0,16(sp)
    8000647c:	00913423          	sd	s1,8(sp)
    80006480:	01213023          	sd	s2,0(sp)
    80006484:	02010413          	addi	s0,sp,32
    80006488:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000648c:	02053503          	ld	a0,32(a0)
    80006490:	ffffb097          	auipc	ra,0xffffb
    80006494:	ed8080e7          	jalr	-296(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>

    sem_wait(mutexHead);
    80006498:	0284b503          	ld	a0,40(s1)
    8000649c:	ffffb097          	auipc	ra,0xffffb
    800064a0:	ecc080e7          	jalr	-308(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>

    int ret = buffer[head];
    800064a4:	0084b703          	ld	a4,8(s1)
    800064a8:	0104a783          	lw	a5,16(s1)
    800064ac:	00279693          	slli	a3,a5,0x2
    800064b0:	00d70733          	add	a4,a4,a3
    800064b4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800064b8:	0017879b          	addiw	a5,a5,1
    800064bc:	0004a703          	lw	a4,0(s1)
    800064c0:	02e7e7bb          	remw	a5,a5,a4
    800064c4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800064c8:	0284b503          	ld	a0,40(s1)
    800064cc:	ffffb097          	auipc	ra,0xffffb
    800064d0:	edc080e7          	jalr	-292(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>

    sem_signal(spaceAvailable);
    800064d4:	0184b503          	ld	a0,24(s1)
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	ed0080e7          	jalr	-304(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>

    return ret;
}
    800064e0:	00090513          	mv	a0,s2
    800064e4:	01813083          	ld	ra,24(sp)
    800064e8:	01013403          	ld	s0,16(sp)
    800064ec:	00813483          	ld	s1,8(sp)
    800064f0:	00013903          	ld	s2,0(sp)
    800064f4:	02010113          	addi	sp,sp,32
    800064f8:	00008067          	ret

00000000800064fc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800064fc:	fe010113          	addi	sp,sp,-32
    80006500:	00113c23          	sd	ra,24(sp)
    80006504:	00813823          	sd	s0,16(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	01213023          	sd	s2,0(sp)
    80006510:	02010413          	addi	s0,sp,32
    80006514:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006518:	02853503          	ld	a0,40(a0)
    8000651c:	ffffb097          	auipc	ra,0xffffb
    80006520:	e4c080e7          	jalr	-436(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>
    sem_wait(mutexTail);
    80006524:	0304b503          	ld	a0,48(s1)
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	e40080e7          	jalr	-448(ra) # 80001368 <_Z8sem_waitP15KernelSemaphore>

    if (tail >= head) {
    80006530:	0144a783          	lw	a5,20(s1)
    80006534:	0104a903          	lw	s2,16(s1)
    80006538:	0327ce63          	blt	a5,s2,80006574 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000653c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006540:	0304b503          	ld	a0,48(s1)
    80006544:	ffffb097          	auipc	ra,0xffffb
    80006548:	e64080e7          	jalr	-412(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>
    sem_signal(mutexHead);
    8000654c:	0284b503          	ld	a0,40(s1)
    80006550:	ffffb097          	auipc	ra,0xffffb
    80006554:	e58080e7          	jalr	-424(ra) # 800013a8 <_Z10sem_signalP15KernelSemaphore>

    return ret;
}
    80006558:	00090513          	mv	a0,s2
    8000655c:	01813083          	ld	ra,24(sp)
    80006560:	01013403          	ld	s0,16(sp)
    80006564:	00813483          	ld	s1,8(sp)
    80006568:	00013903          	ld	s2,0(sp)
    8000656c:	02010113          	addi	sp,sp,32
    80006570:	00008067          	ret
        ret = cap - head + tail;
    80006574:	0004a703          	lw	a4,0(s1)
    80006578:	4127093b          	subw	s2,a4,s2
    8000657c:	00f9093b          	addw	s2,s2,a5
    80006580:	fc1ff06f          	j	80006540 <_ZN6Buffer6getCntEv+0x44>

0000000080006584 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006584:	fe010113          	addi	sp,sp,-32
    80006588:	00113c23          	sd	ra,24(sp)
    8000658c:	00813823          	sd	s0,16(sp)
    80006590:	00913423          	sd	s1,8(sp)
    80006594:	02010413          	addi	s0,sp,32
    80006598:	00050493          	mv	s1,a0
    putc('\n');
    8000659c:	00a00513          	li	a0,10
    800065a0:	ffffb097          	auipc	ra,0xffffb
    800065a4:	f48080e7          	jalr	-184(ra) # 800014e8 <_Z4putcc>
    printString("Buffer deleted!\n");
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	d9850513          	addi	a0,a0,-616 # 80009340 <CONSOLE_STATUS+0x330>
    800065b0:	fffff097          	auipc	ra,0xfffff
    800065b4:	e60080e7          	jalr	-416(ra) # 80005410 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800065b8:	00048513          	mv	a0,s1
    800065bc:	00000097          	auipc	ra,0x0
    800065c0:	f40080e7          	jalr	-192(ra) # 800064fc <_ZN6Buffer6getCntEv>
    800065c4:	02a05c63          	blez	a0,800065fc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800065c8:	0084b783          	ld	a5,8(s1)
    800065cc:	0104a703          	lw	a4,16(s1)
    800065d0:	00271713          	slli	a4,a4,0x2
    800065d4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800065d8:	0007c503          	lbu	a0,0(a5)
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	f0c080e7          	jalr	-244(ra) # 800014e8 <_Z4putcc>
        head = (head + 1) % cap;
    800065e4:	0104a783          	lw	a5,16(s1)
    800065e8:	0017879b          	addiw	a5,a5,1
    800065ec:	0004a703          	lw	a4,0(s1)
    800065f0:	02e7e7bb          	remw	a5,a5,a4
    800065f4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800065f8:	fc1ff06f          	j	800065b8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800065fc:	02100513          	li	a0,33
    80006600:	ffffb097          	auipc	ra,0xffffb
    80006604:	ee8080e7          	jalr	-280(ra) # 800014e8 <_Z4putcc>
    putc('\n');
    80006608:	00a00513          	li	a0,10
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	edc080e7          	jalr	-292(ra) # 800014e8 <_Z4putcc>
    mem_free(buffer);
    80006614:	0084b503          	ld	a0,8(s1)
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	bd0080e7          	jalr	-1072(ra) # 800011e8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006620:	0204b503          	ld	a0,32(s1)
    80006624:	ffffb097          	auipc	ra,0xffffb
    80006628:	d04080e7          	jalr	-764(ra) # 80001328 <_Z9sem_closeP15KernelSemaphore>
    sem_close(spaceAvailable);
    8000662c:	0184b503          	ld	a0,24(s1)
    80006630:	ffffb097          	auipc	ra,0xffffb
    80006634:	cf8080e7          	jalr	-776(ra) # 80001328 <_Z9sem_closeP15KernelSemaphore>
    sem_close(mutexTail);
    80006638:	0304b503          	ld	a0,48(s1)
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	cec080e7          	jalr	-788(ra) # 80001328 <_Z9sem_closeP15KernelSemaphore>
    sem_close(mutexHead);
    80006644:	0284b503          	ld	a0,40(s1)
    80006648:	ffffb097          	auipc	ra,0xffffb
    8000664c:	ce0080e7          	jalr	-800(ra) # 80001328 <_Z9sem_closeP15KernelSemaphore>
}
    80006650:	01813083          	ld	ra,24(sp)
    80006654:	01013403          	ld	s0,16(sp)
    80006658:	00813483          	ld	s1,8(sp)
    8000665c:	02010113          	addi	sp,sp,32
    80006660:	00008067          	ret

0000000080006664 <start>:
    80006664:	ff010113          	addi	sp,sp,-16
    80006668:	00813423          	sd	s0,8(sp)
    8000666c:	01010413          	addi	s0,sp,16
    80006670:	300027f3          	csrr	a5,mstatus
    80006674:	ffffe737          	lui	a4,0xffffe
    80006678:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1acf>
    8000667c:	00e7f7b3          	and	a5,a5,a4
    80006680:	00001737          	lui	a4,0x1
    80006684:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006688:	00e7e7b3          	or	a5,a5,a4
    8000668c:	30079073          	csrw	mstatus,a5
    80006690:	00000797          	auipc	a5,0x0
    80006694:	16078793          	addi	a5,a5,352 # 800067f0 <system_main>
    80006698:	34179073          	csrw	mepc,a5
    8000669c:	00000793          	li	a5,0
    800066a0:	18079073          	csrw	satp,a5
    800066a4:	000107b7          	lui	a5,0x10
    800066a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800066ac:	30279073          	csrw	medeleg,a5
    800066b0:	30379073          	csrw	mideleg,a5
    800066b4:	104027f3          	csrr	a5,sie
    800066b8:	2227e793          	ori	a5,a5,546
    800066bc:	10479073          	csrw	sie,a5
    800066c0:	fff00793          	li	a5,-1
    800066c4:	00a7d793          	srli	a5,a5,0xa
    800066c8:	3b079073          	csrw	pmpaddr0,a5
    800066cc:	00f00793          	li	a5,15
    800066d0:	3a079073          	csrw	pmpcfg0,a5
    800066d4:	f14027f3          	csrr	a5,mhartid
    800066d8:	0200c737          	lui	a4,0x200c
    800066dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066e0:	0007869b          	sext.w	a3,a5
    800066e4:	00269713          	slli	a4,a3,0x2
    800066e8:	000f4637          	lui	a2,0xf4
    800066ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066f0:	00d70733          	add	a4,a4,a3
    800066f4:	0037979b          	slliw	a5,a5,0x3
    800066f8:	020046b7          	lui	a3,0x2004
    800066fc:	00d787b3          	add	a5,a5,a3
    80006700:	00c585b3          	add	a1,a1,a2
    80006704:	00371693          	slli	a3,a4,0x3
    80006708:	00005717          	auipc	a4,0x5
    8000670c:	3c870713          	addi	a4,a4,968 # 8000bad0 <timer_scratch>
    80006710:	00b7b023          	sd	a1,0(a5)
    80006714:	00d70733          	add	a4,a4,a3
    80006718:	00f73c23          	sd	a5,24(a4)
    8000671c:	02c73023          	sd	a2,32(a4)
    80006720:	34071073          	csrw	mscratch,a4
    80006724:	00000797          	auipc	a5,0x0
    80006728:	6ec78793          	addi	a5,a5,1772 # 80006e10 <timervec>
    8000672c:	30579073          	csrw	mtvec,a5
    80006730:	300027f3          	csrr	a5,mstatus
    80006734:	0087e793          	ori	a5,a5,8
    80006738:	30079073          	csrw	mstatus,a5
    8000673c:	304027f3          	csrr	a5,mie
    80006740:	0807e793          	ori	a5,a5,128
    80006744:	30479073          	csrw	mie,a5
    80006748:	f14027f3          	csrr	a5,mhartid
    8000674c:	0007879b          	sext.w	a5,a5
    80006750:	00078213          	mv	tp,a5
    80006754:	30200073          	mret
    80006758:	00813403          	ld	s0,8(sp)
    8000675c:	01010113          	addi	sp,sp,16
    80006760:	00008067          	ret

0000000080006764 <timerinit>:
    80006764:	ff010113          	addi	sp,sp,-16
    80006768:	00813423          	sd	s0,8(sp)
    8000676c:	01010413          	addi	s0,sp,16
    80006770:	f14027f3          	csrr	a5,mhartid
    80006774:	0200c737          	lui	a4,0x200c
    80006778:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000677c:	0007869b          	sext.w	a3,a5
    80006780:	00269713          	slli	a4,a3,0x2
    80006784:	000f4637          	lui	a2,0xf4
    80006788:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000678c:	00d70733          	add	a4,a4,a3
    80006790:	0037979b          	slliw	a5,a5,0x3
    80006794:	020046b7          	lui	a3,0x2004
    80006798:	00d787b3          	add	a5,a5,a3
    8000679c:	00c585b3          	add	a1,a1,a2
    800067a0:	00371693          	slli	a3,a4,0x3
    800067a4:	00005717          	auipc	a4,0x5
    800067a8:	32c70713          	addi	a4,a4,812 # 8000bad0 <timer_scratch>
    800067ac:	00b7b023          	sd	a1,0(a5)
    800067b0:	00d70733          	add	a4,a4,a3
    800067b4:	00f73c23          	sd	a5,24(a4)
    800067b8:	02c73023          	sd	a2,32(a4)
    800067bc:	34071073          	csrw	mscratch,a4
    800067c0:	00000797          	auipc	a5,0x0
    800067c4:	65078793          	addi	a5,a5,1616 # 80006e10 <timervec>
    800067c8:	30579073          	csrw	mtvec,a5
    800067cc:	300027f3          	csrr	a5,mstatus
    800067d0:	0087e793          	ori	a5,a5,8
    800067d4:	30079073          	csrw	mstatus,a5
    800067d8:	304027f3          	csrr	a5,mie
    800067dc:	0807e793          	ori	a5,a5,128
    800067e0:	30479073          	csrw	mie,a5
    800067e4:	00813403          	ld	s0,8(sp)
    800067e8:	01010113          	addi	sp,sp,16
    800067ec:	00008067          	ret

00000000800067f0 <system_main>:
    800067f0:	fe010113          	addi	sp,sp,-32
    800067f4:	00813823          	sd	s0,16(sp)
    800067f8:	00913423          	sd	s1,8(sp)
    800067fc:	00113c23          	sd	ra,24(sp)
    80006800:	02010413          	addi	s0,sp,32
    80006804:	00000097          	auipc	ra,0x0
    80006808:	0c4080e7          	jalr	196(ra) # 800068c8 <cpuid>
    8000680c:	00005497          	auipc	s1,0x5
    80006810:	1d448493          	addi	s1,s1,468 # 8000b9e0 <started>
    80006814:	02050263          	beqz	a0,80006838 <system_main+0x48>
    80006818:	0004a783          	lw	a5,0(s1)
    8000681c:	0007879b          	sext.w	a5,a5
    80006820:	fe078ce3          	beqz	a5,80006818 <system_main+0x28>
    80006824:	0ff0000f          	fence
    80006828:	00003517          	auipc	a0,0x3
    8000682c:	de850513          	addi	a0,a0,-536 # 80009610 <CONSOLE_STATUS+0x600>
    80006830:	00001097          	auipc	ra,0x1
    80006834:	a7c080e7          	jalr	-1412(ra) # 800072ac <panic>
    80006838:	00001097          	auipc	ra,0x1
    8000683c:	9d0080e7          	jalr	-1584(ra) # 80007208 <consoleinit>
    80006840:	00001097          	auipc	ra,0x1
    80006844:	15c080e7          	jalr	348(ra) # 8000799c <printfinit>
    80006848:	00003517          	auipc	a0,0x3
    8000684c:	c5050513          	addi	a0,a0,-944 # 80009498 <CONSOLE_STATUS+0x488>
    80006850:	00001097          	auipc	ra,0x1
    80006854:	ab8080e7          	jalr	-1352(ra) # 80007308 <__printf>
    80006858:	00003517          	auipc	a0,0x3
    8000685c:	d8850513          	addi	a0,a0,-632 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006860:	00001097          	auipc	ra,0x1
    80006864:	aa8080e7          	jalr	-1368(ra) # 80007308 <__printf>
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	c3050513          	addi	a0,a0,-976 # 80009498 <CONSOLE_STATUS+0x488>
    80006870:	00001097          	auipc	ra,0x1
    80006874:	a98080e7          	jalr	-1384(ra) # 80007308 <__printf>
    80006878:	00001097          	auipc	ra,0x1
    8000687c:	4b0080e7          	jalr	1200(ra) # 80007d28 <kinit>
    80006880:	00000097          	auipc	ra,0x0
    80006884:	148080e7          	jalr	328(ra) # 800069c8 <trapinit>
    80006888:	00000097          	auipc	ra,0x0
    8000688c:	16c080e7          	jalr	364(ra) # 800069f4 <trapinithart>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	5c0080e7          	jalr	1472(ra) # 80006e50 <plicinit>
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	5e0080e7          	jalr	1504(ra) # 80006e78 <plicinithart>
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	078080e7          	jalr	120(ra) # 80006918 <userinit>
    800068a8:	0ff0000f          	fence
    800068ac:	00100793          	li	a5,1
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	d4850513          	addi	a0,a0,-696 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800068b8:	00f4a023          	sw	a5,0(s1)
    800068bc:	00001097          	auipc	ra,0x1
    800068c0:	a4c080e7          	jalr	-1460(ra) # 80007308 <__printf>
    800068c4:	0000006f          	j	800068c4 <system_main+0xd4>

00000000800068c8 <cpuid>:
    800068c8:	ff010113          	addi	sp,sp,-16
    800068cc:	00813423          	sd	s0,8(sp)
    800068d0:	01010413          	addi	s0,sp,16
    800068d4:	00020513          	mv	a0,tp
    800068d8:	00813403          	ld	s0,8(sp)
    800068dc:	0005051b          	sext.w	a0,a0
    800068e0:	01010113          	addi	sp,sp,16
    800068e4:	00008067          	ret

00000000800068e8 <mycpu>:
    800068e8:	ff010113          	addi	sp,sp,-16
    800068ec:	00813423          	sd	s0,8(sp)
    800068f0:	01010413          	addi	s0,sp,16
    800068f4:	00020793          	mv	a5,tp
    800068f8:	00813403          	ld	s0,8(sp)
    800068fc:	0007879b          	sext.w	a5,a5
    80006900:	00779793          	slli	a5,a5,0x7
    80006904:	00006517          	auipc	a0,0x6
    80006908:	1fc50513          	addi	a0,a0,508 # 8000cb00 <cpus>
    8000690c:	00f50533          	add	a0,a0,a5
    80006910:	01010113          	addi	sp,sp,16
    80006914:	00008067          	ret

0000000080006918 <userinit>:
    80006918:	ff010113          	addi	sp,sp,-16
    8000691c:	00813423          	sd	s0,8(sp)
    80006920:	01010413          	addi	s0,sp,16
    80006924:	00813403          	ld	s0,8(sp)
    80006928:	01010113          	addi	sp,sp,16
    8000692c:	ffffb317          	auipc	t1,0xffffb
    80006930:	e5430067          	jr	-428(t1) # 80001780 <main>

0000000080006934 <either_copyout>:
    80006934:	ff010113          	addi	sp,sp,-16
    80006938:	00813023          	sd	s0,0(sp)
    8000693c:	00113423          	sd	ra,8(sp)
    80006940:	01010413          	addi	s0,sp,16
    80006944:	02051663          	bnez	a0,80006970 <either_copyout+0x3c>
    80006948:	00058513          	mv	a0,a1
    8000694c:	00060593          	mv	a1,a2
    80006950:	0006861b          	sext.w	a2,a3
    80006954:	00002097          	auipc	ra,0x2
    80006958:	c60080e7          	jalr	-928(ra) # 800085b4 <__memmove>
    8000695c:	00813083          	ld	ra,8(sp)
    80006960:	00013403          	ld	s0,0(sp)
    80006964:	00000513          	li	a0,0
    80006968:	01010113          	addi	sp,sp,16
    8000696c:	00008067          	ret
    80006970:	00003517          	auipc	a0,0x3
    80006974:	cc850513          	addi	a0,a0,-824 # 80009638 <CONSOLE_STATUS+0x628>
    80006978:	00001097          	auipc	ra,0x1
    8000697c:	934080e7          	jalr	-1740(ra) # 800072ac <panic>

0000000080006980 <either_copyin>:
    80006980:	ff010113          	addi	sp,sp,-16
    80006984:	00813023          	sd	s0,0(sp)
    80006988:	00113423          	sd	ra,8(sp)
    8000698c:	01010413          	addi	s0,sp,16
    80006990:	02059463          	bnez	a1,800069b8 <either_copyin+0x38>
    80006994:	00060593          	mv	a1,a2
    80006998:	0006861b          	sext.w	a2,a3
    8000699c:	00002097          	auipc	ra,0x2
    800069a0:	c18080e7          	jalr	-1000(ra) # 800085b4 <__memmove>
    800069a4:	00813083          	ld	ra,8(sp)
    800069a8:	00013403          	ld	s0,0(sp)
    800069ac:	00000513          	li	a0,0
    800069b0:	01010113          	addi	sp,sp,16
    800069b4:	00008067          	ret
    800069b8:	00003517          	auipc	a0,0x3
    800069bc:	ca850513          	addi	a0,a0,-856 # 80009660 <CONSOLE_STATUS+0x650>
    800069c0:	00001097          	auipc	ra,0x1
    800069c4:	8ec080e7          	jalr	-1812(ra) # 800072ac <panic>

00000000800069c8 <trapinit>:
    800069c8:	ff010113          	addi	sp,sp,-16
    800069cc:	00813423          	sd	s0,8(sp)
    800069d0:	01010413          	addi	s0,sp,16
    800069d4:	00813403          	ld	s0,8(sp)
    800069d8:	00003597          	auipc	a1,0x3
    800069dc:	cb058593          	addi	a1,a1,-848 # 80009688 <CONSOLE_STATUS+0x678>
    800069e0:	00006517          	auipc	a0,0x6
    800069e4:	1a050513          	addi	a0,a0,416 # 8000cb80 <tickslock>
    800069e8:	01010113          	addi	sp,sp,16
    800069ec:	00001317          	auipc	t1,0x1
    800069f0:	5cc30067          	jr	1484(t1) # 80007fb8 <initlock>

00000000800069f4 <trapinithart>:
    800069f4:	ff010113          	addi	sp,sp,-16
    800069f8:	00813423          	sd	s0,8(sp)
    800069fc:	01010413          	addi	s0,sp,16
    80006a00:	00000797          	auipc	a5,0x0
    80006a04:	30078793          	addi	a5,a5,768 # 80006d00 <kernelvec>
    80006a08:	10579073          	csrw	stvec,a5
    80006a0c:	00813403          	ld	s0,8(sp)
    80006a10:	01010113          	addi	sp,sp,16
    80006a14:	00008067          	ret

0000000080006a18 <usertrap>:
    80006a18:	ff010113          	addi	sp,sp,-16
    80006a1c:	00813423          	sd	s0,8(sp)
    80006a20:	01010413          	addi	s0,sp,16
    80006a24:	00813403          	ld	s0,8(sp)
    80006a28:	01010113          	addi	sp,sp,16
    80006a2c:	00008067          	ret

0000000080006a30 <usertrapret>:
    80006a30:	ff010113          	addi	sp,sp,-16
    80006a34:	00813423          	sd	s0,8(sp)
    80006a38:	01010413          	addi	s0,sp,16
    80006a3c:	00813403          	ld	s0,8(sp)
    80006a40:	01010113          	addi	sp,sp,16
    80006a44:	00008067          	ret

0000000080006a48 <kerneltrap>:
    80006a48:	fe010113          	addi	sp,sp,-32
    80006a4c:	00813823          	sd	s0,16(sp)
    80006a50:	00113c23          	sd	ra,24(sp)
    80006a54:	00913423          	sd	s1,8(sp)
    80006a58:	02010413          	addi	s0,sp,32
    80006a5c:	142025f3          	csrr	a1,scause
    80006a60:	100027f3          	csrr	a5,sstatus
    80006a64:	0027f793          	andi	a5,a5,2
    80006a68:	10079c63          	bnez	a5,80006b80 <kerneltrap+0x138>
    80006a6c:	142027f3          	csrr	a5,scause
    80006a70:	0207ce63          	bltz	a5,80006aac <kerneltrap+0x64>
    80006a74:	00003517          	auipc	a0,0x3
    80006a78:	c5c50513          	addi	a0,a0,-932 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	88c080e7          	jalr	-1908(ra) # 80007308 <__printf>
    80006a84:	141025f3          	csrr	a1,sepc
    80006a88:	14302673          	csrr	a2,stval
    80006a8c:	00003517          	auipc	a0,0x3
    80006a90:	c5450513          	addi	a0,a0,-940 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006a94:	00001097          	auipc	ra,0x1
    80006a98:	874080e7          	jalr	-1932(ra) # 80007308 <__printf>
    80006a9c:	00003517          	auipc	a0,0x3
    80006aa0:	c5c50513          	addi	a0,a0,-932 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	808080e7          	jalr	-2040(ra) # 800072ac <panic>
    80006aac:	0ff7f713          	andi	a4,a5,255
    80006ab0:	00900693          	li	a3,9
    80006ab4:	04d70063          	beq	a4,a3,80006af4 <kerneltrap+0xac>
    80006ab8:	fff00713          	li	a4,-1
    80006abc:	03f71713          	slli	a4,a4,0x3f
    80006ac0:	00170713          	addi	a4,a4,1
    80006ac4:	fae798e3          	bne	a5,a4,80006a74 <kerneltrap+0x2c>
    80006ac8:	00000097          	auipc	ra,0x0
    80006acc:	e00080e7          	jalr	-512(ra) # 800068c8 <cpuid>
    80006ad0:	06050663          	beqz	a0,80006b3c <kerneltrap+0xf4>
    80006ad4:	144027f3          	csrr	a5,sip
    80006ad8:	ffd7f793          	andi	a5,a5,-3
    80006adc:	14479073          	csrw	sip,a5
    80006ae0:	01813083          	ld	ra,24(sp)
    80006ae4:	01013403          	ld	s0,16(sp)
    80006ae8:	00813483          	ld	s1,8(sp)
    80006aec:	02010113          	addi	sp,sp,32
    80006af0:	00008067          	ret
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	3d0080e7          	jalr	976(ra) # 80006ec4 <plic_claim>
    80006afc:	00a00793          	li	a5,10
    80006b00:	00050493          	mv	s1,a0
    80006b04:	06f50863          	beq	a0,a5,80006b74 <kerneltrap+0x12c>
    80006b08:	fc050ce3          	beqz	a0,80006ae0 <kerneltrap+0x98>
    80006b0c:	00050593          	mv	a1,a0
    80006b10:	00003517          	auipc	a0,0x3
    80006b14:	ba050513          	addi	a0,a0,-1120 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006b18:	00000097          	auipc	ra,0x0
    80006b1c:	7f0080e7          	jalr	2032(ra) # 80007308 <__printf>
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	01813083          	ld	ra,24(sp)
    80006b28:	00048513          	mv	a0,s1
    80006b2c:	00813483          	ld	s1,8(sp)
    80006b30:	02010113          	addi	sp,sp,32
    80006b34:	00000317          	auipc	t1,0x0
    80006b38:	3c830067          	jr	968(t1) # 80006efc <plic_complete>
    80006b3c:	00006517          	auipc	a0,0x6
    80006b40:	04450513          	addi	a0,a0,68 # 8000cb80 <tickslock>
    80006b44:	00001097          	auipc	ra,0x1
    80006b48:	498080e7          	jalr	1176(ra) # 80007fdc <acquire>
    80006b4c:	00005717          	auipc	a4,0x5
    80006b50:	e9870713          	addi	a4,a4,-360 # 8000b9e4 <ticks>
    80006b54:	00072783          	lw	a5,0(a4)
    80006b58:	00006517          	auipc	a0,0x6
    80006b5c:	02850513          	addi	a0,a0,40 # 8000cb80 <tickslock>
    80006b60:	0017879b          	addiw	a5,a5,1
    80006b64:	00f72023          	sw	a5,0(a4)
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	540080e7          	jalr	1344(ra) # 800080a8 <release>
    80006b70:	f65ff06f          	j	80006ad4 <kerneltrap+0x8c>
    80006b74:	00001097          	auipc	ra,0x1
    80006b78:	09c080e7          	jalr	156(ra) # 80007c10 <uartintr>
    80006b7c:	fa5ff06f          	j	80006b20 <kerneltrap+0xd8>
    80006b80:	00003517          	auipc	a0,0x3
    80006b84:	b1050513          	addi	a0,a0,-1264 # 80009690 <CONSOLE_STATUS+0x680>
    80006b88:	00000097          	auipc	ra,0x0
    80006b8c:	724080e7          	jalr	1828(ra) # 800072ac <panic>

0000000080006b90 <clockintr>:
    80006b90:	fe010113          	addi	sp,sp,-32
    80006b94:	00813823          	sd	s0,16(sp)
    80006b98:	00913423          	sd	s1,8(sp)
    80006b9c:	00113c23          	sd	ra,24(sp)
    80006ba0:	02010413          	addi	s0,sp,32
    80006ba4:	00006497          	auipc	s1,0x6
    80006ba8:	fdc48493          	addi	s1,s1,-36 # 8000cb80 <tickslock>
    80006bac:	00048513          	mv	a0,s1
    80006bb0:	00001097          	auipc	ra,0x1
    80006bb4:	42c080e7          	jalr	1068(ra) # 80007fdc <acquire>
    80006bb8:	00005717          	auipc	a4,0x5
    80006bbc:	e2c70713          	addi	a4,a4,-468 # 8000b9e4 <ticks>
    80006bc0:	00072783          	lw	a5,0(a4)
    80006bc4:	01013403          	ld	s0,16(sp)
    80006bc8:	01813083          	ld	ra,24(sp)
    80006bcc:	00048513          	mv	a0,s1
    80006bd0:	0017879b          	addiw	a5,a5,1
    80006bd4:	00813483          	ld	s1,8(sp)
    80006bd8:	00f72023          	sw	a5,0(a4)
    80006bdc:	02010113          	addi	sp,sp,32
    80006be0:	00001317          	auipc	t1,0x1
    80006be4:	4c830067          	jr	1224(t1) # 800080a8 <release>

0000000080006be8 <devintr>:
    80006be8:	142027f3          	csrr	a5,scause
    80006bec:	00000513          	li	a0,0
    80006bf0:	0007c463          	bltz	a5,80006bf8 <devintr+0x10>
    80006bf4:	00008067          	ret
    80006bf8:	fe010113          	addi	sp,sp,-32
    80006bfc:	00813823          	sd	s0,16(sp)
    80006c00:	00113c23          	sd	ra,24(sp)
    80006c04:	00913423          	sd	s1,8(sp)
    80006c08:	02010413          	addi	s0,sp,32
    80006c0c:	0ff7f713          	andi	a4,a5,255
    80006c10:	00900693          	li	a3,9
    80006c14:	04d70c63          	beq	a4,a3,80006c6c <devintr+0x84>
    80006c18:	fff00713          	li	a4,-1
    80006c1c:	03f71713          	slli	a4,a4,0x3f
    80006c20:	00170713          	addi	a4,a4,1
    80006c24:	00e78c63          	beq	a5,a4,80006c3c <devintr+0x54>
    80006c28:	01813083          	ld	ra,24(sp)
    80006c2c:	01013403          	ld	s0,16(sp)
    80006c30:	00813483          	ld	s1,8(sp)
    80006c34:	02010113          	addi	sp,sp,32
    80006c38:	00008067          	ret
    80006c3c:	00000097          	auipc	ra,0x0
    80006c40:	c8c080e7          	jalr	-884(ra) # 800068c8 <cpuid>
    80006c44:	06050663          	beqz	a0,80006cb0 <devintr+0xc8>
    80006c48:	144027f3          	csrr	a5,sip
    80006c4c:	ffd7f793          	andi	a5,a5,-3
    80006c50:	14479073          	csrw	sip,a5
    80006c54:	01813083          	ld	ra,24(sp)
    80006c58:	01013403          	ld	s0,16(sp)
    80006c5c:	00813483          	ld	s1,8(sp)
    80006c60:	00200513          	li	a0,2
    80006c64:	02010113          	addi	sp,sp,32
    80006c68:	00008067          	ret
    80006c6c:	00000097          	auipc	ra,0x0
    80006c70:	258080e7          	jalr	600(ra) # 80006ec4 <plic_claim>
    80006c74:	00a00793          	li	a5,10
    80006c78:	00050493          	mv	s1,a0
    80006c7c:	06f50663          	beq	a0,a5,80006ce8 <devintr+0x100>
    80006c80:	00100513          	li	a0,1
    80006c84:	fa0482e3          	beqz	s1,80006c28 <devintr+0x40>
    80006c88:	00048593          	mv	a1,s1
    80006c8c:	00003517          	auipc	a0,0x3
    80006c90:	a2450513          	addi	a0,a0,-1500 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006c94:	00000097          	auipc	ra,0x0
    80006c98:	674080e7          	jalr	1652(ra) # 80007308 <__printf>
    80006c9c:	00048513          	mv	a0,s1
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	25c080e7          	jalr	604(ra) # 80006efc <plic_complete>
    80006ca8:	00100513          	li	a0,1
    80006cac:	f7dff06f          	j	80006c28 <devintr+0x40>
    80006cb0:	00006517          	auipc	a0,0x6
    80006cb4:	ed050513          	addi	a0,a0,-304 # 8000cb80 <tickslock>
    80006cb8:	00001097          	auipc	ra,0x1
    80006cbc:	324080e7          	jalr	804(ra) # 80007fdc <acquire>
    80006cc0:	00005717          	auipc	a4,0x5
    80006cc4:	d2470713          	addi	a4,a4,-732 # 8000b9e4 <ticks>
    80006cc8:	00072783          	lw	a5,0(a4)
    80006ccc:	00006517          	auipc	a0,0x6
    80006cd0:	eb450513          	addi	a0,a0,-332 # 8000cb80 <tickslock>
    80006cd4:	0017879b          	addiw	a5,a5,1
    80006cd8:	00f72023          	sw	a5,0(a4)
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	3cc080e7          	jalr	972(ra) # 800080a8 <release>
    80006ce4:	f65ff06f          	j	80006c48 <devintr+0x60>
    80006ce8:	00001097          	auipc	ra,0x1
    80006cec:	f28080e7          	jalr	-216(ra) # 80007c10 <uartintr>
    80006cf0:	fadff06f          	j	80006c9c <devintr+0xb4>
	...

0000000080006d00 <kernelvec>:
    80006d00:	f0010113          	addi	sp,sp,-256
    80006d04:	00113023          	sd	ra,0(sp)
    80006d08:	00213423          	sd	sp,8(sp)
    80006d0c:	00313823          	sd	gp,16(sp)
    80006d10:	00413c23          	sd	tp,24(sp)
    80006d14:	02513023          	sd	t0,32(sp)
    80006d18:	02613423          	sd	t1,40(sp)
    80006d1c:	02713823          	sd	t2,48(sp)
    80006d20:	02813c23          	sd	s0,56(sp)
    80006d24:	04913023          	sd	s1,64(sp)
    80006d28:	04a13423          	sd	a0,72(sp)
    80006d2c:	04b13823          	sd	a1,80(sp)
    80006d30:	04c13c23          	sd	a2,88(sp)
    80006d34:	06d13023          	sd	a3,96(sp)
    80006d38:	06e13423          	sd	a4,104(sp)
    80006d3c:	06f13823          	sd	a5,112(sp)
    80006d40:	07013c23          	sd	a6,120(sp)
    80006d44:	09113023          	sd	a7,128(sp)
    80006d48:	09213423          	sd	s2,136(sp)
    80006d4c:	09313823          	sd	s3,144(sp)
    80006d50:	09413c23          	sd	s4,152(sp)
    80006d54:	0b513023          	sd	s5,160(sp)
    80006d58:	0b613423          	sd	s6,168(sp)
    80006d5c:	0b713823          	sd	s7,176(sp)
    80006d60:	0b813c23          	sd	s8,184(sp)
    80006d64:	0d913023          	sd	s9,192(sp)
    80006d68:	0da13423          	sd	s10,200(sp)
    80006d6c:	0db13823          	sd	s11,208(sp)
    80006d70:	0dc13c23          	sd	t3,216(sp)
    80006d74:	0fd13023          	sd	t4,224(sp)
    80006d78:	0fe13423          	sd	t5,232(sp)
    80006d7c:	0ff13823          	sd	t6,240(sp)
    80006d80:	cc9ff0ef          	jal	ra,80006a48 <kerneltrap>
    80006d84:	00013083          	ld	ra,0(sp)
    80006d88:	00813103          	ld	sp,8(sp)
    80006d8c:	01013183          	ld	gp,16(sp)
    80006d90:	02013283          	ld	t0,32(sp)
    80006d94:	02813303          	ld	t1,40(sp)
    80006d98:	03013383          	ld	t2,48(sp)
    80006d9c:	03813403          	ld	s0,56(sp)
    80006da0:	04013483          	ld	s1,64(sp)
    80006da4:	04813503          	ld	a0,72(sp)
    80006da8:	05013583          	ld	a1,80(sp)
    80006dac:	05813603          	ld	a2,88(sp)
    80006db0:	06013683          	ld	a3,96(sp)
    80006db4:	06813703          	ld	a4,104(sp)
    80006db8:	07013783          	ld	a5,112(sp)
    80006dbc:	07813803          	ld	a6,120(sp)
    80006dc0:	08013883          	ld	a7,128(sp)
    80006dc4:	08813903          	ld	s2,136(sp)
    80006dc8:	09013983          	ld	s3,144(sp)
    80006dcc:	09813a03          	ld	s4,152(sp)
    80006dd0:	0a013a83          	ld	s5,160(sp)
    80006dd4:	0a813b03          	ld	s6,168(sp)
    80006dd8:	0b013b83          	ld	s7,176(sp)
    80006ddc:	0b813c03          	ld	s8,184(sp)
    80006de0:	0c013c83          	ld	s9,192(sp)
    80006de4:	0c813d03          	ld	s10,200(sp)
    80006de8:	0d013d83          	ld	s11,208(sp)
    80006dec:	0d813e03          	ld	t3,216(sp)
    80006df0:	0e013e83          	ld	t4,224(sp)
    80006df4:	0e813f03          	ld	t5,232(sp)
    80006df8:	0f013f83          	ld	t6,240(sp)
    80006dfc:	10010113          	addi	sp,sp,256
    80006e00:	10200073          	sret
    80006e04:	00000013          	nop
    80006e08:	00000013          	nop
    80006e0c:	00000013          	nop

0000000080006e10 <timervec>:
    80006e10:	34051573          	csrrw	a0,mscratch,a0
    80006e14:	00b53023          	sd	a1,0(a0)
    80006e18:	00c53423          	sd	a2,8(a0)
    80006e1c:	00d53823          	sd	a3,16(a0)
    80006e20:	01853583          	ld	a1,24(a0)
    80006e24:	02053603          	ld	a2,32(a0)
    80006e28:	0005b683          	ld	a3,0(a1)
    80006e2c:	00c686b3          	add	a3,a3,a2
    80006e30:	00d5b023          	sd	a3,0(a1)
    80006e34:	00200593          	li	a1,2
    80006e38:	14459073          	csrw	sip,a1
    80006e3c:	01053683          	ld	a3,16(a0)
    80006e40:	00853603          	ld	a2,8(a0)
    80006e44:	00053583          	ld	a1,0(a0)
    80006e48:	34051573          	csrrw	a0,mscratch,a0
    80006e4c:	30200073          	mret

0000000080006e50 <plicinit>:
    80006e50:	ff010113          	addi	sp,sp,-16
    80006e54:	00813423          	sd	s0,8(sp)
    80006e58:	01010413          	addi	s0,sp,16
    80006e5c:	00813403          	ld	s0,8(sp)
    80006e60:	0c0007b7          	lui	a5,0xc000
    80006e64:	00100713          	li	a4,1
    80006e68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e6c:	00e7a223          	sw	a4,4(a5)
    80006e70:	01010113          	addi	sp,sp,16
    80006e74:	00008067          	ret

0000000080006e78 <plicinithart>:
    80006e78:	ff010113          	addi	sp,sp,-16
    80006e7c:	00813023          	sd	s0,0(sp)
    80006e80:	00113423          	sd	ra,8(sp)
    80006e84:	01010413          	addi	s0,sp,16
    80006e88:	00000097          	auipc	ra,0x0
    80006e8c:	a40080e7          	jalr	-1472(ra) # 800068c8 <cpuid>
    80006e90:	0085171b          	slliw	a4,a0,0x8
    80006e94:	0c0027b7          	lui	a5,0xc002
    80006e98:	00e787b3          	add	a5,a5,a4
    80006e9c:	40200713          	li	a4,1026
    80006ea0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ea4:	00813083          	ld	ra,8(sp)
    80006ea8:	00013403          	ld	s0,0(sp)
    80006eac:	00d5151b          	slliw	a0,a0,0xd
    80006eb0:	0c2017b7          	lui	a5,0xc201
    80006eb4:	00a78533          	add	a0,a5,a0
    80006eb8:	00052023          	sw	zero,0(a0)
    80006ebc:	01010113          	addi	sp,sp,16
    80006ec0:	00008067          	ret

0000000080006ec4 <plic_claim>:
    80006ec4:	ff010113          	addi	sp,sp,-16
    80006ec8:	00813023          	sd	s0,0(sp)
    80006ecc:	00113423          	sd	ra,8(sp)
    80006ed0:	01010413          	addi	s0,sp,16
    80006ed4:	00000097          	auipc	ra,0x0
    80006ed8:	9f4080e7          	jalr	-1548(ra) # 800068c8 <cpuid>
    80006edc:	00813083          	ld	ra,8(sp)
    80006ee0:	00013403          	ld	s0,0(sp)
    80006ee4:	00d5151b          	slliw	a0,a0,0xd
    80006ee8:	0c2017b7          	lui	a5,0xc201
    80006eec:	00a78533          	add	a0,a5,a0
    80006ef0:	00452503          	lw	a0,4(a0)
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00008067          	ret

0000000080006efc <plic_complete>:
    80006efc:	fe010113          	addi	sp,sp,-32
    80006f00:	00813823          	sd	s0,16(sp)
    80006f04:	00913423          	sd	s1,8(sp)
    80006f08:	00113c23          	sd	ra,24(sp)
    80006f0c:	02010413          	addi	s0,sp,32
    80006f10:	00050493          	mv	s1,a0
    80006f14:	00000097          	auipc	ra,0x0
    80006f18:	9b4080e7          	jalr	-1612(ra) # 800068c8 <cpuid>
    80006f1c:	01813083          	ld	ra,24(sp)
    80006f20:	01013403          	ld	s0,16(sp)
    80006f24:	00d5179b          	slliw	a5,a0,0xd
    80006f28:	0c201737          	lui	a4,0xc201
    80006f2c:	00f707b3          	add	a5,a4,a5
    80006f30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006f34:	00813483          	ld	s1,8(sp)
    80006f38:	02010113          	addi	sp,sp,32
    80006f3c:	00008067          	ret

0000000080006f40 <consolewrite>:
    80006f40:	fb010113          	addi	sp,sp,-80
    80006f44:	04813023          	sd	s0,64(sp)
    80006f48:	04113423          	sd	ra,72(sp)
    80006f4c:	02913c23          	sd	s1,56(sp)
    80006f50:	03213823          	sd	s2,48(sp)
    80006f54:	03313423          	sd	s3,40(sp)
    80006f58:	03413023          	sd	s4,32(sp)
    80006f5c:	01513c23          	sd	s5,24(sp)
    80006f60:	05010413          	addi	s0,sp,80
    80006f64:	06c05c63          	blez	a2,80006fdc <consolewrite+0x9c>
    80006f68:	00060993          	mv	s3,a2
    80006f6c:	00050a13          	mv	s4,a0
    80006f70:	00058493          	mv	s1,a1
    80006f74:	00000913          	li	s2,0
    80006f78:	fff00a93          	li	s5,-1
    80006f7c:	01c0006f          	j	80006f98 <consolewrite+0x58>
    80006f80:	fbf44503          	lbu	a0,-65(s0)
    80006f84:	0019091b          	addiw	s2,s2,1
    80006f88:	00148493          	addi	s1,s1,1
    80006f8c:	00001097          	auipc	ra,0x1
    80006f90:	a9c080e7          	jalr	-1380(ra) # 80007a28 <uartputc>
    80006f94:	03298063          	beq	s3,s2,80006fb4 <consolewrite+0x74>
    80006f98:	00048613          	mv	a2,s1
    80006f9c:	00100693          	li	a3,1
    80006fa0:	000a0593          	mv	a1,s4
    80006fa4:	fbf40513          	addi	a0,s0,-65
    80006fa8:	00000097          	auipc	ra,0x0
    80006fac:	9d8080e7          	jalr	-1576(ra) # 80006980 <either_copyin>
    80006fb0:	fd5518e3          	bne	a0,s5,80006f80 <consolewrite+0x40>
    80006fb4:	04813083          	ld	ra,72(sp)
    80006fb8:	04013403          	ld	s0,64(sp)
    80006fbc:	03813483          	ld	s1,56(sp)
    80006fc0:	02813983          	ld	s3,40(sp)
    80006fc4:	02013a03          	ld	s4,32(sp)
    80006fc8:	01813a83          	ld	s5,24(sp)
    80006fcc:	00090513          	mv	a0,s2
    80006fd0:	03013903          	ld	s2,48(sp)
    80006fd4:	05010113          	addi	sp,sp,80
    80006fd8:	00008067          	ret
    80006fdc:	00000913          	li	s2,0
    80006fe0:	fd5ff06f          	j	80006fb4 <consolewrite+0x74>

0000000080006fe4 <consoleread>:
    80006fe4:	f9010113          	addi	sp,sp,-112
    80006fe8:	06813023          	sd	s0,96(sp)
    80006fec:	04913c23          	sd	s1,88(sp)
    80006ff0:	05213823          	sd	s2,80(sp)
    80006ff4:	05313423          	sd	s3,72(sp)
    80006ff8:	05413023          	sd	s4,64(sp)
    80006ffc:	03513c23          	sd	s5,56(sp)
    80007000:	03613823          	sd	s6,48(sp)
    80007004:	03713423          	sd	s7,40(sp)
    80007008:	03813023          	sd	s8,32(sp)
    8000700c:	06113423          	sd	ra,104(sp)
    80007010:	01913c23          	sd	s9,24(sp)
    80007014:	07010413          	addi	s0,sp,112
    80007018:	00060b93          	mv	s7,a2
    8000701c:	00050913          	mv	s2,a0
    80007020:	00058c13          	mv	s8,a1
    80007024:	00060b1b          	sext.w	s6,a2
    80007028:	00006497          	auipc	s1,0x6
    8000702c:	b8048493          	addi	s1,s1,-1152 # 8000cba8 <cons>
    80007030:	00400993          	li	s3,4
    80007034:	fff00a13          	li	s4,-1
    80007038:	00a00a93          	li	s5,10
    8000703c:	05705e63          	blez	s7,80007098 <consoleread+0xb4>
    80007040:	09c4a703          	lw	a4,156(s1)
    80007044:	0984a783          	lw	a5,152(s1)
    80007048:	0007071b          	sext.w	a4,a4
    8000704c:	08e78463          	beq	a5,a4,800070d4 <consoleread+0xf0>
    80007050:	07f7f713          	andi	a4,a5,127
    80007054:	00e48733          	add	a4,s1,a4
    80007058:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000705c:	0017869b          	addiw	a3,a5,1
    80007060:	08d4ac23          	sw	a3,152(s1)
    80007064:	00070c9b          	sext.w	s9,a4
    80007068:	0b370663          	beq	a4,s3,80007114 <consoleread+0x130>
    8000706c:	00100693          	li	a3,1
    80007070:	f9f40613          	addi	a2,s0,-97
    80007074:	000c0593          	mv	a1,s8
    80007078:	00090513          	mv	a0,s2
    8000707c:	f8e40fa3          	sb	a4,-97(s0)
    80007080:	00000097          	auipc	ra,0x0
    80007084:	8b4080e7          	jalr	-1868(ra) # 80006934 <either_copyout>
    80007088:	01450863          	beq	a0,s4,80007098 <consoleread+0xb4>
    8000708c:	001c0c13          	addi	s8,s8,1
    80007090:	fffb8b9b          	addiw	s7,s7,-1
    80007094:	fb5c94e3          	bne	s9,s5,8000703c <consoleread+0x58>
    80007098:	000b851b          	sext.w	a0,s7
    8000709c:	06813083          	ld	ra,104(sp)
    800070a0:	06013403          	ld	s0,96(sp)
    800070a4:	05813483          	ld	s1,88(sp)
    800070a8:	05013903          	ld	s2,80(sp)
    800070ac:	04813983          	ld	s3,72(sp)
    800070b0:	04013a03          	ld	s4,64(sp)
    800070b4:	03813a83          	ld	s5,56(sp)
    800070b8:	02813b83          	ld	s7,40(sp)
    800070bc:	02013c03          	ld	s8,32(sp)
    800070c0:	01813c83          	ld	s9,24(sp)
    800070c4:	40ab053b          	subw	a0,s6,a0
    800070c8:	03013b03          	ld	s6,48(sp)
    800070cc:	07010113          	addi	sp,sp,112
    800070d0:	00008067          	ret
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	1d8080e7          	jalr	472(ra) # 800082ac <push_on>
    800070dc:	0984a703          	lw	a4,152(s1)
    800070e0:	09c4a783          	lw	a5,156(s1)
    800070e4:	0007879b          	sext.w	a5,a5
    800070e8:	fef70ce3          	beq	a4,a5,800070e0 <consoleread+0xfc>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	234080e7          	jalr	564(ra) # 80008320 <pop_on>
    800070f4:	0984a783          	lw	a5,152(s1)
    800070f8:	07f7f713          	andi	a4,a5,127
    800070fc:	00e48733          	add	a4,s1,a4
    80007100:	01874703          	lbu	a4,24(a4)
    80007104:	0017869b          	addiw	a3,a5,1
    80007108:	08d4ac23          	sw	a3,152(s1)
    8000710c:	00070c9b          	sext.w	s9,a4
    80007110:	f5371ee3          	bne	a4,s3,8000706c <consoleread+0x88>
    80007114:	000b851b          	sext.w	a0,s7
    80007118:	f96bf2e3          	bgeu	s7,s6,8000709c <consoleread+0xb8>
    8000711c:	08f4ac23          	sw	a5,152(s1)
    80007120:	f7dff06f          	j	8000709c <consoleread+0xb8>

0000000080007124 <consputc>:
    80007124:	10000793          	li	a5,256
    80007128:	00f50663          	beq	a0,a5,80007134 <consputc+0x10>
    8000712c:	00001317          	auipc	t1,0x1
    80007130:	9f430067          	jr	-1548(t1) # 80007b20 <uartputc_sync>
    80007134:	ff010113          	addi	sp,sp,-16
    80007138:	00113423          	sd	ra,8(sp)
    8000713c:	00813023          	sd	s0,0(sp)
    80007140:	01010413          	addi	s0,sp,16
    80007144:	00800513          	li	a0,8
    80007148:	00001097          	auipc	ra,0x1
    8000714c:	9d8080e7          	jalr	-1576(ra) # 80007b20 <uartputc_sync>
    80007150:	02000513          	li	a0,32
    80007154:	00001097          	auipc	ra,0x1
    80007158:	9cc080e7          	jalr	-1588(ra) # 80007b20 <uartputc_sync>
    8000715c:	00013403          	ld	s0,0(sp)
    80007160:	00813083          	ld	ra,8(sp)
    80007164:	00800513          	li	a0,8
    80007168:	01010113          	addi	sp,sp,16
    8000716c:	00001317          	auipc	t1,0x1
    80007170:	9b430067          	jr	-1612(t1) # 80007b20 <uartputc_sync>

0000000080007174 <consoleintr>:
    80007174:	fe010113          	addi	sp,sp,-32
    80007178:	00813823          	sd	s0,16(sp)
    8000717c:	00913423          	sd	s1,8(sp)
    80007180:	01213023          	sd	s2,0(sp)
    80007184:	00113c23          	sd	ra,24(sp)
    80007188:	02010413          	addi	s0,sp,32
    8000718c:	00006917          	auipc	s2,0x6
    80007190:	a1c90913          	addi	s2,s2,-1508 # 8000cba8 <cons>
    80007194:	00050493          	mv	s1,a0
    80007198:	00090513          	mv	a0,s2
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	e40080e7          	jalr	-448(ra) # 80007fdc <acquire>
    800071a4:	02048c63          	beqz	s1,800071dc <consoleintr+0x68>
    800071a8:	0a092783          	lw	a5,160(s2)
    800071ac:	09892703          	lw	a4,152(s2)
    800071b0:	07f00693          	li	a3,127
    800071b4:	40e7873b          	subw	a4,a5,a4
    800071b8:	02e6e263          	bltu	a3,a4,800071dc <consoleintr+0x68>
    800071bc:	00d00713          	li	a4,13
    800071c0:	04e48063          	beq	s1,a4,80007200 <consoleintr+0x8c>
    800071c4:	07f7f713          	andi	a4,a5,127
    800071c8:	00e90733          	add	a4,s2,a4
    800071cc:	0017879b          	addiw	a5,a5,1
    800071d0:	0af92023          	sw	a5,160(s2)
    800071d4:	00970c23          	sb	s1,24(a4)
    800071d8:	08f92e23          	sw	a5,156(s2)
    800071dc:	01013403          	ld	s0,16(sp)
    800071e0:	01813083          	ld	ra,24(sp)
    800071e4:	00813483          	ld	s1,8(sp)
    800071e8:	00013903          	ld	s2,0(sp)
    800071ec:	00006517          	auipc	a0,0x6
    800071f0:	9bc50513          	addi	a0,a0,-1604 # 8000cba8 <cons>
    800071f4:	02010113          	addi	sp,sp,32
    800071f8:	00001317          	auipc	t1,0x1
    800071fc:	eb030067          	jr	-336(t1) # 800080a8 <release>
    80007200:	00a00493          	li	s1,10
    80007204:	fc1ff06f          	j	800071c4 <consoleintr+0x50>

0000000080007208 <consoleinit>:
    80007208:	fe010113          	addi	sp,sp,-32
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	00813823          	sd	s0,16(sp)
    80007214:	00913423          	sd	s1,8(sp)
    80007218:	02010413          	addi	s0,sp,32
    8000721c:	00006497          	auipc	s1,0x6
    80007220:	98c48493          	addi	s1,s1,-1652 # 8000cba8 <cons>
    80007224:	00048513          	mv	a0,s1
    80007228:	00002597          	auipc	a1,0x2
    8000722c:	4e058593          	addi	a1,a1,1248 # 80009708 <CONSOLE_STATUS+0x6f8>
    80007230:	00001097          	auipc	ra,0x1
    80007234:	d88080e7          	jalr	-632(ra) # 80007fb8 <initlock>
    80007238:	00000097          	auipc	ra,0x0
    8000723c:	7ac080e7          	jalr	1964(ra) # 800079e4 <uartinit>
    80007240:	01813083          	ld	ra,24(sp)
    80007244:	01013403          	ld	s0,16(sp)
    80007248:	00000797          	auipc	a5,0x0
    8000724c:	d9c78793          	addi	a5,a5,-612 # 80006fe4 <consoleread>
    80007250:	0af4bc23          	sd	a5,184(s1)
    80007254:	00000797          	auipc	a5,0x0
    80007258:	cec78793          	addi	a5,a5,-788 # 80006f40 <consolewrite>
    8000725c:	0cf4b023          	sd	a5,192(s1)
    80007260:	00813483          	ld	s1,8(sp)
    80007264:	02010113          	addi	sp,sp,32
    80007268:	00008067          	ret

000000008000726c <console_read>:
    8000726c:	ff010113          	addi	sp,sp,-16
    80007270:	00813423          	sd	s0,8(sp)
    80007274:	01010413          	addi	s0,sp,16
    80007278:	00813403          	ld	s0,8(sp)
    8000727c:	00006317          	auipc	t1,0x6
    80007280:	9e433303          	ld	t1,-1564(t1) # 8000cc60 <devsw+0x10>
    80007284:	01010113          	addi	sp,sp,16
    80007288:	00030067          	jr	t1

000000008000728c <console_write>:
    8000728c:	ff010113          	addi	sp,sp,-16
    80007290:	00813423          	sd	s0,8(sp)
    80007294:	01010413          	addi	s0,sp,16
    80007298:	00813403          	ld	s0,8(sp)
    8000729c:	00006317          	auipc	t1,0x6
    800072a0:	9cc33303          	ld	t1,-1588(t1) # 8000cc68 <devsw+0x18>
    800072a4:	01010113          	addi	sp,sp,16
    800072a8:	00030067          	jr	t1

00000000800072ac <panic>:
    800072ac:	fe010113          	addi	sp,sp,-32
    800072b0:	00113c23          	sd	ra,24(sp)
    800072b4:	00813823          	sd	s0,16(sp)
    800072b8:	00913423          	sd	s1,8(sp)
    800072bc:	02010413          	addi	s0,sp,32
    800072c0:	00050493          	mv	s1,a0
    800072c4:	00002517          	auipc	a0,0x2
    800072c8:	44c50513          	addi	a0,a0,1100 # 80009710 <CONSOLE_STATUS+0x700>
    800072cc:	00006797          	auipc	a5,0x6
    800072d0:	a207ae23          	sw	zero,-1476(a5) # 8000cd08 <pr+0x18>
    800072d4:	00000097          	auipc	ra,0x0
    800072d8:	034080e7          	jalr	52(ra) # 80007308 <__printf>
    800072dc:	00048513          	mv	a0,s1
    800072e0:	00000097          	auipc	ra,0x0
    800072e4:	028080e7          	jalr	40(ra) # 80007308 <__printf>
    800072e8:	00002517          	auipc	a0,0x2
    800072ec:	1b050513          	addi	a0,a0,432 # 80009498 <CONSOLE_STATUS+0x488>
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	018080e7          	jalr	24(ra) # 80007308 <__printf>
    800072f8:	00100793          	li	a5,1
    800072fc:	00004717          	auipc	a4,0x4
    80007300:	6ef72623          	sw	a5,1772(a4) # 8000b9e8 <panicked>
    80007304:	0000006f          	j	80007304 <panic+0x58>

0000000080007308 <__printf>:
    80007308:	f3010113          	addi	sp,sp,-208
    8000730c:	08813023          	sd	s0,128(sp)
    80007310:	07313423          	sd	s3,104(sp)
    80007314:	09010413          	addi	s0,sp,144
    80007318:	05813023          	sd	s8,64(sp)
    8000731c:	08113423          	sd	ra,136(sp)
    80007320:	06913c23          	sd	s1,120(sp)
    80007324:	07213823          	sd	s2,112(sp)
    80007328:	07413023          	sd	s4,96(sp)
    8000732c:	05513c23          	sd	s5,88(sp)
    80007330:	05613823          	sd	s6,80(sp)
    80007334:	05713423          	sd	s7,72(sp)
    80007338:	03913c23          	sd	s9,56(sp)
    8000733c:	03a13823          	sd	s10,48(sp)
    80007340:	03b13423          	sd	s11,40(sp)
    80007344:	00006317          	auipc	t1,0x6
    80007348:	9ac30313          	addi	t1,t1,-1620 # 8000ccf0 <pr>
    8000734c:	01832c03          	lw	s8,24(t1)
    80007350:	00b43423          	sd	a1,8(s0)
    80007354:	00c43823          	sd	a2,16(s0)
    80007358:	00d43c23          	sd	a3,24(s0)
    8000735c:	02e43023          	sd	a4,32(s0)
    80007360:	02f43423          	sd	a5,40(s0)
    80007364:	03043823          	sd	a6,48(s0)
    80007368:	03143c23          	sd	a7,56(s0)
    8000736c:	00050993          	mv	s3,a0
    80007370:	4a0c1663          	bnez	s8,8000781c <__printf+0x514>
    80007374:	60098c63          	beqz	s3,8000798c <__printf+0x684>
    80007378:	0009c503          	lbu	a0,0(s3)
    8000737c:	00840793          	addi	a5,s0,8
    80007380:	f6f43c23          	sd	a5,-136(s0)
    80007384:	00000493          	li	s1,0
    80007388:	22050063          	beqz	a0,800075a8 <__printf+0x2a0>
    8000738c:	00002a37          	lui	s4,0x2
    80007390:	00018ab7          	lui	s5,0x18
    80007394:	000f4b37          	lui	s6,0xf4
    80007398:	00989bb7          	lui	s7,0x989
    8000739c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800073a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800073a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800073a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800073ac:	00148c9b          	addiw	s9,s1,1
    800073b0:	02500793          	li	a5,37
    800073b4:	01998933          	add	s2,s3,s9
    800073b8:	38f51263          	bne	a0,a5,8000773c <__printf+0x434>
    800073bc:	00094783          	lbu	a5,0(s2)
    800073c0:	00078c9b          	sext.w	s9,a5
    800073c4:	1e078263          	beqz	a5,800075a8 <__printf+0x2a0>
    800073c8:	0024849b          	addiw	s1,s1,2
    800073cc:	07000713          	li	a4,112
    800073d0:	00998933          	add	s2,s3,s1
    800073d4:	38e78a63          	beq	a5,a4,80007768 <__printf+0x460>
    800073d8:	20f76863          	bltu	a4,a5,800075e8 <__printf+0x2e0>
    800073dc:	42a78863          	beq	a5,a0,8000780c <__printf+0x504>
    800073e0:	06400713          	li	a4,100
    800073e4:	40e79663          	bne	a5,a4,800077f0 <__printf+0x4e8>
    800073e8:	f7843783          	ld	a5,-136(s0)
    800073ec:	0007a603          	lw	a2,0(a5)
    800073f0:	00878793          	addi	a5,a5,8
    800073f4:	f6f43c23          	sd	a5,-136(s0)
    800073f8:	42064a63          	bltz	a2,8000782c <__printf+0x524>
    800073fc:	00a00713          	li	a4,10
    80007400:	02e677bb          	remuw	a5,a2,a4
    80007404:	00002d97          	auipc	s11,0x2
    80007408:	334d8d93          	addi	s11,s11,820 # 80009738 <digits>
    8000740c:	00900593          	li	a1,9
    80007410:	0006051b          	sext.w	a0,a2
    80007414:	00000c93          	li	s9,0
    80007418:	02079793          	slli	a5,a5,0x20
    8000741c:	0207d793          	srli	a5,a5,0x20
    80007420:	00fd87b3          	add	a5,s11,a5
    80007424:	0007c783          	lbu	a5,0(a5)
    80007428:	02e656bb          	divuw	a3,a2,a4
    8000742c:	f8f40023          	sb	a5,-128(s0)
    80007430:	14c5d863          	bge	a1,a2,80007580 <__printf+0x278>
    80007434:	06300593          	li	a1,99
    80007438:	00100c93          	li	s9,1
    8000743c:	02e6f7bb          	remuw	a5,a3,a4
    80007440:	02079793          	slli	a5,a5,0x20
    80007444:	0207d793          	srli	a5,a5,0x20
    80007448:	00fd87b3          	add	a5,s11,a5
    8000744c:	0007c783          	lbu	a5,0(a5)
    80007450:	02e6d73b          	divuw	a4,a3,a4
    80007454:	f8f400a3          	sb	a5,-127(s0)
    80007458:	12a5f463          	bgeu	a1,a0,80007580 <__printf+0x278>
    8000745c:	00a00693          	li	a3,10
    80007460:	00900593          	li	a1,9
    80007464:	02d777bb          	remuw	a5,a4,a3
    80007468:	02079793          	slli	a5,a5,0x20
    8000746c:	0207d793          	srli	a5,a5,0x20
    80007470:	00fd87b3          	add	a5,s11,a5
    80007474:	0007c503          	lbu	a0,0(a5)
    80007478:	02d757bb          	divuw	a5,a4,a3
    8000747c:	f8a40123          	sb	a0,-126(s0)
    80007480:	48e5f263          	bgeu	a1,a4,80007904 <__printf+0x5fc>
    80007484:	06300513          	li	a0,99
    80007488:	02d7f5bb          	remuw	a1,a5,a3
    8000748c:	02059593          	slli	a1,a1,0x20
    80007490:	0205d593          	srli	a1,a1,0x20
    80007494:	00bd85b3          	add	a1,s11,a1
    80007498:	0005c583          	lbu	a1,0(a1)
    8000749c:	02d7d7bb          	divuw	a5,a5,a3
    800074a0:	f8b401a3          	sb	a1,-125(s0)
    800074a4:	48e57263          	bgeu	a0,a4,80007928 <__printf+0x620>
    800074a8:	3e700513          	li	a0,999
    800074ac:	02d7f5bb          	remuw	a1,a5,a3
    800074b0:	02059593          	slli	a1,a1,0x20
    800074b4:	0205d593          	srli	a1,a1,0x20
    800074b8:	00bd85b3          	add	a1,s11,a1
    800074bc:	0005c583          	lbu	a1,0(a1)
    800074c0:	02d7d7bb          	divuw	a5,a5,a3
    800074c4:	f8b40223          	sb	a1,-124(s0)
    800074c8:	46e57663          	bgeu	a0,a4,80007934 <__printf+0x62c>
    800074cc:	02d7f5bb          	remuw	a1,a5,a3
    800074d0:	02059593          	slli	a1,a1,0x20
    800074d4:	0205d593          	srli	a1,a1,0x20
    800074d8:	00bd85b3          	add	a1,s11,a1
    800074dc:	0005c583          	lbu	a1,0(a1)
    800074e0:	02d7d7bb          	divuw	a5,a5,a3
    800074e4:	f8b402a3          	sb	a1,-123(s0)
    800074e8:	46ea7863          	bgeu	s4,a4,80007958 <__printf+0x650>
    800074ec:	02d7f5bb          	remuw	a1,a5,a3
    800074f0:	02059593          	slli	a1,a1,0x20
    800074f4:	0205d593          	srli	a1,a1,0x20
    800074f8:	00bd85b3          	add	a1,s11,a1
    800074fc:	0005c583          	lbu	a1,0(a1)
    80007500:	02d7d7bb          	divuw	a5,a5,a3
    80007504:	f8b40323          	sb	a1,-122(s0)
    80007508:	3eeaf863          	bgeu	s5,a4,800078f8 <__printf+0x5f0>
    8000750c:	02d7f5bb          	remuw	a1,a5,a3
    80007510:	02059593          	slli	a1,a1,0x20
    80007514:	0205d593          	srli	a1,a1,0x20
    80007518:	00bd85b3          	add	a1,s11,a1
    8000751c:	0005c583          	lbu	a1,0(a1)
    80007520:	02d7d7bb          	divuw	a5,a5,a3
    80007524:	f8b403a3          	sb	a1,-121(s0)
    80007528:	42eb7e63          	bgeu	s6,a4,80007964 <__printf+0x65c>
    8000752c:	02d7f5bb          	remuw	a1,a5,a3
    80007530:	02059593          	slli	a1,a1,0x20
    80007534:	0205d593          	srli	a1,a1,0x20
    80007538:	00bd85b3          	add	a1,s11,a1
    8000753c:	0005c583          	lbu	a1,0(a1)
    80007540:	02d7d7bb          	divuw	a5,a5,a3
    80007544:	f8b40423          	sb	a1,-120(s0)
    80007548:	42ebfc63          	bgeu	s7,a4,80007980 <__printf+0x678>
    8000754c:	02079793          	slli	a5,a5,0x20
    80007550:	0207d793          	srli	a5,a5,0x20
    80007554:	00fd8db3          	add	s11,s11,a5
    80007558:	000dc703          	lbu	a4,0(s11)
    8000755c:	00a00793          	li	a5,10
    80007560:	00900c93          	li	s9,9
    80007564:	f8e404a3          	sb	a4,-119(s0)
    80007568:	00065c63          	bgez	a2,80007580 <__printf+0x278>
    8000756c:	f9040713          	addi	a4,s0,-112
    80007570:	00f70733          	add	a4,a4,a5
    80007574:	02d00693          	li	a3,45
    80007578:	fed70823          	sb	a3,-16(a4)
    8000757c:	00078c93          	mv	s9,a5
    80007580:	f8040793          	addi	a5,s0,-128
    80007584:	01978cb3          	add	s9,a5,s9
    80007588:	f7f40d13          	addi	s10,s0,-129
    8000758c:	000cc503          	lbu	a0,0(s9)
    80007590:	fffc8c93          	addi	s9,s9,-1
    80007594:	00000097          	auipc	ra,0x0
    80007598:	b90080e7          	jalr	-1136(ra) # 80007124 <consputc>
    8000759c:	ffac98e3          	bne	s9,s10,8000758c <__printf+0x284>
    800075a0:	00094503          	lbu	a0,0(s2)
    800075a4:	e00514e3          	bnez	a0,800073ac <__printf+0xa4>
    800075a8:	1a0c1663          	bnez	s8,80007754 <__printf+0x44c>
    800075ac:	08813083          	ld	ra,136(sp)
    800075b0:	08013403          	ld	s0,128(sp)
    800075b4:	07813483          	ld	s1,120(sp)
    800075b8:	07013903          	ld	s2,112(sp)
    800075bc:	06813983          	ld	s3,104(sp)
    800075c0:	06013a03          	ld	s4,96(sp)
    800075c4:	05813a83          	ld	s5,88(sp)
    800075c8:	05013b03          	ld	s6,80(sp)
    800075cc:	04813b83          	ld	s7,72(sp)
    800075d0:	04013c03          	ld	s8,64(sp)
    800075d4:	03813c83          	ld	s9,56(sp)
    800075d8:	03013d03          	ld	s10,48(sp)
    800075dc:	02813d83          	ld	s11,40(sp)
    800075e0:	0d010113          	addi	sp,sp,208
    800075e4:	00008067          	ret
    800075e8:	07300713          	li	a4,115
    800075ec:	1ce78a63          	beq	a5,a4,800077c0 <__printf+0x4b8>
    800075f0:	07800713          	li	a4,120
    800075f4:	1ee79e63          	bne	a5,a4,800077f0 <__printf+0x4e8>
    800075f8:	f7843783          	ld	a5,-136(s0)
    800075fc:	0007a703          	lw	a4,0(a5)
    80007600:	00878793          	addi	a5,a5,8
    80007604:	f6f43c23          	sd	a5,-136(s0)
    80007608:	28074263          	bltz	a4,8000788c <__printf+0x584>
    8000760c:	00002d97          	auipc	s11,0x2
    80007610:	12cd8d93          	addi	s11,s11,300 # 80009738 <digits>
    80007614:	00f77793          	andi	a5,a4,15
    80007618:	00fd87b3          	add	a5,s11,a5
    8000761c:	0007c683          	lbu	a3,0(a5)
    80007620:	00f00613          	li	a2,15
    80007624:	0007079b          	sext.w	a5,a4
    80007628:	f8d40023          	sb	a3,-128(s0)
    8000762c:	0047559b          	srliw	a1,a4,0x4
    80007630:	0047569b          	srliw	a3,a4,0x4
    80007634:	00000c93          	li	s9,0
    80007638:	0ee65063          	bge	a2,a4,80007718 <__printf+0x410>
    8000763c:	00f6f693          	andi	a3,a3,15
    80007640:	00dd86b3          	add	a3,s11,a3
    80007644:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007648:	0087d79b          	srliw	a5,a5,0x8
    8000764c:	00100c93          	li	s9,1
    80007650:	f8d400a3          	sb	a3,-127(s0)
    80007654:	0cb67263          	bgeu	a2,a1,80007718 <__printf+0x410>
    80007658:	00f7f693          	andi	a3,a5,15
    8000765c:	00dd86b3          	add	a3,s11,a3
    80007660:	0006c583          	lbu	a1,0(a3)
    80007664:	00f00613          	li	a2,15
    80007668:	0047d69b          	srliw	a3,a5,0x4
    8000766c:	f8b40123          	sb	a1,-126(s0)
    80007670:	0047d593          	srli	a1,a5,0x4
    80007674:	28f67e63          	bgeu	a2,a5,80007910 <__printf+0x608>
    80007678:	00f6f693          	andi	a3,a3,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c503          	lbu	a0,0(a3)
    80007684:	0087d813          	srli	a6,a5,0x8
    80007688:	0087d69b          	srliw	a3,a5,0x8
    8000768c:	f8a401a3          	sb	a0,-125(s0)
    80007690:	28b67663          	bgeu	a2,a1,8000791c <__printf+0x614>
    80007694:	00f6f693          	andi	a3,a3,15
    80007698:	00dd86b3          	add	a3,s11,a3
    8000769c:	0006c583          	lbu	a1,0(a3)
    800076a0:	00c7d513          	srli	a0,a5,0xc
    800076a4:	00c7d69b          	srliw	a3,a5,0xc
    800076a8:	f8b40223          	sb	a1,-124(s0)
    800076ac:	29067a63          	bgeu	a2,a6,80007940 <__printf+0x638>
    800076b0:	00f6f693          	andi	a3,a3,15
    800076b4:	00dd86b3          	add	a3,s11,a3
    800076b8:	0006c583          	lbu	a1,0(a3)
    800076bc:	0107d813          	srli	a6,a5,0x10
    800076c0:	0107d69b          	srliw	a3,a5,0x10
    800076c4:	f8b402a3          	sb	a1,-123(s0)
    800076c8:	28a67263          	bgeu	a2,a0,8000794c <__printf+0x644>
    800076cc:	00f6f693          	andi	a3,a3,15
    800076d0:	00dd86b3          	add	a3,s11,a3
    800076d4:	0006c683          	lbu	a3,0(a3)
    800076d8:	0147d79b          	srliw	a5,a5,0x14
    800076dc:	f8d40323          	sb	a3,-122(s0)
    800076e0:	21067663          	bgeu	a2,a6,800078ec <__printf+0x5e4>
    800076e4:	02079793          	slli	a5,a5,0x20
    800076e8:	0207d793          	srli	a5,a5,0x20
    800076ec:	00fd8db3          	add	s11,s11,a5
    800076f0:	000dc683          	lbu	a3,0(s11)
    800076f4:	00800793          	li	a5,8
    800076f8:	00700c93          	li	s9,7
    800076fc:	f8d403a3          	sb	a3,-121(s0)
    80007700:	00075c63          	bgez	a4,80007718 <__printf+0x410>
    80007704:	f9040713          	addi	a4,s0,-112
    80007708:	00f70733          	add	a4,a4,a5
    8000770c:	02d00693          	li	a3,45
    80007710:	fed70823          	sb	a3,-16(a4)
    80007714:	00078c93          	mv	s9,a5
    80007718:	f8040793          	addi	a5,s0,-128
    8000771c:	01978cb3          	add	s9,a5,s9
    80007720:	f7f40d13          	addi	s10,s0,-129
    80007724:	000cc503          	lbu	a0,0(s9)
    80007728:	fffc8c93          	addi	s9,s9,-1
    8000772c:	00000097          	auipc	ra,0x0
    80007730:	9f8080e7          	jalr	-1544(ra) # 80007124 <consputc>
    80007734:	ff9d18e3          	bne	s10,s9,80007724 <__printf+0x41c>
    80007738:	0100006f          	j	80007748 <__printf+0x440>
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	9e8080e7          	jalr	-1560(ra) # 80007124 <consputc>
    80007744:	000c8493          	mv	s1,s9
    80007748:	00094503          	lbu	a0,0(s2)
    8000774c:	c60510e3          	bnez	a0,800073ac <__printf+0xa4>
    80007750:	e40c0ee3          	beqz	s8,800075ac <__printf+0x2a4>
    80007754:	00005517          	auipc	a0,0x5
    80007758:	59c50513          	addi	a0,a0,1436 # 8000ccf0 <pr>
    8000775c:	00001097          	auipc	ra,0x1
    80007760:	94c080e7          	jalr	-1716(ra) # 800080a8 <release>
    80007764:	e49ff06f          	j	800075ac <__printf+0x2a4>
    80007768:	f7843783          	ld	a5,-136(s0)
    8000776c:	03000513          	li	a0,48
    80007770:	01000d13          	li	s10,16
    80007774:	00878713          	addi	a4,a5,8
    80007778:	0007bc83          	ld	s9,0(a5)
    8000777c:	f6e43c23          	sd	a4,-136(s0)
    80007780:	00000097          	auipc	ra,0x0
    80007784:	9a4080e7          	jalr	-1628(ra) # 80007124 <consputc>
    80007788:	07800513          	li	a0,120
    8000778c:	00000097          	auipc	ra,0x0
    80007790:	998080e7          	jalr	-1640(ra) # 80007124 <consputc>
    80007794:	00002d97          	auipc	s11,0x2
    80007798:	fa4d8d93          	addi	s11,s11,-92 # 80009738 <digits>
    8000779c:	03ccd793          	srli	a5,s9,0x3c
    800077a0:	00fd87b3          	add	a5,s11,a5
    800077a4:	0007c503          	lbu	a0,0(a5)
    800077a8:	fffd0d1b          	addiw	s10,s10,-1
    800077ac:	004c9c93          	slli	s9,s9,0x4
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	974080e7          	jalr	-1676(ra) # 80007124 <consputc>
    800077b8:	fe0d12e3          	bnez	s10,8000779c <__printf+0x494>
    800077bc:	f8dff06f          	j	80007748 <__printf+0x440>
    800077c0:	f7843783          	ld	a5,-136(s0)
    800077c4:	0007bc83          	ld	s9,0(a5)
    800077c8:	00878793          	addi	a5,a5,8
    800077cc:	f6f43c23          	sd	a5,-136(s0)
    800077d0:	000c9a63          	bnez	s9,800077e4 <__printf+0x4dc>
    800077d4:	1080006f          	j	800078dc <__printf+0x5d4>
    800077d8:	001c8c93          	addi	s9,s9,1
    800077dc:	00000097          	auipc	ra,0x0
    800077e0:	948080e7          	jalr	-1720(ra) # 80007124 <consputc>
    800077e4:	000cc503          	lbu	a0,0(s9)
    800077e8:	fe0518e3          	bnez	a0,800077d8 <__printf+0x4d0>
    800077ec:	f5dff06f          	j	80007748 <__printf+0x440>
    800077f0:	02500513          	li	a0,37
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	930080e7          	jalr	-1744(ra) # 80007124 <consputc>
    800077fc:	000c8513          	mv	a0,s9
    80007800:	00000097          	auipc	ra,0x0
    80007804:	924080e7          	jalr	-1756(ra) # 80007124 <consputc>
    80007808:	f41ff06f          	j	80007748 <__printf+0x440>
    8000780c:	02500513          	li	a0,37
    80007810:	00000097          	auipc	ra,0x0
    80007814:	914080e7          	jalr	-1772(ra) # 80007124 <consputc>
    80007818:	f31ff06f          	j	80007748 <__printf+0x440>
    8000781c:	00030513          	mv	a0,t1
    80007820:	00000097          	auipc	ra,0x0
    80007824:	7bc080e7          	jalr	1980(ra) # 80007fdc <acquire>
    80007828:	b4dff06f          	j	80007374 <__printf+0x6c>
    8000782c:	40c0053b          	negw	a0,a2
    80007830:	00a00713          	li	a4,10
    80007834:	02e576bb          	remuw	a3,a0,a4
    80007838:	00002d97          	auipc	s11,0x2
    8000783c:	f00d8d93          	addi	s11,s11,-256 # 80009738 <digits>
    80007840:	ff700593          	li	a1,-9
    80007844:	02069693          	slli	a3,a3,0x20
    80007848:	0206d693          	srli	a3,a3,0x20
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c683          	lbu	a3,0(a3)
    80007854:	02e557bb          	divuw	a5,a0,a4
    80007858:	f8d40023          	sb	a3,-128(s0)
    8000785c:	10b65e63          	bge	a2,a1,80007978 <__printf+0x670>
    80007860:	06300593          	li	a1,99
    80007864:	02e7f6bb          	remuw	a3,a5,a4
    80007868:	02069693          	slli	a3,a3,0x20
    8000786c:	0206d693          	srli	a3,a3,0x20
    80007870:	00dd86b3          	add	a3,s11,a3
    80007874:	0006c683          	lbu	a3,0(a3)
    80007878:	02e7d73b          	divuw	a4,a5,a4
    8000787c:	00200793          	li	a5,2
    80007880:	f8d400a3          	sb	a3,-127(s0)
    80007884:	bca5ece3          	bltu	a1,a0,8000745c <__printf+0x154>
    80007888:	ce5ff06f          	j	8000756c <__printf+0x264>
    8000788c:	40e007bb          	negw	a5,a4
    80007890:	00002d97          	auipc	s11,0x2
    80007894:	ea8d8d93          	addi	s11,s11,-344 # 80009738 <digits>
    80007898:	00f7f693          	andi	a3,a5,15
    8000789c:	00dd86b3          	add	a3,s11,a3
    800078a0:	0006c583          	lbu	a1,0(a3)
    800078a4:	ff100613          	li	a2,-15
    800078a8:	0047d69b          	srliw	a3,a5,0x4
    800078ac:	f8b40023          	sb	a1,-128(s0)
    800078b0:	0047d59b          	srliw	a1,a5,0x4
    800078b4:	0ac75e63          	bge	a4,a2,80007970 <__printf+0x668>
    800078b8:	00f6f693          	andi	a3,a3,15
    800078bc:	00dd86b3          	add	a3,s11,a3
    800078c0:	0006c603          	lbu	a2,0(a3)
    800078c4:	00f00693          	li	a3,15
    800078c8:	0087d79b          	srliw	a5,a5,0x8
    800078cc:	f8c400a3          	sb	a2,-127(s0)
    800078d0:	d8b6e4e3          	bltu	a3,a1,80007658 <__printf+0x350>
    800078d4:	00200793          	li	a5,2
    800078d8:	e2dff06f          	j	80007704 <__printf+0x3fc>
    800078dc:	00002c97          	auipc	s9,0x2
    800078e0:	e3cc8c93          	addi	s9,s9,-452 # 80009718 <CONSOLE_STATUS+0x708>
    800078e4:	02800513          	li	a0,40
    800078e8:	ef1ff06f          	j	800077d8 <__printf+0x4d0>
    800078ec:	00700793          	li	a5,7
    800078f0:	00600c93          	li	s9,6
    800078f4:	e0dff06f          	j	80007700 <__printf+0x3f8>
    800078f8:	00700793          	li	a5,7
    800078fc:	00600c93          	li	s9,6
    80007900:	c69ff06f          	j	80007568 <__printf+0x260>
    80007904:	00300793          	li	a5,3
    80007908:	00200c93          	li	s9,2
    8000790c:	c5dff06f          	j	80007568 <__printf+0x260>
    80007910:	00300793          	li	a5,3
    80007914:	00200c93          	li	s9,2
    80007918:	de9ff06f          	j	80007700 <__printf+0x3f8>
    8000791c:	00400793          	li	a5,4
    80007920:	00300c93          	li	s9,3
    80007924:	dddff06f          	j	80007700 <__printf+0x3f8>
    80007928:	00400793          	li	a5,4
    8000792c:	00300c93          	li	s9,3
    80007930:	c39ff06f          	j	80007568 <__printf+0x260>
    80007934:	00500793          	li	a5,5
    80007938:	00400c93          	li	s9,4
    8000793c:	c2dff06f          	j	80007568 <__printf+0x260>
    80007940:	00500793          	li	a5,5
    80007944:	00400c93          	li	s9,4
    80007948:	db9ff06f          	j	80007700 <__printf+0x3f8>
    8000794c:	00600793          	li	a5,6
    80007950:	00500c93          	li	s9,5
    80007954:	dadff06f          	j	80007700 <__printf+0x3f8>
    80007958:	00600793          	li	a5,6
    8000795c:	00500c93          	li	s9,5
    80007960:	c09ff06f          	j	80007568 <__printf+0x260>
    80007964:	00800793          	li	a5,8
    80007968:	00700c93          	li	s9,7
    8000796c:	bfdff06f          	j	80007568 <__printf+0x260>
    80007970:	00100793          	li	a5,1
    80007974:	d91ff06f          	j	80007704 <__printf+0x3fc>
    80007978:	00100793          	li	a5,1
    8000797c:	bf1ff06f          	j	8000756c <__printf+0x264>
    80007980:	00900793          	li	a5,9
    80007984:	00800c93          	li	s9,8
    80007988:	be1ff06f          	j	80007568 <__printf+0x260>
    8000798c:	00002517          	auipc	a0,0x2
    80007990:	d9450513          	addi	a0,a0,-620 # 80009720 <CONSOLE_STATUS+0x710>
    80007994:	00000097          	auipc	ra,0x0
    80007998:	918080e7          	jalr	-1768(ra) # 800072ac <panic>

000000008000799c <printfinit>:
    8000799c:	fe010113          	addi	sp,sp,-32
    800079a0:	00813823          	sd	s0,16(sp)
    800079a4:	00913423          	sd	s1,8(sp)
    800079a8:	00113c23          	sd	ra,24(sp)
    800079ac:	02010413          	addi	s0,sp,32
    800079b0:	00005497          	auipc	s1,0x5
    800079b4:	34048493          	addi	s1,s1,832 # 8000ccf0 <pr>
    800079b8:	00048513          	mv	a0,s1
    800079bc:	00002597          	auipc	a1,0x2
    800079c0:	d7458593          	addi	a1,a1,-652 # 80009730 <CONSOLE_STATUS+0x720>
    800079c4:	00000097          	auipc	ra,0x0
    800079c8:	5f4080e7          	jalr	1524(ra) # 80007fb8 <initlock>
    800079cc:	01813083          	ld	ra,24(sp)
    800079d0:	01013403          	ld	s0,16(sp)
    800079d4:	0004ac23          	sw	zero,24(s1)
    800079d8:	00813483          	ld	s1,8(sp)
    800079dc:	02010113          	addi	sp,sp,32
    800079e0:	00008067          	ret

00000000800079e4 <uartinit>:
    800079e4:	ff010113          	addi	sp,sp,-16
    800079e8:	00813423          	sd	s0,8(sp)
    800079ec:	01010413          	addi	s0,sp,16
    800079f0:	100007b7          	lui	a5,0x10000
    800079f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800079f8:	f8000713          	li	a4,-128
    800079fc:	00e781a3          	sb	a4,3(a5)
    80007a00:	00300713          	li	a4,3
    80007a04:	00e78023          	sb	a4,0(a5)
    80007a08:	000780a3          	sb	zero,1(a5)
    80007a0c:	00e781a3          	sb	a4,3(a5)
    80007a10:	00700693          	li	a3,7
    80007a14:	00d78123          	sb	a3,2(a5)
    80007a18:	00e780a3          	sb	a4,1(a5)
    80007a1c:	00813403          	ld	s0,8(sp)
    80007a20:	01010113          	addi	sp,sp,16
    80007a24:	00008067          	ret

0000000080007a28 <uartputc>:
    80007a28:	00004797          	auipc	a5,0x4
    80007a2c:	fc07a783          	lw	a5,-64(a5) # 8000b9e8 <panicked>
    80007a30:	00078463          	beqz	a5,80007a38 <uartputc+0x10>
    80007a34:	0000006f          	j	80007a34 <uartputc+0xc>
    80007a38:	fd010113          	addi	sp,sp,-48
    80007a3c:	02813023          	sd	s0,32(sp)
    80007a40:	00913c23          	sd	s1,24(sp)
    80007a44:	01213823          	sd	s2,16(sp)
    80007a48:	01313423          	sd	s3,8(sp)
    80007a4c:	02113423          	sd	ra,40(sp)
    80007a50:	03010413          	addi	s0,sp,48
    80007a54:	00004917          	auipc	s2,0x4
    80007a58:	f9c90913          	addi	s2,s2,-100 # 8000b9f0 <uart_tx_r>
    80007a5c:	00093783          	ld	a5,0(s2)
    80007a60:	00004497          	auipc	s1,0x4
    80007a64:	f9848493          	addi	s1,s1,-104 # 8000b9f8 <uart_tx_w>
    80007a68:	0004b703          	ld	a4,0(s1)
    80007a6c:	02078693          	addi	a3,a5,32
    80007a70:	00050993          	mv	s3,a0
    80007a74:	02e69c63          	bne	a3,a4,80007aac <uartputc+0x84>
    80007a78:	00001097          	auipc	ra,0x1
    80007a7c:	834080e7          	jalr	-1996(ra) # 800082ac <push_on>
    80007a80:	00093783          	ld	a5,0(s2)
    80007a84:	0004b703          	ld	a4,0(s1)
    80007a88:	02078793          	addi	a5,a5,32
    80007a8c:	00e79463          	bne	a5,a4,80007a94 <uartputc+0x6c>
    80007a90:	0000006f          	j	80007a90 <uartputc+0x68>
    80007a94:	00001097          	auipc	ra,0x1
    80007a98:	88c080e7          	jalr	-1908(ra) # 80008320 <pop_on>
    80007a9c:	00093783          	ld	a5,0(s2)
    80007aa0:	0004b703          	ld	a4,0(s1)
    80007aa4:	02078693          	addi	a3,a5,32
    80007aa8:	fce688e3          	beq	a3,a4,80007a78 <uartputc+0x50>
    80007aac:	01f77693          	andi	a3,a4,31
    80007ab0:	00005597          	auipc	a1,0x5
    80007ab4:	26058593          	addi	a1,a1,608 # 8000cd10 <uart_tx_buf>
    80007ab8:	00d586b3          	add	a3,a1,a3
    80007abc:	00170713          	addi	a4,a4,1
    80007ac0:	01368023          	sb	s3,0(a3)
    80007ac4:	00e4b023          	sd	a4,0(s1)
    80007ac8:	10000637          	lui	a2,0x10000
    80007acc:	02f71063          	bne	a4,a5,80007aec <uartputc+0xc4>
    80007ad0:	0340006f          	j	80007b04 <uartputc+0xdc>
    80007ad4:	00074703          	lbu	a4,0(a4)
    80007ad8:	00f93023          	sd	a5,0(s2)
    80007adc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ae0:	00093783          	ld	a5,0(s2)
    80007ae4:	0004b703          	ld	a4,0(s1)
    80007ae8:	00f70e63          	beq	a4,a5,80007b04 <uartputc+0xdc>
    80007aec:	00564683          	lbu	a3,5(a2)
    80007af0:	01f7f713          	andi	a4,a5,31
    80007af4:	00e58733          	add	a4,a1,a4
    80007af8:	0206f693          	andi	a3,a3,32
    80007afc:	00178793          	addi	a5,a5,1
    80007b00:	fc069ae3          	bnez	a3,80007ad4 <uartputc+0xac>
    80007b04:	02813083          	ld	ra,40(sp)
    80007b08:	02013403          	ld	s0,32(sp)
    80007b0c:	01813483          	ld	s1,24(sp)
    80007b10:	01013903          	ld	s2,16(sp)
    80007b14:	00813983          	ld	s3,8(sp)
    80007b18:	03010113          	addi	sp,sp,48
    80007b1c:	00008067          	ret

0000000080007b20 <uartputc_sync>:
    80007b20:	ff010113          	addi	sp,sp,-16
    80007b24:	00813423          	sd	s0,8(sp)
    80007b28:	01010413          	addi	s0,sp,16
    80007b2c:	00004717          	auipc	a4,0x4
    80007b30:	ebc72703          	lw	a4,-324(a4) # 8000b9e8 <panicked>
    80007b34:	02071663          	bnez	a4,80007b60 <uartputc_sync+0x40>
    80007b38:	00050793          	mv	a5,a0
    80007b3c:	100006b7          	lui	a3,0x10000
    80007b40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007b44:	02077713          	andi	a4,a4,32
    80007b48:	fe070ce3          	beqz	a4,80007b40 <uartputc_sync+0x20>
    80007b4c:	0ff7f793          	andi	a5,a5,255
    80007b50:	00f68023          	sb	a5,0(a3)
    80007b54:	00813403          	ld	s0,8(sp)
    80007b58:	01010113          	addi	sp,sp,16
    80007b5c:	00008067          	ret
    80007b60:	0000006f          	j	80007b60 <uartputc_sync+0x40>

0000000080007b64 <uartstart>:
    80007b64:	ff010113          	addi	sp,sp,-16
    80007b68:	00813423          	sd	s0,8(sp)
    80007b6c:	01010413          	addi	s0,sp,16
    80007b70:	00004617          	auipc	a2,0x4
    80007b74:	e8060613          	addi	a2,a2,-384 # 8000b9f0 <uart_tx_r>
    80007b78:	00004517          	auipc	a0,0x4
    80007b7c:	e8050513          	addi	a0,a0,-384 # 8000b9f8 <uart_tx_w>
    80007b80:	00063783          	ld	a5,0(a2)
    80007b84:	00053703          	ld	a4,0(a0)
    80007b88:	04f70263          	beq	a4,a5,80007bcc <uartstart+0x68>
    80007b8c:	100005b7          	lui	a1,0x10000
    80007b90:	00005817          	auipc	a6,0x5
    80007b94:	18080813          	addi	a6,a6,384 # 8000cd10 <uart_tx_buf>
    80007b98:	01c0006f          	j	80007bb4 <uartstart+0x50>
    80007b9c:	0006c703          	lbu	a4,0(a3)
    80007ba0:	00f63023          	sd	a5,0(a2)
    80007ba4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ba8:	00063783          	ld	a5,0(a2)
    80007bac:	00053703          	ld	a4,0(a0)
    80007bb0:	00f70e63          	beq	a4,a5,80007bcc <uartstart+0x68>
    80007bb4:	01f7f713          	andi	a4,a5,31
    80007bb8:	00e806b3          	add	a3,a6,a4
    80007bbc:	0055c703          	lbu	a4,5(a1)
    80007bc0:	00178793          	addi	a5,a5,1
    80007bc4:	02077713          	andi	a4,a4,32
    80007bc8:	fc071ae3          	bnez	a4,80007b9c <uartstart+0x38>
    80007bcc:	00813403          	ld	s0,8(sp)
    80007bd0:	01010113          	addi	sp,sp,16
    80007bd4:	00008067          	ret

0000000080007bd8 <uartgetc>:
    80007bd8:	ff010113          	addi	sp,sp,-16
    80007bdc:	00813423          	sd	s0,8(sp)
    80007be0:	01010413          	addi	s0,sp,16
    80007be4:	10000737          	lui	a4,0x10000
    80007be8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007bec:	0017f793          	andi	a5,a5,1
    80007bf0:	00078c63          	beqz	a5,80007c08 <uartgetc+0x30>
    80007bf4:	00074503          	lbu	a0,0(a4)
    80007bf8:	0ff57513          	andi	a0,a0,255
    80007bfc:	00813403          	ld	s0,8(sp)
    80007c00:	01010113          	addi	sp,sp,16
    80007c04:	00008067          	ret
    80007c08:	fff00513          	li	a0,-1
    80007c0c:	ff1ff06f          	j	80007bfc <uartgetc+0x24>

0000000080007c10 <uartintr>:
    80007c10:	100007b7          	lui	a5,0x10000
    80007c14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007c18:	0017f793          	andi	a5,a5,1
    80007c1c:	0a078463          	beqz	a5,80007cc4 <uartintr+0xb4>
    80007c20:	fe010113          	addi	sp,sp,-32
    80007c24:	00813823          	sd	s0,16(sp)
    80007c28:	00913423          	sd	s1,8(sp)
    80007c2c:	00113c23          	sd	ra,24(sp)
    80007c30:	02010413          	addi	s0,sp,32
    80007c34:	100004b7          	lui	s1,0x10000
    80007c38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007c3c:	0ff57513          	andi	a0,a0,255
    80007c40:	fffff097          	auipc	ra,0xfffff
    80007c44:	534080e7          	jalr	1332(ra) # 80007174 <consoleintr>
    80007c48:	0054c783          	lbu	a5,5(s1)
    80007c4c:	0017f793          	andi	a5,a5,1
    80007c50:	fe0794e3          	bnez	a5,80007c38 <uartintr+0x28>
    80007c54:	00004617          	auipc	a2,0x4
    80007c58:	d9c60613          	addi	a2,a2,-612 # 8000b9f0 <uart_tx_r>
    80007c5c:	00004517          	auipc	a0,0x4
    80007c60:	d9c50513          	addi	a0,a0,-612 # 8000b9f8 <uart_tx_w>
    80007c64:	00063783          	ld	a5,0(a2)
    80007c68:	00053703          	ld	a4,0(a0)
    80007c6c:	04f70263          	beq	a4,a5,80007cb0 <uartintr+0xa0>
    80007c70:	100005b7          	lui	a1,0x10000
    80007c74:	00005817          	auipc	a6,0x5
    80007c78:	09c80813          	addi	a6,a6,156 # 8000cd10 <uart_tx_buf>
    80007c7c:	01c0006f          	j	80007c98 <uartintr+0x88>
    80007c80:	0006c703          	lbu	a4,0(a3)
    80007c84:	00f63023          	sd	a5,0(a2)
    80007c88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c8c:	00063783          	ld	a5,0(a2)
    80007c90:	00053703          	ld	a4,0(a0)
    80007c94:	00f70e63          	beq	a4,a5,80007cb0 <uartintr+0xa0>
    80007c98:	01f7f713          	andi	a4,a5,31
    80007c9c:	00e806b3          	add	a3,a6,a4
    80007ca0:	0055c703          	lbu	a4,5(a1)
    80007ca4:	00178793          	addi	a5,a5,1
    80007ca8:	02077713          	andi	a4,a4,32
    80007cac:	fc071ae3          	bnez	a4,80007c80 <uartintr+0x70>
    80007cb0:	01813083          	ld	ra,24(sp)
    80007cb4:	01013403          	ld	s0,16(sp)
    80007cb8:	00813483          	ld	s1,8(sp)
    80007cbc:	02010113          	addi	sp,sp,32
    80007cc0:	00008067          	ret
    80007cc4:	00004617          	auipc	a2,0x4
    80007cc8:	d2c60613          	addi	a2,a2,-724 # 8000b9f0 <uart_tx_r>
    80007ccc:	00004517          	auipc	a0,0x4
    80007cd0:	d2c50513          	addi	a0,a0,-724 # 8000b9f8 <uart_tx_w>
    80007cd4:	00063783          	ld	a5,0(a2)
    80007cd8:	00053703          	ld	a4,0(a0)
    80007cdc:	04f70263          	beq	a4,a5,80007d20 <uartintr+0x110>
    80007ce0:	100005b7          	lui	a1,0x10000
    80007ce4:	00005817          	auipc	a6,0x5
    80007ce8:	02c80813          	addi	a6,a6,44 # 8000cd10 <uart_tx_buf>
    80007cec:	01c0006f          	j	80007d08 <uartintr+0xf8>
    80007cf0:	0006c703          	lbu	a4,0(a3)
    80007cf4:	00f63023          	sd	a5,0(a2)
    80007cf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cfc:	00063783          	ld	a5,0(a2)
    80007d00:	00053703          	ld	a4,0(a0)
    80007d04:	02f70063          	beq	a4,a5,80007d24 <uartintr+0x114>
    80007d08:	01f7f713          	andi	a4,a5,31
    80007d0c:	00e806b3          	add	a3,a6,a4
    80007d10:	0055c703          	lbu	a4,5(a1)
    80007d14:	00178793          	addi	a5,a5,1
    80007d18:	02077713          	andi	a4,a4,32
    80007d1c:	fc071ae3          	bnez	a4,80007cf0 <uartintr+0xe0>
    80007d20:	00008067          	ret
    80007d24:	00008067          	ret

0000000080007d28 <kinit>:
    80007d28:	fc010113          	addi	sp,sp,-64
    80007d2c:	02913423          	sd	s1,40(sp)
    80007d30:	fffff7b7          	lui	a5,0xfffff
    80007d34:	00006497          	auipc	s1,0x6
    80007d38:	ffb48493          	addi	s1,s1,-5 # 8000dd2f <end+0xfff>
    80007d3c:	02813823          	sd	s0,48(sp)
    80007d40:	01313c23          	sd	s3,24(sp)
    80007d44:	00f4f4b3          	and	s1,s1,a5
    80007d48:	02113c23          	sd	ra,56(sp)
    80007d4c:	03213023          	sd	s2,32(sp)
    80007d50:	01413823          	sd	s4,16(sp)
    80007d54:	01513423          	sd	s5,8(sp)
    80007d58:	04010413          	addi	s0,sp,64
    80007d5c:	000017b7          	lui	a5,0x1
    80007d60:	01100993          	li	s3,17
    80007d64:	00f487b3          	add	a5,s1,a5
    80007d68:	01b99993          	slli	s3,s3,0x1b
    80007d6c:	06f9e063          	bltu	s3,a5,80007dcc <kinit+0xa4>
    80007d70:	00005a97          	auipc	s5,0x5
    80007d74:	fc0a8a93          	addi	s5,s5,-64 # 8000cd30 <end>
    80007d78:	0754ec63          	bltu	s1,s5,80007df0 <kinit+0xc8>
    80007d7c:	0734fa63          	bgeu	s1,s3,80007df0 <kinit+0xc8>
    80007d80:	00088a37          	lui	s4,0x88
    80007d84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d88:	00004917          	auipc	s2,0x4
    80007d8c:	c7890913          	addi	s2,s2,-904 # 8000ba00 <kmem>
    80007d90:	00ca1a13          	slli	s4,s4,0xc
    80007d94:	0140006f          	j	80007da8 <kinit+0x80>
    80007d98:	000017b7          	lui	a5,0x1
    80007d9c:	00f484b3          	add	s1,s1,a5
    80007da0:	0554e863          	bltu	s1,s5,80007df0 <kinit+0xc8>
    80007da4:	0534f663          	bgeu	s1,s3,80007df0 <kinit+0xc8>
    80007da8:	00001637          	lui	a2,0x1
    80007dac:	00100593          	li	a1,1
    80007db0:	00048513          	mv	a0,s1
    80007db4:	00000097          	auipc	ra,0x0
    80007db8:	5e4080e7          	jalr	1508(ra) # 80008398 <__memset>
    80007dbc:	00093783          	ld	a5,0(s2)
    80007dc0:	00f4b023          	sd	a5,0(s1)
    80007dc4:	00993023          	sd	s1,0(s2)
    80007dc8:	fd4498e3          	bne	s1,s4,80007d98 <kinit+0x70>
    80007dcc:	03813083          	ld	ra,56(sp)
    80007dd0:	03013403          	ld	s0,48(sp)
    80007dd4:	02813483          	ld	s1,40(sp)
    80007dd8:	02013903          	ld	s2,32(sp)
    80007ddc:	01813983          	ld	s3,24(sp)
    80007de0:	01013a03          	ld	s4,16(sp)
    80007de4:	00813a83          	ld	s5,8(sp)
    80007de8:	04010113          	addi	sp,sp,64
    80007dec:	00008067          	ret
    80007df0:	00002517          	auipc	a0,0x2
    80007df4:	96050513          	addi	a0,a0,-1696 # 80009750 <digits+0x18>
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	4b4080e7          	jalr	1204(ra) # 800072ac <panic>

0000000080007e00 <freerange>:
    80007e00:	fc010113          	addi	sp,sp,-64
    80007e04:	000017b7          	lui	a5,0x1
    80007e08:	02913423          	sd	s1,40(sp)
    80007e0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007e10:	009504b3          	add	s1,a0,s1
    80007e14:	fffff537          	lui	a0,0xfffff
    80007e18:	02813823          	sd	s0,48(sp)
    80007e1c:	02113c23          	sd	ra,56(sp)
    80007e20:	03213023          	sd	s2,32(sp)
    80007e24:	01313c23          	sd	s3,24(sp)
    80007e28:	01413823          	sd	s4,16(sp)
    80007e2c:	01513423          	sd	s5,8(sp)
    80007e30:	01613023          	sd	s6,0(sp)
    80007e34:	04010413          	addi	s0,sp,64
    80007e38:	00a4f4b3          	and	s1,s1,a0
    80007e3c:	00f487b3          	add	a5,s1,a5
    80007e40:	06f5e463          	bltu	a1,a5,80007ea8 <freerange+0xa8>
    80007e44:	00005a97          	auipc	s5,0x5
    80007e48:	eeca8a93          	addi	s5,s5,-276 # 8000cd30 <end>
    80007e4c:	0954e263          	bltu	s1,s5,80007ed0 <freerange+0xd0>
    80007e50:	01100993          	li	s3,17
    80007e54:	01b99993          	slli	s3,s3,0x1b
    80007e58:	0734fc63          	bgeu	s1,s3,80007ed0 <freerange+0xd0>
    80007e5c:	00058a13          	mv	s4,a1
    80007e60:	00004917          	auipc	s2,0x4
    80007e64:	ba090913          	addi	s2,s2,-1120 # 8000ba00 <kmem>
    80007e68:	00002b37          	lui	s6,0x2
    80007e6c:	0140006f          	j	80007e80 <freerange+0x80>
    80007e70:	000017b7          	lui	a5,0x1
    80007e74:	00f484b3          	add	s1,s1,a5
    80007e78:	0554ec63          	bltu	s1,s5,80007ed0 <freerange+0xd0>
    80007e7c:	0534fa63          	bgeu	s1,s3,80007ed0 <freerange+0xd0>
    80007e80:	00001637          	lui	a2,0x1
    80007e84:	00100593          	li	a1,1
    80007e88:	00048513          	mv	a0,s1
    80007e8c:	00000097          	auipc	ra,0x0
    80007e90:	50c080e7          	jalr	1292(ra) # 80008398 <__memset>
    80007e94:	00093703          	ld	a4,0(s2)
    80007e98:	016487b3          	add	a5,s1,s6
    80007e9c:	00e4b023          	sd	a4,0(s1)
    80007ea0:	00993023          	sd	s1,0(s2)
    80007ea4:	fcfa76e3          	bgeu	s4,a5,80007e70 <freerange+0x70>
    80007ea8:	03813083          	ld	ra,56(sp)
    80007eac:	03013403          	ld	s0,48(sp)
    80007eb0:	02813483          	ld	s1,40(sp)
    80007eb4:	02013903          	ld	s2,32(sp)
    80007eb8:	01813983          	ld	s3,24(sp)
    80007ebc:	01013a03          	ld	s4,16(sp)
    80007ec0:	00813a83          	ld	s5,8(sp)
    80007ec4:	00013b03          	ld	s6,0(sp)
    80007ec8:	04010113          	addi	sp,sp,64
    80007ecc:	00008067          	ret
    80007ed0:	00002517          	auipc	a0,0x2
    80007ed4:	88050513          	addi	a0,a0,-1920 # 80009750 <digits+0x18>
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	3d4080e7          	jalr	980(ra) # 800072ac <panic>

0000000080007ee0 <kfree>:
    80007ee0:	fe010113          	addi	sp,sp,-32
    80007ee4:	00813823          	sd	s0,16(sp)
    80007ee8:	00113c23          	sd	ra,24(sp)
    80007eec:	00913423          	sd	s1,8(sp)
    80007ef0:	02010413          	addi	s0,sp,32
    80007ef4:	03451793          	slli	a5,a0,0x34
    80007ef8:	04079c63          	bnez	a5,80007f50 <kfree+0x70>
    80007efc:	00005797          	auipc	a5,0x5
    80007f00:	e3478793          	addi	a5,a5,-460 # 8000cd30 <end>
    80007f04:	00050493          	mv	s1,a0
    80007f08:	04f56463          	bltu	a0,a5,80007f50 <kfree+0x70>
    80007f0c:	01100793          	li	a5,17
    80007f10:	01b79793          	slli	a5,a5,0x1b
    80007f14:	02f57e63          	bgeu	a0,a5,80007f50 <kfree+0x70>
    80007f18:	00001637          	lui	a2,0x1
    80007f1c:	00100593          	li	a1,1
    80007f20:	00000097          	auipc	ra,0x0
    80007f24:	478080e7          	jalr	1144(ra) # 80008398 <__memset>
    80007f28:	00004797          	auipc	a5,0x4
    80007f2c:	ad878793          	addi	a5,a5,-1320 # 8000ba00 <kmem>
    80007f30:	0007b703          	ld	a4,0(a5)
    80007f34:	01813083          	ld	ra,24(sp)
    80007f38:	01013403          	ld	s0,16(sp)
    80007f3c:	00e4b023          	sd	a4,0(s1)
    80007f40:	0097b023          	sd	s1,0(a5)
    80007f44:	00813483          	ld	s1,8(sp)
    80007f48:	02010113          	addi	sp,sp,32
    80007f4c:	00008067          	ret
    80007f50:	00002517          	auipc	a0,0x2
    80007f54:	80050513          	addi	a0,a0,-2048 # 80009750 <digits+0x18>
    80007f58:	fffff097          	auipc	ra,0xfffff
    80007f5c:	354080e7          	jalr	852(ra) # 800072ac <panic>

0000000080007f60 <kalloc>:
    80007f60:	fe010113          	addi	sp,sp,-32
    80007f64:	00813823          	sd	s0,16(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	00113c23          	sd	ra,24(sp)
    80007f70:	02010413          	addi	s0,sp,32
    80007f74:	00004797          	auipc	a5,0x4
    80007f78:	a8c78793          	addi	a5,a5,-1396 # 8000ba00 <kmem>
    80007f7c:	0007b483          	ld	s1,0(a5)
    80007f80:	02048063          	beqz	s1,80007fa0 <kalloc+0x40>
    80007f84:	0004b703          	ld	a4,0(s1)
    80007f88:	00001637          	lui	a2,0x1
    80007f8c:	00500593          	li	a1,5
    80007f90:	00048513          	mv	a0,s1
    80007f94:	00e7b023          	sd	a4,0(a5)
    80007f98:	00000097          	auipc	ra,0x0
    80007f9c:	400080e7          	jalr	1024(ra) # 80008398 <__memset>
    80007fa0:	01813083          	ld	ra,24(sp)
    80007fa4:	01013403          	ld	s0,16(sp)
    80007fa8:	00048513          	mv	a0,s1
    80007fac:	00813483          	ld	s1,8(sp)
    80007fb0:	02010113          	addi	sp,sp,32
    80007fb4:	00008067          	ret

0000000080007fb8 <initlock>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813423          	sd	s0,8(sp)
    80007fc0:	01010413          	addi	s0,sp,16
    80007fc4:	00813403          	ld	s0,8(sp)
    80007fc8:	00b53423          	sd	a1,8(a0)
    80007fcc:	00052023          	sw	zero,0(a0)
    80007fd0:	00053823          	sd	zero,16(a0)
    80007fd4:	01010113          	addi	sp,sp,16
    80007fd8:	00008067          	ret

0000000080007fdc <acquire>:
    80007fdc:	fe010113          	addi	sp,sp,-32
    80007fe0:	00813823          	sd	s0,16(sp)
    80007fe4:	00913423          	sd	s1,8(sp)
    80007fe8:	00113c23          	sd	ra,24(sp)
    80007fec:	01213023          	sd	s2,0(sp)
    80007ff0:	02010413          	addi	s0,sp,32
    80007ff4:	00050493          	mv	s1,a0
    80007ff8:	10002973          	csrr	s2,sstatus
    80007ffc:	100027f3          	csrr	a5,sstatus
    80008000:	ffd7f793          	andi	a5,a5,-3
    80008004:	10079073          	csrw	sstatus,a5
    80008008:	fffff097          	auipc	ra,0xfffff
    8000800c:	8e0080e7          	jalr	-1824(ra) # 800068e8 <mycpu>
    80008010:	07852783          	lw	a5,120(a0)
    80008014:	06078e63          	beqz	a5,80008090 <acquire+0xb4>
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	8d0080e7          	jalr	-1840(ra) # 800068e8 <mycpu>
    80008020:	07852783          	lw	a5,120(a0)
    80008024:	0004a703          	lw	a4,0(s1)
    80008028:	0017879b          	addiw	a5,a5,1
    8000802c:	06f52c23          	sw	a5,120(a0)
    80008030:	04071063          	bnez	a4,80008070 <acquire+0x94>
    80008034:	00100713          	li	a4,1
    80008038:	00070793          	mv	a5,a4
    8000803c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008040:	0007879b          	sext.w	a5,a5
    80008044:	fe079ae3          	bnez	a5,80008038 <acquire+0x5c>
    80008048:	0ff0000f          	fence
    8000804c:	fffff097          	auipc	ra,0xfffff
    80008050:	89c080e7          	jalr	-1892(ra) # 800068e8 <mycpu>
    80008054:	01813083          	ld	ra,24(sp)
    80008058:	01013403          	ld	s0,16(sp)
    8000805c:	00a4b823          	sd	a0,16(s1)
    80008060:	00013903          	ld	s2,0(sp)
    80008064:	00813483          	ld	s1,8(sp)
    80008068:	02010113          	addi	sp,sp,32
    8000806c:	00008067          	ret
    80008070:	0104b903          	ld	s2,16(s1)
    80008074:	fffff097          	auipc	ra,0xfffff
    80008078:	874080e7          	jalr	-1932(ra) # 800068e8 <mycpu>
    8000807c:	faa91ce3          	bne	s2,a0,80008034 <acquire+0x58>
    80008080:	00001517          	auipc	a0,0x1
    80008084:	6d850513          	addi	a0,a0,1752 # 80009758 <digits+0x20>
    80008088:	fffff097          	auipc	ra,0xfffff
    8000808c:	224080e7          	jalr	548(ra) # 800072ac <panic>
    80008090:	00195913          	srli	s2,s2,0x1
    80008094:	fffff097          	auipc	ra,0xfffff
    80008098:	854080e7          	jalr	-1964(ra) # 800068e8 <mycpu>
    8000809c:	00197913          	andi	s2,s2,1
    800080a0:	07252e23          	sw	s2,124(a0)
    800080a4:	f75ff06f          	j	80008018 <acquire+0x3c>

00000000800080a8 <release>:
    800080a8:	fe010113          	addi	sp,sp,-32
    800080ac:	00813823          	sd	s0,16(sp)
    800080b0:	00113c23          	sd	ra,24(sp)
    800080b4:	00913423          	sd	s1,8(sp)
    800080b8:	01213023          	sd	s2,0(sp)
    800080bc:	02010413          	addi	s0,sp,32
    800080c0:	00052783          	lw	a5,0(a0)
    800080c4:	00079a63          	bnez	a5,800080d8 <release+0x30>
    800080c8:	00001517          	auipc	a0,0x1
    800080cc:	69850513          	addi	a0,a0,1688 # 80009760 <digits+0x28>
    800080d0:	fffff097          	auipc	ra,0xfffff
    800080d4:	1dc080e7          	jalr	476(ra) # 800072ac <panic>
    800080d8:	01053903          	ld	s2,16(a0)
    800080dc:	00050493          	mv	s1,a0
    800080e0:	fffff097          	auipc	ra,0xfffff
    800080e4:	808080e7          	jalr	-2040(ra) # 800068e8 <mycpu>
    800080e8:	fea910e3          	bne	s2,a0,800080c8 <release+0x20>
    800080ec:	0004b823          	sd	zero,16(s1)
    800080f0:	0ff0000f          	fence
    800080f4:	0f50000f          	fence	iorw,ow
    800080f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800080fc:	ffffe097          	auipc	ra,0xffffe
    80008100:	7ec080e7          	jalr	2028(ra) # 800068e8 <mycpu>
    80008104:	100027f3          	csrr	a5,sstatus
    80008108:	0027f793          	andi	a5,a5,2
    8000810c:	04079a63          	bnez	a5,80008160 <release+0xb8>
    80008110:	07852783          	lw	a5,120(a0)
    80008114:	02f05e63          	blez	a5,80008150 <release+0xa8>
    80008118:	fff7871b          	addiw	a4,a5,-1
    8000811c:	06e52c23          	sw	a4,120(a0)
    80008120:	00071c63          	bnez	a4,80008138 <release+0x90>
    80008124:	07c52783          	lw	a5,124(a0)
    80008128:	00078863          	beqz	a5,80008138 <release+0x90>
    8000812c:	100027f3          	csrr	a5,sstatus
    80008130:	0027e793          	ori	a5,a5,2
    80008134:	10079073          	csrw	sstatus,a5
    80008138:	01813083          	ld	ra,24(sp)
    8000813c:	01013403          	ld	s0,16(sp)
    80008140:	00813483          	ld	s1,8(sp)
    80008144:	00013903          	ld	s2,0(sp)
    80008148:	02010113          	addi	sp,sp,32
    8000814c:	00008067          	ret
    80008150:	00001517          	auipc	a0,0x1
    80008154:	63050513          	addi	a0,a0,1584 # 80009780 <digits+0x48>
    80008158:	fffff097          	auipc	ra,0xfffff
    8000815c:	154080e7          	jalr	340(ra) # 800072ac <panic>
    80008160:	00001517          	auipc	a0,0x1
    80008164:	60850513          	addi	a0,a0,1544 # 80009768 <digits+0x30>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	144080e7          	jalr	324(ra) # 800072ac <panic>

0000000080008170 <holding>:
    80008170:	00052783          	lw	a5,0(a0)
    80008174:	00079663          	bnez	a5,80008180 <holding+0x10>
    80008178:	00000513          	li	a0,0
    8000817c:	00008067          	ret
    80008180:	fe010113          	addi	sp,sp,-32
    80008184:	00813823          	sd	s0,16(sp)
    80008188:	00913423          	sd	s1,8(sp)
    8000818c:	00113c23          	sd	ra,24(sp)
    80008190:	02010413          	addi	s0,sp,32
    80008194:	01053483          	ld	s1,16(a0)
    80008198:	ffffe097          	auipc	ra,0xffffe
    8000819c:	750080e7          	jalr	1872(ra) # 800068e8 <mycpu>
    800081a0:	01813083          	ld	ra,24(sp)
    800081a4:	01013403          	ld	s0,16(sp)
    800081a8:	40a48533          	sub	a0,s1,a0
    800081ac:	00153513          	seqz	a0,a0
    800081b0:	00813483          	ld	s1,8(sp)
    800081b4:	02010113          	addi	sp,sp,32
    800081b8:	00008067          	ret

00000000800081bc <push_off>:
    800081bc:	fe010113          	addi	sp,sp,-32
    800081c0:	00813823          	sd	s0,16(sp)
    800081c4:	00113c23          	sd	ra,24(sp)
    800081c8:	00913423          	sd	s1,8(sp)
    800081cc:	02010413          	addi	s0,sp,32
    800081d0:	100024f3          	csrr	s1,sstatus
    800081d4:	100027f3          	csrr	a5,sstatus
    800081d8:	ffd7f793          	andi	a5,a5,-3
    800081dc:	10079073          	csrw	sstatus,a5
    800081e0:	ffffe097          	auipc	ra,0xffffe
    800081e4:	708080e7          	jalr	1800(ra) # 800068e8 <mycpu>
    800081e8:	07852783          	lw	a5,120(a0)
    800081ec:	02078663          	beqz	a5,80008218 <push_off+0x5c>
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	6f8080e7          	jalr	1784(ra) # 800068e8 <mycpu>
    800081f8:	07852783          	lw	a5,120(a0)
    800081fc:	01813083          	ld	ra,24(sp)
    80008200:	01013403          	ld	s0,16(sp)
    80008204:	0017879b          	addiw	a5,a5,1
    80008208:	06f52c23          	sw	a5,120(a0)
    8000820c:	00813483          	ld	s1,8(sp)
    80008210:	02010113          	addi	sp,sp,32
    80008214:	00008067          	ret
    80008218:	0014d493          	srli	s1,s1,0x1
    8000821c:	ffffe097          	auipc	ra,0xffffe
    80008220:	6cc080e7          	jalr	1740(ra) # 800068e8 <mycpu>
    80008224:	0014f493          	andi	s1,s1,1
    80008228:	06952e23          	sw	s1,124(a0)
    8000822c:	fc5ff06f          	j	800081f0 <push_off+0x34>

0000000080008230 <pop_off>:
    80008230:	ff010113          	addi	sp,sp,-16
    80008234:	00813023          	sd	s0,0(sp)
    80008238:	00113423          	sd	ra,8(sp)
    8000823c:	01010413          	addi	s0,sp,16
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	6a8080e7          	jalr	1704(ra) # 800068e8 <mycpu>
    80008248:	100027f3          	csrr	a5,sstatus
    8000824c:	0027f793          	andi	a5,a5,2
    80008250:	04079663          	bnez	a5,8000829c <pop_off+0x6c>
    80008254:	07852783          	lw	a5,120(a0)
    80008258:	02f05a63          	blez	a5,8000828c <pop_off+0x5c>
    8000825c:	fff7871b          	addiw	a4,a5,-1
    80008260:	06e52c23          	sw	a4,120(a0)
    80008264:	00071c63          	bnez	a4,8000827c <pop_off+0x4c>
    80008268:	07c52783          	lw	a5,124(a0)
    8000826c:	00078863          	beqz	a5,8000827c <pop_off+0x4c>
    80008270:	100027f3          	csrr	a5,sstatus
    80008274:	0027e793          	ori	a5,a5,2
    80008278:	10079073          	csrw	sstatus,a5
    8000827c:	00813083          	ld	ra,8(sp)
    80008280:	00013403          	ld	s0,0(sp)
    80008284:	01010113          	addi	sp,sp,16
    80008288:	00008067          	ret
    8000828c:	00001517          	auipc	a0,0x1
    80008290:	4f450513          	addi	a0,a0,1268 # 80009780 <digits+0x48>
    80008294:	fffff097          	auipc	ra,0xfffff
    80008298:	018080e7          	jalr	24(ra) # 800072ac <panic>
    8000829c:	00001517          	auipc	a0,0x1
    800082a0:	4cc50513          	addi	a0,a0,1228 # 80009768 <digits+0x30>
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	008080e7          	jalr	8(ra) # 800072ac <panic>

00000000800082ac <push_on>:
    800082ac:	fe010113          	addi	sp,sp,-32
    800082b0:	00813823          	sd	s0,16(sp)
    800082b4:	00113c23          	sd	ra,24(sp)
    800082b8:	00913423          	sd	s1,8(sp)
    800082bc:	02010413          	addi	s0,sp,32
    800082c0:	100024f3          	csrr	s1,sstatus
    800082c4:	100027f3          	csrr	a5,sstatus
    800082c8:	0027e793          	ori	a5,a5,2
    800082cc:	10079073          	csrw	sstatus,a5
    800082d0:	ffffe097          	auipc	ra,0xffffe
    800082d4:	618080e7          	jalr	1560(ra) # 800068e8 <mycpu>
    800082d8:	07852783          	lw	a5,120(a0)
    800082dc:	02078663          	beqz	a5,80008308 <push_on+0x5c>
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	608080e7          	jalr	1544(ra) # 800068e8 <mycpu>
    800082e8:	07852783          	lw	a5,120(a0)
    800082ec:	01813083          	ld	ra,24(sp)
    800082f0:	01013403          	ld	s0,16(sp)
    800082f4:	0017879b          	addiw	a5,a5,1
    800082f8:	06f52c23          	sw	a5,120(a0)
    800082fc:	00813483          	ld	s1,8(sp)
    80008300:	02010113          	addi	sp,sp,32
    80008304:	00008067          	ret
    80008308:	0014d493          	srli	s1,s1,0x1
    8000830c:	ffffe097          	auipc	ra,0xffffe
    80008310:	5dc080e7          	jalr	1500(ra) # 800068e8 <mycpu>
    80008314:	0014f493          	andi	s1,s1,1
    80008318:	06952e23          	sw	s1,124(a0)
    8000831c:	fc5ff06f          	j	800082e0 <push_on+0x34>

0000000080008320 <pop_on>:
    80008320:	ff010113          	addi	sp,sp,-16
    80008324:	00813023          	sd	s0,0(sp)
    80008328:	00113423          	sd	ra,8(sp)
    8000832c:	01010413          	addi	s0,sp,16
    80008330:	ffffe097          	auipc	ra,0xffffe
    80008334:	5b8080e7          	jalr	1464(ra) # 800068e8 <mycpu>
    80008338:	100027f3          	csrr	a5,sstatus
    8000833c:	0027f793          	andi	a5,a5,2
    80008340:	04078463          	beqz	a5,80008388 <pop_on+0x68>
    80008344:	07852783          	lw	a5,120(a0)
    80008348:	02f05863          	blez	a5,80008378 <pop_on+0x58>
    8000834c:	fff7879b          	addiw	a5,a5,-1
    80008350:	06f52c23          	sw	a5,120(a0)
    80008354:	07853783          	ld	a5,120(a0)
    80008358:	00079863          	bnez	a5,80008368 <pop_on+0x48>
    8000835c:	100027f3          	csrr	a5,sstatus
    80008360:	ffd7f793          	andi	a5,a5,-3
    80008364:	10079073          	csrw	sstatus,a5
    80008368:	00813083          	ld	ra,8(sp)
    8000836c:	00013403          	ld	s0,0(sp)
    80008370:	01010113          	addi	sp,sp,16
    80008374:	00008067          	ret
    80008378:	00001517          	auipc	a0,0x1
    8000837c:	43050513          	addi	a0,a0,1072 # 800097a8 <digits+0x70>
    80008380:	fffff097          	auipc	ra,0xfffff
    80008384:	f2c080e7          	jalr	-212(ra) # 800072ac <panic>
    80008388:	00001517          	auipc	a0,0x1
    8000838c:	40050513          	addi	a0,a0,1024 # 80009788 <digits+0x50>
    80008390:	fffff097          	auipc	ra,0xfffff
    80008394:	f1c080e7          	jalr	-228(ra) # 800072ac <panic>

0000000080008398 <__memset>:
    80008398:	ff010113          	addi	sp,sp,-16
    8000839c:	00813423          	sd	s0,8(sp)
    800083a0:	01010413          	addi	s0,sp,16
    800083a4:	1a060e63          	beqz	a2,80008560 <__memset+0x1c8>
    800083a8:	40a007b3          	neg	a5,a0
    800083ac:	0077f793          	andi	a5,a5,7
    800083b0:	00778693          	addi	a3,a5,7
    800083b4:	00b00813          	li	a6,11
    800083b8:	0ff5f593          	andi	a1,a1,255
    800083bc:	fff6071b          	addiw	a4,a2,-1
    800083c0:	1b06e663          	bltu	a3,a6,8000856c <__memset+0x1d4>
    800083c4:	1cd76463          	bltu	a4,a3,8000858c <__memset+0x1f4>
    800083c8:	1a078e63          	beqz	a5,80008584 <__memset+0x1ec>
    800083cc:	00b50023          	sb	a1,0(a0)
    800083d0:	00100713          	li	a4,1
    800083d4:	1ae78463          	beq	a5,a4,8000857c <__memset+0x1e4>
    800083d8:	00b500a3          	sb	a1,1(a0)
    800083dc:	00200713          	li	a4,2
    800083e0:	1ae78a63          	beq	a5,a4,80008594 <__memset+0x1fc>
    800083e4:	00b50123          	sb	a1,2(a0)
    800083e8:	00300713          	li	a4,3
    800083ec:	18e78463          	beq	a5,a4,80008574 <__memset+0x1dc>
    800083f0:	00b501a3          	sb	a1,3(a0)
    800083f4:	00400713          	li	a4,4
    800083f8:	1ae78263          	beq	a5,a4,8000859c <__memset+0x204>
    800083fc:	00b50223          	sb	a1,4(a0)
    80008400:	00500713          	li	a4,5
    80008404:	1ae78063          	beq	a5,a4,800085a4 <__memset+0x20c>
    80008408:	00b502a3          	sb	a1,5(a0)
    8000840c:	00700713          	li	a4,7
    80008410:	18e79e63          	bne	a5,a4,800085ac <__memset+0x214>
    80008414:	00b50323          	sb	a1,6(a0)
    80008418:	00700e93          	li	t4,7
    8000841c:	00859713          	slli	a4,a1,0x8
    80008420:	00e5e733          	or	a4,a1,a4
    80008424:	01059e13          	slli	t3,a1,0x10
    80008428:	01c76e33          	or	t3,a4,t3
    8000842c:	01859313          	slli	t1,a1,0x18
    80008430:	006e6333          	or	t1,t3,t1
    80008434:	02059893          	slli	a7,a1,0x20
    80008438:	40f60e3b          	subw	t3,a2,a5
    8000843c:	011368b3          	or	a7,t1,a7
    80008440:	02859813          	slli	a6,a1,0x28
    80008444:	0108e833          	or	a6,a7,a6
    80008448:	03059693          	slli	a3,a1,0x30
    8000844c:	003e589b          	srliw	a7,t3,0x3
    80008450:	00d866b3          	or	a3,a6,a3
    80008454:	03859713          	slli	a4,a1,0x38
    80008458:	00389813          	slli	a6,a7,0x3
    8000845c:	00f507b3          	add	a5,a0,a5
    80008460:	00e6e733          	or	a4,a3,a4
    80008464:	000e089b          	sext.w	a7,t3
    80008468:	00f806b3          	add	a3,a6,a5
    8000846c:	00e7b023          	sd	a4,0(a5)
    80008470:	00878793          	addi	a5,a5,8
    80008474:	fed79ce3          	bne	a5,a3,8000846c <__memset+0xd4>
    80008478:	ff8e7793          	andi	a5,t3,-8
    8000847c:	0007871b          	sext.w	a4,a5
    80008480:	01d787bb          	addw	a5,a5,t4
    80008484:	0ce88e63          	beq	a7,a4,80008560 <__memset+0x1c8>
    80008488:	00f50733          	add	a4,a0,a5
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	0017871b          	addiw	a4,a5,1
    80008494:	0cc77663          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0027871b          	addiw	a4,a5,2
    800084a4:	0ac77e63          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0037871b          	addiw	a4,a5,3
    800084b4:	0ac77663          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0047871b          	addiw	a4,a5,4
    800084c4:	08c77e63          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	0057871b          	addiw	a4,a5,5
    800084d4:	08c77663          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	0067871b          	addiw	a4,a5,6
    800084e4:	06c77e63          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	0077871b          	addiw	a4,a5,7
    800084f4:	06c77663          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	0087871b          	addiw	a4,a5,8
    80008504:	04c77e63          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    80008508:	00e50733          	add	a4,a0,a4
    8000850c:	00b70023          	sb	a1,0(a4)
    80008510:	0097871b          	addiw	a4,a5,9
    80008514:	04c77663          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00b70023          	sb	a1,0(a4)
    80008520:	00a7871b          	addiw	a4,a5,10
    80008524:	02c77e63          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00b70023          	sb	a1,0(a4)
    80008530:	00b7871b          	addiw	a4,a5,11
    80008534:	02c77663          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00b70023          	sb	a1,0(a4)
    80008540:	00c7871b          	addiw	a4,a5,12
    80008544:	00c77e63          	bgeu	a4,a2,80008560 <__memset+0x1c8>
    80008548:	00e50733          	add	a4,a0,a4
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	00d7879b          	addiw	a5,a5,13
    80008554:	00c7f663          	bgeu	a5,a2,80008560 <__memset+0x1c8>
    80008558:	00f507b3          	add	a5,a0,a5
    8000855c:	00b78023          	sb	a1,0(a5)
    80008560:	00813403          	ld	s0,8(sp)
    80008564:	01010113          	addi	sp,sp,16
    80008568:	00008067          	ret
    8000856c:	00b00693          	li	a3,11
    80008570:	e55ff06f          	j	800083c4 <__memset+0x2c>
    80008574:	00300e93          	li	t4,3
    80008578:	ea5ff06f          	j	8000841c <__memset+0x84>
    8000857c:	00100e93          	li	t4,1
    80008580:	e9dff06f          	j	8000841c <__memset+0x84>
    80008584:	00000e93          	li	t4,0
    80008588:	e95ff06f          	j	8000841c <__memset+0x84>
    8000858c:	00000793          	li	a5,0
    80008590:	ef9ff06f          	j	80008488 <__memset+0xf0>
    80008594:	00200e93          	li	t4,2
    80008598:	e85ff06f          	j	8000841c <__memset+0x84>
    8000859c:	00400e93          	li	t4,4
    800085a0:	e7dff06f          	j	8000841c <__memset+0x84>
    800085a4:	00500e93          	li	t4,5
    800085a8:	e75ff06f          	j	8000841c <__memset+0x84>
    800085ac:	00600e93          	li	t4,6
    800085b0:	e6dff06f          	j	8000841c <__memset+0x84>

00000000800085b4 <__memmove>:
    800085b4:	ff010113          	addi	sp,sp,-16
    800085b8:	00813423          	sd	s0,8(sp)
    800085bc:	01010413          	addi	s0,sp,16
    800085c0:	0e060863          	beqz	a2,800086b0 <__memmove+0xfc>
    800085c4:	fff6069b          	addiw	a3,a2,-1
    800085c8:	0006881b          	sext.w	a6,a3
    800085cc:	0ea5e863          	bltu	a1,a0,800086bc <__memmove+0x108>
    800085d0:	00758713          	addi	a4,a1,7
    800085d4:	00a5e7b3          	or	a5,a1,a0
    800085d8:	40a70733          	sub	a4,a4,a0
    800085dc:	0077f793          	andi	a5,a5,7
    800085e0:	00f73713          	sltiu	a4,a4,15
    800085e4:	00174713          	xori	a4,a4,1
    800085e8:	0017b793          	seqz	a5,a5
    800085ec:	00e7f7b3          	and	a5,a5,a4
    800085f0:	10078863          	beqz	a5,80008700 <__memmove+0x14c>
    800085f4:	00900793          	li	a5,9
    800085f8:	1107f463          	bgeu	a5,a6,80008700 <__memmove+0x14c>
    800085fc:	0036581b          	srliw	a6,a2,0x3
    80008600:	fff8081b          	addiw	a6,a6,-1
    80008604:	02081813          	slli	a6,a6,0x20
    80008608:	01d85893          	srli	a7,a6,0x1d
    8000860c:	00858813          	addi	a6,a1,8
    80008610:	00058793          	mv	a5,a1
    80008614:	00050713          	mv	a4,a0
    80008618:	01088833          	add	a6,a7,a6
    8000861c:	0007b883          	ld	a7,0(a5)
    80008620:	00878793          	addi	a5,a5,8
    80008624:	00870713          	addi	a4,a4,8
    80008628:	ff173c23          	sd	a7,-8(a4)
    8000862c:	ff0798e3          	bne	a5,a6,8000861c <__memmove+0x68>
    80008630:	ff867713          	andi	a4,a2,-8
    80008634:	02071793          	slli	a5,a4,0x20
    80008638:	0207d793          	srli	a5,a5,0x20
    8000863c:	00f585b3          	add	a1,a1,a5
    80008640:	40e686bb          	subw	a3,a3,a4
    80008644:	00f507b3          	add	a5,a0,a5
    80008648:	06e60463          	beq	a2,a4,800086b0 <__memmove+0xfc>
    8000864c:	0005c703          	lbu	a4,0(a1)
    80008650:	00e78023          	sb	a4,0(a5)
    80008654:	04068e63          	beqz	a3,800086b0 <__memmove+0xfc>
    80008658:	0015c603          	lbu	a2,1(a1)
    8000865c:	00100713          	li	a4,1
    80008660:	00c780a3          	sb	a2,1(a5)
    80008664:	04e68663          	beq	a3,a4,800086b0 <__memmove+0xfc>
    80008668:	0025c603          	lbu	a2,2(a1)
    8000866c:	00200713          	li	a4,2
    80008670:	00c78123          	sb	a2,2(a5)
    80008674:	02e68e63          	beq	a3,a4,800086b0 <__memmove+0xfc>
    80008678:	0035c603          	lbu	a2,3(a1)
    8000867c:	00300713          	li	a4,3
    80008680:	00c781a3          	sb	a2,3(a5)
    80008684:	02e68663          	beq	a3,a4,800086b0 <__memmove+0xfc>
    80008688:	0045c603          	lbu	a2,4(a1)
    8000868c:	00400713          	li	a4,4
    80008690:	00c78223          	sb	a2,4(a5)
    80008694:	00e68e63          	beq	a3,a4,800086b0 <__memmove+0xfc>
    80008698:	0055c603          	lbu	a2,5(a1)
    8000869c:	00500713          	li	a4,5
    800086a0:	00c782a3          	sb	a2,5(a5)
    800086a4:	00e68663          	beq	a3,a4,800086b0 <__memmove+0xfc>
    800086a8:	0065c703          	lbu	a4,6(a1)
    800086ac:	00e78323          	sb	a4,6(a5)
    800086b0:	00813403          	ld	s0,8(sp)
    800086b4:	01010113          	addi	sp,sp,16
    800086b8:	00008067          	ret
    800086bc:	02061713          	slli	a4,a2,0x20
    800086c0:	02075713          	srli	a4,a4,0x20
    800086c4:	00e587b3          	add	a5,a1,a4
    800086c8:	f0f574e3          	bgeu	a0,a5,800085d0 <__memmove+0x1c>
    800086cc:	02069613          	slli	a2,a3,0x20
    800086d0:	02065613          	srli	a2,a2,0x20
    800086d4:	fff64613          	not	a2,a2
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00c78633          	add	a2,a5,a2
    800086e0:	fff7c683          	lbu	a3,-1(a5)
    800086e4:	fff78793          	addi	a5,a5,-1
    800086e8:	fff70713          	addi	a4,a4,-1
    800086ec:	00d70023          	sb	a3,0(a4)
    800086f0:	fec798e3          	bne	a5,a2,800086e0 <__memmove+0x12c>
    800086f4:	00813403          	ld	s0,8(sp)
    800086f8:	01010113          	addi	sp,sp,16
    800086fc:	00008067          	ret
    80008700:	02069713          	slli	a4,a3,0x20
    80008704:	02075713          	srli	a4,a4,0x20
    80008708:	00170713          	addi	a4,a4,1
    8000870c:	00e50733          	add	a4,a0,a4
    80008710:	00050793          	mv	a5,a0
    80008714:	0005c683          	lbu	a3,0(a1)
    80008718:	00178793          	addi	a5,a5,1
    8000871c:	00158593          	addi	a1,a1,1
    80008720:	fed78fa3          	sb	a3,-1(a5)
    80008724:	fee798e3          	bne	a5,a4,80008714 <__memmove+0x160>
    80008728:	f89ff06f          	j	800086b0 <__memmove+0xfc>
	...
