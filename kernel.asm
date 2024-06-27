
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	70813103          	ld	sp,1800(sp) # 8000b708 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	665050ef          	jal	ra,80005e80 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
        .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index*8(sp)
        .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
    .global _ZN5Riscv12popRegistersEv
    .type _ZN5Riscv12popRegistersEv, @function
    _ZN5Riscv12popRegistersEv:
            .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            ld x\index, \index*8(sp)
            .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
            addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	7c9000ef          	jal	ra,8000214c <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    sret
    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
# a0 - &old->context
sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)
#csrs sstatus, 2*8(a0)

# a1 - &running->context
ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)
#csrw sstatus, 2*8(a1)
    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
// Created by os on 5/18/24.
//

#include "../h/syscall_c.hpp"

void* mem_alloc (size_t size){
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    size_t real;
    if(size % MEM_BLOCK_SIZE == 0)  real = size;
    80001250:	03f57793          	andi	a5,a0,63
    80001254:	00078663          	beqz	a5,80001260 <_Z9mem_allocm+0x1c>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        real = size - rem + MEM_BLOCK_SIZE;
    80001258:	fc057513          	andi	a0,a0,-64
    8000125c:	04050513          	addi	a0,a0,64
    }

    __asm__ volatile("mv a1, %0" :: "r"(real));
    80001260:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001264:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001268:	00000073          	ecall
    void* r;
    __asm__ volatile("mv %0,a0":"=r"(r));
    8000126c:	00050513          	mv	a0,a0
    return  r;
}
    80001270:	00813403          	ld	s0,8(sp)
    80001274:	01010113          	addi	sp,sp,16
    80001278:	00008067          	ret

000000008000127c <_Z8mem_freePv>:
int mem_free (void* p){
    8000127c:	ff010113          	addi	sp,sp,-16
    80001280:	00813423          	sd	s0,8(sp)
    80001284:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0":: "r"(p));
    80001288:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    8000128c:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001294:	00050513          	mv	a0,a0
    return r;
}
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012b4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012b8:	00000073          	ecall
}
    800012bc:	00813403          	ld	s0,8(sp)
    800012c0:	01010113          	addi	sp,sp,16
    800012c4:	00008067          	ret

00000000800012c8 <_Z11thread_exitv>:

int thread_exit() {
    800012c8:	ff010113          	addi	sp,sp,-16
    800012cc:	00813423          	sd	s0,8(sp)
    800012d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800012d4:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    800012d8:	00000073          	ecall
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    800012dc:	00050513          	mv	a0,a0
    return r;
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012f0:	fd010113          	addi	sp,sp,-48
    800012f4:	02113423          	sd	ra,40(sp)
    800012f8:	02813023          	sd	s0,32(sp)
    800012fc:	00913c23          	sd	s1,24(sp)
    80001300:	01213823          	sd	s2,16(sp)
    80001304:	01313423          	sd	s3,8(sp)
    80001308:	03010413          	addi	s0,sp,48
    8000130c:	00050913          	mv	s2,a0
    80001310:	00058493          	mv	s1,a1
    80001314:	00060993          	mv	s3,a2

    void* stek;
    stek = start_routine != nullptr ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    80001318:	04058663          	beqz	a1,80001364 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
    8000131c:	00001537          	lui	a0,0x1
    80001320:	00000097          	auipc	ra,0x0
    80001324:	f24080e7          	jalr	-220(ra) # 80001244 <_Z9mem_allocm>
    __asm__ volatile("mv a4, %0" :: "r"(stek));
    80001328:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :: "r"(arg));
    8000132c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :: "r"(start_routine));
    80001330:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001334:	00090593          	mv	a1,s2
    __asm__ volatile("li a0, 0x11");
    80001338:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    8000133c:	00000073          	ecall
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001340:	00050513          	mv	a0,a0
    return r;
}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	02813083          	ld	ra,40(sp)
    8000134c:	02013403          	ld	s0,32(sp)
    80001350:	01813483          	ld	s1,24(sp)
    80001354:	01013903          	ld	s2,16(sp)
    80001358:	00813983          	ld	s3,8(sp)
    8000135c:	03010113          	addi	sp,sp,48
    80001360:	00008067          	ret
    stek = start_routine != nullptr ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    80001364:	00000513          	li	a0,0
    80001368:	fc1ff06f          	j	80001328 <_Z13thread_createPP3TCBPFvPvES2_+0x38>

000000008000136c <_Z8sem_openPP3semj>:

int sem_open(sem_t *handle, unsigned int init) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :: "r"(init));
    80001378:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    8000137c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001380:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    80001384:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001388:	00050513          	mv	a0,a0
    return (int)r;
}
    8000138c:	0005051b          	sext.w	a0,a0
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_Z9sem_closeP3sem>:

int sem_close(sem_t handle) {
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00813423          	sd	s0,8(sp)
    800013a4:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" :: "r"(handle));
    800013a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013ac:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    800013b0:	00000073          	ecall
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    800013b4:	00050513          	mv	a0,a0
    return r;
}
    800013b8:	0005051b          	sext.w	a0,a0
    800013bc:	00813403          	ld	s0,8(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_Z8sem_waitP3sem>:

int sem_wait(sem_t id) {
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00813423          	sd	s0,8(sp)
    800013d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r"(id));
    800013d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013d8:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    800013dc:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    800013e0:	00050513          	mv	a0,a0
    return r;
}
    800013e4:	0005051b          	sext.w	a0,a0
    800013e8:	00813403          	ld	s0,8(sp)
    800013ec:	01010113          	addi	sp,sp,16
    800013f0:	00008067          	ret

00000000800013f4 <_Z10sem_signalP3sem>:

int sem_signal(sem_t id) {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00813423          	sd	s0,8(sp)
    800013fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r"(id));
    80001400:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001404:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    80001408:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    8000140c:	00050513          	mv	a0,a0
    return r;
}
    80001410:	0005051b          	sext.w	a0,a0
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_Z11sem_trywaitP3sem>:

int sem_trywait(sem_t id) {
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" :: "r"(id));
    8000142c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x26");
    80001430:	02600513          	li	a0,38
    __asm__ volatile("ecall");
    80001434:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001438:	00050513          	mv	a0,a0
    return r;
}
    8000143c:	0005051b          	sext.w	a0,a0
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z4getcv>:

char getc() {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001458:	04100513          	li	a0,65
    __asm__ volatile("ecall");
    8000145c:	00000073          	ecall

    char r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001460:	00050513          	mv	a0,a0
    return r;
}
    80001464:	0ff57513          	andi	a0,a0,255
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z4putcc>:

void putc(char a) {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r"(a));
    80001480:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001484:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80001488:	00000073          	ecall
}
    8000148c:	00813403          	ld	s0,8(sp)
    80001490:	01010113          	addi	sp,sp,16
    80001494:	00008067          	ret

0000000080001498 <_Z13sem_timedwaitP3semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00813423          	sd	s0,8(sp)
    800014a0:	01010413          	addi	s0,sp,16
    return 0;
}
    800014a4:	00000513          	li	a0,0
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret

00000000800014b4 <_Z10time_sleepm>:

int time_sleep(time_t) {
    800014b4:	ff010113          	addi	sp,sp,-16
    800014b8:	00813423          	sd	s0,8(sp)
    800014bc:	01010413          	addi	s0,sp,16
    return 0;
}
    800014c0:	00000513          	li	a0,0
    800014c4:	00813403          	ld	s0,8(sp)
    800014c8:	01010113          	addi	sp,sp,16
    800014cc:	00008067          	ret

00000000800014d0 <_ZN9semaphorenwEm>:
//

#include "../h/semaphore.hpp"

void *semaphore::operator new(size_t n)
{
    800014d0:	ff010113          	addi	sp,sp,-16
    800014d4:	00113423          	sd	ra,8(sp)
    800014d8:	00813023          	sd	s0,0(sp)
    800014dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	0b4080e7          	jalr	180(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
}
    800014e8:	00813083          	ld	ra,8(sp)
    800014ec:	00013403          	ld	s0,0(sp)
    800014f0:	01010113          	addi	sp,sp,16
    800014f4:	00008067          	ret

00000000800014f8 <_ZN9semaphorenaEm>:

void *semaphore::operator new[](size_t n)
{
    800014f8:	ff010113          	addi	sp,sp,-16
    800014fc:	00113423          	sd	ra,8(sp)
    80001500:	00813023          	sd	s0,0(sp)
    80001504:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	08c080e7          	jalr	140(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001510:	00813083          	ld	ra,8(sp)
    80001514:	00013403          	ld	s0,0(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret

0000000080001520 <_ZN9semaphoredlEPv>:

void semaphore::operator delete(void *p) noexcept
{
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00113423          	sd	ra,8(sp)
    80001528:	00813023          	sd	s0,0(sp)
    8000152c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001530:	00001097          	auipc	ra,0x1
    80001534:	1b8080e7          	jalr	440(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001538:	00813083          	ld	ra,8(sp)
    8000153c:	00013403          	ld	s0,0(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_ZN9semaphoredaEPv>:

void semaphore::operator delete[](void *p) noexcept
{
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00113423          	sd	ra,8(sp)
    80001550:	00813023          	sd	s0,0(sp)
    80001554:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001558:	00001097          	auipc	ra,0x1
    8000155c:	190080e7          	jalr	400(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001560:	00813083          	ld	ra,8(sp)
    80001564:	00013403          	ld	s0,0(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_ZN9semaphore13openSemaphoreEi>:

semaphore *semaphore::openSemaphore(int val) {
    80001570:	fe010113          	addi	sp,sp,-32
    80001574:	00113c23          	sd	ra,24(sp)
    80001578:	00813823          	sd	s0,16(sp)
    8000157c:	00913423          	sd	s1,8(sp)
    80001580:	02010413          	addi	s0,sp,32
    80001584:	00050493          	mv	s1,a0
    return new semaphore(val);
    80001588:	01800513          	li	a0,24
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	f44080e7          	jalr	-188(ra) # 800014d0 <_ZN9semaphorenwEm>
    int trywait();
    int timed_wait();


private:
    explicit semaphore(int val = 1): value(val), closed(false){};
    80001594:	00952023          	sw	s1,0(a0) # 1000 <_entry-0x7ffff000>
    80001598:	00050223          	sb	zero,4(a0)
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    8000159c:	00053423          	sd	zero,8(a0)
    800015a0:	00053823          	sd	zero,16(a0)
}
    800015a4:	01813083          	ld	ra,24(sp)
    800015a8:	01013403          	ld	s0,16(sp)
    800015ac:	00813483          	ld	s1,8(sp)
    800015b0:	02010113          	addi	sp,sp,32
    800015b4:	00008067          	ret

00000000800015b8 <_ZN9semaphore7trywaitEv>:
       unblock();
    }
    return 0;
}

int semaphore::trywait() {
    800015b8:	ff010113          	addi	sp,sp,-16
    800015bc:	00813423          	sd	s0,8(sp)
    800015c0:	01010413          	addi	s0,sp,16

    if(this->closed) return -2;
    800015c4:	00454783          	lbu	a5,4(a0)
    800015c8:	00079e63          	bnez	a5,800015e4 <_ZN9semaphore7trywaitEv+0x2c>
    if(this->value -1 <0){
    800015cc:	00052783          	lw	a5,0(a0)
    800015d0:	00f05e63          	blez	a5,800015ec <_ZN9semaphore7trywaitEv+0x34>
        return 0;
    }
    return 1;
    800015d4:	00100513          	li	a0,1

}
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret
    if(this->closed) return -2;
    800015e4:	ffe00513          	li	a0,-2
    800015e8:	ff1ff06f          	j	800015d8 <_ZN9semaphore7trywaitEv+0x20>
        return 0;
    800015ec:	00000513          	li	a0,0
    800015f0:	fe9ff06f          	j	800015d8 <_ZN9semaphore7trywaitEv+0x20>

00000000800015f4 <_ZN9semaphore10timed_waitEv>:

int semaphore::timed_wait() {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    return 0;
}
    80001600:	00000513          	li	a0,0
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_ZN9semaphore5blockEv>:

void semaphore::block() {
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	00913423          	sd	s1,8(sp)
    80001620:	01213023          	sd	s2,0(sp)
    80001624:	02010413          	addi	s0,sp,32
    80001628:	00050493          	mv	s1,a0
    this->blocked.addLast(TCB::running);
    8000162c:	0000a797          	auipc	a5,0xa
    80001630:	0e47b783          	ld	a5,228(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001634:	0007b903          	ld	s2,0(a5)
                elem->next=0;
                head= elem;
                if(!tail) tail = head;
            }
            void addLast (T* data){
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    80001638:	01000513          	li	a0,16
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	f58080e7          	jalr	-168(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001644:	01253023          	sd	s2,0(a0)
                elem->next=0;
    80001648:	00053423          	sd	zero,8(a0)
                if(tail){
    8000164c:	0104b783          	ld	a5,16(s1)
    80001650:	04078863          	beqz	a5,800016a0 <_ZN9semaphore5blockEv+0x90>
                    tail->next = elem;
    80001654:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80001658:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    8000165c:	00100593          	li	a1,1
    80001660:	0000a797          	auipc	a5,0xa
    80001664:	0b07b783          	ld	a5,176(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001668:	0007b503          	ld	a0,0(a5)
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	58c080e7          	jalr	1420(ra) # 80001bf8 <_ZN3TCB10setBlockedEb>

    TCB::timeSliceCounter=0;
    80001674:	0000a797          	auipc	a5,0xa
    80001678:	08c7b783          	ld	a5,140(a5) # 8000b700 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000167c:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001680:	00000097          	auipc	ra,0x0
    80001684:	394080e7          	jalr	916(ra) # 80001a14 <_ZN3TCB8dispatchEv>
}
    80001688:	01813083          	ld	ra,24(sp)
    8000168c:	01013403          	ld	s0,16(sp)
    80001690:	00813483          	ld	s1,8(sp)
    80001694:	00013903          	ld	s2,0(sp)
    80001698:	02010113          	addi	sp,sp,32
    8000169c:	00008067          	ret
                }else{
                    head= tail = elem;
    800016a0:	00a4b823          	sd	a0,16(s1)
    800016a4:	00a4b423          	sd	a0,8(s1)
    800016a8:	fb5ff06f          	j	8000165c <_ZN9semaphore5blockEv+0x4c>

00000000800016ac <_ZN9semaphore4waitEv>:
    if(this->closed) return -2;
    800016ac:	00454783          	lbu	a5,4(a0)
    800016b0:	04079663          	bnez	a5,800016fc <_ZN9semaphore4waitEv+0x50>
    this->value--;
    800016b4:	00052783          	lw	a5,0(a0)
    800016b8:	fff7879b          	addiw	a5,a5,-1
    800016bc:	00f52023          	sw	a5,0(a0)
    if(this->value <0){
    800016c0:	02079713          	slli	a4,a5,0x20
    800016c4:	00074663          	bltz	a4,800016d0 <_ZN9semaphore4waitEv+0x24>
    return 0;
    800016c8:	00000513          	li	a0,0
}
    800016cc:	00008067          	ret
int semaphore::wait() {
    800016d0:	ff010113          	addi	sp,sp,-16
    800016d4:	00113423          	sd	ra,8(sp)
    800016d8:	00813023          	sd	s0,0(sp)
    800016dc:	01010413          	addi	s0,sp,16
        block();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	f30080e7          	jalr	-208(ra) # 80001610 <_ZN9semaphore5blockEv>
    return 0;
    800016e8:	00000513          	li	a0,0
}
    800016ec:	00813083          	ld	ra,8(sp)
    800016f0:	00013403          	ld	s0,0(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret
    if(this->closed) return -2;
    800016fc:	ffe00513          	li	a0,-2
    80001700:	00008067          	ret

0000000080001704 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001704:	00050793          	mv	a5,a0
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001708:	00853503          	ld	a0,8(a0)
    8000170c:	06050663          	beqz	a0,80001778 <_ZN9semaphore7unblockEv+0x74>
    80001710:	fe010113          	addi	sp,sp,-32
    80001714:	00113c23          	sd	ra,24(sp)
    80001718:	00813823          	sd	s0,16(sp)
    8000171c:	00913423          	sd	s1,8(sp)
    80001720:	02010413          	addi	s0,sp,32
                Elem *elem = head;
                head = head->next;
    80001724:	00853703          	ld	a4,8(a0)
    80001728:	00e7b423          	sd	a4,8(a5)
                if(!head) tail = 0;
    8000172c:	04070263          	beqz	a4,80001770 <_ZN9semaphore7unblockEv+0x6c>
                T *ret = elem->data;
    80001730:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001734:	00001097          	auipc	ra,0x1
    80001738:	fb4080e7          	jalr	-76(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
    8000173c:	02048063          	beqz	s1,8000175c <_ZN9semaphore7unblockEv+0x58>
        thread->setBlocked(false);
    80001740:	00000593          	li	a1,0
    80001744:	00048513          	mv	a0,s1
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	4b0080e7          	jalr	1200(ra) # 80001bf8 <_ZN3TCB10setBlockedEb>
        Scheduler::put(thread);
    80001750:	00048513          	mv	a0,s1
    80001754:	00001097          	auipc	ra,0x1
    80001758:	da0080e7          	jalr	-608(ra) # 800024f4 <_ZN9Scheduler3putEP3TCB>
    }
}
    8000175c:	01813083          	ld	ra,24(sp)
    80001760:	01013403          	ld	s0,16(sp)
    80001764:	00813483          	ld	s1,8(sp)
    80001768:	02010113          	addi	sp,sp,32
    8000176c:	00008067          	ret
                if(!head) tail = 0;
    80001770:	0007b823          	sd	zero,16(a5)
    80001774:	fbdff06f          	j	80001730 <_ZN9semaphore7unblockEv+0x2c>
    80001778:	00008067          	ret

000000008000177c <_ZN9semaphore14closeSemaphoreEv>:
    if(!this->closed) this->closed = true;
    8000177c:	00454783          	lbu	a5,4(a0)
    80001780:	04079263          	bnez	a5,800017c4 <_ZN9semaphore14closeSemaphoreEv+0x48>
int semaphore::closeSemaphore() {
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00113c23          	sd	ra,24(sp)
    8000178c:	00813823          	sd	s0,16(sp)
    80001790:	00913423          	sd	s1,8(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050493          	mv	s1,a0
    if(!this->closed) this->closed = true;
    8000179c:	00100793          	li	a5,1
    800017a0:	00f50223          	sb	a5,4(a0)
                operator delete(elem);
                return ret;
            }
            T* peekFirst(){
                if(!head) return 0;
    800017a4:	0084b783          	ld	a5,8(s1)
    800017a8:	02078263          	beqz	a5,800017cc <_ZN9semaphore14closeSemaphoreEv+0x50>
                return head->data;
    800017ac:	0007b783          	ld	a5,0(a5)
   while(this->blocked.peekFirst()){
    800017b0:	02078a63          	beqz	a5,800017e4 <_ZN9semaphore14closeSemaphoreEv+0x68>
       unblock();
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	f4c080e7          	jalr	-180(ra) # 80001704 <_ZN9semaphore7unblockEv>
   while(this->blocked.peekFirst()){
    800017c0:	fe5ff06f          	j	800017a4 <_ZN9semaphore14closeSemaphoreEv+0x28>
    else return -2;
    800017c4:	ffe00513          	li	a0,-2
}
    800017c8:	00008067          	ret
    return 0;
    800017cc:	00000513          	li	a0,0
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret
    return 0;
    800017e4:	00000513          	li	a0,0
    800017e8:	fe9ff06f          	j	800017d0 <_ZN9semaphore14closeSemaphoreEv+0x54>

00000000800017ec <_ZN9semaphore6signalEv>:
    if(this->closed) return -2;
    800017ec:	00454783          	lbu	a5,4(a0)
    800017f0:	04079663          	bnez	a5,8000183c <_ZN9semaphore6signalEv+0x50>
    this->value++;
    800017f4:	00052783          	lw	a5,0(a0)
    800017f8:	0017879b          	addiw	a5,a5,1
    800017fc:	0007871b          	sext.w	a4,a5
    80001800:	00f52023          	sw	a5,0(a0)
    if(this->value <=0){
    80001804:	00e05663          	blez	a4,80001810 <_ZN9semaphore6signalEv+0x24>
    return 0;
    80001808:	00000513          	li	a0,0
}
    8000180c:	00008067          	ret
int semaphore::signal() {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00113423          	sd	ra,8(sp)
    80001818:	00813023          	sd	s0,0(sp)
    8000181c:	01010413          	addi	s0,sp,16
       unblock();
    80001820:	00000097          	auipc	ra,0x0
    80001824:	ee4080e7          	jalr	-284(ra) # 80001704 <_ZN9semaphore7unblockEv>
    return 0;
    80001828:	00000513          	li	a0,0
}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret
    if(this->closed) return -2;
    8000183c:	ffe00513          	li	a0,-2
    80001840:	00008067          	ret

0000000080001844 <_Z14functionHelperPv>:
#include "../test/printing.hpp"


extern void userMain();

void functionHelper(void* thr){ //omotac korisnicke funkcije
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00113423          	sd	ra,8(sp)
    8000184c:	00813023          	sd	s0,0(sp)
    80001850:	01010413          	addi	s0,sp,16
    //__asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(Riscv::BitMaskSstatus::SSTATUS_SPP));
    userMain();
    80001854:	00004097          	auipc	ra,0x4
    80001858:	ab0080e7          	jalr	-1360(ra) # 80005304 <_Z8userMainv>
}
    8000185c:	00813083          	ld	ra,8(sp)
    80001860:	00013403          	ld	s0,0(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret

000000008000186c <main>:

int main(){
    8000186c:	fe010113          	addi	sp,sp,-32
    80001870:	00113c23          	sd	ra,24(sp)
    80001874:	00813823          	sd	s0,16(sp)
    80001878:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrw stvec, %[trap]" : : [trap] "r" (&Riscv::supervisorTrap)); //pripremanje osnovnih stvari u sis.r
    8000187c:	0000a797          	auipc	a5,0xa
    80001880:	e7c7b783          	ld	a5,-388(a5) # 8000b6f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001884:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    80001888:	00001097          	auipc	ra,0x1
    8000188c:	dc8080e7          	jalr	-568(ra) # 80002650 <_ZN15MemoryAllocator4initEv>

    TCB* threads[2];

    thread_create(&threads[0], nullptr, nullptr);
    80001890:	00000613          	li	a2,0
    80001894:	00000593          	li	a1,0
    80001898:	fe040513          	addi	a0,s0,-32
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	a54080e7          	jalr	-1452(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800018a4:	fe043703          	ld	a4,-32(s0)
    800018a8:	0000a797          	auipc	a5,0xa
    800018ac:	e687b783          	ld	a5,-408(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018b0:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1],functionHelper, nullptr);
    800018b4:	00000613          	li	a2,0
    800018b8:	00000597          	auipc	a1,0x0
    800018bc:	f8c58593          	addi	a1,a1,-116 # 80001844 <_Z14functionHelperPv>
    800018c0:	fe840513          	addi	a0,s0,-24
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	a2c080e7          	jalr	-1492(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    while(!(threads[1]->isFinished())){
    800018cc:	fe843783          	ld	a5,-24(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){ delete stack;}
    bool isFinished() const {return finished;}
    800018d0:	0387c783          	lbu	a5,56(a5)
    800018d4:	00079863          	bnez	a5,800018e4 <main+0x78>
        thread_dispatch();
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	9d0080e7          	jalr	-1584(ra) # 800012a8 <_Z15thread_dispatchv>
    800018e0:	fedff06f          	j	800018cc <main+0x60>
    }

    return 0;
}
    800018e4:	00000513          	li	a0,0
    800018e8:	01813083          	ld	ra,24(sp)
    800018ec:	01013403          	ld	s0,16(sp)
    800018f0:	02010113          	addi	sp,sp,32
    800018f4:	00008067          	ret

00000000800018f8 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	c8c080e7          	jalr	-884(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001910:	00813083          	ld	ra,8(sp)
    80001914:	00013403          	ld	s0,0(sp)
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00113423          	sd	ra,8(sp)
    80001928:	00813023          	sd	s0,0(sp)
    8000192c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001930:	00001097          	auipc	ra,0x1
    80001934:	c64080e7          	jalr	-924(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001938:	00813083          	ld	ra,8(sp)
    8000193c:	00013403          	ld	s0,0(sp)
    80001940:	01010113          	addi	sp,sp,16
    80001944:	00008067          	ret

0000000080001948 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00113423          	sd	ra,8(sp)
    80001950:	00813023          	sd	s0,0(sp)
    80001954:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	d90080e7          	jalr	-624(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001960:	00813083          	ld	ra,8(sp)
    80001964:	00013403          	ld	s0,0(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00113423          	sd	ra,8(sp)
    80001978:	00813023          	sd	s0,0(sp)
    8000197c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001980:	00001097          	auipc	ra,0x1
    80001984:	d68080e7          	jalr	-664(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001988:	00813083          	ld	ra,8(sp)
    8000198c:	00013403          	ld	s0,0(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_ZN3TCB5yieldEv>:
void TCB::yield(){
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00813423          	sd	s0,8(sp)
    800019a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800019a4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800019a8:	00000073          	ecall
    //TCB::timeSliceCounter=0;
    //TCB::dispatch();
}
    800019ac:	00813403          	ld	s0,8(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <_ZN3TCB13threadWrapperEv>:
    TCB::yield();
    return 0;
}


void TCB::threadWrapper() {
    800019b8:	fe010113          	addi	sp,sp,-32
    800019bc:	00113c23          	sd	ra,24(sp)
    800019c0:	00813823          	sd	s0,16(sp)
    800019c4:	00913423          	sd	s1,8(sp)
    800019c8:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	744080e7          	jalr	1860(ra) # 80002110 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    800019d4:	0000a497          	auipc	s1,0xa
    800019d8:	d9c48493          	addi	s1,s1,-612 # 8000b770 <_ZN3TCB7runningE>
    800019dc:	0004b783          	ld	a5,0(s1)
    800019e0:	0007b703          	ld	a4,0(a5)
    800019e4:	0087b503          	ld	a0,8(a5)
    800019e8:	000700e7          	jalr	a4
    running->setFinished(true);
    800019ec:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { finished = f;}
    800019f0:	00100713          	li	a4,1
    800019f4:	02e78c23          	sb	a4,56(a5)
    TCB::yield();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	fa0080e7          	jalr	-96(ra) # 80001998 <_ZN3TCB5yieldEv>
}
    80001a00:	01813083          	ld	ra,24(sp)
    80001a04:	01013403          	ld	s0,16(sp)
    80001a08:	00813483          	ld	s1,8(sp)
    80001a0c:	02010113          	addi	sp,sp,32
    80001a10:	00008067          	ret

0000000080001a14 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001a28:	0000a497          	auipc	s1,0xa
    80001a2c:	d484b483          	ld	s1,-696(s1) # 8000b770 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001a30:	0384c783          	lbu	a5,56(s1)
    if(!old->isFinished() && !old->blocked){
    80001a34:	00079663          	bnez	a5,80001a40 <_ZN3TCB8dispatchEv+0x2c>
    80001a38:	0394c783          	lbu	a5,57(s1)
    80001a3c:	02078c63          	beqz	a5,80001a74 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	a4c080e7          	jalr	-1460(ra) # 8000248c <_ZN9Scheduler3getEv>
    80001a48:	0000a797          	auipc	a5,0xa
    80001a4c:	d2a7b423          	sd	a0,-728(a5) # 8000b770 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a50:	01850593          	addi	a1,a0,24
    80001a54:	01848513          	addi	a0,s1,24
    80001a58:	fffff097          	auipc	ra,0xfffff
    80001a5c:	7b8080e7          	jalr	1976(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	02010113          	addi	sp,sp,32
    80001a70:	00008067          	ret
        Scheduler::put(old);
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	a7c080e7          	jalr	-1412(ra) # 800024f4 <_ZN9Scheduler3putEP3TCB>
    80001a80:	fc1ff06f          	j	80001a40 <_ZN3TCB8dispatchEv+0x2c>

0000000080001a84 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001a84:	fc010113          	addi	sp,sp,-64
    80001a88:	02113c23          	sd	ra,56(sp)
    80001a8c:	02813823          	sd	s0,48(sp)
    80001a90:	02913423          	sd	s1,40(sp)
    80001a94:	03213023          	sd	s2,32(sp)
    80001a98:	01313c23          	sd	s3,24(sp)
    80001a9c:	01413823          	sd	s4,16(sp)
    80001aa0:	04010413          	addi	s0,sp,64
    80001aa4:	00050993          	mv	s3,a0
    80001aa8:	00058a13          	mv	s4,a1
    80001aac:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001ab0:	04000513          	li	a0,64
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	e44080e7          	jalr	-444(ra) # 800018f8 <_ZN3TCBnwEm>
    80001abc:	00050493          	mv	s1,a0
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0,
            (uint64 )Riscv::r_sstatus()
    }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001ac0:	01353023          	sd	s3,0(a0)
    80001ac4:	01453423          	sd	s4,8(a0)
    explicit TCB(Body body, uint64 timeSlice, void* arg, void* stek): body(body), argument(arg), stack((uint8*)stek + 8 * DEFAULT_STACK_SIZE),
    80001ac8:	00008637          	lui	a2,0x8
    80001acc:	00c90633          	add	a2,s2,a2
                blocked(false)
    80001ad0:	00c53823          	sd	a2,16(a0)
    80001ad4:	00000797          	auipc	a5,0x0
    80001ad8:	ee478793          	addi	a5,a5,-284 # 800019b8 <_ZN3TCB13threadWrapperEv>
    80001adc:	00f53c23          	sd	a5,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0,
    80001ae0:	04060263          	beqz	a2,80001b24 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa0>
    80001ae4:	000017b7          	lui	a5,0x1
    80001ae8:	00f60633          	add	a2,a2,a5
                blocked(false)
    80001aec:	02c4b023          	sd	a2,32(s1)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001af0:	100027f3          	csrr	a5,sstatus
    80001af4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001af8:	fc843783          	ld	a5,-56(s0)
    80001afc:	02f4b423          	sd	a5,40(s1)
    80001b00:	00200793          	li	a5,2
    80001b04:	02f4b823          	sd	a5,48(s1)
    80001b08:	02048c23          	sb	zero,56(s1)
    80001b0c:	02048ca3          	sb	zero,57(s1)
    {
        if(body!= nullptr) {
    80001b10:	02098c63          	beqz	s3,80001b48 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xc4>
            Scheduler::put(this);
    80001b14:	00048513          	mv	a0,s1
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	9dc080e7          	jalr	-1572(ra) # 800024f4 <_ZN9Scheduler3putEP3TCB>
    80001b20:	0280006f          	j	80001b48 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xc4>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0,
    80001b24:	00000613          	li	a2,0
    80001b28:	fc5ff06f          	j	80001aec <_ZN3TCB12createThreadEPFvPvES0_S0_+0x68>
    80001b2c:	00050913          	mv	s2,a0
    80001b30:	00048513          	mv	a0,s1
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	e14080e7          	jalr	-492(ra) # 80001948 <_ZN3TCBdlEPv>
    80001b3c:	00090513          	mv	a0,s2
    80001b40:	0000b097          	auipc	ra,0xb
    80001b44:	d78080e7          	jalr	-648(ra) # 8000c8b8 <_Unwind_Resume>
}
    80001b48:	00048513          	mv	a0,s1
    80001b4c:	03813083          	ld	ra,56(sp)
    80001b50:	03013403          	ld	s0,48(sp)
    80001b54:	02813483          	ld	s1,40(sp)
    80001b58:	02013903          	ld	s2,32(sp)
    80001b5c:	01813983          	ld	s3,24(sp)
    80001b60:	01013a03          	ld	s4,16(sp)
    80001b64:	04010113          	addi	sp,sp,64
    80001b68:	00008067          	ret

0000000080001b6c <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001b6c:	04050663          	beqz	a0,80001bb8 <_ZN3TCB12deleteThreadEPS_+0x4c>
void TCB::deleteThread(TCB* thread){
    80001b70:	fe010113          	addi	sp,sp,-32
    80001b74:	00113c23          	sd	ra,24(sp)
    80001b78:	00813823          	sd	s0,16(sp)
    80001b7c:	00913423          	sd	s1,8(sp)
    80001b80:	02010413          	addi	s0,sp,32
    80001b84:	00050493          	mv	s1,a0
    ~TCB(){ delete stack;}
    80001b88:	01053503          	ld	a0,16(a0)
    80001b8c:	00050663          	beqz	a0,80001b98 <_ZN3TCB12deleteThreadEPS_+0x2c>
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	0d4080e7          	jalr	212(ra) # 80001c64 <_ZdlPv>
    delete thread;
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	dac080e7          	jalr	-596(ra) # 80001948 <_ZN3TCBdlEPv>
}
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { finished = f;}
    80001bcc:	0000a797          	auipc	a5,0xa
    80001bd0:	ba47b783          	ld	a5,-1116(a5) # 8000b770 <_ZN3TCB7runningE>
    80001bd4:	00100713          	li	a4,1
    80001bd8:	02e78c23          	sb	a4,56(a5)
    TCB::yield();
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	dbc080e7          	jalr	-580(ra) # 80001998 <_ZN3TCB5yieldEv>
}
    80001be4:	00000513          	li	a0,0
    80001be8:	00813083          	ld	ra,8(sp)
    80001bec:	00013403          	ld	s0,0(sp)
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	00008067          	ret

0000000080001bf8 <_ZN3TCB10setBlockedEb>:

void TCB::setBlocked(bool b) {
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    this->blocked = b;
    80001c04:	02b50ca3          	sb	a1,57(a0)
}
    80001c08:	00813403          	ld	s0,8(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00113423          	sd	ra,8(sp)
    80001c1c:	00813023          	sd	s0,0(sp)
    80001c20:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	620080e7          	jalr	1568(ra) # 80001244 <_Z9mem_allocm>
}
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_Znam>:

void *operator new[](size_t n)
{
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00113423          	sd	ra,8(sp)
    80001c44:	00813023          	sd	s0,0(sp)
    80001c48:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	5f8080e7          	jalr	1528(ra) # 80001244 <_Z9mem_allocm>
}
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00113423          	sd	ra,8(sp)
    80001c6c:	00813023          	sd	s0,0(sp)
    80001c70:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c74:	fffff097          	auipc	ra,0xfffff
    80001c78:	608080e7          	jalr	1544(ra) # 8000127c <_Z8mem_freePv>
}
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00113423          	sd	ra,8(sp)
    80001c94:	00813023          	sd	s0,0(sp)
    80001c98:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c9c:	fffff097          	auipc	ra,0xfffff
    80001ca0:	5e0080e7          	jalr	1504(ra) # 8000127c <_Z8mem_freePv>
    80001ca4:	00813083          	ld	ra,8(sp)
    80001ca8:	00013403          	ld	s0,0(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <_ZN6Thread13threadWrapperEPv>:
Thread::Thread() {
    this->body = Thread::threadWrapper;
    this->arg = this;
}

void Thread::threadWrapper(void *thread) {
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001cc4:	00053783          	ld	a5,0(a0)
    80001cc8:	0107b783          	ld	a5,16(a5)
    80001ccc:	000780e7          	jalr	a5
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00113423          	sd	ra,8(sp)
    80001ce8:	00813023          	sd	s0,0(sp)
    80001cec:	01010413          	addi	s0,sp,16
    80001cf0:	0000a797          	auipc	a5,0xa
    80001cf4:	81878793          	addi	a5,a5,-2024 # 8000b508 <_ZTV6Thread+0x10>
    80001cf8:	00f53023          	sd	a5,0(a0)
    operator delete(myHandle);
    80001cfc:	00853503          	ld	a0,8(a0)
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	f64080e7          	jalr	-156(ra) # 80001c64 <_ZdlPv>
}
    80001d08:	00813083          	ld	ra,8(sp)
    80001d0c:	00013403          	ld	s0,0(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001d18:	fe010113          	addi	sp,sp,-32
    80001d1c:	00113c23          	sd	ra,24(sp)
    80001d20:	00813823          	sd	s0,16(sp)
    80001d24:	00913423          	sd	s1,8(sp)
    80001d28:	02010413          	addi	s0,sp,32
    80001d2c:	00050493          	mv	s1,a0
}
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	fb0080e7          	jalr	-80(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80001d38:	00048513          	mv	a0,s1
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	f28080e7          	jalr	-216(ra) # 80001c64 <_ZdlPv>
    80001d44:	01813083          	ld	ra,24(sp)
    80001d48:	01013403          	ld	s0,16(sp)
    80001d4c:	00813483          	ld	s1,8(sp)
    80001d50:	02010113          	addi	sp,sp,32
    80001d54:	00008067          	ret

0000000080001d58 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00113423          	sd	ra,8(sp)
    80001d60:	00813023          	sd	s0,0(sp)
    80001d64:	01010413          	addi	s0,sp,16
    80001d68:	00009797          	auipc	a5,0x9
    80001d6c:	7c878793          	addi	a5,a5,1992 # 8000b530 <_ZTV9Semaphore+0x10>
    80001d70:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d74:	00853503          	ld	a0,8(a0)
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	624080e7          	jalr	1572(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80001d80:	00813083          	ld	ra,8(sp)
    80001d84:	00013403          	ld	s0,0(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d90:	fe010113          	addi	sp,sp,-32
    80001d94:	00113c23          	sd	ra,24(sp)
    80001d98:	00813823          	sd	s0,16(sp)
    80001d9c:	00913423          	sd	s1,8(sp)
    80001da0:	02010413          	addi	s0,sp,32
    80001da4:	00050493          	mv	s1,a0
}
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	fb0080e7          	jalr	-80(ra) # 80001d58 <_ZN9SemaphoreD1Ev>
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	eb0080e7          	jalr	-336(ra) # 80001c64 <_ZdlPv>
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	02010113          	addi	sp,sp,32
    80001dcc:	00008067          	ret

0000000080001dd0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001dd0:	ff010113          	addi	sp,sp,-16
    80001dd4:	00113423          	sd	ra,8(sp)
    80001dd8:	00813023          	sd	s0,0(sp)
    80001ddc:	01010413          	addi	s0,sp,16
    80001de0:	00009797          	auipc	a5,0x9
    80001de4:	72878793          	addi	a5,a5,1832 # 8000b508 <_ZTV6Thread+0x10>
    80001de8:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001dec:	00850513          	addi	a0,a0,8
    80001df0:	fffff097          	auipc	ra,0xfffff
    80001df4:	500080e7          	jalr	1280(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}//prvo mem alloc!!!
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZN6Thread5startEv>:
int Thread::start() {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    80001e18:	00050613          	mv	a2,a0
    80001e1c:	00000597          	auipc	a1,0x0
    80001e20:	e9858593          	addi	a1,a1,-360 # 80001cb4 <_ZN6Thread13threadWrapperEPv>
    80001e24:	00850513          	addi	a0,a0,8
    80001e28:	fffff097          	auipc	ra,0xfffff
    80001e2c:	4c8080e7          	jalr	1224(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001e30:	00000513          	li	a0,0
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e54:	fffff097          	auipc	ra,0xfffff
    80001e58:	454080e7          	jalr	1108(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80001e5c:	00813083          	ld	ra,8(sp)
    80001e60:	00013403          	ld	s0,0(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00113423          	sd	ra,8(sp)
    80001e74:	00813023          	sd	s0,0(sp)
    80001e78:	01010413          	addi	s0,sp,16
    time_sleep(t);
    80001e7c:	fffff097          	auipc	ra,0xfffff
    80001e80:	638080e7          	jalr	1592(ra) # 800014b4 <_Z10time_sleepm>
}
    80001e84:	00000513          	li	a0,0
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813423          	sd	s0,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    80001ea4:	00009797          	auipc	a5,0x9
    80001ea8:	66478793          	addi	a5,a5,1636 # 8000b508 <_ZTV6Thread+0x10>
    80001eac:	00f53023          	sd	a5,0(a0)
    this->body = Thread::threadWrapper;
    80001eb0:	00000797          	auipc	a5,0x0
    80001eb4:	e0478793          	addi	a5,a5,-508 # 80001cb4 <_ZN6Thread13threadWrapperEPv>
    80001eb8:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    80001ebc:	00a53c23          	sd	a0,24(a0)
}
    80001ec0:	00813403          	ld	s0,8(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00009797          	auipc	a5,0x9
    80001ee0:	65478793          	addi	a5,a5,1620 # 8000b530 <_ZTV9Semaphore+0x10>
    80001ee4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001ee8:	00850513          	addi	a0,a0,8
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	480080e7          	jalr	1152(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80001ef4:	00813083          	ld	ra,8(sp)
    80001ef8:	00013403          	ld	s0,0(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00113423          	sd	ra,8(sp)
    80001f0c:	00813023          	sd	s0,0(sp)
    80001f10:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001f14:	00853503          	ld	a0,8(a0)
    80001f18:	fffff097          	auipc	ra,0xfffff
    80001f1c:	4b0080e7          	jalr	1200(ra) # 800013c8 <_Z8sem_waitP3sem>
}
    80001f20:	00813083          	ld	ra,8(sp)
    80001f24:	00013403          	ld	s0,0(sp)
    80001f28:	01010113          	addi	sp,sp,16
    80001f2c:	00008067          	ret

0000000080001f30 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001f30:	ff010113          	addi	sp,sp,-16
    80001f34:	00113423          	sd	ra,8(sp)
    80001f38:	00813023          	sd	s0,0(sp)
    80001f3c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001f40:	00853503          	ld	a0,8(a0)
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	4b0080e7          	jalr	1200(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001f6c:	00853503          	ld	a0,8(a0)
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	4b0080e7          	jalr	1200(ra) # 80001420 <_Z11sem_trywaitP3sem>
}
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN9Semaphore9timedWaitEm>:



int Semaphore::timedWait(time_t t) {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	00813023          	sd	s0,0(sp)
    80001f94:	01010413          	addi	s0,sp,16
    sem_timedwait(myHandle,t);
    80001f98:	00853503          	ld	a0,8(a0)
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	4fc080e7          	jalr	1276(ra) # 80001498 <_Z13sem_timedwaitP3semm>
    return 0;
}
    80001fa4:	00000513          	li	a0,0
    80001fa8:	00813083          	ld	ra,8(sp)
    80001fac:	00013403          	ld	s0,0(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    //terminate();
}
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001fd0:	fe010113          	addi	sp,sp,-32
    80001fd4:	00113c23          	sd	ra,24(sp)
    80001fd8:	00813823          	sd	s0,16(sp)
    80001fdc:	00913423          	sd	s1,8(sp)
    80001fe0:	02010413          	addi	s0,sp,32
    80001fe4:	00050493          	mv	s1,a0
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	eb0080e7          	jalr	-336(ra) # 80001e98 <_ZN6ThreadC1Ev>
    80001ff0:	00009797          	auipc	a5,0x9
    80001ff4:	4e878793          	addi	a5,a5,1256 # 8000b4d8 <_ZTV14PeriodicThread+0x10>
    80001ff8:	00f4b023          	sd	a5,0(s1)

}
    80001ffc:	01813083          	ld	ra,24(sp)
    80002000:	01013403          	ld	s0,16(sp)
    80002004:	00813483          	ld	s1,8(sp)
    80002008:	02010113          	addi	sp,sp,32
    8000200c:	00008067          	ret

0000000080002010 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00113423          	sd	ra,8(sp)
    80002018:	00813023          	sd	s0,0(sp)
    8000201c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002020:	fffff097          	auipc	ra,0xfffff
    80002024:	454080e7          	jalr	1108(ra) # 80001474 <_Z4putcc>
}
    80002028:	00813083          	ld	ra,8(sp)
    8000202c:	00013403          	ld	s0,0(sp)
    80002030:	01010113          	addi	sp,sp,16
    80002034:	00008067          	ret

0000000080002038 <_ZN7Console4getcEv>:
char Console::getc() {
    80002038:	ff010113          	addi	sp,sp,-16
    8000203c:	00113423          	sd	ra,8(sp)
    80002040:	00813023          	sd	s0,0(sp)
    80002044:	01010413          	addi	s0,sp,16
   return ::getc();
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	404080e7          	jalr	1028(ra) # 8000144c <_Z4getcv>
}
    80002050:	00813083          	ld	ra,8(sp)
    80002054:	00013403          	ld	s0,0(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN6Thread3runEv>:
    int start ();//
    static void dispatch ();//
    static int sleep (time_t);
protected:
    Thread ();//
    virtual void run () {}//
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00813423          	sd	s0,8(sp)
    80002068:	01010413          	addi	s0,sp,16
    8000206c:	00813403          	ld	s0,8(sp)
    80002070:	01010113          	addi	sp,sp,16
    80002074:	00008067          	ret

0000000080002078 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
        public:
        void terminate ();
        protected:
        PeriodicThread (time_t period);
        virtual void periodicActivation () {}
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00813423          	sd	s0,8(sp)
    80002080:	01010413          	addi	s0,sp,16
    80002084:	00813403          	ld	s0,8(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    800020a0:	00009797          	auipc	a5,0x9
    800020a4:	43878793          	addi	a5,a5,1080 # 8000b4d8 <_ZTV14PeriodicThread+0x10>
    800020a8:	00f53023          	sd	a5,0(a0)
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	c34080e7          	jalr	-972(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN14PeriodicThreadD0Ev>:
    800020c4:	fe010113          	addi	sp,sp,-32
    800020c8:	00113c23          	sd	ra,24(sp)
    800020cc:	00813823          	sd	s0,16(sp)
    800020d0:	00913423          	sd	s1,8(sp)
    800020d4:	02010413          	addi	s0,sp,32
    800020d8:	00050493          	mv	s1,a0
    800020dc:	00009797          	auipc	a5,0x9
    800020e0:	3fc78793          	addi	a5,a5,1020 # 8000b4d8 <_ZTV14PeriodicThread+0x10>
    800020e4:	00f53023          	sd	a5,0(a0)
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	bf8080e7          	jalr	-1032(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    800020f0:	00048513          	mv	a0,s1
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	b70080e7          	jalr	-1168(ra) # 80001c64 <_ZdlPv>
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret

0000000080002110 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/print.hpp"

void Riscv::popSppSpie() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16

    if(TCB::running->body != nullptr) {
    8000211c:	00009797          	auipc	a5,0x9
    80002120:	5f47b783          	ld	a5,1524(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002124:	0007b783          	ld	a5,0(a5)
    80002128:	0007b783          	ld	a5,0(a5)
    8000212c:	00078663          	beqz	a5,80002138 <_ZN5Riscv10popSppSpieEv+0x28>
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(Riscv::BitMaskSstatus::SSTATUS_SPP));
    80002130:	10000793          	li	a5,256
    80002134:	1007b073          	csrc	sstatus,a5
    }
    __asm__ volatile("csrw sepc, ra");
    80002138:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000213c:	10200073          	sret
}
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret

000000008000214c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    8000214c:	f7010113          	addi	sp,sp,-144
    80002150:	08113423          	sd	ra,136(sp)
    80002154:	08813023          	sd	s0,128(sp)
    80002158:	06913c23          	sd	s1,120(sp)
    8000215c:	09010413          	addi	s0,sp,144

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002160:	00050793          	mv	a5,a0
    80002164:	faf43423          	sd	a5,-88(s0)
    return a0;
    80002168:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000216c:	14202773          	csrr	a4,scause
    80002170:	fae43023          	sd	a4,-96(s0)
    return scause;
    80002174:	fa043703          	ld	a4,-96(s0)

    uint64 kod = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    80002178:	ff870613          	addi	a2,a4,-8
    8000217c:	00100693          	li	a3,1
    80002180:	04c6f863          	bgeu	a3,a2,800021d0 <_ZN5Riscv20handleSupervisorTrapEv+0x84>

        w_sstatus(sstatus);
        w_sepc(sepc);
        //if(TCB::running->body != nullptr) Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }
    else if(scause == 0x8000000000000001UL){
    80002184:	fff00793          	li	a5,-1
    80002188:	03f79793          	slli	a5,a5,0x3f
    8000218c:	00178793          	addi	a5,a5,1
    80002190:	20f70263          	beq	a4,a5,80002394 <_ZN5Riscv20handleSupervisorTrapEv+0x248>

        w_sstatus(sstatus);
        w_sepc(sepc);


    }else if(scause == 0x8000000000000009UL){
    80002194:	fff00793          	li	a5,-1
    80002198:	03f79793          	slli	a5,a5,0x3f
    8000219c:	00978793          	addi	a5,a5,9
    800021a0:	26f70863          	beq	a4,a5,80002410 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
        console_handler();

        w_sstatus(sstatus);
        w_sepc(sepc);

    }else if(scause == 0x0000000000000002UL){
    800021a4:	00200793          	li	a5,2
    800021a8:	08f71a63          	bne	a4,a5,8000223c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        //unexpected interrupt;
        //printInteger(scause);
        //printInteger(r_sepc());
        //printInteger(r_stval());
        printString("greska\n");
    800021ac:	00007517          	auipc	a0,0x7
    800021b0:	e7450513          	addi	a0,a0,-396 # 80009020 <CONSOLE_STATUS+0x10>
    800021b4:	00003097          	auipc	ra,0x3
    800021b8:	a88080e7          	jalr	-1400(ra) # 80004c3c <_Z11printStringPKc>

        __asm__ volatile("li t0, 0x5555");
    800021bc:	000052b7          	lui	t0,0x5
    800021c0:	5552829b          	addiw	t0,t0,1365
        __asm__ volatile("li t1, 0x100000");
    800021c4:	00100337          	lui	t1,0x100
        __asm__ volatile("sw t0, 0(t1)");
    800021c8:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    }
    800021cc:	0700006f          	j	8000223c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021d0:	14102773          	csrr	a4,sepc
    800021d4:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    800021d8:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    800021dc:	00470713          	addi	a4,a4,4
    800021e0:	f6e43823          	sd	a4,-144(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021e4:	10002773          	csrr	a4,sstatus
    800021e8:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    800021ec:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    800021f0:	f6e43c23          	sd	a4,-136(s0)
        switch (kod) {
    800021f4:	04200713          	li	a4,66
    800021f8:	02f76a63          	bltu	a4,a5,8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    800021fc:	00279793          	slli	a5,a5,0x2
    80002200:	00007717          	auipc	a4,0x7
    80002204:	e2870713          	addi	a4,a4,-472 # 80009028 <CONSOLE_STATUS+0x18>
    80002208:	00e787b3          	add	a5,a5,a4
    8000220c:	0007a783          	lw	a5,0(a5)
    80002210:	00e787b3          	add	a5,a5,a4
    80002214:	00078067          	jr	a5
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
    80002218:	05843503          	ld	a0,88(s0)
                mallocr = MemoryAllocator::mem_alloc(size);
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	378080e7          	jalr	888(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80002224:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002228:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    8000222c:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002230:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002234:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002238:	14179073          	csrw	sepc,a5
    8000223c:	08813083          	ld	ra,136(sp)
    80002240:	08013403          	ld	s0,128(sp)
    80002244:	07813483          	ld	s1,120(sp)
    80002248:	09010113          	addi	sp,sp,144
    8000224c:	00008067          	ret
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
    80002250:	05843503          	ld	a0,88(s0)
                greska = MemoryAllocator::mem_free(freep);
    80002254:	00000097          	auipc	ra,0x0
    80002258:	494080e7          	jalr	1172(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    8000225c:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002260:	04543823          	sd	t0,80(s0)
                break;
    80002264:	fc9ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
    80002268:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    8000226c:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    80002270:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    80002274:	07043603          	ld	a2,112(s0)
                *thandle = TCB::createThread(start_routine,arg, stek);
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	80c080e7          	jalr	-2036(ra) # 80001a84 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002280:	00a4b023          	sd	a0,0(s1)
                if(*thandle != nullptr) ret =0;
    80002284:	00050a63          	beqz	a0,80002298 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
    80002288:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000228c:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    80002290:	04543823          	sd	t0,80(s0)
                break;
    80002294:	f99ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                else ret = -1;
    80002298:	fff00793          	li	a5,-1
    8000229c:	ff1ff06f          	j	8000228c <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                ret = TCB::exitThread();
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	91c080e7          	jalr	-1764(ra) # 80001bbc <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022a8:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022ac:	04542823          	sw	t0,80(s0)
                break;
    800022b0:	f7dff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                TCB::timeSliceCounter=0;
    800022b4:	00009797          	auipc	a5,0x9
    800022b8:	44c7b783          	ld	a5,1100(a5) # 8000b700 <_GLOBAL_OFFSET_TABLE_+0x18>
    800022bc:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	754080e7          	jalr	1876(ra) # 80001a14 <_ZN3TCB8dispatchEv>
                break;
    800022c8:	f65ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
    800022cc:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
    800022d0:	06043503          	ld	a0,96(s0)
                *shandle = semaphore::openSemaphore(val);
    800022d4:	0005051b          	sext.w	a0,a0
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	298080e7          	jalr	664(ra) # 80001570 <_ZN9semaphore13openSemaphoreEi>
    800022e0:	00a4b023          	sd	a0,0(s1)
                if(*shandle != nullptr) ret =0;
    800022e4:	00050a63          	beqz	a0,800022f8 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    800022e8:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022ec:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800022f0:	04542823          	sw	t0,80(s0)
                break;
    800022f4:	f39ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                else ret = -1;
    800022f8:	fff00793          	li	a5,-1
    800022fc:	ff1ff06f          	j	800022ec <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002300:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::closeSemaphore();
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	478080e7          	jalr	1144(ra) # 8000177c <_ZN9semaphore14closeSemaphoreEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000230c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002310:	04542823          	sw	t0,80(s0)
                break;
    80002314:	f19ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002318:	05843503          	ld	a0,88(s0)
                if(id != nullptr) ret = id->semaphore::wait();
    8000231c:	00050c63          	beqz	a0,80002334 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	38c080e7          	jalr	908(ra) # 800016ac <_ZN9semaphore4waitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002328:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    8000232c:	04542823          	sw	t0,80(s0)
                break;
    80002330:	efdff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                else ret = -1;
    80002334:	fff00513          	li	a0,-1
    80002338:	ff1ff06f          	j	80002328 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    8000233c:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::signal();
    80002340:	fffff097          	auipc	ra,0xfffff
    80002344:	4ac080e7          	jalr	1196(ra) # 800017ec <_ZN9semaphore6signalEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002348:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    8000234c:	04542823          	sw	t0,80(s0)
                break;
    80002350:	eddff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002354:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::trywait();
    80002358:	fffff097          	auipc	ra,0xfffff
    8000235c:	260080e7          	jalr	608(ra) # 800015b8 <_ZN9semaphore7trywaitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002360:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002364:	04542823          	sw	t0,80(s0)
                break;
    80002368:	ec5ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                c = __getc();
    8000236c:	00006097          	auipc	ra,0x6
    80002370:	c0c080e7          	jalr	-1012(ra) # 80007f78 <__getc>
                __asm__ volatile ("mv t0, %0" : : "r"(c));
    80002374:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002378:	04542823          	sw	t0,80(s0)
                break;
    8000237c:	eb1ff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(c));
    80002380:	05843503          	ld	a0,88(s0)
                __putc(c);
    80002384:	0ff57513          	andi	a0,a0,255
    80002388:	00006097          	auipc	ra,0x6
    8000238c:	bb4080e7          	jalr	-1100(ra) # 80007f3c <__putc>
                break;
    80002390:	e9dff06f          	j	8000222c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002394:	00200793          	li	a5,2
    80002398:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000239c:	141027f3          	csrr	a5,sepc
    800023a0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800023a4:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc();
    800023a8:	f8f43023          	sd	a5,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023ac:	100027f3          	csrr	a5,sstatus
    800023b0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800023b4:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    800023b8:	f8f43423          	sd	a5,-120(s0)
        TCB::timeSliceCounter++;
    800023bc:	00009717          	auipc	a4,0x9
    800023c0:	34473703          	ld	a4,836(a4) # 8000b700 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023c4:	00073783          	ld	a5,0(a4)
    800023c8:	00178793          	addi	a5,a5,1
    800023cc:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800023d0:	00009717          	auipc	a4,0x9
    800023d4:	34073703          	ld	a4,832(a4) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023d8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800023dc:	03073703          	ld	a4,48(a4)
    800023e0:	00e7fc63          	bgeu	a5,a4,800023f8 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
        w_sstatus(sstatus);
    800023e4:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023e8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800023ec:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023f0:	14179073          	csrw	sepc,a5
}
    800023f4:	e49ff06f          	j	8000223c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            TCB::timeSliceCounter=0;
    800023f8:	00009797          	auipc	a5,0x9
    800023fc:	3087b783          	ld	a5,776(a5) # 8000b700 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002400:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	610080e7          	jalr	1552(ra) # 80001a14 <_ZN3TCB8dispatchEv>
    8000240c:	fd9ff06f          	j	800023e4 <_ZN5Riscv20handleSupervisorTrapEv+0x298>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002410:	141027f3          	csrr	a5,sepc
    80002414:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002418:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    8000241c:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002420:	100027f3          	csrr	a5,sstatus
    80002424:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002428:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    8000242c:	f8f43c23          	sd	a5,-104(s0)
        console_handler();
    80002430:	00006097          	auipc	ra,0x6
    80002434:	b80080e7          	jalr	-1152(ra) # 80007fb0 <console_handler>
        w_sstatus(sstatus);
    80002438:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000243c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002440:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002444:	14179073          	csrw	sepc,a5
}
    80002448:	df5ff06f          	j	8000223c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

000000008000244c <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00100793          	li	a5,1
    8000245c:	00f50863          	beq	a0,a5,8000246c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret
    8000246c:	000107b7          	lui	a5,0x10
    80002470:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002474:	fef596e3          	bne	a1,a5,80002460 <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    80002478:	00009797          	auipc	a5,0x9
    8000247c:	30878793          	addi	a5,a5,776 # 8000b780 <_ZN9Scheduler16readyThreadQueueE>
    80002480:	0007b023          	sd	zero,0(a5)
    80002484:	0007b423          	sd	zero,8(a5)
    80002488:	fd9ff06f          	j	80002460 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000248c <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    800024a0:	00009517          	auipc	a0,0x9
    800024a4:	2e053503          	ld	a0,736(a0) # 8000b780 <_ZN9Scheduler16readyThreadQueueE>
    800024a8:	04050263          	beqz	a0,800024ec <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    800024ac:	00853783          	ld	a5,8(a0)
    800024b0:	00009717          	auipc	a4,0x9
    800024b4:	2cf73823          	sd	a5,720(a4) # 8000b780 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    800024b8:	02078463          	beqz	a5,800024e0 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    800024bc:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	228080e7          	jalr	552(ra) # 800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800024c8:	00048513          	mv	a0,s1
    800024cc:	01813083          	ld	ra,24(sp)
    800024d0:	01013403          	ld	s0,16(sp)
    800024d4:	00813483          	ld	s1,8(sp)
    800024d8:	02010113          	addi	sp,sp,32
    800024dc:	00008067          	ret
                if(!head) tail = 0;
    800024e0:	00009797          	auipc	a5,0x9
    800024e4:	2a07b423          	sd	zero,680(a5) # 8000b788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024e8:	fd5ff06f          	j	800024bc <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    800024ec:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800024f0:	fd9ff06f          	j	800024c8 <_ZN9Scheduler3getEv+0x3c>

00000000800024f4 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    800024f4:	fe010113          	addi	sp,sp,-32
    800024f8:	00113c23          	sd	ra,24(sp)
    800024fc:	00813823          	sd	s0,16(sp)
    80002500:	00913423          	sd	s1,8(sp)
    80002504:	02010413          	addi	s0,sp,32
    80002508:	00050493          	mv	s1,a0
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    8000250c:	01000513          	li	a0,16
    80002510:	00000097          	auipc	ra,0x0
    80002514:	084080e7          	jalr	132(ra) # 80002594 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80002518:	00953023          	sd	s1,0(a0)
                elem->next=0;
    8000251c:	00053423          	sd	zero,8(a0)
                if(tail){
    80002520:	00009797          	auipc	a5,0x9
    80002524:	2687b783          	ld	a5,616(a5) # 8000b788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002528:	02078263          	beqz	a5,8000254c <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    8000252c:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80002530:	00009797          	auipc	a5,0x9
    80002534:	24a7bc23          	sd	a0,600(a5) # 8000b788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002538:	01813083          	ld	ra,24(sp)
    8000253c:	01013403          	ld	s0,16(sp)
    80002540:	00813483          	ld	s1,8(sp)
    80002544:	02010113          	addi	sp,sp,32
    80002548:	00008067          	ret
                    head= tail = elem;
    8000254c:	00009797          	auipc	a5,0x9
    80002550:	23478793          	addi	a5,a5,564 # 8000b780 <_ZN9Scheduler16readyThreadQueueE>
    80002554:	00a7b423          	sd	a0,8(a5)
    80002558:	00a7b023          	sd	a0,0(a5)
    8000255c:	fddff06f          	j	80002538 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002560 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00113423          	sd	ra,8(sp)
    80002568:	00813023          	sd	s0,0(sp)
    8000256c:	01010413          	addi	s0,sp,16
    80002570:	000105b7          	lui	a1,0x10
    80002574:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002578:	00100513          	li	a0,1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	ed0080e7          	jalr	-304(ra) # 8000244c <_Z41__static_initialization_and_destruction_0ii>
    80002584:	00813083          	ld	ra,8(sp)
    80002588:	00013403          	ld	s0,0(sp)
    8000258c:	01010113          	addi	sp,sp,16
    80002590:	00008067          	ret

0000000080002594 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002594:	ff010113          	addi	sp,sp,-16
    80002598:	00813423          	sd	s0,8(sp)
    8000259c:	01010413          	addi	s0,sp,16
    800025a0:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    800025a4:	00009517          	auipc	a0,0x9
    800025a8:	1ec53503          	ld	a0,492(a0) # 8000b790 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    800025ac:	03f7f713          	andi	a4,a5,63
    800025b0:	00070663          	beqz	a4,800025bc <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    800025b4:	fc07f793          	andi	a5,a5,-64
    800025b8:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    800025bc:	02050863          	beqz	a0,800025ec <_ZN15MemoryAllocator9mem_allocEm+0x58>
    800025c0:	00853703          	ld	a4,8(a0)
    800025c4:	02f77863          	bgeu	a4,a5,800025f4 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    800025c8:	00050693          	mv	a3,a0
        tek = tek->sled;
    800025cc:	00053503          	ld	a0,0(a0)
    800025d0:	00c0006f          	j	800025dc <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    800025d4:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    800025d8:	00053503          	ld	a0,0(a0)
    800025dc:	00050e63          	beqz	a0,800025f8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800025e0:	00853703          	ld	a4,8(a0)
    800025e4:	fef768e3          	bltu	a4,a5,800025d4 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800025e8:	0100006f          	j	800025f8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    800025ec:	00050693          	mv	a3,a0
    800025f0:	0080006f          	j	800025f8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800025f4:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    800025f8:	02050c63          	beqz	a0,80002630 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    800025fc:	00853703          	ld	a4,8(a0)
    80002600:	02e7fe63          	bgeu	a5,a4,8000263c <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    80002604:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    80002608:	00f505b3          	add	a1,a0,a5
    8000260c:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    80002610:	40f707b3          	sub	a5,a4,a5
    80002614:	ff078793          	addi	a5,a5,-16
    80002618:	00f63423          	sd	a5,8(a2) # 8008 <_entry-0x7fff7ff8>
        sledeci->sled = tek->sled;
    8000261c:	00053783          	ld	a5,0(a0)
    80002620:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    80002624:	02068063          	beqz	a3,80002644 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80002628:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    8000262c:	01050513          	addi	a0,a0,16
}
    80002630:	00813403          	ld	s0,8(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    8000263c:	00053603          	ld	a2,0(a0)
    80002640:	fe5ff06f          	j	80002624 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    80002644:	00009797          	auipc	a5,0x9
    80002648:	14c7b623          	sd	a2,332(a5) # 8000b790 <_ZN15MemoryAllocator11freememheadE>
    8000264c:	fe1ff06f          	j	8000262c <_ZN15MemoryAllocator9mem_allocEm+0x98>

0000000080002650 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00813423          	sd	s0,8(sp)
    80002658:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    8000265c:	00009797          	auipc	a5,0x9
    80002660:	0947b783          	ld	a5,148(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002664:	0007b703          	ld	a4,0(a5)
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	12e7b423          	sd	a4,296(a5) # 8000b790 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    80002670:	00009797          	auipc	a5,0x9
    80002674:	0a87b783          	ld	a5,168(a5) # 8000b718 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002678:	0007b783          	ld	a5,0(a5)
    8000267c:	40e787b3          	sub	a5,a5,a4
    80002680:	ff078793          	addi	a5,a5,-16
    80002684:	00073023          	sd	zero,0(a4)
    80002688:	00f73423          	sd	a5,8(a4)
};
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00813423          	sd	s0,8(sp)
    800026a0:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    800026a4:	00053783          	ld	a5,0(a0)
    800026a8:	00078a63          	beqz	a5,800026bc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    800026ac:	00853683          	ld	a3,8(a0)
    800026b0:	00d50733          	add	a4,a0,a3
    800026b4:	01070713          	addi	a4,a4,16
    800026b8:	00f70a63          	beq	a4,a5,800026cc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    800026bc:	00000513          	li	a0,0
    800026c0:	00813403          	ld	s0,8(sp)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    800026cc:	0087b703          	ld	a4,8(a5)
    800026d0:	00e686b3          	add	a3,a3,a4
    800026d4:	01068693          	addi	a3,a3,16
    800026d8:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    800026dc:	0007b783          	ld	a5,0(a5)
    800026e0:	00f53023          	sd	a5,0(a0)
    800026e4:	fd9ff06f          	j	800026bc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

00000000800026e8 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    800026e8:	0c050263          	beqz	a0,800027ac <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    800026ec:	00050713          	mv	a4,a0
    800026f0:	00009797          	auipc	a5,0x9
    800026f4:	0007b783          	ld	a5,0(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026f8:	0007b783          	ld	a5,0(a5)
    800026fc:	0af56c63          	bltu	a0,a5,800027b4 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    80002700:	00009797          	auipc	a5,0x9
    80002704:	0187b783          	ld	a5,24(a5) # 8000b718 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002708:	0007b783          	ld	a5,0(a5)
    8000270c:	0af57863          	bgeu	a0,a5,800027bc <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    80002710:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    80002714:	00009797          	auipc	a5,0x9
    80002718:	07c7b783          	ld	a5,124(a5) # 8000b790 <_ZN15MemoryAllocator11freememheadE>
    8000271c:	06078063          	beqz	a5,8000277c <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    80002720:	fe010113          	addi	sp,sp,-32
    80002724:	00113c23          	sd	ra,24(sp)
    80002728:	00813823          	sd	s0,16(sp)
    8000272c:	00913423          	sd	s1,8(sp)
    80002730:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    80002734:	04f56e63          	bltu	a0,a5,80002790 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    80002738:	00078493          	mv	s1,a5
    8000273c:	0007b783          	ld	a5,0(a5)
    80002740:	00078463          	beqz	a5,80002748 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    80002744:	fea7eae3          	bltu	a5,a0,80002738 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    80002748:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    8000274c:	00a4b023          	sd	a0,0(s1)
        join(tek);
    80002750:	00000097          	auipc	ra,0x0
    80002754:	f48080e7          	jalr	-184(ra) # 80002698 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    80002758:	00048513          	mv	a0,s1
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	f3c080e7          	jalr	-196(ra) # 80002698 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002764:	00000513          	li	a0,0
}
    80002768:	01813083          	ld	ra,24(sp)
    8000276c:	01013403          	ld	s0,16(sp)
    80002770:	00813483          	ld	s1,8(sp)
    80002774:	02010113          	addi	sp,sp,32
    80002778:	00008067          	ret
        freememhead = tek;
    8000277c:	00009797          	auipc	a5,0x9
    80002780:	00a7ba23          	sd	a0,20(a5) # 8000b790 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002784:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002788:	00000513          	li	a0,0
    8000278c:	00008067          	ret
        tek->sled = freememhead;
    80002790:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002794:	00009797          	auipc	a5,0x9
    80002798:	fea7be23          	sd	a0,-4(a5) # 8000b790 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	efc080e7          	jalr	-260(ra) # 80002698 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    800027a4:	00000513          	li	a0,0
    800027a8:	fc1ff06f          	j	80002768 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    800027ac:	fff00513          	li	a0,-1
    800027b0:	00008067          	ret
    800027b4:	fff00513          	li	a0,-1
    800027b8:	00008067          	ret
    800027bc:	fff00513          	li	a0,-1
}
    800027c0:	00008067          	ret

00000000800027c4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00113c23          	sd	ra,24(sp)
    800027cc:	00813823          	sd	s0,16(sp)
    800027d0:	00913423          	sd	s1,8(sp)
    800027d4:	01213023          	sd	s2,0(sp)
    800027d8:	02010413          	addi	s0,sp,32
    800027dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800027e0:	00000913          	li	s2,0
    800027e4:	00c0006f          	j	800027f0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	ac0080e7          	jalr	-1344(ra) # 800012a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	c5c080e7          	jalr	-932(ra) # 8000144c <_Z4getcv>
    800027f8:	0005059b          	sext.w	a1,a0
    800027fc:	01b00793          	li	a5,27
    80002800:	02f58a63          	beq	a1,a5,80002834 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002804:	0084b503          	ld	a0,8(s1)
    80002808:	00003097          	auipc	ra,0x3
    8000280c:	3f4080e7          	jalr	1012(ra) # 80005bfc <_ZN6Buffer3putEi>
        i++;
    80002810:	0019071b          	addiw	a4,s2,1
    80002814:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002818:	0004a683          	lw	a3,0(s1)
    8000281c:	0026979b          	slliw	a5,a3,0x2
    80002820:	00d787bb          	addw	a5,a5,a3
    80002824:	0017979b          	slliw	a5,a5,0x1
    80002828:	02f767bb          	remw	a5,a4,a5
    8000282c:	fc0792e3          	bnez	a5,800027f0 <_ZL16producerKeyboardPv+0x2c>
    80002830:	fb9ff06f          	j	800027e8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002834:	00100793          	li	a5,1
    80002838:	00009717          	auipc	a4,0x9
    8000283c:	f6f72023          	sw	a5,-160(a4) # 8000b798 <_ZL9threadEnd>
    data->buffer->put('!');
    80002840:	02100593          	li	a1,33
    80002844:	0084b503          	ld	a0,8(s1)
    80002848:	00003097          	auipc	ra,0x3
    8000284c:	3b4080e7          	jalr	948(ra) # 80005bfc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002850:	0104b503          	ld	a0,16(s1)
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	ba0080e7          	jalr	-1120(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    8000285c:	01813083          	ld	ra,24(sp)
    80002860:	01013403          	ld	s0,16(sp)
    80002864:	00813483          	ld	s1,8(sp)
    80002868:	00013903          	ld	s2,0(sp)
    8000286c:	02010113          	addi	sp,sp,32
    80002870:	00008067          	ret

0000000080002874 <_ZL8producerPv>:

static void producer(void *arg) {
    80002874:	fe010113          	addi	sp,sp,-32
    80002878:	00113c23          	sd	ra,24(sp)
    8000287c:	00813823          	sd	s0,16(sp)
    80002880:	00913423          	sd	s1,8(sp)
    80002884:	01213023          	sd	s2,0(sp)
    80002888:	02010413          	addi	s0,sp,32
    8000288c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002890:	00000913          	li	s2,0
    80002894:	00c0006f          	j	800028a0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	a10080e7          	jalr	-1520(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800028a0:	00009797          	auipc	a5,0x9
    800028a4:	ef87a783          	lw	a5,-264(a5) # 8000b798 <_ZL9threadEnd>
    800028a8:	02079e63          	bnez	a5,800028e4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800028ac:	0004a583          	lw	a1,0(s1)
    800028b0:	0305859b          	addiw	a1,a1,48
    800028b4:	0084b503          	ld	a0,8(s1)
    800028b8:	00003097          	auipc	ra,0x3
    800028bc:	344080e7          	jalr	836(ra) # 80005bfc <_ZN6Buffer3putEi>
        i++;
    800028c0:	0019071b          	addiw	a4,s2,1
    800028c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800028c8:	0004a683          	lw	a3,0(s1)
    800028cc:	0026979b          	slliw	a5,a3,0x2
    800028d0:	00d787bb          	addw	a5,a5,a3
    800028d4:	0017979b          	slliw	a5,a5,0x1
    800028d8:	02f767bb          	remw	a5,a4,a5
    800028dc:	fc0792e3          	bnez	a5,800028a0 <_ZL8producerPv+0x2c>
    800028e0:	fb9ff06f          	j	80002898 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800028e4:	0104b503          	ld	a0,16(s1)
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	b0c080e7          	jalr	-1268(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    800028f0:	01813083          	ld	ra,24(sp)
    800028f4:	01013403          	ld	s0,16(sp)
    800028f8:	00813483          	ld	s1,8(sp)
    800028fc:	00013903          	ld	s2,0(sp)
    80002900:	02010113          	addi	sp,sp,32
    80002904:	00008067          	ret

0000000080002908 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002908:	fd010113          	addi	sp,sp,-48
    8000290c:	02113423          	sd	ra,40(sp)
    80002910:	02813023          	sd	s0,32(sp)
    80002914:	00913c23          	sd	s1,24(sp)
    80002918:	01213823          	sd	s2,16(sp)
    8000291c:	01313423          	sd	s3,8(sp)
    80002920:	03010413          	addi	s0,sp,48
    80002924:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002928:	00000993          	li	s3,0
    8000292c:	01c0006f          	j	80002948 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	978080e7          	jalr	-1672(ra) # 800012a8 <_Z15thread_dispatchv>
    80002938:	0500006f          	j	80002988 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000293c:	00a00513          	li	a0,10
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	b34080e7          	jalr	-1228(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    80002948:	00009797          	auipc	a5,0x9
    8000294c:	e507a783          	lw	a5,-432(a5) # 8000b798 <_ZL9threadEnd>
    80002950:	06079063          	bnez	a5,800029b0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002954:	00893503          	ld	a0,8(s2)
    80002958:	00003097          	auipc	ra,0x3
    8000295c:	334080e7          	jalr	820(ra) # 80005c8c <_ZN6Buffer3getEv>
        i++;
    80002960:	0019849b          	addiw	s1,s3,1
    80002964:	0004899b          	sext.w	s3,s1
        putc(key);
    80002968:	0ff57513          	andi	a0,a0,255
    8000296c:	fffff097          	auipc	ra,0xfffff
    80002970:	b08080e7          	jalr	-1272(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002974:	00092703          	lw	a4,0(s2)
    80002978:	0027179b          	slliw	a5,a4,0x2
    8000297c:	00e787bb          	addw	a5,a5,a4
    80002980:	02f4e7bb          	remw	a5,s1,a5
    80002984:	fa0786e3          	beqz	a5,80002930 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002988:	05000793          	li	a5,80
    8000298c:	02f4e4bb          	remw	s1,s1,a5
    80002990:	fa049ce3          	bnez	s1,80002948 <_ZL8consumerPv+0x40>
    80002994:	fa9ff06f          	j	8000293c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002998:	00893503          	ld	a0,8(s2)
    8000299c:	00003097          	auipc	ra,0x3
    800029a0:	2f0080e7          	jalr	752(ra) # 80005c8c <_ZN6Buffer3getEv>
        putc(key);
    800029a4:	0ff57513          	andi	a0,a0,255
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	acc080e7          	jalr	-1332(ra) # 80001474 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800029b0:	00893503          	ld	a0,8(s2)
    800029b4:	00003097          	auipc	ra,0x3
    800029b8:	364080e7          	jalr	868(ra) # 80005d18 <_ZN6Buffer6getCntEv>
    800029bc:	fca04ee3          	bgtz	a0,80002998 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800029c0:	01093503          	ld	a0,16(s2)
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	a30080e7          	jalr	-1488(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    800029cc:	02813083          	ld	ra,40(sp)
    800029d0:	02013403          	ld	s0,32(sp)
    800029d4:	01813483          	ld	s1,24(sp)
    800029d8:	01013903          	ld	s2,16(sp)
    800029dc:	00813983          	ld	s3,8(sp)
    800029e0:	03010113          	addi	sp,sp,48
    800029e4:	00008067          	ret

00000000800029e8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800029e8:	f9010113          	addi	sp,sp,-112
    800029ec:	06113423          	sd	ra,104(sp)
    800029f0:	06813023          	sd	s0,96(sp)
    800029f4:	04913c23          	sd	s1,88(sp)
    800029f8:	05213823          	sd	s2,80(sp)
    800029fc:	05313423          	sd	s3,72(sp)
    80002a00:	05413023          	sd	s4,64(sp)
    80002a04:	03513c23          	sd	s5,56(sp)
    80002a08:	03613823          	sd	s6,48(sp)
    80002a0c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002a10:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002a14:	00006517          	auipc	a0,0x6
    80002a18:	72450513          	addi	a0,a0,1828 # 80009138 <CONSOLE_STATUS+0x128>
    80002a1c:	00002097          	auipc	ra,0x2
    80002a20:	220080e7          	jalr	544(ra) # 80004c3c <_Z11printStringPKc>
    getString(input, 30);
    80002a24:	01e00593          	li	a1,30
    80002a28:	fa040493          	addi	s1,s0,-96
    80002a2c:	00048513          	mv	a0,s1
    80002a30:	00002097          	auipc	ra,0x2
    80002a34:	294080e7          	jalr	660(ra) # 80004cc4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	00002097          	auipc	ra,0x2
    80002a40:	360080e7          	jalr	864(ra) # 80004d9c <_Z11stringToIntPKc>
    80002a44:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002a48:	00006517          	auipc	a0,0x6
    80002a4c:	71050513          	addi	a0,a0,1808 # 80009158 <CONSOLE_STATUS+0x148>
    80002a50:	00002097          	auipc	ra,0x2
    80002a54:	1ec080e7          	jalr	492(ra) # 80004c3c <_Z11printStringPKc>
    getString(input, 30);
    80002a58:	01e00593          	li	a1,30
    80002a5c:	00048513          	mv	a0,s1
    80002a60:	00002097          	auipc	ra,0x2
    80002a64:	264080e7          	jalr	612(ra) # 80004cc4 <_Z9getStringPci>
    n = stringToInt(input);
    80002a68:	00048513          	mv	a0,s1
    80002a6c:	00002097          	auipc	ra,0x2
    80002a70:	330080e7          	jalr	816(ra) # 80004d9c <_Z11stringToIntPKc>
    80002a74:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002a78:	00006517          	auipc	a0,0x6
    80002a7c:	70050513          	addi	a0,a0,1792 # 80009178 <CONSOLE_STATUS+0x168>
    80002a80:	00002097          	auipc	ra,0x2
    80002a84:	1bc080e7          	jalr	444(ra) # 80004c3c <_Z11printStringPKc>
    80002a88:	00000613          	li	a2,0
    80002a8c:	00a00593          	li	a1,10
    80002a90:	00090513          	mv	a0,s2
    80002a94:	00002097          	auipc	ra,0x2
    80002a98:	358080e7          	jalr	856(ra) # 80004dec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002a9c:	00006517          	auipc	a0,0x6
    80002aa0:	6f450513          	addi	a0,a0,1780 # 80009190 <CONSOLE_STATUS+0x180>
    80002aa4:	00002097          	auipc	ra,0x2
    80002aa8:	198080e7          	jalr	408(ra) # 80004c3c <_Z11printStringPKc>
    80002aac:	00000613          	li	a2,0
    80002ab0:	00a00593          	li	a1,10
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00002097          	auipc	ra,0x2
    80002abc:	334080e7          	jalr	820(ra) # 80004dec <_Z8printIntiii>
    printString(".\n");
    80002ac0:	00006517          	auipc	a0,0x6
    80002ac4:	6e850513          	addi	a0,a0,1768 # 800091a8 <CONSOLE_STATUS+0x198>
    80002ac8:	00002097          	auipc	ra,0x2
    80002acc:	174080e7          	jalr	372(ra) # 80004c3c <_Z11printStringPKc>
    if(threadNum > n) {
    80002ad0:	0324c463          	blt	s1,s2,80002af8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002ad4:	03205c63          	blez	s2,80002b0c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002ad8:	03800513          	li	a0,56
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	138080e7          	jalr	312(ra) # 80001c14 <_Znwm>
    80002ae4:	00050a13          	mv	s4,a0
    80002ae8:	00048593          	mv	a1,s1
    80002aec:	00003097          	auipc	ra,0x3
    80002af0:	074080e7          	jalr	116(ra) # 80005b60 <_ZN6BufferC1Ei>
    80002af4:	0300006f          	j	80002b24 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002af8:	00006517          	auipc	a0,0x6
    80002afc:	6b850513          	addi	a0,a0,1720 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002b00:	00002097          	auipc	ra,0x2
    80002b04:	13c080e7          	jalr	316(ra) # 80004c3c <_Z11printStringPKc>
        return;
    80002b08:	0140006f          	j	80002b1c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002b0c:	00006517          	auipc	a0,0x6
    80002b10:	6e450513          	addi	a0,a0,1764 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80002b14:	00002097          	auipc	ra,0x2
    80002b18:	128080e7          	jalr	296(ra) # 80004c3c <_Z11printStringPKc>
        return;
    80002b1c:	000b0113          	mv	sp,s6
    80002b20:	1500006f          	j	80002c70 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002b24:	00000593          	li	a1,0
    80002b28:	00009517          	auipc	a0,0x9
    80002b2c:	c7850513          	addi	a0,a0,-904 # 8000b7a0 <_ZL10waitForAll>
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	83c080e7          	jalr	-1988(ra) # 8000136c <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80002b38:	00391793          	slli	a5,s2,0x3
    80002b3c:	00f78793          	addi	a5,a5,15
    80002b40:	ff07f793          	andi	a5,a5,-16
    80002b44:	40f10133          	sub	sp,sp,a5
    80002b48:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002b4c:	0019071b          	addiw	a4,s2,1
    80002b50:	00171793          	slli	a5,a4,0x1
    80002b54:	00e787b3          	add	a5,a5,a4
    80002b58:	00379793          	slli	a5,a5,0x3
    80002b5c:	00f78793          	addi	a5,a5,15
    80002b60:	ff07f793          	andi	a5,a5,-16
    80002b64:	40f10133          	sub	sp,sp,a5
    80002b68:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002b6c:	00191613          	slli	a2,s2,0x1
    80002b70:	012607b3          	add	a5,a2,s2
    80002b74:	00379793          	slli	a5,a5,0x3
    80002b78:	00f987b3          	add	a5,s3,a5
    80002b7c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002b80:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002b84:	00009717          	auipc	a4,0x9
    80002b88:	c1c73703          	ld	a4,-996(a4) # 8000b7a0 <_ZL10waitForAll>
    80002b8c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002b90:	00078613          	mv	a2,a5
    80002b94:	00000597          	auipc	a1,0x0
    80002b98:	d7458593          	addi	a1,a1,-652 # 80002908 <_ZL8consumerPv>
    80002b9c:	f9840513          	addi	a0,s0,-104
    80002ba0:	ffffe097          	auipc	ra,0xffffe
    80002ba4:	750080e7          	jalr	1872(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002ba8:	00000493          	li	s1,0
    80002bac:	0280006f          	j	80002bd4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002bb0:	00000597          	auipc	a1,0x0
    80002bb4:	c1458593          	addi	a1,a1,-1004 # 800027c4 <_ZL16producerKeyboardPv>
                      data + i);
    80002bb8:	00179613          	slli	a2,a5,0x1
    80002bbc:	00f60633          	add	a2,a2,a5
    80002bc0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002bc4:	00c98633          	add	a2,s3,a2
    80002bc8:	ffffe097          	auipc	ra,0xffffe
    80002bcc:	728080e7          	jalr	1832(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002bd0:	0014849b          	addiw	s1,s1,1
    80002bd4:	0524d263          	bge	s1,s2,80002c18 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002bd8:	00149793          	slli	a5,s1,0x1
    80002bdc:	009787b3          	add	a5,a5,s1
    80002be0:	00379793          	slli	a5,a5,0x3
    80002be4:	00f987b3          	add	a5,s3,a5
    80002be8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002bec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002bf0:	00009717          	auipc	a4,0x9
    80002bf4:	bb073703          	ld	a4,-1104(a4) # 8000b7a0 <_ZL10waitForAll>
    80002bf8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002bfc:	00048793          	mv	a5,s1
    80002c00:	00349513          	slli	a0,s1,0x3
    80002c04:	00aa8533          	add	a0,s5,a0
    80002c08:	fa9054e3          	blez	s1,80002bb0 <_Z22producerConsumer_C_APIv+0x1c8>
    80002c0c:	00000597          	auipc	a1,0x0
    80002c10:	c6858593          	addi	a1,a1,-920 # 80002874 <_ZL8producerPv>
    80002c14:	fa5ff06f          	j	80002bb8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002c18:	ffffe097          	auipc	ra,0xffffe
    80002c1c:	690080e7          	jalr	1680(ra) # 800012a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002c20:	00000493          	li	s1,0
    80002c24:	00994e63          	blt	s2,s1,80002c40 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002c28:	00009517          	auipc	a0,0x9
    80002c2c:	b7853503          	ld	a0,-1160(a0) # 8000b7a0 <_ZL10waitForAll>
    80002c30:	ffffe097          	auipc	ra,0xffffe
    80002c34:	798080e7          	jalr	1944(ra) # 800013c8 <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80002c38:	0014849b          	addiw	s1,s1,1
    80002c3c:	fe9ff06f          	j	80002c24 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002c40:	00009517          	auipc	a0,0x9
    80002c44:	b6053503          	ld	a0,-1184(a0) # 8000b7a0 <_ZL10waitForAll>
    80002c48:	ffffe097          	auipc	ra,0xffffe
    80002c4c:	754080e7          	jalr	1876(ra) # 8000139c <_Z9sem_closeP3sem>
    delete buffer;
    80002c50:	000a0e63          	beqz	s4,80002c6c <_Z22producerConsumer_C_APIv+0x284>
    80002c54:	000a0513          	mv	a0,s4
    80002c58:	00003097          	auipc	ra,0x3
    80002c5c:	148080e7          	jalr	328(ra) # 80005da0 <_ZN6BufferD1Ev>
    80002c60:	000a0513          	mv	a0,s4
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	000080e7          	jalr	ra # 80001c64 <_ZdlPv>
    80002c6c:	000b0113          	mv	sp,s6

}
    80002c70:	f9040113          	addi	sp,s0,-112
    80002c74:	06813083          	ld	ra,104(sp)
    80002c78:	06013403          	ld	s0,96(sp)
    80002c7c:	05813483          	ld	s1,88(sp)
    80002c80:	05013903          	ld	s2,80(sp)
    80002c84:	04813983          	ld	s3,72(sp)
    80002c88:	04013a03          	ld	s4,64(sp)
    80002c8c:	03813a83          	ld	s5,56(sp)
    80002c90:	03013b03          	ld	s6,48(sp)
    80002c94:	07010113          	addi	sp,sp,112
    80002c98:	00008067          	ret
    80002c9c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002ca0:	000a0513          	mv	a0,s4
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	fc0080e7          	jalr	-64(ra) # 80001c64 <_ZdlPv>
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	0000a097          	auipc	ra,0xa
    80002cb4:	c08080e7          	jalr	-1016(ra) # 8000c8b8 <_Unwind_Resume>

0000000080002cb8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002cb8:	fe010113          	addi	sp,sp,-32
    80002cbc:	00113c23          	sd	ra,24(sp)
    80002cc0:	00813823          	sd	s0,16(sp)
    80002cc4:	00913423          	sd	s1,8(sp)
    80002cc8:	01213023          	sd	s2,0(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002cd4:	00100793          	li	a5,1
    80002cd8:	02a7f863          	bgeu	a5,a0,80002d08 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002cdc:	00a00793          	li	a5,10
    80002ce0:	02f577b3          	remu	a5,a0,a5
    80002ce4:	02078e63          	beqz	a5,80002d20 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002ce8:	fff48513          	addi	a0,s1,-1
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	fcc080e7          	jalr	-52(ra) # 80002cb8 <_ZL9fibonaccim>
    80002cf4:	00050913          	mv	s2,a0
    80002cf8:	ffe48513          	addi	a0,s1,-2
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	fbc080e7          	jalr	-68(ra) # 80002cb8 <_ZL9fibonaccim>
    80002d04:	00a90533          	add	a0,s2,a0
}
    80002d08:	01813083          	ld	ra,24(sp)
    80002d0c:	01013403          	ld	s0,16(sp)
    80002d10:	00813483          	ld	s1,8(sp)
    80002d14:	00013903          	ld	s2,0(sp)
    80002d18:	02010113          	addi	sp,sp,32
    80002d1c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	588080e7          	jalr	1416(ra) # 800012a8 <_Z15thread_dispatchv>
    80002d28:	fc1ff06f          	j	80002ce8 <_ZL9fibonaccim+0x30>

0000000080002d2c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002d2c:	fe010113          	addi	sp,sp,-32
    80002d30:	00113c23          	sd	ra,24(sp)
    80002d34:	00813823          	sd	s0,16(sp)
    80002d38:	00913423          	sd	s1,8(sp)
    80002d3c:	01213023          	sd	s2,0(sp)
    80002d40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d44:	00000913          	li	s2,0
    80002d48:	0380006f          	j	80002d80 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002d4c:	ffffe097          	auipc	ra,0xffffe
    80002d50:	55c080e7          	jalr	1372(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d54:	00148493          	addi	s1,s1,1
    80002d58:	000027b7          	lui	a5,0x2
    80002d5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d60:	0097ee63          	bltu	a5,s1,80002d7c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d64:	00000713          	li	a4,0
    80002d68:	000077b7          	lui	a5,0x7
    80002d6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d70:	fce7eee3          	bltu	a5,a4,80002d4c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002d74:	00170713          	addi	a4,a4,1
    80002d78:	ff1ff06f          	j	80002d68 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d7c:	00190913          	addi	s2,s2,1
    80002d80:	00900793          	li	a5,9
    80002d84:	0527e063          	bltu	a5,s2,80002dc4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d88:	00006517          	auipc	a0,0x6
    80002d8c:	49850513          	addi	a0,a0,1176 # 80009220 <CONSOLE_STATUS+0x210>
    80002d90:	00002097          	auipc	ra,0x2
    80002d94:	eac080e7          	jalr	-340(ra) # 80004c3c <_Z11printStringPKc>
    80002d98:	00000613          	li	a2,0
    80002d9c:	00a00593          	li	a1,10
    80002da0:	0009051b          	sext.w	a0,s2
    80002da4:	00002097          	auipc	ra,0x2
    80002da8:	048080e7          	jalr	72(ra) # 80004dec <_Z8printIntiii>
    80002dac:	00006517          	auipc	a0,0x6
    80002db0:	70450513          	addi	a0,a0,1796 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80002db4:	00002097          	auipc	ra,0x2
    80002db8:	e88080e7          	jalr	-376(ra) # 80004c3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002dbc:	00000493          	li	s1,0
    80002dc0:	f99ff06f          	j	80002d58 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002dc4:	00006517          	auipc	a0,0x6
    80002dc8:	46450513          	addi	a0,a0,1124 # 80009228 <CONSOLE_STATUS+0x218>
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	e70080e7          	jalr	-400(ra) # 80004c3c <_Z11printStringPKc>
    finishedA = true;
    80002dd4:	00100793          	li	a5,1
    80002dd8:	00009717          	auipc	a4,0x9
    80002ddc:	9cf70823          	sb	a5,-1584(a4) # 8000b7a8 <_ZL9finishedA>
}
    80002de0:	01813083          	ld	ra,24(sp)
    80002de4:	01013403          	ld	s0,16(sp)
    80002de8:	00813483          	ld	s1,8(sp)
    80002dec:	00013903          	ld	s2,0(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret

0000000080002df8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002df8:	fe010113          	addi	sp,sp,-32
    80002dfc:	00113c23          	sd	ra,24(sp)
    80002e00:	00813823          	sd	s0,16(sp)
    80002e04:	00913423          	sd	s1,8(sp)
    80002e08:	01213023          	sd	s2,0(sp)
    80002e0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002e10:	00000913          	li	s2,0
    80002e14:	0380006f          	j	80002e4c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002e18:	ffffe097          	auipc	ra,0xffffe
    80002e1c:	490080e7          	jalr	1168(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002e20:	00148493          	addi	s1,s1,1
    80002e24:	000027b7          	lui	a5,0x2
    80002e28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002e2c:	0097ee63          	bltu	a5,s1,80002e48 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002e30:	00000713          	li	a4,0
    80002e34:	000077b7          	lui	a5,0x7
    80002e38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002e3c:	fce7eee3          	bltu	a5,a4,80002e18 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002e40:	00170713          	addi	a4,a4,1
    80002e44:	ff1ff06f          	j	80002e34 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002e48:	00190913          	addi	s2,s2,1
    80002e4c:	00f00793          	li	a5,15
    80002e50:	0527e063          	bltu	a5,s2,80002e90 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002e54:	00006517          	auipc	a0,0x6
    80002e58:	3e450513          	addi	a0,a0,996 # 80009238 <CONSOLE_STATUS+0x228>
    80002e5c:	00002097          	auipc	ra,0x2
    80002e60:	de0080e7          	jalr	-544(ra) # 80004c3c <_Z11printStringPKc>
    80002e64:	00000613          	li	a2,0
    80002e68:	00a00593          	li	a1,10
    80002e6c:	0009051b          	sext.w	a0,s2
    80002e70:	00002097          	auipc	ra,0x2
    80002e74:	f7c080e7          	jalr	-132(ra) # 80004dec <_Z8printIntiii>
    80002e78:	00006517          	auipc	a0,0x6
    80002e7c:	63850513          	addi	a0,a0,1592 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80002e80:	00002097          	auipc	ra,0x2
    80002e84:	dbc080e7          	jalr	-580(ra) # 80004c3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e88:	00000493          	li	s1,0
    80002e8c:	f99ff06f          	j	80002e24 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002e90:	00006517          	auipc	a0,0x6
    80002e94:	3b050513          	addi	a0,a0,944 # 80009240 <CONSOLE_STATUS+0x230>
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	da4080e7          	jalr	-604(ra) # 80004c3c <_Z11printStringPKc>
    finishedB = true;
    80002ea0:	00100793          	li	a5,1
    80002ea4:	00009717          	auipc	a4,0x9
    80002ea8:	90f702a3          	sb	a5,-1787(a4) # 8000b7a9 <_ZL9finishedB>
    thread_dispatch();
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	3fc080e7          	jalr	1020(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002eb4:	01813083          	ld	ra,24(sp)
    80002eb8:	01013403          	ld	s0,16(sp)
    80002ebc:	00813483          	ld	s1,8(sp)
    80002ec0:	00013903          	ld	s2,0(sp)
    80002ec4:	02010113          	addi	sp,sp,32
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002ecc:	fe010113          	addi	sp,sp,-32
    80002ed0:	00113c23          	sd	ra,24(sp)
    80002ed4:	00813823          	sd	s0,16(sp)
    80002ed8:	00913423          	sd	s1,8(sp)
    80002edc:	01213023          	sd	s2,0(sp)
    80002ee0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ee4:	00000493          	li	s1,0
    80002ee8:	0400006f          	j	80002f28 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002eec:	00006517          	auipc	a0,0x6
    80002ef0:	36450513          	addi	a0,a0,868 # 80009250 <CONSOLE_STATUS+0x240>
    80002ef4:	00002097          	auipc	ra,0x2
    80002ef8:	d48080e7          	jalr	-696(ra) # 80004c3c <_Z11printStringPKc>
    80002efc:	00000613          	li	a2,0
    80002f00:	00a00593          	li	a1,10
    80002f04:	00048513          	mv	a0,s1
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	ee4080e7          	jalr	-284(ra) # 80004dec <_Z8printIntiii>
    80002f10:	00006517          	auipc	a0,0x6
    80002f14:	5a050513          	addi	a0,a0,1440 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80002f18:	00002097          	auipc	ra,0x2
    80002f1c:	d24080e7          	jalr	-732(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002f20:	0014849b          	addiw	s1,s1,1
    80002f24:	0ff4f493          	andi	s1,s1,255
    80002f28:	00200793          	li	a5,2
    80002f2c:	fc97f0e3          	bgeu	a5,s1,80002eec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002f30:	00006517          	auipc	a0,0x6
    80002f34:	32850513          	addi	a0,a0,808 # 80009258 <CONSOLE_STATUS+0x248>
    80002f38:	00002097          	auipc	ra,0x2
    80002f3c:	d04080e7          	jalr	-764(ra) # 80004c3c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002f40:	00700313          	li	t1,7
    thread_dispatch();
    80002f44:	ffffe097          	auipc	ra,0xffffe
    80002f48:	364080e7          	jalr	868(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002f4c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002f50:	00006517          	auipc	a0,0x6
    80002f54:	31850513          	addi	a0,a0,792 # 80009268 <CONSOLE_STATUS+0x258>
    80002f58:	00002097          	auipc	ra,0x2
    80002f5c:	ce4080e7          	jalr	-796(ra) # 80004c3c <_Z11printStringPKc>
    80002f60:	00000613          	li	a2,0
    80002f64:	00a00593          	li	a1,10
    80002f68:	0009051b          	sext.w	a0,s2
    80002f6c:	00002097          	auipc	ra,0x2
    80002f70:	e80080e7          	jalr	-384(ra) # 80004dec <_Z8printIntiii>
    80002f74:	00006517          	auipc	a0,0x6
    80002f78:	53c50513          	addi	a0,a0,1340 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80002f7c:	00002097          	auipc	ra,0x2
    80002f80:	cc0080e7          	jalr	-832(ra) # 80004c3c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002f84:	00c00513          	li	a0,12
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	d30080e7          	jalr	-720(ra) # 80002cb8 <_ZL9fibonaccim>
    80002f90:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002f94:	00006517          	auipc	a0,0x6
    80002f98:	2dc50513          	addi	a0,a0,732 # 80009270 <CONSOLE_STATUS+0x260>
    80002f9c:	00002097          	auipc	ra,0x2
    80002fa0:	ca0080e7          	jalr	-864(ra) # 80004c3c <_Z11printStringPKc>
    80002fa4:	00000613          	li	a2,0
    80002fa8:	00a00593          	li	a1,10
    80002fac:	0009051b          	sext.w	a0,s2
    80002fb0:	00002097          	auipc	ra,0x2
    80002fb4:	e3c080e7          	jalr	-452(ra) # 80004dec <_Z8printIntiii>
    80002fb8:	00006517          	auipc	a0,0x6
    80002fbc:	4f850513          	addi	a0,a0,1272 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80002fc0:	00002097          	auipc	ra,0x2
    80002fc4:	c7c080e7          	jalr	-900(ra) # 80004c3c <_Z11printStringPKc>
    80002fc8:	0400006f          	j	80003008 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002fcc:	00006517          	auipc	a0,0x6
    80002fd0:	28450513          	addi	a0,a0,644 # 80009250 <CONSOLE_STATUS+0x240>
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	c68080e7          	jalr	-920(ra) # 80004c3c <_Z11printStringPKc>
    80002fdc:	00000613          	li	a2,0
    80002fe0:	00a00593          	li	a1,10
    80002fe4:	00048513          	mv	a0,s1
    80002fe8:	00002097          	auipc	ra,0x2
    80002fec:	e04080e7          	jalr	-508(ra) # 80004dec <_Z8printIntiii>
    80002ff0:	00006517          	auipc	a0,0x6
    80002ff4:	4c050513          	addi	a0,a0,1216 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80002ff8:	00002097          	auipc	ra,0x2
    80002ffc:	c44080e7          	jalr	-956(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003000:	0014849b          	addiw	s1,s1,1
    80003004:	0ff4f493          	andi	s1,s1,255
    80003008:	00500793          	li	a5,5
    8000300c:	fc97f0e3          	bgeu	a5,s1,80002fcc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003010:	00006517          	auipc	a0,0x6
    80003014:	27050513          	addi	a0,a0,624 # 80009280 <CONSOLE_STATUS+0x270>
    80003018:	00002097          	auipc	ra,0x2
    8000301c:	c24080e7          	jalr	-988(ra) # 80004c3c <_Z11printStringPKc>
    finishedC = true;
    80003020:	00100793          	li	a5,1
    80003024:	00008717          	auipc	a4,0x8
    80003028:	78f70323          	sb	a5,1926(a4) # 8000b7aa <_ZL9finishedC>
    thread_dispatch();
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	27c080e7          	jalr	636(ra) # 800012a8 <_Z15thread_dispatchv>

}
    80003034:	01813083          	ld	ra,24(sp)
    80003038:	01013403          	ld	s0,16(sp)
    8000303c:	00813483          	ld	s1,8(sp)
    80003040:	00013903          	ld	s2,0(sp)
    80003044:	02010113          	addi	sp,sp,32
    80003048:	00008067          	ret

000000008000304c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00113c23          	sd	ra,24(sp)
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	01213023          	sd	s2,0(sp)
    80003060:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003064:	00a00493          	li	s1,10
    80003068:	0400006f          	j	800030a8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000306c:	00006517          	auipc	a0,0x6
    80003070:	22450513          	addi	a0,a0,548 # 80009290 <CONSOLE_STATUS+0x280>
    80003074:	00002097          	auipc	ra,0x2
    80003078:	bc8080e7          	jalr	-1080(ra) # 80004c3c <_Z11printStringPKc>
    8000307c:	00000613          	li	a2,0
    80003080:	00a00593          	li	a1,10
    80003084:	00048513          	mv	a0,s1
    80003088:	00002097          	auipc	ra,0x2
    8000308c:	d64080e7          	jalr	-668(ra) # 80004dec <_Z8printIntiii>
    80003090:	00006517          	auipc	a0,0x6
    80003094:	42050513          	addi	a0,a0,1056 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	ba4080e7          	jalr	-1116(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800030a0:	0014849b          	addiw	s1,s1,1
    800030a4:	0ff4f493          	andi	s1,s1,255
    800030a8:	00c00793          	li	a5,12
    800030ac:	fc97f0e3          	bgeu	a5,s1,8000306c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	1e850513          	addi	a0,a0,488 # 80009298 <CONSOLE_STATUS+0x288>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	b84080e7          	jalr	-1148(ra) # 80004c3c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800030c0:	00500313          	li	t1,5
    thread_dispatch();
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	1e4080e7          	jalr	484(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800030cc:	01000513          	li	a0,16
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	be8080e7          	jalr	-1048(ra) # 80002cb8 <_ZL9fibonaccim>
    800030d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800030dc:	00006517          	auipc	a0,0x6
    800030e0:	1cc50513          	addi	a0,a0,460 # 800092a8 <CONSOLE_STATUS+0x298>
    800030e4:	00002097          	auipc	ra,0x2
    800030e8:	b58080e7          	jalr	-1192(ra) # 80004c3c <_Z11printStringPKc>
    800030ec:	00000613          	li	a2,0
    800030f0:	00a00593          	li	a1,10
    800030f4:	0009051b          	sext.w	a0,s2
    800030f8:	00002097          	auipc	ra,0x2
    800030fc:	cf4080e7          	jalr	-780(ra) # 80004dec <_Z8printIntiii>
    80003100:	00006517          	auipc	a0,0x6
    80003104:	3b050513          	addi	a0,a0,944 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003108:	00002097          	auipc	ra,0x2
    8000310c:	b34080e7          	jalr	-1228(ra) # 80004c3c <_Z11printStringPKc>
    80003110:	0400006f          	j	80003150 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003114:	00006517          	auipc	a0,0x6
    80003118:	17c50513          	addi	a0,a0,380 # 80009290 <CONSOLE_STATUS+0x280>
    8000311c:	00002097          	auipc	ra,0x2
    80003120:	b20080e7          	jalr	-1248(ra) # 80004c3c <_Z11printStringPKc>
    80003124:	00000613          	li	a2,0
    80003128:	00a00593          	li	a1,10
    8000312c:	00048513          	mv	a0,s1
    80003130:	00002097          	auipc	ra,0x2
    80003134:	cbc080e7          	jalr	-836(ra) # 80004dec <_Z8printIntiii>
    80003138:	00006517          	auipc	a0,0x6
    8000313c:	37850513          	addi	a0,a0,888 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003140:	00002097          	auipc	ra,0x2
    80003144:	afc080e7          	jalr	-1284(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003148:	0014849b          	addiw	s1,s1,1
    8000314c:	0ff4f493          	andi	s1,s1,255
    80003150:	00f00793          	li	a5,15
    80003154:	fc97f0e3          	bgeu	a5,s1,80003114 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003158:	00006517          	auipc	a0,0x6
    8000315c:	16050513          	addi	a0,a0,352 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003160:	00002097          	auipc	ra,0x2
    80003164:	adc080e7          	jalr	-1316(ra) # 80004c3c <_Z11printStringPKc>
    finishedD = true;
    80003168:	00100793          	li	a5,1
    8000316c:	00008717          	auipc	a4,0x8
    80003170:	62f70fa3          	sb	a5,1599(a4) # 8000b7ab <_ZL9finishedD>
    thread_dispatch();
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	134080e7          	jalr	308(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000317c:	01813083          	ld	ra,24(sp)
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	00813483          	ld	s1,8(sp)
    80003188:	00013903          	ld	s2,0(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret

0000000080003194 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003194:	fc010113          	addi	sp,sp,-64
    80003198:	02113c23          	sd	ra,56(sp)
    8000319c:	02813823          	sd	s0,48(sp)
    800031a0:	02913423          	sd	s1,40(sp)
    800031a4:	03213023          	sd	s2,32(sp)
    800031a8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800031ac:	02000513          	li	a0,32
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	a64080e7          	jalr	-1436(ra) # 80001c14 <_Znwm>
    800031b8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	cdc080e7          	jalr	-804(ra) # 80001e98 <_ZN6ThreadC1Ev>
    800031c4:	00008797          	auipc	a5,0x8
    800031c8:	38c78793          	addi	a5,a5,908 # 8000b550 <_ZTV7WorkerA+0x10>
    800031cc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800031d0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800031d4:	00006517          	auipc	a0,0x6
    800031d8:	0f450513          	addi	a0,a0,244 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800031dc:	00002097          	auipc	ra,0x2
    800031e0:	a60080e7          	jalr	-1440(ra) # 80004c3c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800031e4:	02000513          	li	a0,32
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	a2c080e7          	jalr	-1492(ra) # 80001c14 <_Znwm>
    800031f0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	ca4080e7          	jalr	-860(ra) # 80001e98 <_ZN6ThreadC1Ev>
    800031fc:	00008797          	auipc	a5,0x8
    80003200:	37c78793          	addi	a5,a5,892 # 8000b578 <_ZTV7WorkerB+0x10>
    80003204:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003208:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000320c:	00006517          	auipc	a0,0x6
    80003210:	0d450513          	addi	a0,a0,212 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003214:	00002097          	auipc	ra,0x2
    80003218:	a28080e7          	jalr	-1496(ra) # 80004c3c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000321c:	02000513          	li	a0,32
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	9f4080e7          	jalr	-1548(ra) # 80001c14 <_Znwm>
    80003228:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	c6c080e7          	jalr	-916(ra) # 80001e98 <_ZN6ThreadC1Ev>
    80003234:	00008797          	auipc	a5,0x8
    80003238:	36c78793          	addi	a5,a5,876 # 8000b5a0 <_ZTV7WorkerC+0x10>
    8000323c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003240:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003244:	00006517          	auipc	a0,0x6
    80003248:	0b450513          	addi	a0,a0,180 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000324c:	00002097          	auipc	ra,0x2
    80003250:	9f0080e7          	jalr	-1552(ra) # 80004c3c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003254:	02000513          	li	a0,32
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	9bc080e7          	jalr	-1604(ra) # 80001c14 <_Znwm>
    80003260:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	c34080e7          	jalr	-972(ra) # 80001e98 <_ZN6ThreadC1Ev>
    8000326c:	00008797          	auipc	a5,0x8
    80003270:	35c78793          	addi	a5,a5,860 # 8000b5c8 <_ZTV7WorkerD+0x10>
    80003274:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003278:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000327c:	00006517          	auipc	a0,0x6
    80003280:	09450513          	addi	a0,a0,148 # 80009310 <CONSOLE_STATUS+0x300>
    80003284:	00002097          	auipc	ra,0x2
    80003288:	9b8080e7          	jalr	-1608(ra) # 80004c3c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000328c:	00000493          	li	s1,0
    80003290:	00300793          	li	a5,3
    80003294:	0297c663          	blt	a5,s1,800032c0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003298:	00349793          	slli	a5,s1,0x3
    8000329c:	fe040713          	addi	a4,s0,-32
    800032a0:	00f707b3          	add	a5,a4,a5
    800032a4:	fe07b503          	ld	a0,-32(a5)
    800032a8:	fffff097          	auipc	ra,0xfffff
    800032ac:	b60080e7          	jalr	-1184(ra) # 80001e08 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800032b0:	0014849b          	addiw	s1,s1,1
    800032b4:	fddff06f          	j	80003290 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	b8c080e7          	jalr	-1140(ra) # 80001e44 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800032c0:	00008797          	auipc	a5,0x8
    800032c4:	4e87c783          	lbu	a5,1256(a5) # 8000b7a8 <_ZL9finishedA>
    800032c8:	fe0788e3          	beqz	a5,800032b8 <_Z20Threads_CPP_API_testv+0x124>
    800032cc:	00008797          	auipc	a5,0x8
    800032d0:	4dd7c783          	lbu	a5,1245(a5) # 8000b7a9 <_ZL9finishedB>
    800032d4:	fe0782e3          	beqz	a5,800032b8 <_Z20Threads_CPP_API_testv+0x124>
    800032d8:	00008797          	auipc	a5,0x8
    800032dc:	4d27c783          	lbu	a5,1234(a5) # 8000b7aa <_ZL9finishedC>
    800032e0:	fc078ce3          	beqz	a5,800032b8 <_Z20Threads_CPP_API_testv+0x124>
    800032e4:	00008797          	auipc	a5,0x8
    800032e8:	4c77c783          	lbu	a5,1223(a5) # 8000b7ab <_ZL9finishedD>
    800032ec:	fc0786e3          	beqz	a5,800032b8 <_Z20Threads_CPP_API_testv+0x124>
    800032f0:	fc040493          	addi	s1,s0,-64
    800032f4:	0080006f          	j	800032fc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800032f8:	00848493          	addi	s1,s1,8
    800032fc:	fe040793          	addi	a5,s0,-32
    80003300:	08f48663          	beq	s1,a5,8000338c <_Z20Threads_CPP_API_testv+0x1f8>
    80003304:	0004b503          	ld	a0,0(s1)
    80003308:	fe0508e3          	beqz	a0,800032f8 <_Z20Threads_CPP_API_testv+0x164>
    8000330c:	00053783          	ld	a5,0(a0)
    80003310:	0087b783          	ld	a5,8(a5)
    80003314:	000780e7          	jalr	a5
    80003318:	fe1ff06f          	j	800032f8 <_Z20Threads_CPP_API_testv+0x164>
    8000331c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003320:	00048513          	mv	a0,s1
    80003324:	fffff097          	auipc	ra,0xfffff
    80003328:	940080e7          	jalr	-1728(ra) # 80001c64 <_ZdlPv>
    8000332c:	00090513          	mv	a0,s2
    80003330:	00009097          	auipc	ra,0x9
    80003334:	588080e7          	jalr	1416(ra) # 8000c8b8 <_Unwind_Resume>
    80003338:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000333c:	00048513          	mv	a0,s1
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	924080e7          	jalr	-1756(ra) # 80001c64 <_ZdlPv>
    80003348:	00090513          	mv	a0,s2
    8000334c:	00009097          	auipc	ra,0x9
    80003350:	56c080e7          	jalr	1388(ra) # 8000c8b8 <_Unwind_Resume>
    80003354:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003358:	00048513          	mv	a0,s1
    8000335c:	fffff097          	auipc	ra,0xfffff
    80003360:	908080e7          	jalr	-1784(ra) # 80001c64 <_ZdlPv>
    80003364:	00090513          	mv	a0,s2
    80003368:	00009097          	auipc	ra,0x9
    8000336c:	550080e7          	jalr	1360(ra) # 8000c8b8 <_Unwind_Resume>
    80003370:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003374:	00048513          	mv	a0,s1
    80003378:	fffff097          	auipc	ra,0xfffff
    8000337c:	8ec080e7          	jalr	-1812(ra) # 80001c64 <_ZdlPv>
    80003380:	00090513          	mv	a0,s2
    80003384:	00009097          	auipc	ra,0x9
    80003388:	534080e7          	jalr	1332(ra) # 8000c8b8 <_Unwind_Resume>
}
    8000338c:	03813083          	ld	ra,56(sp)
    80003390:	03013403          	ld	s0,48(sp)
    80003394:	02813483          	ld	s1,40(sp)
    80003398:	02013903          	ld	s2,32(sp)
    8000339c:	04010113          	addi	sp,sp,64
    800033a0:	00008067          	ret

00000000800033a4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00113423          	sd	ra,8(sp)
    800033ac:	00813023          	sd	s0,0(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	00008797          	auipc	a5,0x8
    800033b8:	19c78793          	addi	a5,a5,412 # 8000b550 <_ZTV7WorkerA+0x10>
    800033bc:	00f53023          	sd	a5,0(a0)
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	920080e7          	jalr	-1760(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <_ZN7WorkerAD0Ev>:
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00050493          	mv	s1,a0
    800033f0:	00008797          	auipc	a5,0x8
    800033f4:	16078793          	addi	a5,a5,352 # 8000b550 <_ZTV7WorkerA+0x10>
    800033f8:	00f53023          	sd	a5,0(a0)
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	8e4080e7          	jalr	-1820(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003404:	00048513          	mv	a0,s1
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	85c080e7          	jalr	-1956(ra) # 80001c64 <_ZdlPv>
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00113423          	sd	ra,8(sp)
    8000342c:	00813023          	sd	s0,0(sp)
    80003430:	01010413          	addi	s0,sp,16
    80003434:	00008797          	auipc	a5,0x8
    80003438:	14478793          	addi	a5,a5,324 # 8000b578 <_ZTV7WorkerB+0x10>
    8000343c:	00f53023          	sd	a5,0(a0)
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	8a0080e7          	jalr	-1888(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN7WorkerBD0Ev>:
    80003458:	fe010113          	addi	sp,sp,-32
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00913423          	sd	s1,8(sp)
    80003468:	02010413          	addi	s0,sp,32
    8000346c:	00050493          	mv	s1,a0
    80003470:	00008797          	auipc	a5,0x8
    80003474:	10878793          	addi	a5,a5,264 # 8000b578 <_ZTV7WorkerB+0x10>
    80003478:	00f53023          	sd	a5,0(a0)
    8000347c:	fffff097          	auipc	ra,0xfffff
    80003480:	864080e7          	jalr	-1948(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003484:	00048513          	mv	a0,s1
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	7dc080e7          	jalr	2012(ra) # 80001c64 <_ZdlPv>
    80003490:	01813083          	ld	ra,24(sp)
    80003494:	01013403          	ld	s0,16(sp)
    80003498:	00813483          	ld	s1,8(sp)
    8000349c:	02010113          	addi	sp,sp,32
    800034a0:	00008067          	ret

00000000800034a4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800034a4:	ff010113          	addi	sp,sp,-16
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	00813023          	sd	s0,0(sp)
    800034b0:	01010413          	addi	s0,sp,16
    800034b4:	00008797          	auipc	a5,0x8
    800034b8:	0ec78793          	addi	a5,a5,236 # 8000b5a0 <_ZTV7WorkerC+0x10>
    800034bc:	00f53023          	sd	a5,0(a0)
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	820080e7          	jalr	-2016(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    800034c8:	00813083          	ld	ra,8(sp)
    800034cc:	00013403          	ld	s0,0(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret

00000000800034d8 <_ZN7WorkerCD0Ev>:
    800034d8:	fe010113          	addi	sp,sp,-32
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	00813823          	sd	s0,16(sp)
    800034e4:	00913423          	sd	s1,8(sp)
    800034e8:	02010413          	addi	s0,sp,32
    800034ec:	00050493          	mv	s1,a0
    800034f0:	00008797          	auipc	a5,0x8
    800034f4:	0b078793          	addi	a5,a5,176 # 8000b5a0 <_ZTV7WorkerC+0x10>
    800034f8:	00f53023          	sd	a5,0(a0)
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	7e4080e7          	jalr	2020(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003504:	00048513          	mv	a0,s1
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	75c080e7          	jalr	1884(ra) # 80001c64 <_ZdlPv>
    80003510:	01813083          	ld	ra,24(sp)
    80003514:	01013403          	ld	s0,16(sp)
    80003518:	00813483          	ld	s1,8(sp)
    8000351c:	02010113          	addi	sp,sp,32
    80003520:	00008067          	ret

0000000080003524 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00113423          	sd	ra,8(sp)
    8000352c:	00813023          	sd	s0,0(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	00008797          	auipc	a5,0x8
    80003538:	09478793          	addi	a5,a5,148 # 8000b5c8 <_ZTV7WorkerD+0x10>
    8000353c:	00f53023          	sd	a5,0(a0)
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	7a0080e7          	jalr	1952(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003548:	00813083          	ld	ra,8(sp)
    8000354c:	00013403          	ld	s0,0(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret

0000000080003558 <_ZN7WorkerDD0Ev>:
    80003558:	fe010113          	addi	sp,sp,-32
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	02010413          	addi	s0,sp,32
    8000356c:	00050493          	mv	s1,a0
    80003570:	00008797          	auipc	a5,0x8
    80003574:	05878793          	addi	a5,a5,88 # 8000b5c8 <_ZTV7WorkerD+0x10>
    80003578:	00f53023          	sd	a5,0(a0)
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	764080e7          	jalr	1892(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003584:	00048513          	mv	a0,s1
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	6dc080e7          	jalr	1756(ra) # 80001c64 <_ZdlPv>
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	01013403          	ld	s0,16(sp)
    80003598:	00813483          	ld	s1,8(sp)
    8000359c:	02010113          	addi	sp,sp,32
    800035a0:	00008067          	ret

00000000800035a4 <_ZN7WorkerA3runEv>:
    void run() override {
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00113423          	sd	ra,8(sp)
    800035ac:	00813023          	sd	s0,0(sp)
    800035b0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800035b4:	00000593          	li	a1,0
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	774080e7          	jalr	1908(ra) # 80002d2c <_ZN7WorkerA11workerBodyAEPv>
    }
    800035c0:	00813083          	ld	ra,8(sp)
    800035c4:	00013403          	ld	s0,0(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret

00000000800035d0 <_ZN7WorkerB3runEv>:
    void run() override {
    800035d0:	ff010113          	addi	sp,sp,-16
    800035d4:	00113423          	sd	ra,8(sp)
    800035d8:	00813023          	sd	s0,0(sp)
    800035dc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800035e0:	00000593          	li	a1,0
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	814080e7          	jalr	-2028(ra) # 80002df8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800035ec:	00813083          	ld	ra,8(sp)
    800035f0:	00013403          	ld	s0,0(sp)
    800035f4:	01010113          	addi	sp,sp,16
    800035f8:	00008067          	ret

00000000800035fc <_ZN7WorkerC3runEv>:
    void run() override {
    800035fc:	ff010113          	addi	sp,sp,-16
    80003600:	00113423          	sd	ra,8(sp)
    80003604:	00813023          	sd	s0,0(sp)
    80003608:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000360c:	00000593          	li	a1,0
    80003610:	00000097          	auipc	ra,0x0
    80003614:	8bc080e7          	jalr	-1860(ra) # 80002ecc <_ZN7WorkerC11workerBodyCEPv>
    }
    80003618:	00813083          	ld	ra,8(sp)
    8000361c:	00013403          	ld	s0,0(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret

0000000080003628 <_ZN7WorkerD3runEv>:
    void run() override {
    80003628:	ff010113          	addi	sp,sp,-16
    8000362c:	00113423          	sd	ra,8(sp)
    80003630:	00813023          	sd	s0,0(sp)
    80003634:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003638:	00000593          	li	a1,0
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	a10080e7          	jalr	-1520(ra) # 8000304c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003644:	00813083          	ld	ra,8(sp)
    80003648:	00013403          	ld	s0,0(sp)
    8000364c:	01010113          	addi	sp,sp,16
    80003650:	00008067          	ret

0000000080003654 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003654:	f8010113          	addi	sp,sp,-128
    80003658:	06113c23          	sd	ra,120(sp)
    8000365c:	06813823          	sd	s0,112(sp)
    80003660:	06913423          	sd	s1,104(sp)
    80003664:	07213023          	sd	s2,96(sp)
    80003668:	05313c23          	sd	s3,88(sp)
    8000366c:	05413823          	sd	s4,80(sp)
    80003670:	05513423          	sd	s5,72(sp)
    80003674:	05613023          	sd	s6,64(sp)
    80003678:	03713c23          	sd	s7,56(sp)
    8000367c:	03813823          	sd	s8,48(sp)
    80003680:	03913423          	sd	s9,40(sp)
    80003684:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003688:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000368c:	00006517          	auipc	a0,0x6
    80003690:	aac50513          	addi	a0,a0,-1364 # 80009138 <CONSOLE_STATUS+0x128>
    80003694:	00001097          	auipc	ra,0x1
    80003698:	5a8080e7          	jalr	1448(ra) # 80004c3c <_Z11printStringPKc>
    getString(input, 30);
    8000369c:	01e00593          	li	a1,30
    800036a0:	f8040493          	addi	s1,s0,-128
    800036a4:	00048513          	mv	a0,s1
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	61c080e7          	jalr	1564(ra) # 80004cc4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800036b0:	00048513          	mv	a0,s1
    800036b4:	00001097          	auipc	ra,0x1
    800036b8:	6e8080e7          	jalr	1768(ra) # 80004d9c <_Z11stringToIntPKc>
    800036bc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800036c0:	00006517          	auipc	a0,0x6
    800036c4:	a9850513          	addi	a0,a0,-1384 # 80009158 <CONSOLE_STATUS+0x148>
    800036c8:	00001097          	auipc	ra,0x1
    800036cc:	574080e7          	jalr	1396(ra) # 80004c3c <_Z11printStringPKc>
    getString(input, 30);
    800036d0:	01e00593          	li	a1,30
    800036d4:	00048513          	mv	a0,s1
    800036d8:	00001097          	auipc	ra,0x1
    800036dc:	5ec080e7          	jalr	1516(ra) # 80004cc4 <_Z9getStringPci>
    n = stringToInt(input);
    800036e0:	00048513          	mv	a0,s1
    800036e4:	00001097          	auipc	ra,0x1
    800036e8:	6b8080e7          	jalr	1720(ra) # 80004d9c <_Z11stringToIntPKc>
    800036ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800036f0:	00006517          	auipc	a0,0x6
    800036f4:	a8850513          	addi	a0,a0,-1400 # 80009178 <CONSOLE_STATUS+0x168>
    800036f8:	00001097          	auipc	ra,0x1
    800036fc:	544080e7          	jalr	1348(ra) # 80004c3c <_Z11printStringPKc>
    printInt(threadNum);
    80003700:	00000613          	li	a2,0
    80003704:	00a00593          	li	a1,10
    80003708:	00098513          	mv	a0,s3
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	6e0080e7          	jalr	1760(ra) # 80004dec <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003714:	00006517          	auipc	a0,0x6
    80003718:	a7c50513          	addi	a0,a0,-1412 # 80009190 <CONSOLE_STATUS+0x180>
    8000371c:	00001097          	auipc	ra,0x1
    80003720:	520080e7          	jalr	1312(ra) # 80004c3c <_Z11printStringPKc>
    printInt(n);
    80003724:	00000613          	li	a2,0
    80003728:	00a00593          	li	a1,10
    8000372c:	00048513          	mv	a0,s1
    80003730:	00001097          	auipc	ra,0x1
    80003734:	6bc080e7          	jalr	1724(ra) # 80004dec <_Z8printIntiii>
    printString(".\n");
    80003738:	00006517          	auipc	a0,0x6
    8000373c:	a7050513          	addi	a0,a0,-1424 # 800091a8 <CONSOLE_STATUS+0x198>
    80003740:	00001097          	auipc	ra,0x1
    80003744:	4fc080e7          	jalr	1276(ra) # 80004c3c <_Z11printStringPKc>
    if (threadNum > n) {
    80003748:	0334c463          	blt	s1,s3,80003770 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000374c:	03305c63          	blez	s3,80003784 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003750:	03800513          	li	a0,56
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	4c0080e7          	jalr	1216(ra) # 80001c14 <_Znwm>
    8000375c:	00050a93          	mv	s5,a0
    80003760:	00048593          	mv	a1,s1
    80003764:	00001097          	auipc	ra,0x1
    80003768:	7a8080e7          	jalr	1960(ra) # 80004f0c <_ZN9BufferCPPC1Ei>
    8000376c:	0300006f          	j	8000379c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003770:	00006517          	auipc	a0,0x6
    80003774:	a4050513          	addi	a0,a0,-1472 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003778:	00001097          	auipc	ra,0x1
    8000377c:	4c4080e7          	jalr	1220(ra) # 80004c3c <_Z11printStringPKc>
        return;
    80003780:	0140006f          	j	80003794 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003784:	00006517          	auipc	a0,0x6
    80003788:	a6c50513          	addi	a0,a0,-1428 # 800091f0 <CONSOLE_STATUS+0x1e0>
    8000378c:	00001097          	auipc	ra,0x1
    80003790:	4b0080e7          	jalr	1200(ra) # 80004c3c <_Z11printStringPKc>
        return;
    80003794:	000c0113          	mv	sp,s8
    80003798:	2140006f          	j	800039ac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000379c:	01000513          	li	a0,16
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	474080e7          	jalr	1140(ra) # 80001c14 <_Znwm>
    800037a8:	00050913          	mv	s2,a0
    800037ac:	00000593          	li	a1,0
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	71c080e7          	jalr	1820(ra) # 80001ecc <_ZN9SemaphoreC1Ej>
    800037b8:	00008797          	auipc	a5,0x8
    800037bc:	0127b023          	sd	s2,0(a5) # 8000b7b8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800037c0:	00399793          	slli	a5,s3,0x3
    800037c4:	00f78793          	addi	a5,a5,15
    800037c8:	ff07f793          	andi	a5,a5,-16
    800037cc:	40f10133          	sub	sp,sp,a5
    800037d0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800037d4:	0019871b          	addiw	a4,s3,1
    800037d8:	00171793          	slli	a5,a4,0x1
    800037dc:	00e787b3          	add	a5,a5,a4
    800037e0:	00379793          	slli	a5,a5,0x3
    800037e4:	00f78793          	addi	a5,a5,15
    800037e8:	ff07f793          	andi	a5,a5,-16
    800037ec:	40f10133          	sub	sp,sp,a5
    800037f0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800037f4:	00199493          	slli	s1,s3,0x1
    800037f8:	013484b3          	add	s1,s1,s3
    800037fc:	00349493          	slli	s1,s1,0x3
    80003800:	009b04b3          	add	s1,s6,s1
    80003804:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003808:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000380c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003810:	02800513          	li	a0,40
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	400080e7          	jalr	1024(ra) # 80001c14 <_Znwm>
    8000381c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	678080e7          	jalr	1656(ra) # 80001e98 <_ZN6ThreadC1Ev>
    80003828:	00008797          	auipc	a5,0x8
    8000382c:	e1878793          	addi	a5,a5,-488 # 8000b640 <_ZTV8Consumer+0x10>
    80003830:	00fbb023          	sd	a5,0(s7)
    80003834:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003838:	000b8513          	mv	a0,s7
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	5cc080e7          	jalr	1484(ra) # 80001e08 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003844:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003848:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000384c:	00008797          	auipc	a5,0x8
    80003850:	f6c7b783          	ld	a5,-148(a5) # 8000b7b8 <_ZL10waitForAll>
    80003854:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003858:	02800513          	li	a0,40
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	3b8080e7          	jalr	952(ra) # 80001c14 <_Znwm>
    80003864:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	630080e7          	jalr	1584(ra) # 80001e98 <_ZN6ThreadC1Ev>
    80003870:	00008797          	auipc	a5,0x8
    80003874:	d8078793          	addi	a5,a5,-640 # 8000b5f0 <_ZTV16ProducerKeyborad+0x10>
    80003878:	00f4b023          	sd	a5,0(s1)
    8000387c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003880:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003884:	00048513          	mv	a0,s1
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	580080e7          	jalr	1408(ra) # 80001e08 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003890:	00100913          	li	s2,1
    80003894:	0300006f          	j	800038c4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003898:	00008797          	auipc	a5,0x8
    8000389c:	d8078793          	addi	a5,a5,-640 # 8000b618 <_ZTV8Producer+0x10>
    800038a0:	00fcb023          	sd	a5,0(s9)
    800038a4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800038a8:	00391793          	slli	a5,s2,0x3
    800038ac:	00fa07b3          	add	a5,s4,a5
    800038b0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800038b4:	000c8513          	mv	a0,s9
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	550080e7          	jalr	1360(ra) # 80001e08 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800038c0:	0019091b          	addiw	s2,s2,1
    800038c4:	05395263          	bge	s2,s3,80003908 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800038c8:	00191493          	slli	s1,s2,0x1
    800038cc:	012484b3          	add	s1,s1,s2
    800038d0:	00349493          	slli	s1,s1,0x3
    800038d4:	009b04b3          	add	s1,s6,s1
    800038d8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800038dc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800038e0:	00008797          	auipc	a5,0x8
    800038e4:	ed87b783          	ld	a5,-296(a5) # 8000b7b8 <_ZL10waitForAll>
    800038e8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800038ec:	02800513          	li	a0,40
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	324080e7          	jalr	804(ra) # 80001c14 <_Znwm>
    800038f8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	59c080e7          	jalr	1436(ra) # 80001e98 <_ZN6ThreadC1Ev>
    80003904:	f95ff06f          	j	80003898 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	53c080e7          	jalr	1340(ra) # 80001e44 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003910:	00000493          	li	s1,0
    80003914:	0099ce63          	blt	s3,s1,80003930 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003918:	00008517          	auipc	a0,0x8
    8000391c:	ea053503          	ld	a0,-352(a0) # 8000b7b8 <_ZL10waitForAll>
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	5e4080e7          	jalr	1508(ra) # 80001f04 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003928:	0014849b          	addiw	s1,s1,1
    8000392c:	fe9ff06f          	j	80003914 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003930:	00008517          	auipc	a0,0x8
    80003934:	e8853503          	ld	a0,-376(a0) # 8000b7b8 <_ZL10waitForAll>
    80003938:	00050863          	beqz	a0,80003948 <_Z20testConsumerProducerv+0x2f4>
    8000393c:	00053783          	ld	a5,0(a0)
    80003940:	0087b783          	ld	a5,8(a5)
    80003944:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003948:	00000493          	li	s1,0
    8000394c:	0080006f          	j	80003954 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003950:	0014849b          	addiw	s1,s1,1
    80003954:	0334d263          	bge	s1,s3,80003978 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003958:	00349793          	slli	a5,s1,0x3
    8000395c:	00fa07b3          	add	a5,s4,a5
    80003960:	0007b503          	ld	a0,0(a5)
    80003964:	fe0506e3          	beqz	a0,80003950 <_Z20testConsumerProducerv+0x2fc>
    80003968:	00053783          	ld	a5,0(a0)
    8000396c:	0087b783          	ld	a5,8(a5)
    80003970:	000780e7          	jalr	a5
    80003974:	fddff06f          	j	80003950 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003978:	000b8a63          	beqz	s7,8000398c <_Z20testConsumerProducerv+0x338>
    8000397c:	000bb783          	ld	a5,0(s7)
    80003980:	0087b783          	ld	a5,8(a5)
    80003984:	000b8513          	mv	a0,s7
    80003988:	000780e7          	jalr	a5
    delete buffer;
    8000398c:	000a8e63          	beqz	s5,800039a8 <_Z20testConsumerProducerv+0x354>
    80003990:	000a8513          	mv	a0,s5
    80003994:	00002097          	auipc	ra,0x2
    80003998:	870080e7          	jalr	-1936(ra) # 80005204 <_ZN9BufferCPPD1Ev>
    8000399c:	000a8513          	mv	a0,s5
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	2c4080e7          	jalr	708(ra) # 80001c64 <_ZdlPv>
    800039a8:	000c0113          	mv	sp,s8
}
    800039ac:	f8040113          	addi	sp,s0,-128
    800039b0:	07813083          	ld	ra,120(sp)
    800039b4:	07013403          	ld	s0,112(sp)
    800039b8:	06813483          	ld	s1,104(sp)
    800039bc:	06013903          	ld	s2,96(sp)
    800039c0:	05813983          	ld	s3,88(sp)
    800039c4:	05013a03          	ld	s4,80(sp)
    800039c8:	04813a83          	ld	s5,72(sp)
    800039cc:	04013b03          	ld	s6,64(sp)
    800039d0:	03813b83          	ld	s7,56(sp)
    800039d4:	03013c03          	ld	s8,48(sp)
    800039d8:	02813c83          	ld	s9,40(sp)
    800039dc:	08010113          	addi	sp,sp,128
    800039e0:	00008067          	ret
    800039e4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800039e8:	000a8513          	mv	a0,s5
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	278080e7          	jalr	632(ra) # 80001c64 <_ZdlPv>
    800039f4:	00048513          	mv	a0,s1
    800039f8:	00009097          	auipc	ra,0x9
    800039fc:	ec0080e7          	jalr	-320(ra) # 8000c8b8 <_Unwind_Resume>
    80003a00:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003a04:	00090513          	mv	a0,s2
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	25c080e7          	jalr	604(ra) # 80001c64 <_ZdlPv>
    80003a10:	00048513          	mv	a0,s1
    80003a14:	00009097          	auipc	ra,0x9
    80003a18:	ea4080e7          	jalr	-348(ra) # 8000c8b8 <_Unwind_Resume>
    80003a1c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003a20:	000b8513          	mv	a0,s7
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	240080e7          	jalr	576(ra) # 80001c64 <_ZdlPv>
    80003a2c:	00048513          	mv	a0,s1
    80003a30:	00009097          	auipc	ra,0x9
    80003a34:	e88080e7          	jalr	-376(ra) # 8000c8b8 <_Unwind_Resume>
    80003a38:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a3c:	00048513          	mv	a0,s1
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	224080e7          	jalr	548(ra) # 80001c64 <_ZdlPv>
    80003a48:	00090513          	mv	a0,s2
    80003a4c:	00009097          	auipc	ra,0x9
    80003a50:	e6c080e7          	jalr	-404(ra) # 8000c8b8 <_Unwind_Resume>
    80003a54:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003a58:	000c8513          	mv	a0,s9
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	208080e7          	jalr	520(ra) # 80001c64 <_ZdlPv>
    80003a64:	00048513          	mv	a0,s1
    80003a68:	00009097          	auipc	ra,0x9
    80003a6c:	e50080e7          	jalr	-432(ra) # 8000c8b8 <_Unwind_Resume>

0000000080003a70 <_ZN8Consumer3runEv>:
    void run() override {
    80003a70:	fd010113          	addi	sp,sp,-48
    80003a74:	02113423          	sd	ra,40(sp)
    80003a78:	02813023          	sd	s0,32(sp)
    80003a7c:	00913c23          	sd	s1,24(sp)
    80003a80:	01213823          	sd	s2,16(sp)
    80003a84:	01313423          	sd	s3,8(sp)
    80003a88:	03010413          	addi	s0,sp,48
    80003a8c:	00050913          	mv	s2,a0
        int i = 0;
    80003a90:	00000993          	li	s3,0
    80003a94:	0100006f          	j	80003aa4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003a98:	00a00513          	li	a0,10
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	574080e7          	jalr	1396(ra) # 80002010 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003aa4:	00008797          	auipc	a5,0x8
    80003aa8:	d0c7a783          	lw	a5,-756(a5) # 8000b7b0 <_ZL9threadEnd>
    80003aac:	04079a63          	bnez	a5,80003b00 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003ab0:	02093783          	ld	a5,32(s2)
    80003ab4:	0087b503          	ld	a0,8(a5)
    80003ab8:	00001097          	auipc	ra,0x1
    80003abc:	638080e7          	jalr	1592(ra) # 800050f0 <_ZN9BufferCPP3getEv>
            i++;
    80003ac0:	0019849b          	addiw	s1,s3,1
    80003ac4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003ac8:	0ff57513          	andi	a0,a0,255
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	544080e7          	jalr	1348(ra) # 80002010 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003ad4:	05000793          	li	a5,80
    80003ad8:	02f4e4bb          	remw	s1,s1,a5
    80003adc:	fc0494e3          	bnez	s1,80003aa4 <_ZN8Consumer3runEv+0x34>
    80003ae0:	fb9ff06f          	j	80003a98 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003ae4:	02093783          	ld	a5,32(s2)
    80003ae8:	0087b503          	ld	a0,8(a5)
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	604080e7          	jalr	1540(ra) # 800050f0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003af4:	0ff57513          	andi	a0,a0,255
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	518080e7          	jalr	1304(ra) # 80002010 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003b00:	02093783          	ld	a5,32(s2)
    80003b04:	0087b503          	ld	a0,8(a5)
    80003b08:	00001097          	auipc	ra,0x1
    80003b0c:	674080e7          	jalr	1652(ra) # 8000517c <_ZN9BufferCPP6getCntEv>
    80003b10:	fca04ae3          	bgtz	a0,80003ae4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003b14:	02093783          	ld	a5,32(s2)
    80003b18:	0107b503          	ld	a0,16(a5)
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	414080e7          	jalr	1044(ra) # 80001f30 <_ZN9Semaphore6signalEv>
    }
    80003b24:	02813083          	ld	ra,40(sp)
    80003b28:	02013403          	ld	s0,32(sp)
    80003b2c:	01813483          	ld	s1,24(sp)
    80003b30:	01013903          	ld	s2,16(sp)
    80003b34:	00813983          	ld	s3,8(sp)
    80003b38:	03010113          	addi	sp,sp,48
    80003b3c:	00008067          	ret

0000000080003b40 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	00008797          	auipc	a5,0x8
    80003b54:	af078793          	addi	a5,a5,-1296 # 8000b640 <_ZTV8Consumer+0x10>
    80003b58:	00f53023          	sd	a5,0(a0)
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	184080e7          	jalr	388(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003b64:	00813083          	ld	ra,8(sp)
    80003b68:	00013403          	ld	s0,0(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret

0000000080003b74 <_ZN8ConsumerD0Ev>:
    80003b74:	fe010113          	addi	sp,sp,-32
    80003b78:	00113c23          	sd	ra,24(sp)
    80003b7c:	00813823          	sd	s0,16(sp)
    80003b80:	00913423          	sd	s1,8(sp)
    80003b84:	02010413          	addi	s0,sp,32
    80003b88:	00050493          	mv	s1,a0
    80003b8c:	00008797          	auipc	a5,0x8
    80003b90:	ab478793          	addi	a5,a5,-1356 # 8000b640 <_ZTV8Consumer+0x10>
    80003b94:	00f53023          	sd	a5,0(a0)
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	148080e7          	jalr	328(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	0c0080e7          	jalr	192(ra) # 80001c64 <_ZdlPv>
    80003bac:	01813083          	ld	ra,24(sp)
    80003bb0:	01013403          	ld	s0,16(sp)
    80003bb4:	00813483          	ld	s1,8(sp)
    80003bb8:	02010113          	addi	sp,sp,32
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00113423          	sd	ra,8(sp)
    80003bc8:	00813023          	sd	s0,0(sp)
    80003bcc:	01010413          	addi	s0,sp,16
    80003bd0:	00008797          	auipc	a5,0x8
    80003bd4:	a2078793          	addi	a5,a5,-1504 # 8000b5f0 <_ZTV16ProducerKeyborad+0x10>
    80003bd8:	00f53023          	sd	a5,0(a0)
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	104080e7          	jalr	260(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003be4:	00813083          	ld	ra,8(sp)
    80003be8:	00013403          	ld	s0,0(sp)
    80003bec:	01010113          	addi	sp,sp,16
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZN16ProducerKeyboradD0Ev>:
    80003bf4:	fe010113          	addi	sp,sp,-32
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00813823          	sd	s0,16(sp)
    80003c00:	00913423          	sd	s1,8(sp)
    80003c04:	02010413          	addi	s0,sp,32
    80003c08:	00050493          	mv	s1,a0
    80003c0c:	00008797          	auipc	a5,0x8
    80003c10:	9e478793          	addi	a5,a5,-1564 # 8000b5f0 <_ZTV16ProducerKeyborad+0x10>
    80003c14:	00f53023          	sd	a5,0(a0)
    80003c18:	ffffe097          	auipc	ra,0xffffe
    80003c1c:	0c8080e7          	jalr	200(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003c20:	00048513          	mv	a0,s1
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	040080e7          	jalr	64(ra) # 80001c64 <_ZdlPv>
    80003c2c:	01813083          	ld	ra,24(sp)
    80003c30:	01013403          	ld	s0,16(sp)
    80003c34:	00813483          	ld	s1,8(sp)
    80003c38:	02010113          	addi	sp,sp,32
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00113423          	sd	ra,8(sp)
    80003c48:	00813023          	sd	s0,0(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    80003c50:	00008797          	auipc	a5,0x8
    80003c54:	9c878793          	addi	a5,a5,-1592 # 8000b618 <_ZTV8Producer+0x10>
    80003c58:	00f53023          	sd	a5,0(a0)
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	084080e7          	jalr	132(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003c64:	00813083          	ld	ra,8(sp)
    80003c68:	00013403          	ld	s0,0(sp)
    80003c6c:	01010113          	addi	sp,sp,16
    80003c70:	00008067          	ret

0000000080003c74 <_ZN8ProducerD0Ev>:
    80003c74:	fe010113          	addi	sp,sp,-32
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	00813823          	sd	s0,16(sp)
    80003c80:	00913423          	sd	s1,8(sp)
    80003c84:	02010413          	addi	s0,sp,32
    80003c88:	00050493          	mv	s1,a0
    80003c8c:	00008797          	auipc	a5,0x8
    80003c90:	98c78793          	addi	a5,a5,-1652 # 8000b618 <_ZTV8Producer+0x10>
    80003c94:	00f53023          	sd	a5,0(a0)
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	048080e7          	jalr	72(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	fc0080e7          	jalr	-64(ra) # 80001c64 <_ZdlPv>
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	00813483          	ld	s1,8(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	02010413          	addi	s0,sp,32
    80003cd4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003cd8:	ffffd097          	auipc	ra,0xffffd
    80003cdc:	774080e7          	jalr	1908(ra) # 8000144c <_Z4getcv>
    80003ce0:	0005059b          	sext.w	a1,a0
    80003ce4:	01b00793          	li	a5,27
    80003ce8:	00f58c63          	beq	a1,a5,80003d00 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003cec:	0204b783          	ld	a5,32(s1)
    80003cf0:	0087b503          	ld	a0,8(a5)
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	36c080e7          	jalr	876(ra) # 80005060 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003cfc:	fddff06f          	j	80003cd8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003d00:	00100793          	li	a5,1
    80003d04:	00008717          	auipc	a4,0x8
    80003d08:	aaf72623          	sw	a5,-1364(a4) # 8000b7b0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003d0c:	0204b783          	ld	a5,32(s1)
    80003d10:	02100593          	li	a1,33
    80003d14:	0087b503          	ld	a0,8(a5)
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	348080e7          	jalr	840(ra) # 80005060 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003d20:	0204b783          	ld	a5,32(s1)
    80003d24:	0107b503          	ld	a0,16(a5)
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	208080e7          	jalr	520(ra) # 80001f30 <_ZN9Semaphore6signalEv>
    }
    80003d30:	01813083          	ld	ra,24(sp)
    80003d34:	01013403          	ld	s0,16(sp)
    80003d38:	00813483          	ld	s1,8(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret

0000000080003d44 <_ZN8Producer3runEv>:
    void run() override {
    80003d44:	fe010113          	addi	sp,sp,-32
    80003d48:	00113c23          	sd	ra,24(sp)
    80003d4c:	00813823          	sd	s0,16(sp)
    80003d50:	00913423          	sd	s1,8(sp)
    80003d54:	01213023          	sd	s2,0(sp)
    80003d58:	02010413          	addi	s0,sp,32
    80003d5c:	00050493          	mv	s1,a0
        int i = 0;
    80003d60:	00000913          	li	s2,0
        while (!threadEnd) {
    80003d64:	00008797          	auipc	a5,0x8
    80003d68:	a4c7a783          	lw	a5,-1460(a5) # 8000b7b0 <_ZL9threadEnd>
    80003d6c:	04079263          	bnez	a5,80003db0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003d70:	0204b783          	ld	a5,32(s1)
    80003d74:	0007a583          	lw	a1,0(a5)
    80003d78:	0305859b          	addiw	a1,a1,48
    80003d7c:	0087b503          	ld	a0,8(a5)
    80003d80:	00001097          	auipc	ra,0x1
    80003d84:	2e0080e7          	jalr	736(ra) # 80005060 <_ZN9BufferCPP3putEi>
            i++;
    80003d88:	0019071b          	addiw	a4,s2,1
    80003d8c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003d90:	0204b783          	ld	a5,32(s1)
    80003d94:	0007a783          	lw	a5,0(a5)
    80003d98:	00e787bb          	addw	a5,a5,a4
    80003d9c:	00500513          	li	a0,5
    80003da0:	02a7e53b          	remw	a0,a5,a0
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	0c8080e7          	jalr	200(ra) # 80001e6c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003dac:	fb9ff06f          	j	80003d64 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003db0:	0204b783          	ld	a5,32(s1)
    80003db4:	0107b503          	ld	a0,16(a5)
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	178080e7          	jalr	376(ra) # 80001f30 <_ZN9Semaphore6signalEv>
    }
    80003dc0:	01813083          	ld	ra,24(sp)
    80003dc4:	01013403          	ld	s0,16(sp)
    80003dc8:	00813483          	ld	s1,8(sp)
    80003dcc:	00013903          	ld	s2,0(sp)
    80003dd0:	02010113          	addi	sp,sp,32
    80003dd4:	00008067          	ret

0000000080003dd8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003dd8:	fe010113          	addi	sp,sp,-32
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00913423          	sd	s1,8(sp)
    80003de8:	01213023          	sd	s2,0(sp)
    80003dec:	02010413          	addi	s0,sp,32
    80003df0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003df4:	00100793          	li	a5,1
    80003df8:	02a7f863          	bgeu	a5,a0,80003e28 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003dfc:	00a00793          	li	a5,10
    80003e00:	02f577b3          	remu	a5,a0,a5
    80003e04:	02078e63          	beqz	a5,80003e40 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e08:	fff48513          	addi	a0,s1,-1
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	fcc080e7          	jalr	-52(ra) # 80003dd8 <_ZL9fibonaccim>
    80003e14:	00050913          	mv	s2,a0
    80003e18:	ffe48513          	addi	a0,s1,-2
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	fbc080e7          	jalr	-68(ra) # 80003dd8 <_ZL9fibonaccim>
    80003e24:	00a90533          	add	a0,s2,a0
}
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	00813483          	ld	s1,8(sp)
    80003e34:	00013903          	ld	s2,0(sp)
    80003e38:	02010113          	addi	sp,sp,32
    80003e3c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003e40:	ffffd097          	auipc	ra,0xffffd
    80003e44:	468080e7          	jalr	1128(ra) # 800012a8 <_Z15thread_dispatchv>
    80003e48:	fc1ff06f          	j	80003e08 <_ZL9fibonaccim+0x30>

0000000080003e4c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003e4c:	fe010113          	addi	sp,sp,-32
    80003e50:	00113c23          	sd	ra,24(sp)
    80003e54:	00813823          	sd	s0,16(sp)
    80003e58:	00913423          	sd	s1,8(sp)
    80003e5c:	01213023          	sd	s2,0(sp)
    80003e60:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e64:	00a00493          	li	s1,10
    80003e68:	0400006f          	j	80003ea8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e6c:	00005517          	auipc	a0,0x5
    80003e70:	42450513          	addi	a0,a0,1060 # 80009290 <CONSOLE_STATUS+0x280>
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	dc8080e7          	jalr	-568(ra) # 80004c3c <_Z11printStringPKc>
    80003e7c:	00000613          	li	a2,0
    80003e80:	00a00593          	li	a1,10
    80003e84:	00048513          	mv	a0,s1
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	f64080e7          	jalr	-156(ra) # 80004dec <_Z8printIntiii>
    80003e90:	00005517          	auipc	a0,0x5
    80003e94:	62050513          	addi	a0,a0,1568 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	da4080e7          	jalr	-604(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ea0:	0014849b          	addiw	s1,s1,1
    80003ea4:	0ff4f493          	andi	s1,s1,255
    80003ea8:	00c00793          	li	a5,12
    80003eac:	fc97f0e3          	bgeu	a5,s1,80003e6c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003eb0:	00005517          	auipc	a0,0x5
    80003eb4:	3e850513          	addi	a0,a0,1000 # 80009298 <CONSOLE_STATUS+0x288>
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	d84080e7          	jalr	-636(ra) # 80004c3c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ec0:	00500313          	li	t1,5
    thread_dispatch();
    80003ec4:	ffffd097          	auipc	ra,0xffffd
    80003ec8:	3e4080e7          	jalr	996(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ecc:	01000513          	li	a0,16
    80003ed0:	00000097          	auipc	ra,0x0
    80003ed4:	f08080e7          	jalr	-248(ra) # 80003dd8 <_ZL9fibonaccim>
    80003ed8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003edc:	00005517          	auipc	a0,0x5
    80003ee0:	3cc50513          	addi	a0,a0,972 # 800092a8 <CONSOLE_STATUS+0x298>
    80003ee4:	00001097          	auipc	ra,0x1
    80003ee8:	d58080e7          	jalr	-680(ra) # 80004c3c <_Z11printStringPKc>
    80003eec:	00000613          	li	a2,0
    80003ef0:	00a00593          	li	a1,10
    80003ef4:	0009051b          	sext.w	a0,s2
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	ef4080e7          	jalr	-268(ra) # 80004dec <_Z8printIntiii>
    80003f00:	00005517          	auipc	a0,0x5
    80003f04:	5b050513          	addi	a0,a0,1456 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	d34080e7          	jalr	-716(ra) # 80004c3c <_Z11printStringPKc>
    80003f10:	0400006f          	j	80003f50 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	37c50513          	addi	a0,a0,892 # 80009290 <CONSOLE_STATUS+0x280>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	d20080e7          	jalr	-736(ra) # 80004c3c <_Z11printStringPKc>
    80003f24:	00000613          	li	a2,0
    80003f28:	00a00593          	li	a1,10
    80003f2c:	00048513          	mv	a0,s1
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	ebc080e7          	jalr	-324(ra) # 80004dec <_Z8printIntiii>
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	57850513          	addi	a0,a0,1400 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003f40:	00001097          	auipc	ra,0x1
    80003f44:	cfc080e7          	jalr	-772(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f48:	0014849b          	addiw	s1,s1,1
    80003f4c:	0ff4f493          	andi	s1,s1,255
    80003f50:	00f00793          	li	a5,15
    80003f54:	fc97f0e3          	bgeu	a5,s1,80003f14 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	36050513          	addi	a0,a0,864 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003f60:	00001097          	auipc	ra,0x1
    80003f64:	cdc080e7          	jalr	-804(ra) # 80004c3c <_Z11printStringPKc>
    finishedD = true;
    80003f68:	00100793          	li	a5,1
    80003f6c:	00008717          	auipc	a4,0x8
    80003f70:	84f70a23          	sb	a5,-1964(a4) # 8000b7c0 <_ZL9finishedD>
    thread_dispatch();
    80003f74:	ffffd097          	auipc	ra,0xffffd
    80003f78:	334080e7          	jalr	820(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003f7c:	01813083          	ld	ra,24(sp)
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	00013903          	ld	s2,0(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret

0000000080003f94 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003f94:	fe010113          	addi	sp,sp,-32
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00913423          	sd	s1,8(sp)
    80003fa4:	01213023          	sd	s2,0(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003fac:	00000493          	li	s1,0
    80003fb0:	0400006f          	j	80003ff0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003fb4:	00005517          	auipc	a0,0x5
    80003fb8:	29c50513          	addi	a0,a0,668 # 80009250 <CONSOLE_STATUS+0x240>
    80003fbc:	00001097          	auipc	ra,0x1
    80003fc0:	c80080e7          	jalr	-896(ra) # 80004c3c <_Z11printStringPKc>
    80003fc4:	00000613          	li	a2,0
    80003fc8:	00a00593          	li	a1,10
    80003fcc:	00048513          	mv	a0,s1
    80003fd0:	00001097          	auipc	ra,0x1
    80003fd4:	e1c080e7          	jalr	-484(ra) # 80004dec <_Z8printIntiii>
    80003fd8:	00005517          	auipc	a0,0x5
    80003fdc:	4d850513          	addi	a0,a0,1240 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	c5c080e7          	jalr	-932(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fe8:	0014849b          	addiw	s1,s1,1
    80003fec:	0ff4f493          	andi	s1,s1,255
    80003ff0:	00200793          	li	a5,2
    80003ff4:	fc97f0e3          	bgeu	a5,s1,80003fb4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	26050513          	addi	a0,a0,608 # 80009258 <CONSOLE_STATUS+0x248>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	c3c080e7          	jalr	-964(ra) # 80004c3c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004008:	00700313          	li	t1,7
    thread_dispatch();
    8000400c:	ffffd097          	auipc	ra,0xffffd
    80004010:	29c080e7          	jalr	668(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004014:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004018:	00005517          	auipc	a0,0x5
    8000401c:	25050513          	addi	a0,a0,592 # 80009268 <CONSOLE_STATUS+0x258>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	c1c080e7          	jalr	-996(ra) # 80004c3c <_Z11printStringPKc>
    80004028:	00000613          	li	a2,0
    8000402c:	00a00593          	li	a1,10
    80004030:	0009051b          	sext.w	a0,s2
    80004034:	00001097          	auipc	ra,0x1
    80004038:	db8080e7          	jalr	-584(ra) # 80004dec <_Z8printIntiii>
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	47450513          	addi	a0,a0,1140 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	bf8080e7          	jalr	-1032(ra) # 80004c3c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000404c:	00c00513          	li	a0,12
    80004050:	00000097          	auipc	ra,0x0
    80004054:	d88080e7          	jalr	-632(ra) # 80003dd8 <_ZL9fibonaccim>
    80004058:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000405c:	00005517          	auipc	a0,0x5
    80004060:	21450513          	addi	a0,a0,532 # 80009270 <CONSOLE_STATUS+0x260>
    80004064:	00001097          	auipc	ra,0x1
    80004068:	bd8080e7          	jalr	-1064(ra) # 80004c3c <_Z11printStringPKc>
    8000406c:	00000613          	li	a2,0
    80004070:	00a00593          	li	a1,10
    80004074:	0009051b          	sext.w	a0,s2
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	d74080e7          	jalr	-652(ra) # 80004dec <_Z8printIntiii>
    80004080:	00005517          	auipc	a0,0x5
    80004084:	43050513          	addi	a0,a0,1072 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	bb4080e7          	jalr	-1100(ra) # 80004c3c <_Z11printStringPKc>
    80004090:	0400006f          	j	800040d0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004094:	00005517          	auipc	a0,0x5
    80004098:	1bc50513          	addi	a0,a0,444 # 80009250 <CONSOLE_STATUS+0x240>
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	ba0080e7          	jalr	-1120(ra) # 80004c3c <_Z11printStringPKc>
    800040a4:	00000613          	li	a2,0
    800040a8:	00a00593          	li	a1,10
    800040ac:	00048513          	mv	a0,s1
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	d3c080e7          	jalr	-708(ra) # 80004dec <_Z8printIntiii>
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	3f850513          	addi	a0,a0,1016 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	b7c080e7          	jalr	-1156(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800040c8:	0014849b          	addiw	s1,s1,1
    800040cc:	0ff4f493          	andi	s1,s1,255
    800040d0:	00500793          	li	a5,5
    800040d4:	fc97f0e3          	bgeu	a5,s1,80004094 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800040d8:	00005517          	auipc	a0,0x5
    800040dc:	15050513          	addi	a0,a0,336 # 80009228 <CONSOLE_STATUS+0x218>
    800040e0:	00001097          	auipc	ra,0x1
    800040e4:	b5c080e7          	jalr	-1188(ra) # 80004c3c <_Z11printStringPKc>
    finishedC = true;
    800040e8:	00100793          	li	a5,1
    800040ec:	00007717          	auipc	a4,0x7
    800040f0:	6cf70aa3          	sb	a5,1749(a4) # 8000b7c1 <_ZL9finishedC>
    thread_dispatch();
    800040f4:	ffffd097          	auipc	ra,0xffffd
    800040f8:	1b4080e7          	jalr	436(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	00013903          	ld	s2,0(sp)
    8000410c:	02010113          	addi	sp,sp,32
    80004110:	00008067          	ret

0000000080004114 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004114:	fe010113          	addi	sp,sp,-32
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	00813823          	sd	s0,16(sp)
    80004120:	00913423          	sd	s1,8(sp)
    80004124:	01213023          	sd	s2,0(sp)
    80004128:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000412c:	00000913          	li	s2,0
    80004130:	0380006f          	j	80004168 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	174080e7          	jalr	372(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000413c:	00148493          	addi	s1,s1,1
    80004140:	000027b7          	lui	a5,0x2
    80004144:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004148:	0097ee63          	bltu	a5,s1,80004164 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000414c:	00000713          	li	a4,0
    80004150:	000077b7          	lui	a5,0x7
    80004154:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004158:	fce7eee3          	bltu	a5,a4,80004134 <_ZL11workerBodyBPv+0x20>
    8000415c:	00170713          	addi	a4,a4,1
    80004160:	ff1ff06f          	j	80004150 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004164:	00190913          	addi	s2,s2,1
    80004168:	00f00793          	li	a5,15
    8000416c:	0527e063          	bltu	a5,s2,800041ac <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004170:	00005517          	auipc	a0,0x5
    80004174:	0c850513          	addi	a0,a0,200 # 80009238 <CONSOLE_STATUS+0x228>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	ac4080e7          	jalr	-1340(ra) # 80004c3c <_Z11printStringPKc>
    80004180:	00000613          	li	a2,0
    80004184:	00a00593          	li	a1,10
    80004188:	0009051b          	sext.w	a0,s2
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	c60080e7          	jalr	-928(ra) # 80004dec <_Z8printIntiii>
    80004194:	00005517          	auipc	a0,0x5
    80004198:	31c50513          	addi	a0,a0,796 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	aa0080e7          	jalr	-1376(ra) # 80004c3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041a4:	00000493          	li	s1,0
    800041a8:	f99ff06f          	j	80004140 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800041ac:	00005517          	auipc	a0,0x5
    800041b0:	09450513          	addi	a0,a0,148 # 80009240 <CONSOLE_STATUS+0x230>
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	a88080e7          	jalr	-1400(ra) # 80004c3c <_Z11printStringPKc>
    finishedB = true;
    800041bc:	00100793          	li	a5,1
    800041c0:	00007717          	auipc	a4,0x7
    800041c4:	60f70123          	sb	a5,1538(a4) # 8000b7c2 <_ZL9finishedB>
    thread_dispatch();
    800041c8:	ffffd097          	auipc	ra,0xffffd
    800041cc:	0e0080e7          	jalr	224(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	00013903          	ld	s2,0(sp)
    800041e0:	02010113          	addi	sp,sp,32
    800041e4:	00008067          	ret

00000000800041e8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800041e8:	fe010113          	addi	sp,sp,-32
    800041ec:	00113c23          	sd	ra,24(sp)
    800041f0:	00813823          	sd	s0,16(sp)
    800041f4:	00913423          	sd	s1,8(sp)
    800041f8:	01213023          	sd	s2,0(sp)
    800041fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004200:	00000913          	li	s2,0
    80004204:	0380006f          	j	8000423c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004208:	ffffd097          	auipc	ra,0xffffd
    8000420c:	0a0080e7          	jalr	160(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004210:	00148493          	addi	s1,s1,1
    80004214:	000027b7          	lui	a5,0x2
    80004218:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000421c:	0097ee63          	bltu	a5,s1,80004238 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004220:	00000713          	li	a4,0
    80004224:	000077b7          	lui	a5,0x7
    80004228:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000422c:	fce7eee3          	bltu	a5,a4,80004208 <_ZL11workerBodyAPv+0x20>
    80004230:	00170713          	addi	a4,a4,1
    80004234:	ff1ff06f          	j	80004224 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004238:	00190913          	addi	s2,s2,1
    8000423c:	00900793          	li	a5,9
    80004240:	0527e063          	bltu	a5,s2,80004280 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004244:	00005517          	auipc	a0,0x5
    80004248:	fdc50513          	addi	a0,a0,-36 # 80009220 <CONSOLE_STATUS+0x210>
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	9f0080e7          	jalr	-1552(ra) # 80004c3c <_Z11printStringPKc>
    80004254:	00000613          	li	a2,0
    80004258:	00a00593          	li	a1,10
    8000425c:	0009051b          	sext.w	a0,s2
    80004260:	00001097          	auipc	ra,0x1
    80004264:	b8c080e7          	jalr	-1140(ra) # 80004dec <_Z8printIntiii>
    80004268:	00005517          	auipc	a0,0x5
    8000426c:	24850513          	addi	a0,a0,584 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80004270:	00001097          	auipc	ra,0x1
    80004274:	9cc080e7          	jalr	-1588(ra) # 80004c3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004278:	00000493          	li	s1,0
    8000427c:	f99ff06f          	j	80004214 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004280:	00005517          	auipc	a0,0x5
    80004284:	fa850513          	addi	a0,a0,-88 # 80009228 <CONSOLE_STATUS+0x218>
    80004288:	00001097          	auipc	ra,0x1
    8000428c:	9b4080e7          	jalr	-1612(ra) # 80004c3c <_Z11printStringPKc>
    finishedA = true;
    80004290:	00100793          	li	a5,1
    80004294:	00007717          	auipc	a4,0x7
    80004298:	52f707a3          	sb	a5,1327(a4) # 8000b7c3 <_ZL9finishedA>
}
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	00013903          	ld	s2,0(sp)
    800042ac:	02010113          	addi	sp,sp,32
    800042b0:	00008067          	ret

00000000800042b4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800042b4:	fd010113          	addi	sp,sp,-48
    800042b8:	02113423          	sd	ra,40(sp)
    800042bc:	02813023          	sd	s0,32(sp)
    800042c0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800042c4:	00000613          	li	a2,0
    800042c8:	00000597          	auipc	a1,0x0
    800042cc:	f2058593          	addi	a1,a1,-224 # 800041e8 <_ZL11workerBodyAPv>
    800042d0:	fd040513          	addi	a0,s0,-48
    800042d4:	ffffd097          	auipc	ra,0xffffd
    800042d8:	01c080e7          	jalr	28(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800042dc:	00005517          	auipc	a0,0x5
    800042e0:	fec50513          	addi	a0,a0,-20 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	958080e7          	jalr	-1704(ra) # 80004c3c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800042ec:	00000613          	li	a2,0
    800042f0:	00000597          	auipc	a1,0x0
    800042f4:	e2458593          	addi	a1,a1,-476 # 80004114 <_ZL11workerBodyBPv>
    800042f8:	fd840513          	addi	a0,s0,-40
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	ff4080e7          	jalr	-12(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004304:	00005517          	auipc	a0,0x5
    80004308:	fdc50513          	addi	a0,a0,-36 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	930080e7          	jalr	-1744(ra) # 80004c3c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004314:	00000613          	li	a2,0
    80004318:	00000597          	auipc	a1,0x0
    8000431c:	c7c58593          	addi	a1,a1,-900 # 80003f94 <_ZL11workerBodyCPv>
    80004320:	fe040513          	addi	a0,s0,-32
    80004324:	ffffd097          	auipc	ra,0xffffd
    80004328:	fcc080e7          	jalr	-52(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000432c:	00005517          	auipc	a0,0x5
    80004330:	fcc50513          	addi	a0,a0,-52 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	908080e7          	jalr	-1784(ra) # 80004c3c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000433c:	00000613          	li	a2,0
    80004340:	00000597          	auipc	a1,0x0
    80004344:	b0c58593          	addi	a1,a1,-1268 # 80003e4c <_ZL11workerBodyDPv>
    80004348:	fe840513          	addi	a0,s0,-24
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	fa4080e7          	jalr	-92(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004354:	00005517          	auipc	a0,0x5
    80004358:	fbc50513          	addi	a0,a0,-68 # 80009310 <CONSOLE_STATUS+0x300>
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	8e0080e7          	jalr	-1824(ra) # 80004c3c <_Z11printStringPKc>
    80004364:	00c0006f          	j	80004370 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004368:	ffffd097          	auipc	ra,0xffffd
    8000436c:	f40080e7          	jalr	-192(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004370:	00007797          	auipc	a5,0x7
    80004374:	4537c783          	lbu	a5,1107(a5) # 8000b7c3 <_ZL9finishedA>
    80004378:	fe0788e3          	beqz	a5,80004368 <_Z18Threads_C_API_testv+0xb4>
    8000437c:	00007797          	auipc	a5,0x7
    80004380:	4467c783          	lbu	a5,1094(a5) # 8000b7c2 <_ZL9finishedB>
    80004384:	fe0782e3          	beqz	a5,80004368 <_Z18Threads_C_API_testv+0xb4>
    80004388:	00007797          	auipc	a5,0x7
    8000438c:	4397c783          	lbu	a5,1081(a5) # 8000b7c1 <_ZL9finishedC>
    80004390:	fc078ce3          	beqz	a5,80004368 <_Z18Threads_C_API_testv+0xb4>
    80004394:	00007797          	auipc	a5,0x7
    80004398:	42c7c783          	lbu	a5,1068(a5) # 8000b7c0 <_ZL9finishedD>
    8000439c:	fc0786e3          	beqz	a5,80004368 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800043a0:	02813083          	ld	ra,40(sp)
    800043a4:	02013403          	ld	s0,32(sp)
    800043a8:	03010113          	addi	sp,sp,48
    800043ac:	00008067          	ret

00000000800043b0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800043b0:	fd010113          	addi	sp,sp,-48
    800043b4:	02113423          	sd	ra,40(sp)
    800043b8:	02813023          	sd	s0,32(sp)
    800043bc:	00913c23          	sd	s1,24(sp)
    800043c0:	01213823          	sd	s2,16(sp)
    800043c4:	01313423          	sd	s3,8(sp)
    800043c8:	03010413          	addi	s0,sp,48
    800043cc:	00050993          	mv	s3,a0
    800043d0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800043d4:	00000913          	li	s2,0
    800043d8:	00c0006f          	j	800043e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	a68080e7          	jalr	-1432(ra) # 80001e44 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800043e4:	ffffd097          	auipc	ra,0xffffd
    800043e8:	068080e7          	jalr	104(ra) # 8000144c <_Z4getcv>
    800043ec:	0005059b          	sext.w	a1,a0
    800043f0:	01b00793          	li	a5,27
    800043f4:	02f58a63          	beq	a1,a5,80004428 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800043f8:	0084b503          	ld	a0,8(s1)
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	c64080e7          	jalr	-924(ra) # 80005060 <_ZN9BufferCPP3putEi>
        i++;
    80004404:	0019071b          	addiw	a4,s2,1
    80004408:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000440c:	0004a683          	lw	a3,0(s1)
    80004410:	0026979b          	slliw	a5,a3,0x2
    80004414:	00d787bb          	addw	a5,a5,a3
    80004418:	0017979b          	slliw	a5,a5,0x1
    8000441c:	02f767bb          	remw	a5,a4,a5
    80004420:	fc0792e3          	bnez	a5,800043e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004424:	fb9ff06f          	j	800043dc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004428:	00100793          	li	a5,1
    8000442c:	00007717          	auipc	a4,0x7
    80004430:	38f72e23          	sw	a5,924(a4) # 8000b7c8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004434:	0209b783          	ld	a5,32(s3)
    80004438:	02100593          	li	a1,33
    8000443c:	0087b503          	ld	a0,8(a5)
    80004440:	00001097          	auipc	ra,0x1
    80004444:	c20080e7          	jalr	-992(ra) # 80005060 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004448:	0104b503          	ld	a0,16(s1)
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	ae4080e7          	jalr	-1308(ra) # 80001f30 <_ZN9Semaphore6signalEv>
}
    80004454:	02813083          	ld	ra,40(sp)
    80004458:	02013403          	ld	s0,32(sp)
    8000445c:	01813483          	ld	s1,24(sp)
    80004460:	01013903          	ld	s2,16(sp)
    80004464:	00813983          	ld	s3,8(sp)
    80004468:	03010113          	addi	sp,sp,48
    8000446c:	00008067          	ret

0000000080004470 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004470:	fe010113          	addi	sp,sp,-32
    80004474:	00113c23          	sd	ra,24(sp)
    80004478:	00813823          	sd	s0,16(sp)
    8000447c:	00913423          	sd	s1,8(sp)
    80004480:	01213023          	sd	s2,0(sp)
    80004484:	02010413          	addi	s0,sp,32
    80004488:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000448c:	00000913          	li	s2,0
    80004490:	00c0006f          	j	8000449c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	9b0080e7          	jalr	-1616(ra) # 80001e44 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000449c:	00007797          	auipc	a5,0x7
    800044a0:	32c7a783          	lw	a5,812(a5) # 8000b7c8 <_ZL9threadEnd>
    800044a4:	02079e63          	bnez	a5,800044e0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800044a8:	0004a583          	lw	a1,0(s1)
    800044ac:	0305859b          	addiw	a1,a1,48
    800044b0:	0084b503          	ld	a0,8(s1)
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	bac080e7          	jalr	-1108(ra) # 80005060 <_ZN9BufferCPP3putEi>
        i++;
    800044bc:	0019071b          	addiw	a4,s2,1
    800044c0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800044c4:	0004a683          	lw	a3,0(s1)
    800044c8:	0026979b          	slliw	a5,a3,0x2
    800044cc:	00d787bb          	addw	a5,a5,a3
    800044d0:	0017979b          	slliw	a5,a5,0x1
    800044d4:	02f767bb          	remw	a5,a4,a5
    800044d8:	fc0792e3          	bnez	a5,8000449c <_ZN12ProducerSync8producerEPv+0x2c>
    800044dc:	fb9ff06f          	j	80004494 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800044e0:	0104b503          	ld	a0,16(s1)
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	a4c080e7          	jalr	-1460(ra) # 80001f30 <_ZN9Semaphore6signalEv>
}
    800044ec:	01813083          	ld	ra,24(sp)
    800044f0:	01013403          	ld	s0,16(sp)
    800044f4:	00813483          	ld	s1,8(sp)
    800044f8:	00013903          	ld	s2,0(sp)
    800044fc:	02010113          	addi	sp,sp,32
    80004500:	00008067          	ret

0000000080004504 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004504:	fd010113          	addi	sp,sp,-48
    80004508:	02113423          	sd	ra,40(sp)
    8000450c:	02813023          	sd	s0,32(sp)
    80004510:	00913c23          	sd	s1,24(sp)
    80004514:	01213823          	sd	s2,16(sp)
    80004518:	01313423          	sd	s3,8(sp)
    8000451c:	01413023          	sd	s4,0(sp)
    80004520:	03010413          	addi	s0,sp,48
    80004524:	00050993          	mv	s3,a0
    80004528:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000452c:	00000a13          	li	s4,0
    80004530:	01c0006f          	j	8000454c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004534:	ffffe097          	auipc	ra,0xffffe
    80004538:	910080e7          	jalr	-1776(ra) # 80001e44 <_ZN6Thread8dispatchEv>
    8000453c:	0500006f          	j	8000458c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004540:	00a00513          	li	a0,10
    80004544:	ffffd097          	auipc	ra,0xffffd
    80004548:	f30080e7          	jalr	-208(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    8000454c:	00007797          	auipc	a5,0x7
    80004550:	27c7a783          	lw	a5,636(a5) # 8000b7c8 <_ZL9threadEnd>
    80004554:	06079263          	bnez	a5,800045b8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004558:	00893503          	ld	a0,8(s2)
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	b94080e7          	jalr	-1132(ra) # 800050f0 <_ZN9BufferCPP3getEv>
        i++;
    80004564:	001a049b          	addiw	s1,s4,1
    80004568:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000456c:	0ff57513          	andi	a0,a0,255
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	f04080e7          	jalr	-252(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004578:	00092703          	lw	a4,0(s2)
    8000457c:	0027179b          	slliw	a5,a4,0x2
    80004580:	00e787bb          	addw	a5,a5,a4
    80004584:	02f4e7bb          	remw	a5,s1,a5
    80004588:	fa0786e3          	beqz	a5,80004534 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000458c:	05000793          	li	a5,80
    80004590:	02f4e4bb          	remw	s1,s1,a5
    80004594:	fa049ce3          	bnez	s1,8000454c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004598:	fa9ff06f          	j	80004540 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000459c:	0209b783          	ld	a5,32(s3)
    800045a0:	0087b503          	ld	a0,8(a5)
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	b4c080e7          	jalr	-1204(ra) # 800050f0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800045ac:	0ff57513          	andi	a0,a0,255
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	a60080e7          	jalr	-1440(ra) # 80002010 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800045b8:	0209b783          	ld	a5,32(s3)
    800045bc:	0087b503          	ld	a0,8(a5)
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	bbc080e7          	jalr	-1092(ra) # 8000517c <_ZN9BufferCPP6getCntEv>
    800045c8:	fca04ae3          	bgtz	a0,8000459c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800045cc:	01093503          	ld	a0,16(s2)
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	960080e7          	jalr	-1696(ra) # 80001f30 <_ZN9Semaphore6signalEv>
}
    800045d8:	02813083          	ld	ra,40(sp)
    800045dc:	02013403          	ld	s0,32(sp)
    800045e0:	01813483          	ld	s1,24(sp)
    800045e4:	01013903          	ld	s2,16(sp)
    800045e8:	00813983          	ld	s3,8(sp)
    800045ec:	00013a03          	ld	s4,0(sp)
    800045f0:	03010113          	addi	sp,sp,48
    800045f4:	00008067          	ret

00000000800045f8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800045f8:	f8010113          	addi	sp,sp,-128
    800045fc:	06113c23          	sd	ra,120(sp)
    80004600:	06813823          	sd	s0,112(sp)
    80004604:	06913423          	sd	s1,104(sp)
    80004608:	07213023          	sd	s2,96(sp)
    8000460c:	05313c23          	sd	s3,88(sp)
    80004610:	05413823          	sd	s4,80(sp)
    80004614:	05513423          	sd	s5,72(sp)
    80004618:	05613023          	sd	s6,64(sp)
    8000461c:	03713c23          	sd	s7,56(sp)
    80004620:	03813823          	sd	s8,48(sp)
    80004624:	03913423          	sd	s9,40(sp)
    80004628:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000462c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004630:	00005517          	auipc	a0,0x5
    80004634:	b0850513          	addi	a0,a0,-1272 # 80009138 <CONSOLE_STATUS+0x128>
    80004638:	00000097          	auipc	ra,0x0
    8000463c:	604080e7          	jalr	1540(ra) # 80004c3c <_Z11printStringPKc>
    getString(input, 30);
    80004640:	01e00593          	li	a1,30
    80004644:	f8040493          	addi	s1,s0,-128
    80004648:	00048513          	mv	a0,s1
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	678080e7          	jalr	1656(ra) # 80004cc4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004654:	00048513          	mv	a0,s1
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	744080e7          	jalr	1860(ra) # 80004d9c <_Z11stringToIntPKc>
    80004660:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004664:	00005517          	auipc	a0,0x5
    80004668:	af450513          	addi	a0,a0,-1292 # 80009158 <CONSOLE_STATUS+0x148>
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	5d0080e7          	jalr	1488(ra) # 80004c3c <_Z11printStringPKc>
    getString(input, 30);
    80004674:	01e00593          	li	a1,30
    80004678:	00048513          	mv	a0,s1
    8000467c:	00000097          	auipc	ra,0x0
    80004680:	648080e7          	jalr	1608(ra) # 80004cc4 <_Z9getStringPci>
    n = stringToInt(input);
    80004684:	00048513          	mv	a0,s1
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	714080e7          	jalr	1812(ra) # 80004d9c <_Z11stringToIntPKc>
    80004690:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004694:	00005517          	auipc	a0,0x5
    80004698:	ae450513          	addi	a0,a0,-1308 # 80009178 <CONSOLE_STATUS+0x168>
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	5a0080e7          	jalr	1440(ra) # 80004c3c <_Z11printStringPKc>
    800046a4:	00000613          	li	a2,0
    800046a8:	00a00593          	li	a1,10
    800046ac:	00090513          	mv	a0,s2
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	73c080e7          	jalr	1852(ra) # 80004dec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800046b8:	00005517          	auipc	a0,0x5
    800046bc:	ad850513          	addi	a0,a0,-1320 # 80009190 <CONSOLE_STATUS+0x180>
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	57c080e7          	jalr	1404(ra) # 80004c3c <_Z11printStringPKc>
    800046c8:	00000613          	li	a2,0
    800046cc:	00a00593          	li	a1,10
    800046d0:	00048513          	mv	a0,s1
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	718080e7          	jalr	1816(ra) # 80004dec <_Z8printIntiii>
    printString(".\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	acc50513          	addi	a0,a0,-1332 # 800091a8 <CONSOLE_STATUS+0x198>
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	558080e7          	jalr	1368(ra) # 80004c3c <_Z11printStringPKc>
    if(threadNum > n) {
    800046ec:	0324c463          	blt	s1,s2,80004714 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800046f0:	03205c63          	blez	s2,80004728 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800046f4:	03800513          	li	a0,56
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	51c080e7          	jalr	1308(ra) # 80001c14 <_Znwm>
    80004700:	00050a93          	mv	s5,a0
    80004704:	00048593          	mv	a1,s1
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	804080e7          	jalr	-2044(ra) # 80004f0c <_ZN9BufferCPPC1Ei>
    80004710:	0300006f          	j	80004740 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004714:	00005517          	auipc	a0,0x5
    80004718:	a9c50513          	addi	a0,a0,-1380 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000471c:	00000097          	auipc	ra,0x0
    80004720:	520080e7          	jalr	1312(ra) # 80004c3c <_Z11printStringPKc>
        return;
    80004724:	0140006f          	j	80004738 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004728:	00005517          	auipc	a0,0x5
    8000472c:	ac850513          	addi	a0,a0,-1336 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004730:	00000097          	auipc	ra,0x0
    80004734:	50c080e7          	jalr	1292(ra) # 80004c3c <_Z11printStringPKc>
        return;
    80004738:	000b8113          	mv	sp,s7
    8000473c:	2380006f          	j	80004974 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004740:	01000513          	li	a0,16
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	4d0080e7          	jalr	1232(ra) # 80001c14 <_Znwm>
    8000474c:	00050493          	mv	s1,a0
    80004750:	00000593          	li	a1,0
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	778080e7          	jalr	1912(ra) # 80001ecc <_ZN9SemaphoreC1Ej>
    8000475c:	00007797          	auipc	a5,0x7
    80004760:	0697ba23          	sd	s1,116(a5) # 8000b7d0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004764:	00391793          	slli	a5,s2,0x3
    80004768:	00f78793          	addi	a5,a5,15
    8000476c:	ff07f793          	andi	a5,a5,-16
    80004770:	40f10133          	sub	sp,sp,a5
    80004774:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004778:	0019071b          	addiw	a4,s2,1
    8000477c:	00171793          	slli	a5,a4,0x1
    80004780:	00e787b3          	add	a5,a5,a4
    80004784:	00379793          	slli	a5,a5,0x3
    80004788:	00f78793          	addi	a5,a5,15
    8000478c:	ff07f793          	andi	a5,a5,-16
    80004790:	40f10133          	sub	sp,sp,a5
    80004794:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004798:	00191c13          	slli	s8,s2,0x1
    8000479c:	012c07b3          	add	a5,s8,s2
    800047a0:	00379793          	slli	a5,a5,0x3
    800047a4:	00fa07b3          	add	a5,s4,a5
    800047a8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800047ac:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800047b0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800047b4:	02800513          	li	a0,40
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	45c080e7          	jalr	1116(ra) # 80001c14 <_Znwm>
    800047c0:	00050b13          	mv	s6,a0
    800047c4:	012c0c33          	add	s8,s8,s2
    800047c8:	003c1c13          	slli	s8,s8,0x3
    800047cc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	6c8080e7          	jalr	1736(ra) # 80001e98 <_ZN6ThreadC1Ev>
    800047d8:	00007797          	auipc	a5,0x7
    800047dc:	ee078793          	addi	a5,a5,-288 # 8000b6b8 <_ZTV12ConsumerSync+0x10>
    800047e0:	00fb3023          	sd	a5,0(s6)
    800047e4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800047e8:	000b0513          	mv	a0,s6
    800047ec:	ffffd097          	auipc	ra,0xffffd
    800047f0:	61c080e7          	jalr	1564(ra) # 80001e08 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800047f4:	00000493          	li	s1,0
    800047f8:	0380006f          	j	80004830 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800047fc:	00007797          	auipc	a5,0x7
    80004800:	e9478793          	addi	a5,a5,-364 # 8000b690 <_ZTV12ProducerSync+0x10>
    80004804:	00fcb023          	sd	a5,0(s9)
    80004808:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000480c:	00349793          	slli	a5,s1,0x3
    80004810:	00f987b3          	add	a5,s3,a5
    80004814:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004818:	00349793          	slli	a5,s1,0x3
    8000481c:	00f987b3          	add	a5,s3,a5
    80004820:	0007b503          	ld	a0,0(a5)
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	5e4080e7          	jalr	1508(ra) # 80001e08 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000482c:	0014849b          	addiw	s1,s1,1
    80004830:	0b24d063          	bge	s1,s2,800048d0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004834:	00149793          	slli	a5,s1,0x1
    80004838:	009787b3          	add	a5,a5,s1
    8000483c:	00379793          	slli	a5,a5,0x3
    80004840:	00fa07b3          	add	a5,s4,a5
    80004844:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004848:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000484c:	00007717          	auipc	a4,0x7
    80004850:	f8473703          	ld	a4,-124(a4) # 8000b7d0 <_ZL10waitForAll>
    80004854:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004858:	02905863          	blez	s1,80004888 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000485c:	02800513          	li	a0,40
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	3b4080e7          	jalr	948(ra) # 80001c14 <_Znwm>
    80004868:	00050c93          	mv	s9,a0
    8000486c:	00149c13          	slli	s8,s1,0x1
    80004870:	009c0c33          	add	s8,s8,s1
    80004874:	003c1c13          	slli	s8,s8,0x3
    80004878:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000487c:	ffffd097          	auipc	ra,0xffffd
    80004880:	61c080e7          	jalr	1564(ra) # 80001e98 <_ZN6ThreadC1Ev>
    80004884:	f79ff06f          	j	800047fc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004888:	02800513          	li	a0,40
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	388080e7          	jalr	904(ra) # 80001c14 <_Znwm>
    80004894:	00050c93          	mv	s9,a0
    80004898:	00149c13          	slli	s8,s1,0x1
    8000489c:	009c0c33          	add	s8,s8,s1
    800048a0:	003c1c13          	slli	s8,s8,0x3
    800048a4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	5f0080e7          	jalr	1520(ra) # 80001e98 <_ZN6ThreadC1Ev>
    800048b0:	00007797          	auipc	a5,0x7
    800048b4:	db878793          	addi	a5,a5,-584 # 8000b668 <_ZTV16ProducerKeyboard+0x10>
    800048b8:	00fcb023          	sd	a5,0(s9)
    800048bc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800048c0:	00349793          	slli	a5,s1,0x3
    800048c4:	00f987b3          	add	a5,s3,a5
    800048c8:	0197b023          	sd	s9,0(a5)
    800048cc:	f4dff06f          	j	80004818 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	574080e7          	jalr	1396(ra) # 80001e44 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800048d8:	00000493          	li	s1,0
    800048dc:	00994e63          	blt	s2,s1,800048f8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800048e0:	00007517          	auipc	a0,0x7
    800048e4:	ef053503          	ld	a0,-272(a0) # 8000b7d0 <_ZL10waitForAll>
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	61c080e7          	jalr	1564(ra) # 80001f04 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800048f0:	0014849b          	addiw	s1,s1,1
    800048f4:	fe9ff06f          	j	800048dc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800048f8:	00000493          	li	s1,0
    800048fc:	0080006f          	j	80004904 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004900:	0014849b          	addiw	s1,s1,1
    80004904:	0324d263          	bge	s1,s2,80004928 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004908:	00349793          	slli	a5,s1,0x3
    8000490c:	00f987b3          	add	a5,s3,a5
    80004910:	0007b503          	ld	a0,0(a5)
    80004914:	fe0506e3          	beqz	a0,80004900 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004918:	00053783          	ld	a5,0(a0)
    8000491c:	0087b783          	ld	a5,8(a5)
    80004920:	000780e7          	jalr	a5
    80004924:	fddff06f          	j	80004900 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004928:	000b0a63          	beqz	s6,8000493c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000492c:	000b3783          	ld	a5,0(s6)
    80004930:	0087b783          	ld	a5,8(a5)
    80004934:	000b0513          	mv	a0,s6
    80004938:	000780e7          	jalr	a5
    delete waitForAll;
    8000493c:	00007517          	auipc	a0,0x7
    80004940:	e9453503          	ld	a0,-364(a0) # 8000b7d0 <_ZL10waitForAll>
    80004944:	00050863          	beqz	a0,80004954 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004948:	00053783          	ld	a5,0(a0)
    8000494c:	0087b783          	ld	a5,8(a5)
    80004950:	000780e7          	jalr	a5
    delete buffer;
    80004954:	000a8e63          	beqz	s5,80004970 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004958:	000a8513          	mv	a0,s5
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	8a8080e7          	jalr	-1880(ra) # 80005204 <_ZN9BufferCPPD1Ev>
    80004964:	000a8513          	mv	a0,s5
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	2fc080e7          	jalr	764(ra) # 80001c64 <_ZdlPv>
    80004970:	000b8113          	mv	sp,s7

}
    80004974:	f8040113          	addi	sp,s0,-128
    80004978:	07813083          	ld	ra,120(sp)
    8000497c:	07013403          	ld	s0,112(sp)
    80004980:	06813483          	ld	s1,104(sp)
    80004984:	06013903          	ld	s2,96(sp)
    80004988:	05813983          	ld	s3,88(sp)
    8000498c:	05013a03          	ld	s4,80(sp)
    80004990:	04813a83          	ld	s5,72(sp)
    80004994:	04013b03          	ld	s6,64(sp)
    80004998:	03813b83          	ld	s7,56(sp)
    8000499c:	03013c03          	ld	s8,48(sp)
    800049a0:	02813c83          	ld	s9,40(sp)
    800049a4:	08010113          	addi	sp,sp,128
    800049a8:	00008067          	ret
    800049ac:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800049b0:	000a8513          	mv	a0,s5
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	2b0080e7          	jalr	688(ra) # 80001c64 <_ZdlPv>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	00008097          	auipc	ra,0x8
    800049c4:	ef8080e7          	jalr	-264(ra) # 8000c8b8 <_Unwind_Resume>
    800049c8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800049cc:	00048513          	mv	a0,s1
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	294080e7          	jalr	660(ra) # 80001c64 <_ZdlPv>
    800049d8:	00090513          	mv	a0,s2
    800049dc:	00008097          	auipc	ra,0x8
    800049e0:	edc080e7          	jalr	-292(ra) # 8000c8b8 <_Unwind_Resume>
    800049e4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800049e8:	000b0513          	mv	a0,s6
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	278080e7          	jalr	632(ra) # 80001c64 <_ZdlPv>
    800049f4:	00048513          	mv	a0,s1
    800049f8:	00008097          	auipc	ra,0x8
    800049fc:	ec0080e7          	jalr	-320(ra) # 8000c8b8 <_Unwind_Resume>
    80004a00:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004a04:	000c8513          	mv	a0,s9
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	25c080e7          	jalr	604(ra) # 80001c64 <_ZdlPv>
    80004a10:	00048513          	mv	a0,s1
    80004a14:	00008097          	auipc	ra,0x8
    80004a18:	ea4080e7          	jalr	-348(ra) # 8000c8b8 <_Unwind_Resume>
    80004a1c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004a20:	000c8513          	mv	a0,s9
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	240080e7          	jalr	576(ra) # 80001c64 <_ZdlPv>
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	00008097          	auipc	ra,0x8
    80004a34:	e88080e7          	jalr	-376(ra) # 8000c8b8 <_Unwind_Resume>

0000000080004a38 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00113423          	sd	ra,8(sp)
    80004a40:	00813023          	sd	s0,0(sp)
    80004a44:	01010413          	addi	s0,sp,16
    80004a48:	00007797          	auipc	a5,0x7
    80004a4c:	c7078793          	addi	a5,a5,-912 # 8000b6b8 <_ZTV12ConsumerSync+0x10>
    80004a50:	00f53023          	sd	a5,0(a0)
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	28c080e7          	jalr	652(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80004a5c:	00813083          	ld	ra,8(sp)
    80004a60:	00013403          	ld	s0,0(sp)
    80004a64:	01010113          	addi	sp,sp,16
    80004a68:	00008067          	ret

0000000080004a6c <_ZN12ConsumerSyncD0Ev>:
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00113c23          	sd	ra,24(sp)
    80004a74:	00813823          	sd	s0,16(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	02010413          	addi	s0,sp,32
    80004a80:	00050493          	mv	s1,a0
    80004a84:	00007797          	auipc	a5,0x7
    80004a88:	c3478793          	addi	a5,a5,-972 # 8000b6b8 <_ZTV12ConsumerSync+0x10>
    80004a8c:	00f53023          	sd	a5,0(a0)
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	250080e7          	jalr	592(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80004a98:	00048513          	mv	a0,s1
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	1c8080e7          	jalr	456(ra) # 80001c64 <_ZdlPv>
    80004aa4:	01813083          	ld	ra,24(sp)
    80004aa8:	01013403          	ld	s0,16(sp)
    80004aac:	00813483          	ld	s1,8(sp)
    80004ab0:	02010113          	addi	sp,sp,32
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004ab8:	ff010113          	addi	sp,sp,-16
    80004abc:	00113423          	sd	ra,8(sp)
    80004ac0:	00813023          	sd	s0,0(sp)
    80004ac4:	01010413          	addi	s0,sp,16
    80004ac8:	00007797          	auipc	a5,0x7
    80004acc:	bc878793          	addi	a5,a5,-1080 # 8000b690 <_ZTV12ProducerSync+0x10>
    80004ad0:	00f53023          	sd	a5,0(a0)
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	20c080e7          	jalr	524(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80004adc:	00813083          	ld	ra,8(sp)
    80004ae0:	00013403          	ld	s0,0(sp)
    80004ae4:	01010113          	addi	sp,sp,16
    80004ae8:	00008067          	ret

0000000080004aec <_ZN12ProducerSyncD0Ev>:
    80004aec:	fe010113          	addi	sp,sp,-32
    80004af0:	00113c23          	sd	ra,24(sp)
    80004af4:	00813823          	sd	s0,16(sp)
    80004af8:	00913423          	sd	s1,8(sp)
    80004afc:	02010413          	addi	s0,sp,32
    80004b00:	00050493          	mv	s1,a0
    80004b04:	00007797          	auipc	a5,0x7
    80004b08:	b8c78793          	addi	a5,a5,-1140 # 8000b690 <_ZTV12ProducerSync+0x10>
    80004b0c:	00f53023          	sd	a5,0(a0)
    80004b10:	ffffd097          	auipc	ra,0xffffd
    80004b14:	1d0080e7          	jalr	464(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	148080e7          	jalr	328(ra) # 80001c64 <_ZdlPv>
    80004b24:	01813083          	ld	ra,24(sp)
    80004b28:	01013403          	ld	s0,16(sp)
    80004b2c:	00813483          	ld	s1,8(sp)
    80004b30:	02010113          	addi	sp,sp,32
    80004b34:	00008067          	ret

0000000080004b38 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004b38:	ff010113          	addi	sp,sp,-16
    80004b3c:	00113423          	sd	ra,8(sp)
    80004b40:	00813023          	sd	s0,0(sp)
    80004b44:	01010413          	addi	s0,sp,16
    80004b48:	00007797          	auipc	a5,0x7
    80004b4c:	b2078793          	addi	a5,a5,-1248 # 8000b668 <_ZTV16ProducerKeyboard+0x10>
    80004b50:	00f53023          	sd	a5,0(a0)
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	18c080e7          	jalr	396(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80004b5c:	00813083          	ld	ra,8(sp)
    80004b60:	00013403          	ld	s0,0(sp)
    80004b64:	01010113          	addi	sp,sp,16
    80004b68:	00008067          	ret

0000000080004b6c <_ZN16ProducerKeyboardD0Ev>:
    80004b6c:	fe010113          	addi	sp,sp,-32
    80004b70:	00113c23          	sd	ra,24(sp)
    80004b74:	00813823          	sd	s0,16(sp)
    80004b78:	00913423          	sd	s1,8(sp)
    80004b7c:	02010413          	addi	s0,sp,32
    80004b80:	00050493          	mv	s1,a0
    80004b84:	00007797          	auipc	a5,0x7
    80004b88:	ae478793          	addi	a5,a5,-1308 # 8000b668 <_ZTV16ProducerKeyboard+0x10>
    80004b8c:	00f53023          	sd	a5,0(a0)
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	150080e7          	jalr	336(ra) # 80001ce0 <_ZN6ThreadD1Ev>
    80004b98:	00048513          	mv	a0,s1
    80004b9c:	ffffd097          	auipc	ra,0xffffd
    80004ba0:	0c8080e7          	jalr	200(ra) # 80001c64 <_ZdlPv>
    80004ba4:	01813083          	ld	ra,24(sp)
    80004ba8:	01013403          	ld	s0,16(sp)
    80004bac:	00813483          	ld	s1,8(sp)
    80004bb0:	02010113          	addi	sp,sp,32
    80004bb4:	00008067          	ret

0000000080004bb8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004bb8:	ff010113          	addi	sp,sp,-16
    80004bbc:	00113423          	sd	ra,8(sp)
    80004bc0:	00813023          	sd	s0,0(sp)
    80004bc4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004bc8:	02053583          	ld	a1,32(a0)
    80004bcc:	fffff097          	auipc	ra,0xfffff
    80004bd0:	7e4080e7          	jalr	2020(ra) # 800043b0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004bd4:	00813083          	ld	ra,8(sp)
    80004bd8:	00013403          	ld	s0,0(sp)
    80004bdc:	01010113          	addi	sp,sp,16
    80004be0:	00008067          	ret

0000000080004be4 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004be4:	ff010113          	addi	sp,sp,-16
    80004be8:	00113423          	sd	ra,8(sp)
    80004bec:	00813023          	sd	s0,0(sp)
    80004bf0:	01010413          	addi	s0,sp,16
        producer(td);
    80004bf4:	02053583          	ld	a1,32(a0)
    80004bf8:	00000097          	auipc	ra,0x0
    80004bfc:	878080e7          	jalr	-1928(ra) # 80004470 <_ZN12ProducerSync8producerEPv>
    }
    80004c00:	00813083          	ld	ra,8(sp)
    80004c04:	00013403          	ld	s0,0(sp)
    80004c08:	01010113          	addi	sp,sp,16
    80004c0c:	00008067          	ret

0000000080004c10 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004c10:	ff010113          	addi	sp,sp,-16
    80004c14:	00113423          	sd	ra,8(sp)
    80004c18:	00813023          	sd	s0,0(sp)
    80004c1c:	01010413          	addi	s0,sp,16
        consumer(td);
    80004c20:	02053583          	ld	a1,32(a0)
    80004c24:	00000097          	auipc	ra,0x0
    80004c28:	8e0080e7          	jalr	-1824(ra) # 80004504 <_ZN12ConsumerSync8consumerEPv>
    }
    80004c2c:	00813083          	ld	ra,8(sp)
    80004c30:	00013403          	ld	s0,0(sp)
    80004c34:	01010113          	addi	sp,sp,16
    80004c38:	00008067          	ret

0000000080004c3c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00113c23          	sd	ra,24(sp)
    80004c44:	00813823          	sd	s0,16(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    80004c50:	00050493          	mv	s1,a0
    LOCK();
    80004c54:	00100613          	li	a2,1
    80004c58:	00000593          	li	a1,0
    80004c5c:	00007517          	auipc	a0,0x7
    80004c60:	b7c50513          	addi	a0,a0,-1156 # 8000b7d8 <lockPrint>
    80004c64:	ffffc097          	auipc	ra,0xffffc
    80004c68:	5c0080e7          	jalr	1472(ra) # 80001224 <copy_and_swap>
    80004c6c:	00050863          	beqz	a0,80004c7c <_Z11printStringPKc+0x40>
    80004c70:	ffffc097          	auipc	ra,0xffffc
    80004c74:	638080e7          	jalr	1592(ra) # 800012a8 <_Z15thread_dispatchv>
    80004c78:	fddff06f          	j	80004c54 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004c7c:	0004c503          	lbu	a0,0(s1)
    80004c80:	00050a63          	beqz	a0,80004c94 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004c84:	ffffc097          	auipc	ra,0xffffc
    80004c88:	7f0080e7          	jalr	2032(ra) # 80001474 <_Z4putcc>
        string++;
    80004c8c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004c90:	fedff06f          	j	80004c7c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004c94:	00000613          	li	a2,0
    80004c98:	00100593          	li	a1,1
    80004c9c:	00007517          	auipc	a0,0x7
    80004ca0:	b3c50513          	addi	a0,a0,-1220 # 8000b7d8 <lockPrint>
    80004ca4:	ffffc097          	auipc	ra,0xffffc
    80004ca8:	580080e7          	jalr	1408(ra) # 80001224 <copy_and_swap>
    80004cac:	fe0514e3          	bnez	a0,80004c94 <_Z11printStringPKc+0x58>
}
    80004cb0:	01813083          	ld	ra,24(sp)
    80004cb4:	01013403          	ld	s0,16(sp)
    80004cb8:	00813483          	ld	s1,8(sp)
    80004cbc:	02010113          	addi	sp,sp,32
    80004cc0:	00008067          	ret

0000000080004cc4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004cc4:	fd010113          	addi	sp,sp,-48
    80004cc8:	02113423          	sd	ra,40(sp)
    80004ccc:	02813023          	sd	s0,32(sp)
    80004cd0:	00913c23          	sd	s1,24(sp)
    80004cd4:	01213823          	sd	s2,16(sp)
    80004cd8:	01313423          	sd	s3,8(sp)
    80004cdc:	01413023          	sd	s4,0(sp)
    80004ce0:	03010413          	addi	s0,sp,48
    80004ce4:	00050993          	mv	s3,a0
    80004ce8:	00058a13          	mv	s4,a1
    LOCK();
    80004cec:	00100613          	li	a2,1
    80004cf0:	00000593          	li	a1,0
    80004cf4:	00007517          	auipc	a0,0x7
    80004cf8:	ae450513          	addi	a0,a0,-1308 # 8000b7d8 <lockPrint>
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	528080e7          	jalr	1320(ra) # 80001224 <copy_and_swap>
    80004d04:	00050863          	beqz	a0,80004d14 <_Z9getStringPci+0x50>
    80004d08:	ffffc097          	auipc	ra,0xffffc
    80004d0c:	5a0080e7          	jalr	1440(ra) # 800012a8 <_Z15thread_dispatchv>
    80004d10:	fddff06f          	j	80004cec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004d14:	00000913          	li	s2,0
    80004d18:	00090493          	mv	s1,s2
    80004d1c:	0019091b          	addiw	s2,s2,1
    80004d20:	03495a63          	bge	s2,s4,80004d54 <_Z9getStringPci+0x90>
        cc = getc();
    80004d24:	ffffc097          	auipc	ra,0xffffc
    80004d28:	728080e7          	jalr	1832(ra) # 8000144c <_Z4getcv>
        if(cc < 1)
    80004d2c:	02050463          	beqz	a0,80004d54 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004d30:	009984b3          	add	s1,s3,s1
    80004d34:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004d38:	00a00793          	li	a5,10
    80004d3c:	00f50a63          	beq	a0,a5,80004d50 <_Z9getStringPci+0x8c>
    80004d40:	00d00793          	li	a5,13
    80004d44:	fcf51ae3          	bne	a0,a5,80004d18 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004d48:	00090493          	mv	s1,s2
    80004d4c:	0080006f          	j	80004d54 <_Z9getStringPci+0x90>
    80004d50:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004d54:	009984b3          	add	s1,s3,s1
    80004d58:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004d5c:	00000613          	li	a2,0
    80004d60:	00100593          	li	a1,1
    80004d64:	00007517          	auipc	a0,0x7
    80004d68:	a7450513          	addi	a0,a0,-1420 # 8000b7d8 <lockPrint>
    80004d6c:	ffffc097          	auipc	ra,0xffffc
    80004d70:	4b8080e7          	jalr	1208(ra) # 80001224 <copy_and_swap>
    80004d74:	fe0514e3          	bnez	a0,80004d5c <_Z9getStringPci+0x98>
    return buf;
}
    80004d78:	00098513          	mv	a0,s3
    80004d7c:	02813083          	ld	ra,40(sp)
    80004d80:	02013403          	ld	s0,32(sp)
    80004d84:	01813483          	ld	s1,24(sp)
    80004d88:	01013903          	ld	s2,16(sp)
    80004d8c:	00813983          	ld	s3,8(sp)
    80004d90:	00013a03          	ld	s4,0(sp)
    80004d94:	03010113          	addi	sp,sp,48
    80004d98:	00008067          	ret

0000000080004d9c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004d9c:	ff010113          	addi	sp,sp,-16
    80004da0:	00813423          	sd	s0,8(sp)
    80004da4:	01010413          	addi	s0,sp,16
    80004da8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004dac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004db0:	0006c603          	lbu	a2,0(a3)
    80004db4:	fd06071b          	addiw	a4,a2,-48
    80004db8:	0ff77713          	andi	a4,a4,255
    80004dbc:	00900793          	li	a5,9
    80004dc0:	02e7e063          	bltu	a5,a4,80004de0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004dc4:	0025179b          	slliw	a5,a0,0x2
    80004dc8:	00a787bb          	addw	a5,a5,a0
    80004dcc:	0017979b          	slliw	a5,a5,0x1
    80004dd0:	00168693          	addi	a3,a3,1
    80004dd4:	00c787bb          	addw	a5,a5,a2
    80004dd8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004ddc:	fd5ff06f          	j	80004db0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004de0:	00813403          	ld	s0,8(sp)
    80004de4:	01010113          	addi	sp,sp,16
    80004de8:	00008067          	ret

0000000080004dec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004dec:	fc010113          	addi	sp,sp,-64
    80004df0:	02113c23          	sd	ra,56(sp)
    80004df4:	02813823          	sd	s0,48(sp)
    80004df8:	02913423          	sd	s1,40(sp)
    80004dfc:	03213023          	sd	s2,32(sp)
    80004e00:	01313c23          	sd	s3,24(sp)
    80004e04:	04010413          	addi	s0,sp,64
    80004e08:	00050493          	mv	s1,a0
    80004e0c:	00058913          	mv	s2,a1
    80004e10:	00060993          	mv	s3,a2
    LOCK();
    80004e14:	00100613          	li	a2,1
    80004e18:	00000593          	li	a1,0
    80004e1c:	00007517          	auipc	a0,0x7
    80004e20:	9bc50513          	addi	a0,a0,-1604 # 8000b7d8 <lockPrint>
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	400080e7          	jalr	1024(ra) # 80001224 <copy_and_swap>
    80004e2c:	00050863          	beqz	a0,80004e3c <_Z8printIntiii+0x50>
    80004e30:	ffffc097          	auipc	ra,0xffffc
    80004e34:	478080e7          	jalr	1144(ra) # 800012a8 <_Z15thread_dispatchv>
    80004e38:	fddff06f          	j	80004e14 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004e3c:	00098463          	beqz	s3,80004e44 <_Z8printIntiii+0x58>
    80004e40:	0804c463          	bltz	s1,80004ec8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004e44:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004e48:	00000593          	li	a1,0
    }

    i = 0;
    80004e4c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004e50:	0009079b          	sext.w	a5,s2
    80004e54:	0325773b          	remuw	a4,a0,s2
    80004e58:	00048613          	mv	a2,s1
    80004e5c:	0014849b          	addiw	s1,s1,1
    80004e60:	02071693          	slli	a3,a4,0x20
    80004e64:	0206d693          	srli	a3,a3,0x20
    80004e68:	00007717          	auipc	a4,0x7
    80004e6c:	86870713          	addi	a4,a4,-1944 # 8000b6d0 <digits>
    80004e70:	00d70733          	add	a4,a4,a3
    80004e74:	00074683          	lbu	a3,0(a4)
    80004e78:	fd040713          	addi	a4,s0,-48
    80004e7c:	00c70733          	add	a4,a4,a2
    80004e80:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004e84:	0005071b          	sext.w	a4,a0
    80004e88:	0325553b          	divuw	a0,a0,s2
    80004e8c:	fcf772e3          	bgeu	a4,a5,80004e50 <_Z8printIntiii+0x64>
    if(neg)
    80004e90:	00058c63          	beqz	a1,80004ea8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004e94:	fd040793          	addi	a5,s0,-48
    80004e98:	009784b3          	add	s1,a5,s1
    80004e9c:	02d00793          	li	a5,45
    80004ea0:	fef48823          	sb	a5,-16(s1)
    80004ea4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ea8:	fff4849b          	addiw	s1,s1,-1
    80004eac:	0204c463          	bltz	s1,80004ed4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004eb0:	fd040793          	addi	a5,s0,-48
    80004eb4:	009787b3          	add	a5,a5,s1
    80004eb8:	ff07c503          	lbu	a0,-16(a5)
    80004ebc:	ffffc097          	auipc	ra,0xffffc
    80004ec0:	5b8080e7          	jalr	1464(ra) # 80001474 <_Z4putcc>
    80004ec4:	fe5ff06f          	j	80004ea8 <_Z8printIntiii+0xbc>
        x = -xx;
    80004ec8:	4090053b          	negw	a0,s1
        neg = 1;
    80004ecc:	00100593          	li	a1,1
        x = -xx;
    80004ed0:	f7dff06f          	j	80004e4c <_Z8printIntiii+0x60>

    UNLOCK();
    80004ed4:	00000613          	li	a2,0
    80004ed8:	00100593          	li	a1,1
    80004edc:	00007517          	auipc	a0,0x7
    80004ee0:	8fc50513          	addi	a0,a0,-1796 # 8000b7d8 <lockPrint>
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	340080e7          	jalr	832(ra) # 80001224 <copy_and_swap>
    80004eec:	fe0514e3          	bnez	a0,80004ed4 <_Z8printIntiii+0xe8>
    80004ef0:	03813083          	ld	ra,56(sp)
    80004ef4:	03013403          	ld	s0,48(sp)
    80004ef8:	02813483          	ld	s1,40(sp)
    80004efc:	02013903          	ld	s2,32(sp)
    80004f00:	01813983          	ld	s3,24(sp)
    80004f04:	04010113          	addi	sp,sp,64
    80004f08:	00008067          	ret

0000000080004f0c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004f0c:	fd010113          	addi	sp,sp,-48
    80004f10:	02113423          	sd	ra,40(sp)
    80004f14:	02813023          	sd	s0,32(sp)
    80004f18:	00913c23          	sd	s1,24(sp)
    80004f1c:	01213823          	sd	s2,16(sp)
    80004f20:	01313423          	sd	s3,8(sp)
    80004f24:	03010413          	addi	s0,sp,48
    80004f28:	00050493          	mv	s1,a0
    80004f2c:	00058913          	mv	s2,a1
    80004f30:	0015879b          	addiw	a5,a1,1
    80004f34:	0007851b          	sext.w	a0,a5
    80004f38:	00f4a023          	sw	a5,0(s1)
    80004f3c:	0004a823          	sw	zero,16(s1)
    80004f40:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004f44:	00251513          	slli	a0,a0,0x2
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	2fc080e7          	jalr	764(ra) # 80001244 <_Z9mem_allocm>
    80004f50:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004f54:	01000513          	li	a0,16
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	cbc080e7          	jalr	-836(ra) # 80001c14 <_Znwm>
    80004f60:	00050993          	mv	s3,a0
    80004f64:	00000593          	li	a1,0
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	f64080e7          	jalr	-156(ra) # 80001ecc <_ZN9SemaphoreC1Ej>
    80004f70:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004f74:	01000513          	li	a0,16
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	c9c080e7          	jalr	-868(ra) # 80001c14 <_Znwm>
    80004f80:	00050993          	mv	s3,a0
    80004f84:	00090593          	mv	a1,s2
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	f44080e7          	jalr	-188(ra) # 80001ecc <_ZN9SemaphoreC1Ej>
    80004f90:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004f94:	01000513          	li	a0,16
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	c7c080e7          	jalr	-900(ra) # 80001c14 <_Znwm>
    80004fa0:	00050913          	mv	s2,a0
    80004fa4:	00100593          	li	a1,1
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	f24080e7          	jalr	-220(ra) # 80001ecc <_ZN9SemaphoreC1Ej>
    80004fb0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004fb4:	01000513          	li	a0,16
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	c5c080e7          	jalr	-932(ra) # 80001c14 <_Znwm>
    80004fc0:	00050913          	mv	s2,a0
    80004fc4:	00100593          	li	a1,1
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	f04080e7          	jalr	-252(ra) # 80001ecc <_ZN9SemaphoreC1Ej>
    80004fd0:	0324b823          	sd	s2,48(s1)
}
    80004fd4:	02813083          	ld	ra,40(sp)
    80004fd8:	02013403          	ld	s0,32(sp)
    80004fdc:	01813483          	ld	s1,24(sp)
    80004fe0:	01013903          	ld	s2,16(sp)
    80004fe4:	00813983          	ld	s3,8(sp)
    80004fe8:	03010113          	addi	sp,sp,48
    80004fec:	00008067          	ret
    80004ff0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004ff4:	00098513          	mv	a0,s3
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	c6c080e7          	jalr	-916(ra) # 80001c64 <_ZdlPv>
    80005000:	00048513          	mv	a0,s1
    80005004:	00008097          	auipc	ra,0x8
    80005008:	8b4080e7          	jalr	-1868(ra) # 8000c8b8 <_Unwind_Resume>
    8000500c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005010:	00098513          	mv	a0,s3
    80005014:	ffffd097          	auipc	ra,0xffffd
    80005018:	c50080e7          	jalr	-944(ra) # 80001c64 <_ZdlPv>
    8000501c:	00048513          	mv	a0,s1
    80005020:	00008097          	auipc	ra,0x8
    80005024:	898080e7          	jalr	-1896(ra) # 8000c8b8 <_Unwind_Resume>
    80005028:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000502c:	00090513          	mv	a0,s2
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	c34080e7          	jalr	-972(ra) # 80001c64 <_ZdlPv>
    80005038:	00048513          	mv	a0,s1
    8000503c:	00008097          	auipc	ra,0x8
    80005040:	87c080e7          	jalr	-1924(ra) # 8000c8b8 <_Unwind_Resume>
    80005044:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005048:	00090513          	mv	a0,s2
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	c18080e7          	jalr	-1000(ra) # 80001c64 <_ZdlPv>
    80005054:	00048513          	mv	a0,s1
    80005058:	00008097          	auipc	ra,0x8
    8000505c:	860080e7          	jalr	-1952(ra) # 8000c8b8 <_Unwind_Resume>

0000000080005060 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005060:	fe010113          	addi	sp,sp,-32
    80005064:	00113c23          	sd	ra,24(sp)
    80005068:	00813823          	sd	s0,16(sp)
    8000506c:	00913423          	sd	s1,8(sp)
    80005070:	01213023          	sd	s2,0(sp)
    80005074:	02010413          	addi	s0,sp,32
    80005078:	00050493          	mv	s1,a0
    8000507c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005080:	01853503          	ld	a0,24(a0)
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	e80080e7          	jalr	-384(ra) # 80001f04 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000508c:	0304b503          	ld	a0,48(s1)
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	e74080e7          	jalr	-396(ra) # 80001f04 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005098:	0084b783          	ld	a5,8(s1)
    8000509c:	0144a703          	lw	a4,20(s1)
    800050a0:	00271713          	slli	a4,a4,0x2
    800050a4:	00e787b3          	add	a5,a5,a4
    800050a8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800050ac:	0144a783          	lw	a5,20(s1)
    800050b0:	0017879b          	addiw	a5,a5,1
    800050b4:	0004a703          	lw	a4,0(s1)
    800050b8:	02e7e7bb          	remw	a5,a5,a4
    800050bc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800050c0:	0304b503          	ld	a0,48(s1)
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	e6c080e7          	jalr	-404(ra) # 80001f30 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800050cc:	0204b503          	ld	a0,32(s1)
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	e60080e7          	jalr	-416(ra) # 80001f30 <_ZN9Semaphore6signalEv>

}
    800050d8:	01813083          	ld	ra,24(sp)
    800050dc:	01013403          	ld	s0,16(sp)
    800050e0:	00813483          	ld	s1,8(sp)
    800050e4:	00013903          	ld	s2,0(sp)
    800050e8:	02010113          	addi	sp,sp,32
    800050ec:	00008067          	ret

00000000800050f0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00113c23          	sd	ra,24(sp)
    800050f8:	00813823          	sd	s0,16(sp)
    800050fc:	00913423          	sd	s1,8(sp)
    80005100:	01213023          	sd	s2,0(sp)
    80005104:	02010413          	addi	s0,sp,32
    80005108:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000510c:	02053503          	ld	a0,32(a0)
    80005110:	ffffd097          	auipc	ra,0xffffd
    80005114:	df4080e7          	jalr	-524(ra) # 80001f04 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005118:	0284b503          	ld	a0,40(s1)
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	de8080e7          	jalr	-536(ra) # 80001f04 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005124:	0084b703          	ld	a4,8(s1)
    80005128:	0104a783          	lw	a5,16(s1)
    8000512c:	00279693          	slli	a3,a5,0x2
    80005130:	00d70733          	add	a4,a4,a3
    80005134:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005138:	0017879b          	addiw	a5,a5,1
    8000513c:	0004a703          	lw	a4,0(s1)
    80005140:	02e7e7bb          	remw	a5,a5,a4
    80005144:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005148:	0284b503          	ld	a0,40(s1)
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	de4080e7          	jalr	-540(ra) # 80001f30 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005154:	0184b503          	ld	a0,24(s1)
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	dd8080e7          	jalr	-552(ra) # 80001f30 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005160:	00090513          	mv	a0,s2
    80005164:	01813083          	ld	ra,24(sp)
    80005168:	01013403          	ld	s0,16(sp)
    8000516c:	00813483          	ld	s1,8(sp)
    80005170:	00013903          	ld	s2,0(sp)
    80005174:	02010113          	addi	sp,sp,32
    80005178:	00008067          	ret

000000008000517c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000517c:	fe010113          	addi	sp,sp,-32
    80005180:	00113c23          	sd	ra,24(sp)
    80005184:	00813823          	sd	s0,16(sp)
    80005188:	00913423          	sd	s1,8(sp)
    8000518c:	01213023          	sd	s2,0(sp)
    80005190:	02010413          	addi	s0,sp,32
    80005194:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005198:	02853503          	ld	a0,40(a0)
    8000519c:	ffffd097          	auipc	ra,0xffffd
    800051a0:	d68080e7          	jalr	-664(ra) # 80001f04 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800051a4:	0304b503          	ld	a0,48(s1)
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	d5c080e7          	jalr	-676(ra) # 80001f04 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800051b0:	0144a783          	lw	a5,20(s1)
    800051b4:	0104a903          	lw	s2,16(s1)
    800051b8:	0327ce63          	blt	a5,s2,800051f4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800051bc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800051c0:	0304b503          	ld	a0,48(s1)
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	d6c080e7          	jalr	-660(ra) # 80001f30 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800051cc:	0284b503          	ld	a0,40(s1)
    800051d0:	ffffd097          	auipc	ra,0xffffd
    800051d4:	d60080e7          	jalr	-672(ra) # 80001f30 <_ZN9Semaphore6signalEv>

    return ret;
}
    800051d8:	00090513          	mv	a0,s2
    800051dc:	01813083          	ld	ra,24(sp)
    800051e0:	01013403          	ld	s0,16(sp)
    800051e4:	00813483          	ld	s1,8(sp)
    800051e8:	00013903          	ld	s2,0(sp)
    800051ec:	02010113          	addi	sp,sp,32
    800051f0:	00008067          	ret
        ret = cap - head + tail;
    800051f4:	0004a703          	lw	a4,0(s1)
    800051f8:	4127093b          	subw	s2,a4,s2
    800051fc:	00f9093b          	addw	s2,s2,a5
    80005200:	fc1ff06f          	j	800051c0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005204 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005204:	fe010113          	addi	sp,sp,-32
    80005208:	00113c23          	sd	ra,24(sp)
    8000520c:	00813823          	sd	s0,16(sp)
    80005210:	00913423          	sd	s1,8(sp)
    80005214:	02010413          	addi	s0,sp,32
    80005218:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000521c:	00a00513          	li	a0,10
    80005220:	ffffd097          	auipc	ra,0xffffd
    80005224:	df0080e7          	jalr	-528(ra) # 80002010 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005228:	00004517          	auipc	a0,0x4
    8000522c:	10050513          	addi	a0,a0,256 # 80009328 <CONSOLE_STATUS+0x318>
    80005230:	00000097          	auipc	ra,0x0
    80005234:	a0c080e7          	jalr	-1524(ra) # 80004c3c <_Z11printStringPKc>
    while (getCnt()) {
    80005238:	00048513          	mv	a0,s1
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	f40080e7          	jalr	-192(ra) # 8000517c <_ZN9BufferCPP6getCntEv>
    80005244:	02050c63          	beqz	a0,8000527c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005248:	0084b783          	ld	a5,8(s1)
    8000524c:	0104a703          	lw	a4,16(s1)
    80005250:	00271713          	slli	a4,a4,0x2
    80005254:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005258:	0007c503          	lbu	a0,0(a5)
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	db4080e7          	jalr	-588(ra) # 80002010 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005264:	0104a783          	lw	a5,16(s1)
    80005268:	0017879b          	addiw	a5,a5,1
    8000526c:	0004a703          	lw	a4,0(s1)
    80005270:	02e7e7bb          	remw	a5,a5,a4
    80005274:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005278:	fc1ff06f          	j	80005238 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000527c:	02100513          	li	a0,33
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	d90080e7          	jalr	-624(ra) # 80002010 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005288:	00a00513          	li	a0,10
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	d84080e7          	jalr	-636(ra) # 80002010 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005294:	0084b503          	ld	a0,8(s1)
    80005298:	ffffc097          	auipc	ra,0xffffc
    8000529c:	fe4080e7          	jalr	-28(ra) # 8000127c <_Z8mem_freePv>
    delete itemAvailable;
    800052a0:	0204b503          	ld	a0,32(s1)
    800052a4:	00050863          	beqz	a0,800052b4 <_ZN9BufferCPPD1Ev+0xb0>
    800052a8:	00053783          	ld	a5,0(a0)
    800052ac:	0087b783          	ld	a5,8(a5)
    800052b0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800052b4:	0184b503          	ld	a0,24(s1)
    800052b8:	00050863          	beqz	a0,800052c8 <_ZN9BufferCPPD1Ev+0xc4>
    800052bc:	00053783          	ld	a5,0(a0)
    800052c0:	0087b783          	ld	a5,8(a5)
    800052c4:	000780e7          	jalr	a5
    delete mutexTail;
    800052c8:	0304b503          	ld	a0,48(s1)
    800052cc:	00050863          	beqz	a0,800052dc <_ZN9BufferCPPD1Ev+0xd8>
    800052d0:	00053783          	ld	a5,0(a0)
    800052d4:	0087b783          	ld	a5,8(a5)
    800052d8:	000780e7          	jalr	a5
    delete mutexHead;
    800052dc:	0284b503          	ld	a0,40(s1)
    800052e0:	00050863          	beqz	a0,800052f0 <_ZN9BufferCPPD1Ev+0xec>
    800052e4:	00053783          	ld	a5,0(a0)
    800052e8:	0087b783          	ld	a5,8(a5)
    800052ec:	000780e7          	jalr	a5
}
    800052f0:	01813083          	ld	ra,24(sp)
    800052f4:	01013403          	ld	s0,16(sp)
    800052f8:	00813483          	ld	s1,8(sp)
    800052fc:	02010113          	addi	sp,sp,32
    80005300:	00008067          	ret

0000000080005304 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005304:	fe010113          	addi	sp,sp,-32
    80005308:	00113c23          	sd	ra,24(sp)
    8000530c:	00813823          	sd	s0,16(sp)
    80005310:	00913423          	sd	s1,8(sp)
    80005314:	01213023          	sd	s2,0(sp)
    80005318:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000531c:	00004517          	auipc	a0,0x4
    80005320:	02450513          	addi	a0,a0,36 # 80009340 <CONSOLE_STATUS+0x330>
    80005324:	00000097          	auipc	ra,0x0
    80005328:	918080e7          	jalr	-1768(ra) # 80004c3c <_Z11printStringPKc>
    int test = getc() - '0';
    8000532c:	ffffc097          	auipc	ra,0xffffc
    80005330:	120080e7          	jalr	288(ra) # 8000144c <_Z4getcv>
    80005334:	00050913          	mv	s2,a0
    80005338:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	110080e7          	jalr	272(ra) # 8000144c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005344:	fcb9091b          	addiw	s2,s2,-53
    80005348:	00100793          	li	a5,1
    8000534c:	0327f463          	bgeu	a5,s2,80005374 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005350:	00700793          	li	a5,7
    80005354:	0e97e263          	bltu	a5,s1,80005438 <_Z8userMainv+0x134>
    80005358:	00249493          	slli	s1,s1,0x2
    8000535c:	00004717          	auipc	a4,0x4
    80005360:	1fc70713          	addi	a4,a4,508 # 80009558 <CONSOLE_STATUS+0x548>
    80005364:	00e484b3          	add	s1,s1,a4
    80005368:	0004a783          	lw	a5,0(s1)
    8000536c:	00e787b3          	add	a5,a5,a4
    80005370:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005374:	00004517          	auipc	a0,0x4
    80005378:	fec50513          	addi	a0,a0,-20 # 80009360 <CONSOLE_STATUS+0x350>
    8000537c:	00000097          	auipc	ra,0x0
    80005380:	8c0080e7          	jalr	-1856(ra) # 80004c3c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005384:	01813083          	ld	ra,24(sp)
    80005388:	01013403          	ld	s0,16(sp)
    8000538c:	00813483          	ld	s1,8(sp)
    80005390:	00013903          	ld	s2,0(sp)
    80005394:	02010113          	addi	sp,sp,32
    80005398:	00008067          	ret
            Threads_C_API_test();
    8000539c:	fffff097          	auipc	ra,0xfffff
    800053a0:	f18080e7          	jalr	-232(ra) # 800042b4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800053a4:	00004517          	auipc	a0,0x4
    800053a8:	fec50513          	addi	a0,a0,-20 # 80009390 <CONSOLE_STATUS+0x380>
    800053ac:	00000097          	auipc	ra,0x0
    800053b0:	890080e7          	jalr	-1904(ra) # 80004c3c <_Z11printStringPKc>
            break;
    800053b4:	fd1ff06f          	j	80005384 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800053b8:	ffffe097          	auipc	ra,0xffffe
    800053bc:	ddc080e7          	jalr	-548(ra) # 80003194 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800053c0:	00004517          	auipc	a0,0x4
    800053c4:	01050513          	addi	a0,a0,16 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	874080e7          	jalr	-1932(ra) # 80004c3c <_Z11printStringPKc>
            break;
    800053d0:	fb5ff06f          	j	80005384 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	614080e7          	jalr	1556(ra) # 800029e8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800053dc:	00004517          	auipc	a0,0x4
    800053e0:	03450513          	addi	a0,a0,52 # 80009410 <CONSOLE_STATUS+0x400>
    800053e4:	00000097          	auipc	ra,0x0
    800053e8:	858080e7          	jalr	-1960(ra) # 80004c3c <_Z11printStringPKc>
            break;
    800053ec:	f99ff06f          	j	80005384 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800053f0:	fffff097          	auipc	ra,0xfffff
    800053f4:	208080e7          	jalr	520(ra) # 800045f8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800053f8:	00004517          	auipc	a0,0x4
    800053fc:	06850513          	addi	a0,a0,104 # 80009460 <CONSOLE_STATUS+0x450>
    80005400:	00000097          	auipc	ra,0x0
    80005404:	83c080e7          	jalr	-1988(ra) # 80004c3c <_Z11printStringPKc>
            break;
    80005408:	f7dff06f          	j	80005384 <_Z8userMainv+0x80>
            System_Mode_test();
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	658080e7          	jalr	1624(ra) # 80005a64 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005414:	00004517          	auipc	a0,0x4
    80005418:	0a450513          	addi	a0,a0,164 # 800094b8 <CONSOLE_STATUS+0x4a8>
    8000541c:	00000097          	auipc	ra,0x0
    80005420:	820080e7          	jalr	-2016(ra) # 80004c3c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005424:	00004517          	auipc	a0,0x4
    80005428:	0b450513          	addi	a0,a0,180 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	810080e7          	jalr	-2032(ra) # 80004c3c <_Z11printStringPKc>
            break;
    80005434:	f51ff06f          	j	80005384 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005438:	00004517          	auipc	a0,0x4
    8000543c:	0f850513          	addi	a0,a0,248 # 80009530 <CONSOLE_STATUS+0x520>
    80005440:	fffff097          	auipc	ra,0xfffff
    80005444:	7fc080e7          	jalr	2044(ra) # 80004c3c <_Z11printStringPKc>
    80005448:	f3dff06f          	j	80005384 <_Z8userMainv+0x80>

000000008000544c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	01213023          	sd	s2,0(sp)
    80005460:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005464:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005468:	00600493          	li	s1,6
    while (--i > 0) {
    8000546c:	fff4849b          	addiw	s1,s1,-1
    80005470:	04905463          	blez	s1,800054b8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005474:	00004517          	auipc	a0,0x4
    80005478:	10450513          	addi	a0,a0,260 # 80009578 <CONSOLE_STATUS+0x568>
    8000547c:	fffff097          	auipc	ra,0xfffff
    80005480:	7c0080e7          	jalr	1984(ra) # 80004c3c <_Z11printStringPKc>
        printInt(sleep_time);
    80005484:	00000613          	li	a2,0
    80005488:	00a00593          	li	a1,10
    8000548c:	0009051b          	sext.w	a0,s2
    80005490:	00000097          	auipc	ra,0x0
    80005494:	95c080e7          	jalr	-1700(ra) # 80004dec <_Z8printIntiii>
        printString(" !\n");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	0e850513          	addi	a0,a0,232 # 80009580 <CONSOLE_STATUS+0x570>
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	79c080e7          	jalr	1948(ra) # 80004c3c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800054a8:	00090513          	mv	a0,s2
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	008080e7          	jalr	8(ra) # 800014b4 <_Z10time_sleepm>
    while (--i > 0) {
    800054b4:	fb9ff06f          	j	8000546c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800054b8:	00a00793          	li	a5,10
    800054bc:	02f95933          	divu	s2,s2,a5
    800054c0:	fff90913          	addi	s2,s2,-1
    800054c4:	00006797          	auipc	a5,0x6
    800054c8:	31c78793          	addi	a5,a5,796 # 8000b7e0 <_ZL8finished>
    800054cc:	01278933          	add	s2,a5,s2
    800054d0:	00100793          	li	a5,1
    800054d4:	00f90023          	sb	a5,0(s2)
}
    800054d8:	01813083          	ld	ra,24(sp)
    800054dc:	01013403          	ld	s0,16(sp)
    800054e0:	00813483          	ld	s1,8(sp)
    800054e4:	00013903          	ld	s2,0(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret

00000000800054f0 <_Z12testSleepingv>:

void testSleeping() {
    800054f0:	fc010113          	addi	sp,sp,-64
    800054f4:	02113c23          	sd	ra,56(sp)
    800054f8:	02813823          	sd	s0,48(sp)
    800054fc:	02913423          	sd	s1,40(sp)
    80005500:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005504:	00a00793          	li	a5,10
    80005508:	fcf43823          	sd	a5,-48(s0)
    8000550c:	01400793          	li	a5,20
    80005510:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005514:	00000493          	li	s1,0
    80005518:	02c0006f          	j	80005544 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000551c:	00349793          	slli	a5,s1,0x3
    80005520:	fd040613          	addi	a2,s0,-48
    80005524:	00f60633          	add	a2,a2,a5
    80005528:	00000597          	auipc	a1,0x0
    8000552c:	f2458593          	addi	a1,a1,-220 # 8000544c <_ZL9sleepyRunPv>
    80005530:	fc040513          	addi	a0,s0,-64
    80005534:	00f50533          	add	a0,a0,a5
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	db8080e7          	jalr	-584(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005540:	0014849b          	addiw	s1,s1,1
    80005544:	00100793          	li	a5,1
    80005548:	fc97dae3          	bge	a5,s1,8000551c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000554c:	00006797          	auipc	a5,0x6
    80005550:	2947c783          	lbu	a5,660(a5) # 8000b7e0 <_ZL8finished>
    80005554:	fe078ce3          	beqz	a5,8000554c <_Z12testSleepingv+0x5c>
    80005558:	00006797          	auipc	a5,0x6
    8000555c:	2897c783          	lbu	a5,649(a5) # 8000b7e1 <_ZL8finished+0x1>
    80005560:	fe0786e3          	beqz	a5,8000554c <_Z12testSleepingv+0x5c>
}
    80005564:	03813083          	ld	ra,56(sp)
    80005568:	03013403          	ld	s0,48(sp)
    8000556c:	02813483          	ld	s1,40(sp)
    80005570:	04010113          	addi	sp,sp,64
    80005574:	00008067          	ret

0000000080005578 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005578:	fe010113          	addi	sp,sp,-32
    8000557c:	00113c23          	sd	ra,24(sp)
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00913423          	sd	s1,8(sp)
    80005588:	01213023          	sd	s2,0(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005594:	00100793          	li	a5,1
    80005598:	02a7f863          	bgeu	a5,a0,800055c8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000559c:	00a00793          	li	a5,10
    800055a0:	02f577b3          	remu	a5,a0,a5
    800055a4:	02078e63          	beqz	a5,800055e0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800055a8:	fff48513          	addi	a0,s1,-1
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	fcc080e7          	jalr	-52(ra) # 80005578 <_ZL9fibonaccim>
    800055b4:	00050913          	mv	s2,a0
    800055b8:	ffe48513          	addi	a0,s1,-2
    800055bc:	00000097          	auipc	ra,0x0
    800055c0:	fbc080e7          	jalr	-68(ra) # 80005578 <_ZL9fibonaccim>
    800055c4:	00a90533          	add	a0,s2,a0
}
    800055c8:	01813083          	ld	ra,24(sp)
    800055cc:	01013403          	ld	s0,16(sp)
    800055d0:	00813483          	ld	s1,8(sp)
    800055d4:	00013903          	ld	s2,0(sp)
    800055d8:	02010113          	addi	sp,sp,32
    800055dc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	cc8080e7          	jalr	-824(ra) # 800012a8 <_Z15thread_dispatchv>
    800055e8:	fc1ff06f          	j	800055a8 <_ZL9fibonaccim+0x30>

00000000800055ec <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800055ec:	fe010113          	addi	sp,sp,-32
    800055f0:	00113c23          	sd	ra,24(sp)
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00913423          	sd	s1,8(sp)
    800055fc:	01213023          	sd	s2,0(sp)
    80005600:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005604:	00a00493          	li	s1,10
    80005608:	0400006f          	j	80005648 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	c8450513          	addi	a0,a0,-892 # 80009290 <CONSOLE_STATUS+0x280>
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	628080e7          	jalr	1576(ra) # 80004c3c <_Z11printStringPKc>
    8000561c:	00000613          	li	a2,0
    80005620:	00a00593          	li	a1,10
    80005624:	00048513          	mv	a0,s1
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	7c4080e7          	jalr	1988(ra) # 80004dec <_Z8printIntiii>
    80005630:	00004517          	auipc	a0,0x4
    80005634:	e8050513          	addi	a0,a0,-384 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	604080e7          	jalr	1540(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005640:	0014849b          	addiw	s1,s1,1
    80005644:	0ff4f493          	andi	s1,s1,255
    80005648:	00c00793          	li	a5,12
    8000564c:	fc97f0e3          	bgeu	a5,s1,8000560c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005650:	00004517          	auipc	a0,0x4
    80005654:	c4850513          	addi	a0,a0,-952 # 80009298 <CONSOLE_STATUS+0x288>
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	5e4080e7          	jalr	1508(ra) # 80004c3c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005660:	00500313          	li	t1,5
    thread_dispatch();
    80005664:	ffffc097          	auipc	ra,0xffffc
    80005668:	c44080e7          	jalr	-956(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000566c:	01000513          	li	a0,16
    80005670:	00000097          	auipc	ra,0x0
    80005674:	f08080e7          	jalr	-248(ra) # 80005578 <_ZL9fibonaccim>
    80005678:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000567c:	00004517          	auipc	a0,0x4
    80005680:	c2c50513          	addi	a0,a0,-980 # 800092a8 <CONSOLE_STATUS+0x298>
    80005684:	fffff097          	auipc	ra,0xfffff
    80005688:	5b8080e7          	jalr	1464(ra) # 80004c3c <_Z11printStringPKc>
    8000568c:	00000613          	li	a2,0
    80005690:	00a00593          	li	a1,10
    80005694:	0009051b          	sext.w	a0,s2
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	754080e7          	jalr	1876(ra) # 80004dec <_Z8printIntiii>
    800056a0:	00004517          	auipc	a0,0x4
    800056a4:	e1050513          	addi	a0,a0,-496 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800056a8:	fffff097          	auipc	ra,0xfffff
    800056ac:	594080e7          	jalr	1428(ra) # 80004c3c <_Z11printStringPKc>
    800056b0:	0400006f          	j	800056f0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800056b4:	00004517          	auipc	a0,0x4
    800056b8:	bdc50513          	addi	a0,a0,-1060 # 80009290 <CONSOLE_STATUS+0x280>
    800056bc:	fffff097          	auipc	ra,0xfffff
    800056c0:	580080e7          	jalr	1408(ra) # 80004c3c <_Z11printStringPKc>
    800056c4:	00000613          	li	a2,0
    800056c8:	00a00593          	li	a1,10
    800056cc:	00048513          	mv	a0,s1
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	71c080e7          	jalr	1820(ra) # 80004dec <_Z8printIntiii>
    800056d8:	00004517          	auipc	a0,0x4
    800056dc:	dd850513          	addi	a0,a0,-552 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800056e0:	fffff097          	auipc	ra,0xfffff
    800056e4:	55c080e7          	jalr	1372(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800056e8:	0014849b          	addiw	s1,s1,1
    800056ec:	0ff4f493          	andi	s1,s1,255
    800056f0:	00f00793          	li	a5,15
    800056f4:	fc97f0e3          	bgeu	a5,s1,800056b4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800056f8:	00004517          	auipc	a0,0x4
    800056fc:	bc050513          	addi	a0,a0,-1088 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005700:	fffff097          	auipc	ra,0xfffff
    80005704:	53c080e7          	jalr	1340(ra) # 80004c3c <_Z11printStringPKc>
    finishedD = true;
    80005708:	00100793          	li	a5,1
    8000570c:	00006717          	auipc	a4,0x6
    80005710:	0cf70b23          	sb	a5,214(a4) # 8000b7e2 <_ZL9finishedD>
    thread_dispatch();
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	b94080e7          	jalr	-1132(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000571c:	01813083          	ld	ra,24(sp)
    80005720:	01013403          	ld	s0,16(sp)
    80005724:	00813483          	ld	s1,8(sp)
    80005728:	00013903          	ld	s2,0(sp)
    8000572c:	02010113          	addi	sp,sp,32
    80005730:	00008067          	ret

0000000080005734 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005734:	fe010113          	addi	sp,sp,-32
    80005738:	00113c23          	sd	ra,24(sp)
    8000573c:	00813823          	sd	s0,16(sp)
    80005740:	00913423          	sd	s1,8(sp)
    80005744:	01213023          	sd	s2,0(sp)
    80005748:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000574c:	00000493          	li	s1,0
    80005750:	0400006f          	j	80005790 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005754:	00004517          	auipc	a0,0x4
    80005758:	afc50513          	addi	a0,a0,-1284 # 80009250 <CONSOLE_STATUS+0x240>
    8000575c:	fffff097          	auipc	ra,0xfffff
    80005760:	4e0080e7          	jalr	1248(ra) # 80004c3c <_Z11printStringPKc>
    80005764:	00000613          	li	a2,0
    80005768:	00a00593          	li	a1,10
    8000576c:	00048513          	mv	a0,s1
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	67c080e7          	jalr	1660(ra) # 80004dec <_Z8printIntiii>
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	d3850513          	addi	a0,a0,-712 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005780:	fffff097          	auipc	ra,0xfffff
    80005784:	4bc080e7          	jalr	1212(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005788:	0014849b          	addiw	s1,s1,1
    8000578c:	0ff4f493          	andi	s1,s1,255
    80005790:	00200793          	li	a5,2
    80005794:	fc97f0e3          	bgeu	a5,s1,80005754 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005798:	00004517          	auipc	a0,0x4
    8000579c:	ac050513          	addi	a0,a0,-1344 # 80009258 <CONSOLE_STATUS+0x248>
    800057a0:	fffff097          	auipc	ra,0xfffff
    800057a4:	49c080e7          	jalr	1180(ra) # 80004c3c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800057a8:	00700313          	li	t1,7
    thread_dispatch();
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	afc080e7          	jalr	-1284(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800057b4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800057b8:	00004517          	auipc	a0,0x4
    800057bc:	ab050513          	addi	a0,a0,-1360 # 80009268 <CONSOLE_STATUS+0x258>
    800057c0:	fffff097          	auipc	ra,0xfffff
    800057c4:	47c080e7          	jalr	1148(ra) # 80004c3c <_Z11printStringPKc>
    800057c8:	00000613          	li	a2,0
    800057cc:	00a00593          	li	a1,10
    800057d0:	0009051b          	sext.w	a0,s2
    800057d4:	fffff097          	auipc	ra,0xfffff
    800057d8:	618080e7          	jalr	1560(ra) # 80004dec <_Z8printIntiii>
    800057dc:	00004517          	auipc	a0,0x4
    800057e0:	cd450513          	addi	a0,a0,-812 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800057e4:	fffff097          	auipc	ra,0xfffff
    800057e8:	458080e7          	jalr	1112(ra) # 80004c3c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800057ec:	00c00513          	li	a0,12
    800057f0:	00000097          	auipc	ra,0x0
    800057f4:	d88080e7          	jalr	-632(ra) # 80005578 <_ZL9fibonaccim>
    800057f8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800057fc:	00004517          	auipc	a0,0x4
    80005800:	a7450513          	addi	a0,a0,-1420 # 80009270 <CONSOLE_STATUS+0x260>
    80005804:	fffff097          	auipc	ra,0xfffff
    80005808:	438080e7          	jalr	1080(ra) # 80004c3c <_Z11printStringPKc>
    8000580c:	00000613          	li	a2,0
    80005810:	00a00593          	li	a1,10
    80005814:	0009051b          	sext.w	a0,s2
    80005818:	fffff097          	auipc	ra,0xfffff
    8000581c:	5d4080e7          	jalr	1492(ra) # 80004dec <_Z8printIntiii>
    80005820:	00004517          	auipc	a0,0x4
    80005824:	c9050513          	addi	a0,a0,-880 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005828:	fffff097          	auipc	ra,0xfffff
    8000582c:	414080e7          	jalr	1044(ra) # 80004c3c <_Z11printStringPKc>
    80005830:	0400006f          	j	80005870 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005834:	00004517          	auipc	a0,0x4
    80005838:	a1c50513          	addi	a0,a0,-1508 # 80009250 <CONSOLE_STATUS+0x240>
    8000583c:	fffff097          	auipc	ra,0xfffff
    80005840:	400080e7          	jalr	1024(ra) # 80004c3c <_Z11printStringPKc>
    80005844:	00000613          	li	a2,0
    80005848:	00a00593          	li	a1,10
    8000584c:	00048513          	mv	a0,s1
    80005850:	fffff097          	auipc	ra,0xfffff
    80005854:	59c080e7          	jalr	1436(ra) # 80004dec <_Z8printIntiii>
    80005858:	00004517          	auipc	a0,0x4
    8000585c:	c5850513          	addi	a0,a0,-936 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005860:	fffff097          	auipc	ra,0xfffff
    80005864:	3dc080e7          	jalr	988(ra) # 80004c3c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005868:	0014849b          	addiw	s1,s1,1
    8000586c:	0ff4f493          	andi	s1,s1,255
    80005870:	00500793          	li	a5,5
    80005874:	fc97f0e3          	bgeu	a5,s1,80005834 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005878:	00004517          	auipc	a0,0x4
    8000587c:	9b050513          	addi	a0,a0,-1616 # 80009228 <CONSOLE_STATUS+0x218>
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	3bc080e7          	jalr	956(ra) # 80004c3c <_Z11printStringPKc>
    finishedC = true;
    80005888:	00100793          	li	a5,1
    8000588c:	00006717          	auipc	a4,0x6
    80005890:	f4f70ba3          	sb	a5,-169(a4) # 8000b7e3 <_ZL9finishedC>
    thread_dispatch();
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	a14080e7          	jalr	-1516(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000589c:	01813083          	ld	ra,24(sp)
    800058a0:	01013403          	ld	s0,16(sp)
    800058a4:	00813483          	ld	s1,8(sp)
    800058a8:	00013903          	ld	s2,0(sp)
    800058ac:	02010113          	addi	sp,sp,32
    800058b0:	00008067          	ret

00000000800058b4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800058b4:	fe010113          	addi	sp,sp,-32
    800058b8:	00113c23          	sd	ra,24(sp)
    800058bc:	00813823          	sd	s0,16(sp)
    800058c0:	00913423          	sd	s1,8(sp)
    800058c4:	01213023          	sd	s2,0(sp)
    800058c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800058cc:	00000913          	li	s2,0
    800058d0:	0400006f          	j	80005910 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800058d4:	ffffc097          	auipc	ra,0xffffc
    800058d8:	9d4080e7          	jalr	-1580(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800058dc:	00148493          	addi	s1,s1,1
    800058e0:	000027b7          	lui	a5,0x2
    800058e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800058e8:	0097ee63          	bltu	a5,s1,80005904 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800058ec:	00000713          	li	a4,0
    800058f0:	000077b7          	lui	a5,0x7
    800058f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800058f8:	fce7eee3          	bltu	a5,a4,800058d4 <_ZL11workerBodyBPv+0x20>
    800058fc:	00170713          	addi	a4,a4,1
    80005900:	ff1ff06f          	j	800058f0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005904:	00a00793          	li	a5,10
    80005908:	04f90663          	beq	s2,a5,80005954 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000590c:	00190913          	addi	s2,s2,1
    80005910:	00f00793          	li	a5,15
    80005914:	0527e463          	bltu	a5,s2,8000595c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005918:	00004517          	auipc	a0,0x4
    8000591c:	92050513          	addi	a0,a0,-1760 # 80009238 <CONSOLE_STATUS+0x228>
    80005920:	fffff097          	auipc	ra,0xfffff
    80005924:	31c080e7          	jalr	796(ra) # 80004c3c <_Z11printStringPKc>
    80005928:	00000613          	li	a2,0
    8000592c:	00a00593          	li	a1,10
    80005930:	0009051b          	sext.w	a0,s2
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	4b8080e7          	jalr	1208(ra) # 80004dec <_Z8printIntiii>
    8000593c:	00004517          	auipc	a0,0x4
    80005940:	b7450513          	addi	a0,a0,-1164 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005944:	fffff097          	auipc	ra,0xfffff
    80005948:	2f8080e7          	jalr	760(ra) # 80004c3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000594c:	00000493          	li	s1,0
    80005950:	f91ff06f          	j	800058e0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005954:	14102ff3          	csrr	t6,sepc
    80005958:	fb5ff06f          	j	8000590c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000595c:	00004517          	auipc	a0,0x4
    80005960:	8e450513          	addi	a0,a0,-1820 # 80009240 <CONSOLE_STATUS+0x230>
    80005964:	fffff097          	auipc	ra,0xfffff
    80005968:	2d8080e7          	jalr	728(ra) # 80004c3c <_Z11printStringPKc>
    finishedB = true;
    8000596c:	00100793          	li	a5,1
    80005970:	00006717          	auipc	a4,0x6
    80005974:	e6f70a23          	sb	a5,-396(a4) # 8000b7e4 <_ZL9finishedB>
    thread_dispatch();
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	930080e7          	jalr	-1744(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005980:	01813083          	ld	ra,24(sp)
    80005984:	01013403          	ld	s0,16(sp)
    80005988:	00813483          	ld	s1,8(sp)
    8000598c:	00013903          	ld	s2,0(sp)
    80005990:	02010113          	addi	sp,sp,32
    80005994:	00008067          	ret

0000000080005998 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005998:	fe010113          	addi	sp,sp,-32
    8000599c:	00113c23          	sd	ra,24(sp)
    800059a0:	00813823          	sd	s0,16(sp)
    800059a4:	00913423          	sd	s1,8(sp)
    800059a8:	01213023          	sd	s2,0(sp)
    800059ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800059b0:	00000913          	li	s2,0
    800059b4:	0380006f          	j	800059ec <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	8f0080e7          	jalr	-1808(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800059c0:	00148493          	addi	s1,s1,1
    800059c4:	000027b7          	lui	a5,0x2
    800059c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800059cc:	0097ee63          	bltu	a5,s1,800059e8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800059d0:	00000713          	li	a4,0
    800059d4:	000077b7          	lui	a5,0x7
    800059d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800059dc:	fce7eee3          	bltu	a5,a4,800059b8 <_ZL11workerBodyAPv+0x20>
    800059e0:	00170713          	addi	a4,a4,1
    800059e4:	ff1ff06f          	j	800059d4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800059e8:	00190913          	addi	s2,s2,1
    800059ec:	00900793          	li	a5,9
    800059f0:	0527e063          	bltu	a5,s2,80005a30 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	82c50513          	addi	a0,a0,-2004 # 80009220 <CONSOLE_STATUS+0x210>
    800059fc:	fffff097          	auipc	ra,0xfffff
    80005a00:	240080e7          	jalr	576(ra) # 80004c3c <_Z11printStringPKc>
    80005a04:	00000613          	li	a2,0
    80005a08:	00a00593          	li	a1,10
    80005a0c:	0009051b          	sext.w	a0,s2
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	3dc080e7          	jalr	988(ra) # 80004dec <_Z8printIntiii>
    80005a18:	00004517          	auipc	a0,0x4
    80005a1c:	a9850513          	addi	a0,a0,-1384 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005a20:	fffff097          	auipc	ra,0xfffff
    80005a24:	21c080e7          	jalr	540(ra) # 80004c3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005a28:	00000493          	li	s1,0
    80005a2c:	f99ff06f          	j	800059c4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005a30:	00003517          	auipc	a0,0x3
    80005a34:	7f850513          	addi	a0,a0,2040 # 80009228 <CONSOLE_STATUS+0x218>
    80005a38:	fffff097          	auipc	ra,0xfffff
    80005a3c:	204080e7          	jalr	516(ra) # 80004c3c <_Z11printStringPKc>
    finishedA = true;
    80005a40:	00100793          	li	a5,1
    80005a44:	00006717          	auipc	a4,0x6
    80005a48:	daf700a3          	sb	a5,-607(a4) # 8000b7e5 <_ZL9finishedA>
}
    80005a4c:	01813083          	ld	ra,24(sp)
    80005a50:	01013403          	ld	s0,16(sp)
    80005a54:	00813483          	ld	s1,8(sp)
    80005a58:	00013903          	ld	s2,0(sp)
    80005a5c:	02010113          	addi	sp,sp,32
    80005a60:	00008067          	ret

0000000080005a64 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005a64:	fd010113          	addi	sp,sp,-48
    80005a68:	02113423          	sd	ra,40(sp)
    80005a6c:	02813023          	sd	s0,32(sp)
    80005a70:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a74:	00000613          	li	a2,0
    80005a78:	00000597          	auipc	a1,0x0
    80005a7c:	f2058593          	addi	a1,a1,-224 # 80005998 <_ZL11workerBodyAPv>
    80005a80:	fd040513          	addi	a0,s0,-48
    80005a84:	ffffc097          	auipc	ra,0xffffc
    80005a88:	86c080e7          	jalr	-1940(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005a8c:	00004517          	auipc	a0,0x4
    80005a90:	83c50513          	addi	a0,a0,-1988 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	1a8080e7          	jalr	424(ra) # 80004c3c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a9c:	00000613          	li	a2,0
    80005aa0:	00000597          	auipc	a1,0x0
    80005aa4:	e1458593          	addi	a1,a1,-492 # 800058b4 <_ZL11workerBodyBPv>
    80005aa8:	fd840513          	addi	a0,s0,-40
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	844080e7          	jalr	-1980(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005ab4:	00004517          	auipc	a0,0x4
    80005ab8:	82c50513          	addi	a0,a0,-2004 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005abc:	fffff097          	auipc	ra,0xfffff
    80005ac0:	180080e7          	jalr	384(ra) # 80004c3c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005ac4:	00000613          	li	a2,0
    80005ac8:	00000597          	auipc	a1,0x0
    80005acc:	c6c58593          	addi	a1,a1,-916 # 80005734 <_ZL11workerBodyCPv>
    80005ad0:	fe040513          	addi	a0,s0,-32
    80005ad4:	ffffc097          	auipc	ra,0xffffc
    80005ad8:	81c080e7          	jalr	-2020(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005adc:	00004517          	auipc	a0,0x4
    80005ae0:	81c50513          	addi	a0,a0,-2020 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005ae4:	fffff097          	auipc	ra,0xfffff
    80005ae8:	158080e7          	jalr	344(ra) # 80004c3c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005aec:	00000613          	li	a2,0
    80005af0:	00000597          	auipc	a1,0x0
    80005af4:	afc58593          	addi	a1,a1,-1284 # 800055ec <_ZL11workerBodyDPv>
    80005af8:	fe840513          	addi	a0,s0,-24
    80005afc:	ffffb097          	auipc	ra,0xffffb
    80005b00:	7f4080e7          	jalr	2036(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005b04:	00004517          	auipc	a0,0x4
    80005b08:	80c50513          	addi	a0,a0,-2036 # 80009310 <CONSOLE_STATUS+0x300>
    80005b0c:	fffff097          	auipc	ra,0xfffff
    80005b10:	130080e7          	jalr	304(ra) # 80004c3c <_Z11printStringPKc>
    80005b14:	00c0006f          	j	80005b20 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005b18:	ffffb097          	auipc	ra,0xffffb
    80005b1c:	790080e7          	jalr	1936(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005b20:	00006797          	auipc	a5,0x6
    80005b24:	cc57c783          	lbu	a5,-827(a5) # 8000b7e5 <_ZL9finishedA>
    80005b28:	fe0788e3          	beqz	a5,80005b18 <_Z16System_Mode_testv+0xb4>
    80005b2c:	00006797          	auipc	a5,0x6
    80005b30:	cb87c783          	lbu	a5,-840(a5) # 8000b7e4 <_ZL9finishedB>
    80005b34:	fe0782e3          	beqz	a5,80005b18 <_Z16System_Mode_testv+0xb4>
    80005b38:	00006797          	auipc	a5,0x6
    80005b3c:	cab7c783          	lbu	a5,-853(a5) # 8000b7e3 <_ZL9finishedC>
    80005b40:	fc078ce3          	beqz	a5,80005b18 <_Z16System_Mode_testv+0xb4>
    80005b44:	00006797          	auipc	a5,0x6
    80005b48:	c9e7c783          	lbu	a5,-866(a5) # 8000b7e2 <_ZL9finishedD>
    80005b4c:	fc0786e3          	beqz	a5,80005b18 <_Z16System_Mode_testv+0xb4>
    }

}
    80005b50:	02813083          	ld	ra,40(sp)
    80005b54:	02013403          	ld	s0,32(sp)
    80005b58:	03010113          	addi	sp,sp,48
    80005b5c:	00008067          	ret

0000000080005b60 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00113c23          	sd	ra,24(sp)
    80005b68:	00813823          	sd	s0,16(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	01213023          	sd	s2,0(sp)
    80005b74:	02010413          	addi	s0,sp,32
    80005b78:	00050493          	mv	s1,a0
    80005b7c:	00058913          	mv	s2,a1
    80005b80:	0015879b          	addiw	a5,a1,1
    80005b84:	0007851b          	sext.w	a0,a5
    80005b88:	00f4a023          	sw	a5,0(s1)
    80005b8c:	0004a823          	sw	zero,16(s1)
    80005b90:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b94:	00251513          	slli	a0,a0,0x2
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	6ac080e7          	jalr	1708(ra) # 80001244 <_Z9mem_allocm>
    80005ba0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005ba4:	00000593          	li	a1,0
    80005ba8:	02048513          	addi	a0,s1,32
    80005bac:	ffffb097          	auipc	ra,0xffffb
    80005bb0:	7c0080e7          	jalr	1984(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    80005bb4:	00090593          	mv	a1,s2
    80005bb8:	01848513          	addi	a0,s1,24
    80005bbc:	ffffb097          	auipc	ra,0xffffb
    80005bc0:	7b0080e7          	jalr	1968(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    80005bc4:	00100593          	li	a1,1
    80005bc8:	02848513          	addi	a0,s1,40
    80005bcc:	ffffb097          	auipc	ra,0xffffb
    80005bd0:	7a0080e7          	jalr	1952(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    80005bd4:	00100593          	li	a1,1
    80005bd8:	03048513          	addi	a0,s1,48
    80005bdc:	ffffb097          	auipc	ra,0xffffb
    80005be0:	790080e7          	jalr	1936(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80005be4:	01813083          	ld	ra,24(sp)
    80005be8:	01013403          	ld	s0,16(sp)
    80005bec:	00813483          	ld	s1,8(sp)
    80005bf0:	00013903          	ld	s2,0(sp)
    80005bf4:	02010113          	addi	sp,sp,32
    80005bf8:	00008067          	ret

0000000080005bfc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005bfc:	fe010113          	addi	sp,sp,-32
    80005c00:	00113c23          	sd	ra,24(sp)
    80005c04:	00813823          	sd	s0,16(sp)
    80005c08:	00913423          	sd	s1,8(sp)
    80005c0c:	01213023          	sd	s2,0(sp)
    80005c10:	02010413          	addi	s0,sp,32
    80005c14:	00050493          	mv	s1,a0
    80005c18:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005c1c:	01853503          	ld	a0,24(a0)
    80005c20:	ffffb097          	auipc	ra,0xffffb
    80005c24:	7a8080e7          	jalr	1960(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    80005c28:	0304b503          	ld	a0,48(s1)
    80005c2c:	ffffb097          	auipc	ra,0xffffb
    80005c30:	79c080e7          	jalr	1948(ra) # 800013c8 <_Z8sem_waitP3sem>
    buffer[tail] = val;
    80005c34:	0084b783          	ld	a5,8(s1)
    80005c38:	0144a703          	lw	a4,20(s1)
    80005c3c:	00271713          	slli	a4,a4,0x2
    80005c40:	00e787b3          	add	a5,a5,a4
    80005c44:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c48:	0144a783          	lw	a5,20(s1)
    80005c4c:	0017879b          	addiw	a5,a5,1
    80005c50:	0004a703          	lw	a4,0(s1)
    80005c54:	02e7e7bb          	remw	a5,a5,a4
    80005c58:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005c5c:	0304b503          	ld	a0,48(s1)
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	794080e7          	jalr	1940(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80005c68:	0204b503          	ld	a0,32(s1)
    80005c6c:	ffffb097          	auipc	ra,0xffffb
    80005c70:	788080e7          	jalr	1928(ra) # 800013f4 <_Z10sem_signalP3sem>

}
    80005c74:	01813083          	ld	ra,24(sp)
    80005c78:	01013403          	ld	s0,16(sp)
    80005c7c:	00813483          	ld	s1,8(sp)
    80005c80:	00013903          	ld	s2,0(sp)
    80005c84:	02010113          	addi	sp,sp,32
    80005c88:	00008067          	ret

0000000080005c8c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005c8c:	fe010113          	addi	sp,sp,-32
    80005c90:	00113c23          	sd	ra,24(sp)
    80005c94:	00813823          	sd	s0,16(sp)
    80005c98:	00913423          	sd	s1,8(sp)
    80005c9c:	01213023          	sd	s2,0(sp)
    80005ca0:	02010413          	addi	s0,sp,32
    80005ca4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005ca8:	02053503          	ld	a0,32(a0)
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	71c080e7          	jalr	1820(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    80005cb4:	0284b503          	ld	a0,40(s1)
    80005cb8:	ffffb097          	auipc	ra,0xffffb
    80005cbc:	710080e7          	jalr	1808(ra) # 800013c8 <_Z8sem_waitP3sem>

    int ret = buffer[head];
    80005cc0:	0084b703          	ld	a4,8(s1)
    80005cc4:	0104a783          	lw	a5,16(s1)
    80005cc8:	00279693          	slli	a3,a5,0x2
    80005ccc:	00d70733          	add	a4,a4,a3
    80005cd0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005cd4:	0017879b          	addiw	a5,a5,1
    80005cd8:	0004a703          	lw	a4,0(s1)
    80005cdc:	02e7e7bb          	remw	a5,a5,a4
    80005ce0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005ce4:	0284b503          	ld	a0,40(s1)
    80005ce8:	ffffb097          	auipc	ra,0xffffb
    80005cec:	70c080e7          	jalr	1804(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    80005cf0:	0184b503          	ld	a0,24(s1)
    80005cf4:	ffffb097          	auipc	ra,0xffffb
    80005cf8:	700080e7          	jalr	1792(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005cfc:	00090513          	mv	a0,s2
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	00013903          	ld	s2,0(sp)
    80005d10:	02010113          	addi	sp,sp,32
    80005d14:	00008067          	ret

0000000080005d18 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005d18:	fe010113          	addi	sp,sp,-32
    80005d1c:	00113c23          	sd	ra,24(sp)
    80005d20:	00813823          	sd	s0,16(sp)
    80005d24:	00913423          	sd	s1,8(sp)
    80005d28:	01213023          	sd	s2,0(sp)
    80005d2c:	02010413          	addi	s0,sp,32
    80005d30:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005d34:	02853503          	ld	a0,40(a0)
    80005d38:	ffffb097          	auipc	ra,0xffffb
    80005d3c:	690080e7          	jalr	1680(ra) # 800013c8 <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    80005d40:	0304b503          	ld	a0,48(s1)
    80005d44:	ffffb097          	auipc	ra,0xffffb
    80005d48:	684080e7          	jalr	1668(ra) # 800013c8 <_Z8sem_waitP3sem>

    if (tail >= head) {
    80005d4c:	0144a783          	lw	a5,20(s1)
    80005d50:	0104a903          	lw	s2,16(s1)
    80005d54:	0327ce63          	blt	a5,s2,80005d90 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005d58:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005d5c:	0304b503          	ld	a0,48(s1)
    80005d60:	ffffb097          	auipc	ra,0xffffb
    80005d64:	694080e7          	jalr	1684(ra) # 800013f4 <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80005d68:	0284b503          	ld	a0,40(s1)
    80005d6c:	ffffb097          	auipc	ra,0xffffb
    80005d70:	688080e7          	jalr	1672(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005d74:	00090513          	mv	a0,s2
    80005d78:	01813083          	ld	ra,24(sp)
    80005d7c:	01013403          	ld	s0,16(sp)
    80005d80:	00813483          	ld	s1,8(sp)
    80005d84:	00013903          	ld	s2,0(sp)
    80005d88:	02010113          	addi	sp,sp,32
    80005d8c:	00008067          	ret
        ret = cap - head + tail;
    80005d90:	0004a703          	lw	a4,0(s1)
    80005d94:	4127093b          	subw	s2,a4,s2
    80005d98:	00f9093b          	addw	s2,s2,a5
    80005d9c:	fc1ff06f          	j	80005d5c <_ZN6Buffer6getCntEv+0x44>

0000000080005da0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005da0:	fe010113          	addi	sp,sp,-32
    80005da4:	00113c23          	sd	ra,24(sp)
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	02010413          	addi	s0,sp,32
    80005db4:	00050493          	mv	s1,a0
    putc('\n');
    80005db8:	00a00513          	li	a0,10
    80005dbc:	ffffb097          	auipc	ra,0xffffb
    80005dc0:	6b8080e7          	jalr	1720(ra) # 80001474 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005dc4:	00003517          	auipc	a0,0x3
    80005dc8:	56450513          	addi	a0,a0,1380 # 80009328 <CONSOLE_STATUS+0x318>
    80005dcc:	fffff097          	auipc	ra,0xfffff
    80005dd0:	e70080e7          	jalr	-400(ra) # 80004c3c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005dd4:	00048513          	mv	a0,s1
    80005dd8:	00000097          	auipc	ra,0x0
    80005ddc:	f40080e7          	jalr	-192(ra) # 80005d18 <_ZN6Buffer6getCntEv>
    80005de0:	02a05c63          	blez	a0,80005e18 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005de4:	0084b783          	ld	a5,8(s1)
    80005de8:	0104a703          	lw	a4,16(s1)
    80005dec:	00271713          	slli	a4,a4,0x2
    80005df0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005df4:	0007c503          	lbu	a0,0(a5)
    80005df8:	ffffb097          	auipc	ra,0xffffb
    80005dfc:	67c080e7          	jalr	1660(ra) # 80001474 <_Z4putcc>
        head = (head + 1) % cap;
    80005e00:	0104a783          	lw	a5,16(s1)
    80005e04:	0017879b          	addiw	a5,a5,1
    80005e08:	0004a703          	lw	a4,0(s1)
    80005e0c:	02e7e7bb          	remw	a5,a5,a4
    80005e10:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005e14:	fc1ff06f          	j	80005dd4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005e18:	02100513          	li	a0,33
    80005e1c:	ffffb097          	auipc	ra,0xffffb
    80005e20:	658080e7          	jalr	1624(ra) # 80001474 <_Z4putcc>
    putc('\n');
    80005e24:	00a00513          	li	a0,10
    80005e28:	ffffb097          	auipc	ra,0xffffb
    80005e2c:	64c080e7          	jalr	1612(ra) # 80001474 <_Z4putcc>
    mem_free(buffer);
    80005e30:	0084b503          	ld	a0,8(s1)
    80005e34:	ffffb097          	auipc	ra,0xffffb
    80005e38:	448080e7          	jalr	1096(ra) # 8000127c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005e3c:	0204b503          	ld	a0,32(s1)
    80005e40:	ffffb097          	auipc	ra,0xffffb
    80005e44:	55c080e7          	jalr	1372(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80005e48:	0184b503          	ld	a0,24(s1)
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	550080e7          	jalr	1360(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80005e54:	0304b503          	ld	a0,48(s1)
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	544080e7          	jalr	1348(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    80005e60:	0284b503          	ld	a0,40(s1)
    80005e64:	ffffb097          	auipc	ra,0xffffb
    80005e68:	538080e7          	jalr	1336(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80005e6c:	01813083          	ld	ra,24(sp)
    80005e70:	01013403          	ld	s0,16(sp)
    80005e74:	00813483          	ld	s1,8(sp)
    80005e78:	02010113          	addi	sp,sp,32
    80005e7c:	00008067          	ret

0000000080005e80 <start>:
    80005e80:	ff010113          	addi	sp,sp,-16
    80005e84:	00813423          	sd	s0,8(sp)
    80005e88:	01010413          	addi	s0,sp,16
    80005e8c:	300027f3          	csrr	a5,mstatus
    80005e90:	ffffe737          	lui	a4,0xffffe
    80005e94:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1daf>
    80005e98:	00e7f7b3          	and	a5,a5,a4
    80005e9c:	00001737          	lui	a4,0x1
    80005ea0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005ea4:	00e7e7b3          	or	a5,a5,a4
    80005ea8:	30079073          	csrw	mstatus,a5
    80005eac:	00000797          	auipc	a5,0x0
    80005eb0:	16078793          	addi	a5,a5,352 # 8000600c <system_main>
    80005eb4:	34179073          	csrw	mepc,a5
    80005eb8:	00000793          	li	a5,0
    80005ebc:	18079073          	csrw	satp,a5
    80005ec0:	000107b7          	lui	a5,0x10
    80005ec4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005ec8:	30279073          	csrw	medeleg,a5
    80005ecc:	30379073          	csrw	mideleg,a5
    80005ed0:	104027f3          	csrr	a5,sie
    80005ed4:	2227e793          	ori	a5,a5,546
    80005ed8:	10479073          	csrw	sie,a5
    80005edc:	fff00793          	li	a5,-1
    80005ee0:	00a7d793          	srli	a5,a5,0xa
    80005ee4:	3b079073          	csrw	pmpaddr0,a5
    80005ee8:	00f00793          	li	a5,15
    80005eec:	3a079073          	csrw	pmpcfg0,a5
    80005ef0:	f14027f3          	csrr	a5,mhartid
    80005ef4:	0200c737          	lui	a4,0x200c
    80005ef8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005efc:	0007869b          	sext.w	a3,a5
    80005f00:	00269713          	slli	a4,a3,0x2
    80005f04:	000f4637          	lui	a2,0xf4
    80005f08:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f0c:	00d70733          	add	a4,a4,a3
    80005f10:	0037979b          	slliw	a5,a5,0x3
    80005f14:	020046b7          	lui	a3,0x2004
    80005f18:	00d787b3          	add	a5,a5,a3
    80005f1c:	00c585b3          	add	a1,a1,a2
    80005f20:	00371693          	slli	a3,a4,0x3
    80005f24:	00006717          	auipc	a4,0x6
    80005f28:	8cc70713          	addi	a4,a4,-1844 # 8000b7f0 <timer_scratch>
    80005f2c:	00b7b023          	sd	a1,0(a5)
    80005f30:	00d70733          	add	a4,a4,a3
    80005f34:	00f73c23          	sd	a5,24(a4)
    80005f38:	02c73023          	sd	a2,32(a4)
    80005f3c:	34071073          	csrw	mscratch,a4
    80005f40:	00000797          	auipc	a5,0x0
    80005f44:	6e078793          	addi	a5,a5,1760 # 80006620 <timervec>
    80005f48:	30579073          	csrw	mtvec,a5
    80005f4c:	300027f3          	csrr	a5,mstatus
    80005f50:	0087e793          	ori	a5,a5,8
    80005f54:	30079073          	csrw	mstatus,a5
    80005f58:	304027f3          	csrr	a5,mie
    80005f5c:	0807e793          	ori	a5,a5,128
    80005f60:	30479073          	csrw	mie,a5
    80005f64:	f14027f3          	csrr	a5,mhartid
    80005f68:	0007879b          	sext.w	a5,a5
    80005f6c:	00078213          	mv	tp,a5
    80005f70:	30200073          	mret
    80005f74:	00813403          	ld	s0,8(sp)
    80005f78:	01010113          	addi	sp,sp,16
    80005f7c:	00008067          	ret

0000000080005f80 <timerinit>:
    80005f80:	ff010113          	addi	sp,sp,-16
    80005f84:	00813423          	sd	s0,8(sp)
    80005f88:	01010413          	addi	s0,sp,16
    80005f8c:	f14027f3          	csrr	a5,mhartid
    80005f90:	0200c737          	lui	a4,0x200c
    80005f94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f98:	0007869b          	sext.w	a3,a5
    80005f9c:	00269713          	slli	a4,a3,0x2
    80005fa0:	000f4637          	lui	a2,0xf4
    80005fa4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005fa8:	00d70733          	add	a4,a4,a3
    80005fac:	0037979b          	slliw	a5,a5,0x3
    80005fb0:	020046b7          	lui	a3,0x2004
    80005fb4:	00d787b3          	add	a5,a5,a3
    80005fb8:	00c585b3          	add	a1,a1,a2
    80005fbc:	00371693          	slli	a3,a4,0x3
    80005fc0:	00006717          	auipc	a4,0x6
    80005fc4:	83070713          	addi	a4,a4,-2000 # 8000b7f0 <timer_scratch>
    80005fc8:	00b7b023          	sd	a1,0(a5)
    80005fcc:	00d70733          	add	a4,a4,a3
    80005fd0:	00f73c23          	sd	a5,24(a4)
    80005fd4:	02c73023          	sd	a2,32(a4)
    80005fd8:	34071073          	csrw	mscratch,a4
    80005fdc:	00000797          	auipc	a5,0x0
    80005fe0:	64478793          	addi	a5,a5,1604 # 80006620 <timervec>
    80005fe4:	30579073          	csrw	mtvec,a5
    80005fe8:	300027f3          	csrr	a5,mstatus
    80005fec:	0087e793          	ori	a5,a5,8
    80005ff0:	30079073          	csrw	mstatus,a5
    80005ff4:	304027f3          	csrr	a5,mie
    80005ff8:	0807e793          	ori	a5,a5,128
    80005ffc:	30479073          	csrw	mie,a5
    80006000:	00813403          	ld	s0,8(sp)
    80006004:	01010113          	addi	sp,sp,16
    80006008:	00008067          	ret

000000008000600c <system_main>:
    8000600c:	fe010113          	addi	sp,sp,-32
    80006010:	00813823          	sd	s0,16(sp)
    80006014:	00913423          	sd	s1,8(sp)
    80006018:	00113c23          	sd	ra,24(sp)
    8000601c:	02010413          	addi	s0,sp,32
    80006020:	00000097          	auipc	ra,0x0
    80006024:	0c4080e7          	jalr	196(ra) # 800060e4 <cpuid>
    80006028:	00005497          	auipc	s1,0x5
    8000602c:	71848493          	addi	s1,s1,1816 # 8000b740 <started>
    80006030:	02050263          	beqz	a0,80006054 <system_main+0x48>
    80006034:	0004a783          	lw	a5,0(s1)
    80006038:	0007879b          	sext.w	a5,a5
    8000603c:	fe078ce3          	beqz	a5,80006034 <system_main+0x28>
    80006040:	0ff0000f          	fence
    80006044:	00003517          	auipc	a0,0x3
    80006048:	57450513          	addi	a0,a0,1396 # 800095b8 <CONSOLE_STATUS+0x5a8>
    8000604c:	00001097          	auipc	ra,0x1
    80006050:	a70080e7          	jalr	-1424(ra) # 80006abc <panic>
    80006054:	00001097          	auipc	ra,0x1
    80006058:	9c4080e7          	jalr	-1596(ra) # 80006a18 <consoleinit>
    8000605c:	00001097          	auipc	ra,0x1
    80006060:	150080e7          	jalr	336(ra) # 800071ac <printfinit>
    80006064:	00003517          	auipc	a0,0x3
    80006068:	44c50513          	addi	a0,a0,1100 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000606c:	00001097          	auipc	ra,0x1
    80006070:	aac080e7          	jalr	-1364(ra) # 80006b18 <__printf>
    80006074:	00003517          	auipc	a0,0x3
    80006078:	51450513          	addi	a0,a0,1300 # 80009588 <CONSOLE_STATUS+0x578>
    8000607c:	00001097          	auipc	ra,0x1
    80006080:	a9c080e7          	jalr	-1380(ra) # 80006b18 <__printf>
    80006084:	00003517          	auipc	a0,0x3
    80006088:	42c50513          	addi	a0,a0,1068 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000608c:	00001097          	auipc	ra,0x1
    80006090:	a8c080e7          	jalr	-1396(ra) # 80006b18 <__printf>
    80006094:	00001097          	auipc	ra,0x1
    80006098:	4a4080e7          	jalr	1188(ra) # 80007538 <kinit>
    8000609c:	00000097          	auipc	ra,0x0
    800060a0:	148080e7          	jalr	328(ra) # 800061e4 <trapinit>
    800060a4:	00000097          	auipc	ra,0x0
    800060a8:	16c080e7          	jalr	364(ra) # 80006210 <trapinithart>
    800060ac:	00000097          	auipc	ra,0x0
    800060b0:	5b4080e7          	jalr	1460(ra) # 80006660 <plicinit>
    800060b4:	00000097          	auipc	ra,0x0
    800060b8:	5d4080e7          	jalr	1492(ra) # 80006688 <plicinithart>
    800060bc:	00000097          	auipc	ra,0x0
    800060c0:	078080e7          	jalr	120(ra) # 80006134 <userinit>
    800060c4:	0ff0000f          	fence
    800060c8:	00100793          	li	a5,1
    800060cc:	00003517          	auipc	a0,0x3
    800060d0:	4d450513          	addi	a0,a0,1236 # 800095a0 <CONSOLE_STATUS+0x590>
    800060d4:	00f4a023          	sw	a5,0(s1)
    800060d8:	00001097          	auipc	ra,0x1
    800060dc:	a40080e7          	jalr	-1472(ra) # 80006b18 <__printf>
    800060e0:	0000006f          	j	800060e0 <system_main+0xd4>

00000000800060e4 <cpuid>:
    800060e4:	ff010113          	addi	sp,sp,-16
    800060e8:	00813423          	sd	s0,8(sp)
    800060ec:	01010413          	addi	s0,sp,16
    800060f0:	00020513          	mv	a0,tp
    800060f4:	00813403          	ld	s0,8(sp)
    800060f8:	0005051b          	sext.w	a0,a0
    800060fc:	01010113          	addi	sp,sp,16
    80006100:	00008067          	ret

0000000080006104 <mycpu>:
    80006104:	ff010113          	addi	sp,sp,-16
    80006108:	00813423          	sd	s0,8(sp)
    8000610c:	01010413          	addi	s0,sp,16
    80006110:	00020793          	mv	a5,tp
    80006114:	00813403          	ld	s0,8(sp)
    80006118:	0007879b          	sext.w	a5,a5
    8000611c:	00779793          	slli	a5,a5,0x7
    80006120:	00006517          	auipc	a0,0x6
    80006124:	70050513          	addi	a0,a0,1792 # 8000c820 <cpus>
    80006128:	00f50533          	add	a0,a0,a5
    8000612c:	01010113          	addi	sp,sp,16
    80006130:	00008067          	ret

0000000080006134 <userinit>:
    80006134:	ff010113          	addi	sp,sp,-16
    80006138:	00813423          	sd	s0,8(sp)
    8000613c:	01010413          	addi	s0,sp,16
    80006140:	00813403          	ld	s0,8(sp)
    80006144:	01010113          	addi	sp,sp,16
    80006148:	ffffb317          	auipc	t1,0xffffb
    8000614c:	72430067          	jr	1828(t1) # 8000186c <main>

0000000080006150 <either_copyout>:
    80006150:	ff010113          	addi	sp,sp,-16
    80006154:	00813023          	sd	s0,0(sp)
    80006158:	00113423          	sd	ra,8(sp)
    8000615c:	01010413          	addi	s0,sp,16
    80006160:	02051663          	bnez	a0,8000618c <either_copyout+0x3c>
    80006164:	00058513          	mv	a0,a1
    80006168:	00060593          	mv	a1,a2
    8000616c:	0006861b          	sext.w	a2,a3
    80006170:	00002097          	auipc	ra,0x2
    80006174:	c54080e7          	jalr	-940(ra) # 80007dc4 <__memmove>
    80006178:	00813083          	ld	ra,8(sp)
    8000617c:	00013403          	ld	s0,0(sp)
    80006180:	00000513          	li	a0,0
    80006184:	01010113          	addi	sp,sp,16
    80006188:	00008067          	ret
    8000618c:	00003517          	auipc	a0,0x3
    80006190:	45450513          	addi	a0,a0,1108 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006194:	00001097          	auipc	ra,0x1
    80006198:	928080e7          	jalr	-1752(ra) # 80006abc <panic>

000000008000619c <either_copyin>:
    8000619c:	ff010113          	addi	sp,sp,-16
    800061a0:	00813023          	sd	s0,0(sp)
    800061a4:	00113423          	sd	ra,8(sp)
    800061a8:	01010413          	addi	s0,sp,16
    800061ac:	02059463          	bnez	a1,800061d4 <either_copyin+0x38>
    800061b0:	00060593          	mv	a1,a2
    800061b4:	0006861b          	sext.w	a2,a3
    800061b8:	00002097          	auipc	ra,0x2
    800061bc:	c0c080e7          	jalr	-1012(ra) # 80007dc4 <__memmove>
    800061c0:	00813083          	ld	ra,8(sp)
    800061c4:	00013403          	ld	s0,0(sp)
    800061c8:	00000513          	li	a0,0
    800061cc:	01010113          	addi	sp,sp,16
    800061d0:	00008067          	ret
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	43450513          	addi	a0,a0,1076 # 80009608 <CONSOLE_STATUS+0x5f8>
    800061dc:	00001097          	auipc	ra,0x1
    800061e0:	8e0080e7          	jalr	-1824(ra) # 80006abc <panic>

00000000800061e4 <trapinit>:
    800061e4:	ff010113          	addi	sp,sp,-16
    800061e8:	00813423          	sd	s0,8(sp)
    800061ec:	01010413          	addi	s0,sp,16
    800061f0:	00813403          	ld	s0,8(sp)
    800061f4:	00003597          	auipc	a1,0x3
    800061f8:	43c58593          	addi	a1,a1,1084 # 80009630 <CONSOLE_STATUS+0x620>
    800061fc:	00006517          	auipc	a0,0x6
    80006200:	6a450513          	addi	a0,a0,1700 # 8000c8a0 <tickslock>
    80006204:	01010113          	addi	sp,sp,16
    80006208:	00001317          	auipc	t1,0x1
    8000620c:	5c030067          	jr	1472(t1) # 800077c8 <initlock>

0000000080006210 <trapinithart>:
    80006210:	ff010113          	addi	sp,sp,-16
    80006214:	00813423          	sd	s0,8(sp)
    80006218:	01010413          	addi	s0,sp,16
    8000621c:	00000797          	auipc	a5,0x0
    80006220:	2f478793          	addi	a5,a5,756 # 80006510 <kernelvec>
    80006224:	10579073          	csrw	stvec,a5
    80006228:	00813403          	ld	s0,8(sp)
    8000622c:	01010113          	addi	sp,sp,16
    80006230:	00008067          	ret

0000000080006234 <usertrap>:
    80006234:	ff010113          	addi	sp,sp,-16
    80006238:	00813423          	sd	s0,8(sp)
    8000623c:	01010413          	addi	s0,sp,16
    80006240:	00813403          	ld	s0,8(sp)
    80006244:	01010113          	addi	sp,sp,16
    80006248:	00008067          	ret

000000008000624c <usertrapret>:
    8000624c:	ff010113          	addi	sp,sp,-16
    80006250:	00813423          	sd	s0,8(sp)
    80006254:	01010413          	addi	s0,sp,16
    80006258:	00813403          	ld	s0,8(sp)
    8000625c:	01010113          	addi	sp,sp,16
    80006260:	00008067          	ret

0000000080006264 <kerneltrap>:
    80006264:	fe010113          	addi	sp,sp,-32
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00113c23          	sd	ra,24(sp)
    80006270:	00913423          	sd	s1,8(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	142025f3          	csrr	a1,scause
    8000627c:	100027f3          	csrr	a5,sstatus
    80006280:	0027f793          	andi	a5,a5,2
    80006284:	10079c63          	bnez	a5,8000639c <kerneltrap+0x138>
    80006288:	142027f3          	csrr	a5,scause
    8000628c:	0207ce63          	bltz	a5,800062c8 <kerneltrap+0x64>
    80006290:	00003517          	auipc	a0,0x3
    80006294:	3e850513          	addi	a0,a0,1000 # 80009678 <CONSOLE_STATUS+0x668>
    80006298:	00001097          	auipc	ra,0x1
    8000629c:	880080e7          	jalr	-1920(ra) # 80006b18 <__printf>
    800062a0:	141025f3          	csrr	a1,sepc
    800062a4:	14302673          	csrr	a2,stval
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	3e050513          	addi	a0,a0,992 # 80009688 <CONSOLE_STATUS+0x678>
    800062b0:	00001097          	auipc	ra,0x1
    800062b4:	868080e7          	jalr	-1944(ra) # 80006b18 <__printf>
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	3e850513          	addi	a0,a0,1000 # 800096a0 <CONSOLE_STATUS+0x690>
    800062c0:	00000097          	auipc	ra,0x0
    800062c4:	7fc080e7          	jalr	2044(ra) # 80006abc <panic>
    800062c8:	0ff7f713          	andi	a4,a5,255
    800062cc:	00900693          	li	a3,9
    800062d0:	04d70063          	beq	a4,a3,80006310 <kerneltrap+0xac>
    800062d4:	fff00713          	li	a4,-1
    800062d8:	03f71713          	slli	a4,a4,0x3f
    800062dc:	00170713          	addi	a4,a4,1
    800062e0:	fae798e3          	bne	a5,a4,80006290 <kerneltrap+0x2c>
    800062e4:	00000097          	auipc	ra,0x0
    800062e8:	e00080e7          	jalr	-512(ra) # 800060e4 <cpuid>
    800062ec:	06050663          	beqz	a0,80006358 <kerneltrap+0xf4>
    800062f0:	144027f3          	csrr	a5,sip
    800062f4:	ffd7f793          	andi	a5,a5,-3
    800062f8:	14479073          	csrw	sip,a5
    800062fc:	01813083          	ld	ra,24(sp)
    80006300:	01013403          	ld	s0,16(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	02010113          	addi	sp,sp,32
    8000630c:	00008067          	ret
    80006310:	00000097          	auipc	ra,0x0
    80006314:	3c4080e7          	jalr	964(ra) # 800066d4 <plic_claim>
    80006318:	00a00793          	li	a5,10
    8000631c:	00050493          	mv	s1,a0
    80006320:	06f50863          	beq	a0,a5,80006390 <kerneltrap+0x12c>
    80006324:	fc050ce3          	beqz	a0,800062fc <kerneltrap+0x98>
    80006328:	00050593          	mv	a1,a0
    8000632c:	00003517          	auipc	a0,0x3
    80006330:	32c50513          	addi	a0,a0,812 # 80009658 <CONSOLE_STATUS+0x648>
    80006334:	00000097          	auipc	ra,0x0
    80006338:	7e4080e7          	jalr	2020(ra) # 80006b18 <__printf>
    8000633c:	01013403          	ld	s0,16(sp)
    80006340:	01813083          	ld	ra,24(sp)
    80006344:	00048513          	mv	a0,s1
    80006348:	00813483          	ld	s1,8(sp)
    8000634c:	02010113          	addi	sp,sp,32
    80006350:	00000317          	auipc	t1,0x0
    80006354:	3bc30067          	jr	956(t1) # 8000670c <plic_complete>
    80006358:	00006517          	auipc	a0,0x6
    8000635c:	54850513          	addi	a0,a0,1352 # 8000c8a0 <tickslock>
    80006360:	00001097          	auipc	ra,0x1
    80006364:	48c080e7          	jalr	1164(ra) # 800077ec <acquire>
    80006368:	00005717          	auipc	a4,0x5
    8000636c:	3dc70713          	addi	a4,a4,988 # 8000b744 <ticks>
    80006370:	00072783          	lw	a5,0(a4)
    80006374:	00006517          	auipc	a0,0x6
    80006378:	52c50513          	addi	a0,a0,1324 # 8000c8a0 <tickslock>
    8000637c:	0017879b          	addiw	a5,a5,1
    80006380:	00f72023          	sw	a5,0(a4)
    80006384:	00001097          	auipc	ra,0x1
    80006388:	534080e7          	jalr	1332(ra) # 800078b8 <release>
    8000638c:	f65ff06f          	j	800062f0 <kerneltrap+0x8c>
    80006390:	00001097          	auipc	ra,0x1
    80006394:	090080e7          	jalr	144(ra) # 80007420 <uartintr>
    80006398:	fa5ff06f          	j	8000633c <kerneltrap+0xd8>
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	29c50513          	addi	a0,a0,668 # 80009638 <CONSOLE_STATUS+0x628>
    800063a4:	00000097          	auipc	ra,0x0
    800063a8:	718080e7          	jalr	1816(ra) # 80006abc <panic>

00000000800063ac <clockintr>:
    800063ac:	fe010113          	addi	sp,sp,-32
    800063b0:	00813823          	sd	s0,16(sp)
    800063b4:	00913423          	sd	s1,8(sp)
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	02010413          	addi	s0,sp,32
    800063c0:	00006497          	auipc	s1,0x6
    800063c4:	4e048493          	addi	s1,s1,1248 # 8000c8a0 <tickslock>
    800063c8:	00048513          	mv	a0,s1
    800063cc:	00001097          	auipc	ra,0x1
    800063d0:	420080e7          	jalr	1056(ra) # 800077ec <acquire>
    800063d4:	00005717          	auipc	a4,0x5
    800063d8:	37070713          	addi	a4,a4,880 # 8000b744 <ticks>
    800063dc:	00072783          	lw	a5,0(a4)
    800063e0:	01013403          	ld	s0,16(sp)
    800063e4:	01813083          	ld	ra,24(sp)
    800063e8:	00048513          	mv	a0,s1
    800063ec:	0017879b          	addiw	a5,a5,1
    800063f0:	00813483          	ld	s1,8(sp)
    800063f4:	00f72023          	sw	a5,0(a4)
    800063f8:	02010113          	addi	sp,sp,32
    800063fc:	00001317          	auipc	t1,0x1
    80006400:	4bc30067          	jr	1212(t1) # 800078b8 <release>

0000000080006404 <devintr>:
    80006404:	142027f3          	csrr	a5,scause
    80006408:	00000513          	li	a0,0
    8000640c:	0007c463          	bltz	a5,80006414 <devintr+0x10>
    80006410:	00008067          	ret
    80006414:	fe010113          	addi	sp,sp,-32
    80006418:	00813823          	sd	s0,16(sp)
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	00913423          	sd	s1,8(sp)
    80006424:	02010413          	addi	s0,sp,32
    80006428:	0ff7f713          	andi	a4,a5,255
    8000642c:	00900693          	li	a3,9
    80006430:	04d70c63          	beq	a4,a3,80006488 <devintr+0x84>
    80006434:	fff00713          	li	a4,-1
    80006438:	03f71713          	slli	a4,a4,0x3f
    8000643c:	00170713          	addi	a4,a4,1
    80006440:	00e78c63          	beq	a5,a4,80006458 <devintr+0x54>
    80006444:	01813083          	ld	ra,24(sp)
    80006448:	01013403          	ld	s0,16(sp)
    8000644c:	00813483          	ld	s1,8(sp)
    80006450:	02010113          	addi	sp,sp,32
    80006454:	00008067          	ret
    80006458:	00000097          	auipc	ra,0x0
    8000645c:	c8c080e7          	jalr	-884(ra) # 800060e4 <cpuid>
    80006460:	06050663          	beqz	a0,800064cc <devintr+0xc8>
    80006464:	144027f3          	csrr	a5,sip
    80006468:	ffd7f793          	andi	a5,a5,-3
    8000646c:	14479073          	csrw	sip,a5
    80006470:	01813083          	ld	ra,24(sp)
    80006474:	01013403          	ld	s0,16(sp)
    80006478:	00813483          	ld	s1,8(sp)
    8000647c:	00200513          	li	a0,2
    80006480:	02010113          	addi	sp,sp,32
    80006484:	00008067          	ret
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	24c080e7          	jalr	588(ra) # 800066d4 <plic_claim>
    80006490:	00a00793          	li	a5,10
    80006494:	00050493          	mv	s1,a0
    80006498:	06f50663          	beq	a0,a5,80006504 <devintr+0x100>
    8000649c:	00100513          	li	a0,1
    800064a0:	fa0482e3          	beqz	s1,80006444 <devintr+0x40>
    800064a4:	00048593          	mv	a1,s1
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	1b050513          	addi	a0,a0,432 # 80009658 <CONSOLE_STATUS+0x648>
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	668080e7          	jalr	1640(ra) # 80006b18 <__printf>
    800064b8:	00048513          	mv	a0,s1
    800064bc:	00000097          	auipc	ra,0x0
    800064c0:	250080e7          	jalr	592(ra) # 8000670c <plic_complete>
    800064c4:	00100513          	li	a0,1
    800064c8:	f7dff06f          	j	80006444 <devintr+0x40>
    800064cc:	00006517          	auipc	a0,0x6
    800064d0:	3d450513          	addi	a0,a0,980 # 8000c8a0 <tickslock>
    800064d4:	00001097          	auipc	ra,0x1
    800064d8:	318080e7          	jalr	792(ra) # 800077ec <acquire>
    800064dc:	00005717          	auipc	a4,0x5
    800064e0:	26870713          	addi	a4,a4,616 # 8000b744 <ticks>
    800064e4:	00072783          	lw	a5,0(a4)
    800064e8:	00006517          	auipc	a0,0x6
    800064ec:	3b850513          	addi	a0,a0,952 # 8000c8a0 <tickslock>
    800064f0:	0017879b          	addiw	a5,a5,1
    800064f4:	00f72023          	sw	a5,0(a4)
    800064f8:	00001097          	auipc	ra,0x1
    800064fc:	3c0080e7          	jalr	960(ra) # 800078b8 <release>
    80006500:	f65ff06f          	j	80006464 <devintr+0x60>
    80006504:	00001097          	auipc	ra,0x1
    80006508:	f1c080e7          	jalr	-228(ra) # 80007420 <uartintr>
    8000650c:	fadff06f          	j	800064b8 <devintr+0xb4>

0000000080006510 <kernelvec>:
    80006510:	f0010113          	addi	sp,sp,-256
    80006514:	00113023          	sd	ra,0(sp)
    80006518:	00213423          	sd	sp,8(sp)
    8000651c:	00313823          	sd	gp,16(sp)
    80006520:	00413c23          	sd	tp,24(sp)
    80006524:	02513023          	sd	t0,32(sp)
    80006528:	02613423          	sd	t1,40(sp)
    8000652c:	02713823          	sd	t2,48(sp)
    80006530:	02813c23          	sd	s0,56(sp)
    80006534:	04913023          	sd	s1,64(sp)
    80006538:	04a13423          	sd	a0,72(sp)
    8000653c:	04b13823          	sd	a1,80(sp)
    80006540:	04c13c23          	sd	a2,88(sp)
    80006544:	06d13023          	sd	a3,96(sp)
    80006548:	06e13423          	sd	a4,104(sp)
    8000654c:	06f13823          	sd	a5,112(sp)
    80006550:	07013c23          	sd	a6,120(sp)
    80006554:	09113023          	sd	a7,128(sp)
    80006558:	09213423          	sd	s2,136(sp)
    8000655c:	09313823          	sd	s3,144(sp)
    80006560:	09413c23          	sd	s4,152(sp)
    80006564:	0b513023          	sd	s5,160(sp)
    80006568:	0b613423          	sd	s6,168(sp)
    8000656c:	0b713823          	sd	s7,176(sp)
    80006570:	0b813c23          	sd	s8,184(sp)
    80006574:	0d913023          	sd	s9,192(sp)
    80006578:	0da13423          	sd	s10,200(sp)
    8000657c:	0db13823          	sd	s11,208(sp)
    80006580:	0dc13c23          	sd	t3,216(sp)
    80006584:	0fd13023          	sd	t4,224(sp)
    80006588:	0fe13423          	sd	t5,232(sp)
    8000658c:	0ff13823          	sd	t6,240(sp)
    80006590:	cd5ff0ef          	jal	ra,80006264 <kerneltrap>
    80006594:	00013083          	ld	ra,0(sp)
    80006598:	00813103          	ld	sp,8(sp)
    8000659c:	01013183          	ld	gp,16(sp)
    800065a0:	02013283          	ld	t0,32(sp)
    800065a4:	02813303          	ld	t1,40(sp)
    800065a8:	03013383          	ld	t2,48(sp)
    800065ac:	03813403          	ld	s0,56(sp)
    800065b0:	04013483          	ld	s1,64(sp)
    800065b4:	04813503          	ld	a0,72(sp)
    800065b8:	05013583          	ld	a1,80(sp)
    800065bc:	05813603          	ld	a2,88(sp)
    800065c0:	06013683          	ld	a3,96(sp)
    800065c4:	06813703          	ld	a4,104(sp)
    800065c8:	07013783          	ld	a5,112(sp)
    800065cc:	07813803          	ld	a6,120(sp)
    800065d0:	08013883          	ld	a7,128(sp)
    800065d4:	08813903          	ld	s2,136(sp)
    800065d8:	09013983          	ld	s3,144(sp)
    800065dc:	09813a03          	ld	s4,152(sp)
    800065e0:	0a013a83          	ld	s5,160(sp)
    800065e4:	0a813b03          	ld	s6,168(sp)
    800065e8:	0b013b83          	ld	s7,176(sp)
    800065ec:	0b813c03          	ld	s8,184(sp)
    800065f0:	0c013c83          	ld	s9,192(sp)
    800065f4:	0c813d03          	ld	s10,200(sp)
    800065f8:	0d013d83          	ld	s11,208(sp)
    800065fc:	0d813e03          	ld	t3,216(sp)
    80006600:	0e013e83          	ld	t4,224(sp)
    80006604:	0e813f03          	ld	t5,232(sp)
    80006608:	0f013f83          	ld	t6,240(sp)
    8000660c:	10010113          	addi	sp,sp,256
    80006610:	10200073          	sret
    80006614:	00000013          	nop
    80006618:	00000013          	nop
    8000661c:	00000013          	nop

0000000080006620 <timervec>:
    80006620:	34051573          	csrrw	a0,mscratch,a0
    80006624:	00b53023          	sd	a1,0(a0)
    80006628:	00c53423          	sd	a2,8(a0)
    8000662c:	00d53823          	sd	a3,16(a0)
    80006630:	01853583          	ld	a1,24(a0)
    80006634:	02053603          	ld	a2,32(a0)
    80006638:	0005b683          	ld	a3,0(a1)
    8000663c:	00c686b3          	add	a3,a3,a2
    80006640:	00d5b023          	sd	a3,0(a1)
    80006644:	00200593          	li	a1,2
    80006648:	14459073          	csrw	sip,a1
    8000664c:	01053683          	ld	a3,16(a0)
    80006650:	00853603          	ld	a2,8(a0)
    80006654:	00053583          	ld	a1,0(a0)
    80006658:	34051573          	csrrw	a0,mscratch,a0
    8000665c:	30200073          	mret

0000000080006660 <plicinit>:
    80006660:	ff010113          	addi	sp,sp,-16
    80006664:	00813423          	sd	s0,8(sp)
    80006668:	01010413          	addi	s0,sp,16
    8000666c:	00813403          	ld	s0,8(sp)
    80006670:	0c0007b7          	lui	a5,0xc000
    80006674:	00100713          	li	a4,1
    80006678:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000667c:	00e7a223          	sw	a4,4(a5)
    80006680:	01010113          	addi	sp,sp,16
    80006684:	00008067          	ret

0000000080006688 <plicinithart>:
    80006688:	ff010113          	addi	sp,sp,-16
    8000668c:	00813023          	sd	s0,0(sp)
    80006690:	00113423          	sd	ra,8(sp)
    80006694:	01010413          	addi	s0,sp,16
    80006698:	00000097          	auipc	ra,0x0
    8000669c:	a4c080e7          	jalr	-1460(ra) # 800060e4 <cpuid>
    800066a0:	0085171b          	slliw	a4,a0,0x8
    800066a4:	0c0027b7          	lui	a5,0xc002
    800066a8:	00e787b3          	add	a5,a5,a4
    800066ac:	40200713          	li	a4,1026
    800066b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800066b4:	00813083          	ld	ra,8(sp)
    800066b8:	00013403          	ld	s0,0(sp)
    800066bc:	00d5151b          	slliw	a0,a0,0xd
    800066c0:	0c2017b7          	lui	a5,0xc201
    800066c4:	00a78533          	add	a0,a5,a0
    800066c8:	00052023          	sw	zero,0(a0)
    800066cc:	01010113          	addi	sp,sp,16
    800066d0:	00008067          	ret

00000000800066d4 <plic_claim>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813023          	sd	s0,0(sp)
    800066dc:	00113423          	sd	ra,8(sp)
    800066e0:	01010413          	addi	s0,sp,16
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	a00080e7          	jalr	-1536(ra) # 800060e4 <cpuid>
    800066ec:	00813083          	ld	ra,8(sp)
    800066f0:	00013403          	ld	s0,0(sp)
    800066f4:	00d5151b          	slliw	a0,a0,0xd
    800066f8:	0c2017b7          	lui	a5,0xc201
    800066fc:	00a78533          	add	a0,a5,a0
    80006700:	00452503          	lw	a0,4(a0)
    80006704:	01010113          	addi	sp,sp,16
    80006708:	00008067          	ret

000000008000670c <plic_complete>:
    8000670c:	fe010113          	addi	sp,sp,-32
    80006710:	00813823          	sd	s0,16(sp)
    80006714:	00913423          	sd	s1,8(sp)
    80006718:	00113c23          	sd	ra,24(sp)
    8000671c:	02010413          	addi	s0,sp,32
    80006720:	00050493          	mv	s1,a0
    80006724:	00000097          	auipc	ra,0x0
    80006728:	9c0080e7          	jalr	-1600(ra) # 800060e4 <cpuid>
    8000672c:	01813083          	ld	ra,24(sp)
    80006730:	01013403          	ld	s0,16(sp)
    80006734:	00d5179b          	slliw	a5,a0,0xd
    80006738:	0c201737          	lui	a4,0xc201
    8000673c:	00f707b3          	add	a5,a4,a5
    80006740:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006744:	00813483          	ld	s1,8(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00008067          	ret

0000000080006750 <consolewrite>:
    80006750:	fb010113          	addi	sp,sp,-80
    80006754:	04813023          	sd	s0,64(sp)
    80006758:	04113423          	sd	ra,72(sp)
    8000675c:	02913c23          	sd	s1,56(sp)
    80006760:	03213823          	sd	s2,48(sp)
    80006764:	03313423          	sd	s3,40(sp)
    80006768:	03413023          	sd	s4,32(sp)
    8000676c:	01513c23          	sd	s5,24(sp)
    80006770:	05010413          	addi	s0,sp,80
    80006774:	06c05c63          	blez	a2,800067ec <consolewrite+0x9c>
    80006778:	00060993          	mv	s3,a2
    8000677c:	00050a13          	mv	s4,a0
    80006780:	00058493          	mv	s1,a1
    80006784:	00000913          	li	s2,0
    80006788:	fff00a93          	li	s5,-1
    8000678c:	01c0006f          	j	800067a8 <consolewrite+0x58>
    80006790:	fbf44503          	lbu	a0,-65(s0)
    80006794:	0019091b          	addiw	s2,s2,1
    80006798:	00148493          	addi	s1,s1,1
    8000679c:	00001097          	auipc	ra,0x1
    800067a0:	a9c080e7          	jalr	-1380(ra) # 80007238 <uartputc>
    800067a4:	03298063          	beq	s3,s2,800067c4 <consolewrite+0x74>
    800067a8:	00048613          	mv	a2,s1
    800067ac:	00100693          	li	a3,1
    800067b0:	000a0593          	mv	a1,s4
    800067b4:	fbf40513          	addi	a0,s0,-65
    800067b8:	00000097          	auipc	ra,0x0
    800067bc:	9e4080e7          	jalr	-1564(ra) # 8000619c <either_copyin>
    800067c0:	fd5518e3          	bne	a0,s5,80006790 <consolewrite+0x40>
    800067c4:	04813083          	ld	ra,72(sp)
    800067c8:	04013403          	ld	s0,64(sp)
    800067cc:	03813483          	ld	s1,56(sp)
    800067d0:	02813983          	ld	s3,40(sp)
    800067d4:	02013a03          	ld	s4,32(sp)
    800067d8:	01813a83          	ld	s5,24(sp)
    800067dc:	00090513          	mv	a0,s2
    800067e0:	03013903          	ld	s2,48(sp)
    800067e4:	05010113          	addi	sp,sp,80
    800067e8:	00008067          	ret
    800067ec:	00000913          	li	s2,0
    800067f0:	fd5ff06f          	j	800067c4 <consolewrite+0x74>

00000000800067f4 <consoleread>:
    800067f4:	f9010113          	addi	sp,sp,-112
    800067f8:	06813023          	sd	s0,96(sp)
    800067fc:	04913c23          	sd	s1,88(sp)
    80006800:	05213823          	sd	s2,80(sp)
    80006804:	05313423          	sd	s3,72(sp)
    80006808:	05413023          	sd	s4,64(sp)
    8000680c:	03513c23          	sd	s5,56(sp)
    80006810:	03613823          	sd	s6,48(sp)
    80006814:	03713423          	sd	s7,40(sp)
    80006818:	03813023          	sd	s8,32(sp)
    8000681c:	06113423          	sd	ra,104(sp)
    80006820:	01913c23          	sd	s9,24(sp)
    80006824:	07010413          	addi	s0,sp,112
    80006828:	00060b93          	mv	s7,a2
    8000682c:	00050913          	mv	s2,a0
    80006830:	00058c13          	mv	s8,a1
    80006834:	00060b1b          	sext.w	s6,a2
    80006838:	00006497          	auipc	s1,0x6
    8000683c:	09048493          	addi	s1,s1,144 # 8000c8c8 <cons>
    80006840:	00400993          	li	s3,4
    80006844:	fff00a13          	li	s4,-1
    80006848:	00a00a93          	li	s5,10
    8000684c:	05705e63          	blez	s7,800068a8 <consoleread+0xb4>
    80006850:	09c4a703          	lw	a4,156(s1)
    80006854:	0984a783          	lw	a5,152(s1)
    80006858:	0007071b          	sext.w	a4,a4
    8000685c:	08e78463          	beq	a5,a4,800068e4 <consoleread+0xf0>
    80006860:	07f7f713          	andi	a4,a5,127
    80006864:	00e48733          	add	a4,s1,a4
    80006868:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000686c:	0017869b          	addiw	a3,a5,1
    80006870:	08d4ac23          	sw	a3,152(s1)
    80006874:	00070c9b          	sext.w	s9,a4
    80006878:	0b370663          	beq	a4,s3,80006924 <consoleread+0x130>
    8000687c:	00100693          	li	a3,1
    80006880:	f9f40613          	addi	a2,s0,-97
    80006884:	000c0593          	mv	a1,s8
    80006888:	00090513          	mv	a0,s2
    8000688c:	f8e40fa3          	sb	a4,-97(s0)
    80006890:	00000097          	auipc	ra,0x0
    80006894:	8c0080e7          	jalr	-1856(ra) # 80006150 <either_copyout>
    80006898:	01450863          	beq	a0,s4,800068a8 <consoleread+0xb4>
    8000689c:	001c0c13          	addi	s8,s8,1
    800068a0:	fffb8b9b          	addiw	s7,s7,-1
    800068a4:	fb5c94e3          	bne	s9,s5,8000684c <consoleread+0x58>
    800068a8:	000b851b          	sext.w	a0,s7
    800068ac:	06813083          	ld	ra,104(sp)
    800068b0:	06013403          	ld	s0,96(sp)
    800068b4:	05813483          	ld	s1,88(sp)
    800068b8:	05013903          	ld	s2,80(sp)
    800068bc:	04813983          	ld	s3,72(sp)
    800068c0:	04013a03          	ld	s4,64(sp)
    800068c4:	03813a83          	ld	s5,56(sp)
    800068c8:	02813b83          	ld	s7,40(sp)
    800068cc:	02013c03          	ld	s8,32(sp)
    800068d0:	01813c83          	ld	s9,24(sp)
    800068d4:	40ab053b          	subw	a0,s6,a0
    800068d8:	03013b03          	ld	s6,48(sp)
    800068dc:	07010113          	addi	sp,sp,112
    800068e0:	00008067          	ret
    800068e4:	00001097          	auipc	ra,0x1
    800068e8:	1d8080e7          	jalr	472(ra) # 80007abc <push_on>
    800068ec:	0984a703          	lw	a4,152(s1)
    800068f0:	09c4a783          	lw	a5,156(s1)
    800068f4:	0007879b          	sext.w	a5,a5
    800068f8:	fef70ce3          	beq	a4,a5,800068f0 <consoleread+0xfc>
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	234080e7          	jalr	564(ra) # 80007b30 <pop_on>
    80006904:	0984a783          	lw	a5,152(s1)
    80006908:	07f7f713          	andi	a4,a5,127
    8000690c:	00e48733          	add	a4,s1,a4
    80006910:	01874703          	lbu	a4,24(a4)
    80006914:	0017869b          	addiw	a3,a5,1
    80006918:	08d4ac23          	sw	a3,152(s1)
    8000691c:	00070c9b          	sext.w	s9,a4
    80006920:	f5371ee3          	bne	a4,s3,8000687c <consoleread+0x88>
    80006924:	000b851b          	sext.w	a0,s7
    80006928:	f96bf2e3          	bgeu	s7,s6,800068ac <consoleread+0xb8>
    8000692c:	08f4ac23          	sw	a5,152(s1)
    80006930:	f7dff06f          	j	800068ac <consoleread+0xb8>

0000000080006934 <consputc>:
    80006934:	10000793          	li	a5,256
    80006938:	00f50663          	beq	a0,a5,80006944 <consputc+0x10>
    8000693c:	00001317          	auipc	t1,0x1
    80006940:	9f430067          	jr	-1548(t1) # 80007330 <uartputc_sync>
    80006944:	ff010113          	addi	sp,sp,-16
    80006948:	00113423          	sd	ra,8(sp)
    8000694c:	00813023          	sd	s0,0(sp)
    80006950:	01010413          	addi	s0,sp,16
    80006954:	00800513          	li	a0,8
    80006958:	00001097          	auipc	ra,0x1
    8000695c:	9d8080e7          	jalr	-1576(ra) # 80007330 <uartputc_sync>
    80006960:	02000513          	li	a0,32
    80006964:	00001097          	auipc	ra,0x1
    80006968:	9cc080e7          	jalr	-1588(ra) # 80007330 <uartputc_sync>
    8000696c:	00013403          	ld	s0,0(sp)
    80006970:	00813083          	ld	ra,8(sp)
    80006974:	00800513          	li	a0,8
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00001317          	auipc	t1,0x1
    80006980:	9b430067          	jr	-1612(t1) # 80007330 <uartputc_sync>

0000000080006984 <consoleintr>:
    80006984:	fe010113          	addi	sp,sp,-32
    80006988:	00813823          	sd	s0,16(sp)
    8000698c:	00913423          	sd	s1,8(sp)
    80006990:	01213023          	sd	s2,0(sp)
    80006994:	00113c23          	sd	ra,24(sp)
    80006998:	02010413          	addi	s0,sp,32
    8000699c:	00006917          	auipc	s2,0x6
    800069a0:	f2c90913          	addi	s2,s2,-212 # 8000c8c8 <cons>
    800069a4:	00050493          	mv	s1,a0
    800069a8:	00090513          	mv	a0,s2
    800069ac:	00001097          	auipc	ra,0x1
    800069b0:	e40080e7          	jalr	-448(ra) # 800077ec <acquire>
    800069b4:	02048c63          	beqz	s1,800069ec <consoleintr+0x68>
    800069b8:	0a092783          	lw	a5,160(s2)
    800069bc:	09892703          	lw	a4,152(s2)
    800069c0:	07f00693          	li	a3,127
    800069c4:	40e7873b          	subw	a4,a5,a4
    800069c8:	02e6e263          	bltu	a3,a4,800069ec <consoleintr+0x68>
    800069cc:	00d00713          	li	a4,13
    800069d0:	04e48063          	beq	s1,a4,80006a10 <consoleintr+0x8c>
    800069d4:	07f7f713          	andi	a4,a5,127
    800069d8:	00e90733          	add	a4,s2,a4
    800069dc:	0017879b          	addiw	a5,a5,1
    800069e0:	0af92023          	sw	a5,160(s2)
    800069e4:	00970c23          	sb	s1,24(a4)
    800069e8:	08f92e23          	sw	a5,156(s2)
    800069ec:	01013403          	ld	s0,16(sp)
    800069f0:	01813083          	ld	ra,24(sp)
    800069f4:	00813483          	ld	s1,8(sp)
    800069f8:	00013903          	ld	s2,0(sp)
    800069fc:	00006517          	auipc	a0,0x6
    80006a00:	ecc50513          	addi	a0,a0,-308 # 8000c8c8 <cons>
    80006a04:	02010113          	addi	sp,sp,32
    80006a08:	00001317          	auipc	t1,0x1
    80006a0c:	eb030067          	jr	-336(t1) # 800078b8 <release>
    80006a10:	00a00493          	li	s1,10
    80006a14:	fc1ff06f          	j	800069d4 <consoleintr+0x50>

0000000080006a18 <consoleinit>:
    80006a18:	fe010113          	addi	sp,sp,-32
    80006a1c:	00113c23          	sd	ra,24(sp)
    80006a20:	00813823          	sd	s0,16(sp)
    80006a24:	00913423          	sd	s1,8(sp)
    80006a28:	02010413          	addi	s0,sp,32
    80006a2c:	00006497          	auipc	s1,0x6
    80006a30:	e9c48493          	addi	s1,s1,-356 # 8000c8c8 <cons>
    80006a34:	00048513          	mv	a0,s1
    80006a38:	00003597          	auipc	a1,0x3
    80006a3c:	c7858593          	addi	a1,a1,-904 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006a40:	00001097          	auipc	ra,0x1
    80006a44:	d88080e7          	jalr	-632(ra) # 800077c8 <initlock>
    80006a48:	00000097          	auipc	ra,0x0
    80006a4c:	7ac080e7          	jalr	1964(ra) # 800071f4 <uartinit>
    80006a50:	01813083          	ld	ra,24(sp)
    80006a54:	01013403          	ld	s0,16(sp)
    80006a58:	00000797          	auipc	a5,0x0
    80006a5c:	d9c78793          	addi	a5,a5,-612 # 800067f4 <consoleread>
    80006a60:	0af4bc23          	sd	a5,184(s1)
    80006a64:	00000797          	auipc	a5,0x0
    80006a68:	cec78793          	addi	a5,a5,-788 # 80006750 <consolewrite>
    80006a6c:	0cf4b023          	sd	a5,192(s1)
    80006a70:	00813483          	ld	s1,8(sp)
    80006a74:	02010113          	addi	sp,sp,32
    80006a78:	00008067          	ret

0000000080006a7c <console_read>:
    80006a7c:	ff010113          	addi	sp,sp,-16
    80006a80:	00813423          	sd	s0,8(sp)
    80006a84:	01010413          	addi	s0,sp,16
    80006a88:	00813403          	ld	s0,8(sp)
    80006a8c:	00006317          	auipc	t1,0x6
    80006a90:	ef433303          	ld	t1,-268(t1) # 8000c980 <devsw+0x10>
    80006a94:	01010113          	addi	sp,sp,16
    80006a98:	00030067          	jr	t1

0000000080006a9c <console_write>:
    80006a9c:	ff010113          	addi	sp,sp,-16
    80006aa0:	00813423          	sd	s0,8(sp)
    80006aa4:	01010413          	addi	s0,sp,16
    80006aa8:	00813403          	ld	s0,8(sp)
    80006aac:	00006317          	auipc	t1,0x6
    80006ab0:	edc33303          	ld	t1,-292(t1) # 8000c988 <devsw+0x18>
    80006ab4:	01010113          	addi	sp,sp,16
    80006ab8:	00030067          	jr	t1

0000000080006abc <panic>:
    80006abc:	fe010113          	addi	sp,sp,-32
    80006ac0:	00113c23          	sd	ra,24(sp)
    80006ac4:	00813823          	sd	s0,16(sp)
    80006ac8:	00913423          	sd	s1,8(sp)
    80006acc:	02010413          	addi	s0,sp,32
    80006ad0:	00050493          	mv	s1,a0
    80006ad4:	00003517          	auipc	a0,0x3
    80006ad8:	be450513          	addi	a0,a0,-1052 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006adc:	00006797          	auipc	a5,0x6
    80006ae0:	f407a623          	sw	zero,-180(a5) # 8000ca28 <pr+0x18>
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	034080e7          	jalr	52(ra) # 80006b18 <__printf>
    80006aec:	00048513          	mv	a0,s1
    80006af0:	00000097          	auipc	ra,0x0
    80006af4:	028080e7          	jalr	40(ra) # 80006b18 <__printf>
    80006af8:	00003517          	auipc	a0,0x3
    80006afc:	9b850513          	addi	a0,a0,-1608 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80006b00:	00000097          	auipc	ra,0x0
    80006b04:	018080e7          	jalr	24(ra) # 80006b18 <__printf>
    80006b08:	00100793          	li	a5,1
    80006b0c:	00005717          	auipc	a4,0x5
    80006b10:	c2f72e23          	sw	a5,-964(a4) # 8000b748 <panicked>
    80006b14:	0000006f          	j	80006b14 <panic+0x58>

0000000080006b18 <__printf>:
    80006b18:	f3010113          	addi	sp,sp,-208
    80006b1c:	08813023          	sd	s0,128(sp)
    80006b20:	07313423          	sd	s3,104(sp)
    80006b24:	09010413          	addi	s0,sp,144
    80006b28:	05813023          	sd	s8,64(sp)
    80006b2c:	08113423          	sd	ra,136(sp)
    80006b30:	06913c23          	sd	s1,120(sp)
    80006b34:	07213823          	sd	s2,112(sp)
    80006b38:	07413023          	sd	s4,96(sp)
    80006b3c:	05513c23          	sd	s5,88(sp)
    80006b40:	05613823          	sd	s6,80(sp)
    80006b44:	05713423          	sd	s7,72(sp)
    80006b48:	03913c23          	sd	s9,56(sp)
    80006b4c:	03a13823          	sd	s10,48(sp)
    80006b50:	03b13423          	sd	s11,40(sp)
    80006b54:	00006317          	auipc	t1,0x6
    80006b58:	ebc30313          	addi	t1,t1,-324 # 8000ca10 <pr>
    80006b5c:	01832c03          	lw	s8,24(t1)
    80006b60:	00b43423          	sd	a1,8(s0)
    80006b64:	00c43823          	sd	a2,16(s0)
    80006b68:	00d43c23          	sd	a3,24(s0)
    80006b6c:	02e43023          	sd	a4,32(s0)
    80006b70:	02f43423          	sd	a5,40(s0)
    80006b74:	03043823          	sd	a6,48(s0)
    80006b78:	03143c23          	sd	a7,56(s0)
    80006b7c:	00050993          	mv	s3,a0
    80006b80:	4a0c1663          	bnez	s8,8000702c <__printf+0x514>
    80006b84:	60098c63          	beqz	s3,8000719c <__printf+0x684>
    80006b88:	0009c503          	lbu	a0,0(s3)
    80006b8c:	00840793          	addi	a5,s0,8
    80006b90:	f6f43c23          	sd	a5,-136(s0)
    80006b94:	00000493          	li	s1,0
    80006b98:	22050063          	beqz	a0,80006db8 <__printf+0x2a0>
    80006b9c:	00002a37          	lui	s4,0x2
    80006ba0:	00018ab7          	lui	s5,0x18
    80006ba4:	000f4b37          	lui	s6,0xf4
    80006ba8:	00989bb7          	lui	s7,0x989
    80006bac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006bb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006bb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006bb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006bbc:	00148c9b          	addiw	s9,s1,1
    80006bc0:	02500793          	li	a5,37
    80006bc4:	01998933          	add	s2,s3,s9
    80006bc8:	38f51263          	bne	a0,a5,80006f4c <__printf+0x434>
    80006bcc:	00094783          	lbu	a5,0(s2)
    80006bd0:	00078c9b          	sext.w	s9,a5
    80006bd4:	1e078263          	beqz	a5,80006db8 <__printf+0x2a0>
    80006bd8:	0024849b          	addiw	s1,s1,2
    80006bdc:	07000713          	li	a4,112
    80006be0:	00998933          	add	s2,s3,s1
    80006be4:	38e78a63          	beq	a5,a4,80006f78 <__printf+0x460>
    80006be8:	20f76863          	bltu	a4,a5,80006df8 <__printf+0x2e0>
    80006bec:	42a78863          	beq	a5,a0,8000701c <__printf+0x504>
    80006bf0:	06400713          	li	a4,100
    80006bf4:	40e79663          	bne	a5,a4,80007000 <__printf+0x4e8>
    80006bf8:	f7843783          	ld	a5,-136(s0)
    80006bfc:	0007a603          	lw	a2,0(a5)
    80006c00:	00878793          	addi	a5,a5,8
    80006c04:	f6f43c23          	sd	a5,-136(s0)
    80006c08:	42064a63          	bltz	a2,8000703c <__printf+0x524>
    80006c0c:	00a00713          	li	a4,10
    80006c10:	02e677bb          	remuw	a5,a2,a4
    80006c14:	00003d97          	auipc	s11,0x3
    80006c18:	accd8d93          	addi	s11,s11,-1332 # 800096e0 <digits>
    80006c1c:	00900593          	li	a1,9
    80006c20:	0006051b          	sext.w	a0,a2
    80006c24:	00000c93          	li	s9,0
    80006c28:	02079793          	slli	a5,a5,0x20
    80006c2c:	0207d793          	srli	a5,a5,0x20
    80006c30:	00fd87b3          	add	a5,s11,a5
    80006c34:	0007c783          	lbu	a5,0(a5)
    80006c38:	02e656bb          	divuw	a3,a2,a4
    80006c3c:	f8f40023          	sb	a5,-128(s0)
    80006c40:	14c5d863          	bge	a1,a2,80006d90 <__printf+0x278>
    80006c44:	06300593          	li	a1,99
    80006c48:	00100c93          	li	s9,1
    80006c4c:	02e6f7bb          	remuw	a5,a3,a4
    80006c50:	02079793          	slli	a5,a5,0x20
    80006c54:	0207d793          	srli	a5,a5,0x20
    80006c58:	00fd87b3          	add	a5,s11,a5
    80006c5c:	0007c783          	lbu	a5,0(a5)
    80006c60:	02e6d73b          	divuw	a4,a3,a4
    80006c64:	f8f400a3          	sb	a5,-127(s0)
    80006c68:	12a5f463          	bgeu	a1,a0,80006d90 <__printf+0x278>
    80006c6c:	00a00693          	li	a3,10
    80006c70:	00900593          	li	a1,9
    80006c74:	02d777bb          	remuw	a5,a4,a3
    80006c78:	02079793          	slli	a5,a5,0x20
    80006c7c:	0207d793          	srli	a5,a5,0x20
    80006c80:	00fd87b3          	add	a5,s11,a5
    80006c84:	0007c503          	lbu	a0,0(a5)
    80006c88:	02d757bb          	divuw	a5,a4,a3
    80006c8c:	f8a40123          	sb	a0,-126(s0)
    80006c90:	48e5f263          	bgeu	a1,a4,80007114 <__printf+0x5fc>
    80006c94:	06300513          	li	a0,99
    80006c98:	02d7f5bb          	remuw	a1,a5,a3
    80006c9c:	02059593          	slli	a1,a1,0x20
    80006ca0:	0205d593          	srli	a1,a1,0x20
    80006ca4:	00bd85b3          	add	a1,s11,a1
    80006ca8:	0005c583          	lbu	a1,0(a1)
    80006cac:	02d7d7bb          	divuw	a5,a5,a3
    80006cb0:	f8b401a3          	sb	a1,-125(s0)
    80006cb4:	48e57263          	bgeu	a0,a4,80007138 <__printf+0x620>
    80006cb8:	3e700513          	li	a0,999
    80006cbc:	02d7f5bb          	remuw	a1,a5,a3
    80006cc0:	02059593          	slli	a1,a1,0x20
    80006cc4:	0205d593          	srli	a1,a1,0x20
    80006cc8:	00bd85b3          	add	a1,s11,a1
    80006ccc:	0005c583          	lbu	a1,0(a1)
    80006cd0:	02d7d7bb          	divuw	a5,a5,a3
    80006cd4:	f8b40223          	sb	a1,-124(s0)
    80006cd8:	46e57663          	bgeu	a0,a4,80007144 <__printf+0x62c>
    80006cdc:	02d7f5bb          	remuw	a1,a5,a3
    80006ce0:	02059593          	slli	a1,a1,0x20
    80006ce4:	0205d593          	srli	a1,a1,0x20
    80006ce8:	00bd85b3          	add	a1,s11,a1
    80006cec:	0005c583          	lbu	a1,0(a1)
    80006cf0:	02d7d7bb          	divuw	a5,a5,a3
    80006cf4:	f8b402a3          	sb	a1,-123(s0)
    80006cf8:	46ea7863          	bgeu	s4,a4,80007168 <__printf+0x650>
    80006cfc:	02d7f5bb          	remuw	a1,a5,a3
    80006d00:	02059593          	slli	a1,a1,0x20
    80006d04:	0205d593          	srli	a1,a1,0x20
    80006d08:	00bd85b3          	add	a1,s11,a1
    80006d0c:	0005c583          	lbu	a1,0(a1)
    80006d10:	02d7d7bb          	divuw	a5,a5,a3
    80006d14:	f8b40323          	sb	a1,-122(s0)
    80006d18:	3eeaf863          	bgeu	s5,a4,80007108 <__printf+0x5f0>
    80006d1c:	02d7f5bb          	remuw	a1,a5,a3
    80006d20:	02059593          	slli	a1,a1,0x20
    80006d24:	0205d593          	srli	a1,a1,0x20
    80006d28:	00bd85b3          	add	a1,s11,a1
    80006d2c:	0005c583          	lbu	a1,0(a1)
    80006d30:	02d7d7bb          	divuw	a5,a5,a3
    80006d34:	f8b403a3          	sb	a1,-121(s0)
    80006d38:	42eb7e63          	bgeu	s6,a4,80007174 <__printf+0x65c>
    80006d3c:	02d7f5bb          	remuw	a1,a5,a3
    80006d40:	02059593          	slli	a1,a1,0x20
    80006d44:	0205d593          	srli	a1,a1,0x20
    80006d48:	00bd85b3          	add	a1,s11,a1
    80006d4c:	0005c583          	lbu	a1,0(a1)
    80006d50:	02d7d7bb          	divuw	a5,a5,a3
    80006d54:	f8b40423          	sb	a1,-120(s0)
    80006d58:	42ebfc63          	bgeu	s7,a4,80007190 <__printf+0x678>
    80006d5c:	02079793          	slli	a5,a5,0x20
    80006d60:	0207d793          	srli	a5,a5,0x20
    80006d64:	00fd8db3          	add	s11,s11,a5
    80006d68:	000dc703          	lbu	a4,0(s11)
    80006d6c:	00a00793          	li	a5,10
    80006d70:	00900c93          	li	s9,9
    80006d74:	f8e404a3          	sb	a4,-119(s0)
    80006d78:	00065c63          	bgez	a2,80006d90 <__printf+0x278>
    80006d7c:	f9040713          	addi	a4,s0,-112
    80006d80:	00f70733          	add	a4,a4,a5
    80006d84:	02d00693          	li	a3,45
    80006d88:	fed70823          	sb	a3,-16(a4)
    80006d8c:	00078c93          	mv	s9,a5
    80006d90:	f8040793          	addi	a5,s0,-128
    80006d94:	01978cb3          	add	s9,a5,s9
    80006d98:	f7f40d13          	addi	s10,s0,-129
    80006d9c:	000cc503          	lbu	a0,0(s9)
    80006da0:	fffc8c93          	addi	s9,s9,-1
    80006da4:	00000097          	auipc	ra,0x0
    80006da8:	b90080e7          	jalr	-1136(ra) # 80006934 <consputc>
    80006dac:	ffac98e3          	bne	s9,s10,80006d9c <__printf+0x284>
    80006db0:	00094503          	lbu	a0,0(s2)
    80006db4:	e00514e3          	bnez	a0,80006bbc <__printf+0xa4>
    80006db8:	1a0c1663          	bnez	s8,80006f64 <__printf+0x44c>
    80006dbc:	08813083          	ld	ra,136(sp)
    80006dc0:	08013403          	ld	s0,128(sp)
    80006dc4:	07813483          	ld	s1,120(sp)
    80006dc8:	07013903          	ld	s2,112(sp)
    80006dcc:	06813983          	ld	s3,104(sp)
    80006dd0:	06013a03          	ld	s4,96(sp)
    80006dd4:	05813a83          	ld	s5,88(sp)
    80006dd8:	05013b03          	ld	s6,80(sp)
    80006ddc:	04813b83          	ld	s7,72(sp)
    80006de0:	04013c03          	ld	s8,64(sp)
    80006de4:	03813c83          	ld	s9,56(sp)
    80006de8:	03013d03          	ld	s10,48(sp)
    80006dec:	02813d83          	ld	s11,40(sp)
    80006df0:	0d010113          	addi	sp,sp,208
    80006df4:	00008067          	ret
    80006df8:	07300713          	li	a4,115
    80006dfc:	1ce78a63          	beq	a5,a4,80006fd0 <__printf+0x4b8>
    80006e00:	07800713          	li	a4,120
    80006e04:	1ee79e63          	bne	a5,a4,80007000 <__printf+0x4e8>
    80006e08:	f7843783          	ld	a5,-136(s0)
    80006e0c:	0007a703          	lw	a4,0(a5)
    80006e10:	00878793          	addi	a5,a5,8
    80006e14:	f6f43c23          	sd	a5,-136(s0)
    80006e18:	28074263          	bltz	a4,8000709c <__printf+0x584>
    80006e1c:	00003d97          	auipc	s11,0x3
    80006e20:	8c4d8d93          	addi	s11,s11,-1852 # 800096e0 <digits>
    80006e24:	00f77793          	andi	a5,a4,15
    80006e28:	00fd87b3          	add	a5,s11,a5
    80006e2c:	0007c683          	lbu	a3,0(a5)
    80006e30:	00f00613          	li	a2,15
    80006e34:	0007079b          	sext.w	a5,a4
    80006e38:	f8d40023          	sb	a3,-128(s0)
    80006e3c:	0047559b          	srliw	a1,a4,0x4
    80006e40:	0047569b          	srliw	a3,a4,0x4
    80006e44:	00000c93          	li	s9,0
    80006e48:	0ee65063          	bge	a2,a4,80006f28 <__printf+0x410>
    80006e4c:	00f6f693          	andi	a3,a3,15
    80006e50:	00dd86b3          	add	a3,s11,a3
    80006e54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006e58:	0087d79b          	srliw	a5,a5,0x8
    80006e5c:	00100c93          	li	s9,1
    80006e60:	f8d400a3          	sb	a3,-127(s0)
    80006e64:	0cb67263          	bgeu	a2,a1,80006f28 <__printf+0x410>
    80006e68:	00f7f693          	andi	a3,a5,15
    80006e6c:	00dd86b3          	add	a3,s11,a3
    80006e70:	0006c583          	lbu	a1,0(a3)
    80006e74:	00f00613          	li	a2,15
    80006e78:	0047d69b          	srliw	a3,a5,0x4
    80006e7c:	f8b40123          	sb	a1,-126(s0)
    80006e80:	0047d593          	srli	a1,a5,0x4
    80006e84:	28f67e63          	bgeu	a2,a5,80007120 <__printf+0x608>
    80006e88:	00f6f693          	andi	a3,a3,15
    80006e8c:	00dd86b3          	add	a3,s11,a3
    80006e90:	0006c503          	lbu	a0,0(a3)
    80006e94:	0087d813          	srli	a6,a5,0x8
    80006e98:	0087d69b          	srliw	a3,a5,0x8
    80006e9c:	f8a401a3          	sb	a0,-125(s0)
    80006ea0:	28b67663          	bgeu	a2,a1,8000712c <__printf+0x614>
    80006ea4:	00f6f693          	andi	a3,a3,15
    80006ea8:	00dd86b3          	add	a3,s11,a3
    80006eac:	0006c583          	lbu	a1,0(a3)
    80006eb0:	00c7d513          	srli	a0,a5,0xc
    80006eb4:	00c7d69b          	srliw	a3,a5,0xc
    80006eb8:	f8b40223          	sb	a1,-124(s0)
    80006ebc:	29067a63          	bgeu	a2,a6,80007150 <__printf+0x638>
    80006ec0:	00f6f693          	andi	a3,a3,15
    80006ec4:	00dd86b3          	add	a3,s11,a3
    80006ec8:	0006c583          	lbu	a1,0(a3)
    80006ecc:	0107d813          	srli	a6,a5,0x10
    80006ed0:	0107d69b          	srliw	a3,a5,0x10
    80006ed4:	f8b402a3          	sb	a1,-123(s0)
    80006ed8:	28a67263          	bgeu	a2,a0,8000715c <__printf+0x644>
    80006edc:	00f6f693          	andi	a3,a3,15
    80006ee0:	00dd86b3          	add	a3,s11,a3
    80006ee4:	0006c683          	lbu	a3,0(a3)
    80006ee8:	0147d79b          	srliw	a5,a5,0x14
    80006eec:	f8d40323          	sb	a3,-122(s0)
    80006ef0:	21067663          	bgeu	a2,a6,800070fc <__printf+0x5e4>
    80006ef4:	02079793          	slli	a5,a5,0x20
    80006ef8:	0207d793          	srli	a5,a5,0x20
    80006efc:	00fd8db3          	add	s11,s11,a5
    80006f00:	000dc683          	lbu	a3,0(s11)
    80006f04:	00800793          	li	a5,8
    80006f08:	00700c93          	li	s9,7
    80006f0c:	f8d403a3          	sb	a3,-121(s0)
    80006f10:	00075c63          	bgez	a4,80006f28 <__printf+0x410>
    80006f14:	f9040713          	addi	a4,s0,-112
    80006f18:	00f70733          	add	a4,a4,a5
    80006f1c:	02d00693          	li	a3,45
    80006f20:	fed70823          	sb	a3,-16(a4)
    80006f24:	00078c93          	mv	s9,a5
    80006f28:	f8040793          	addi	a5,s0,-128
    80006f2c:	01978cb3          	add	s9,a5,s9
    80006f30:	f7f40d13          	addi	s10,s0,-129
    80006f34:	000cc503          	lbu	a0,0(s9)
    80006f38:	fffc8c93          	addi	s9,s9,-1
    80006f3c:	00000097          	auipc	ra,0x0
    80006f40:	9f8080e7          	jalr	-1544(ra) # 80006934 <consputc>
    80006f44:	ff9d18e3          	bne	s10,s9,80006f34 <__printf+0x41c>
    80006f48:	0100006f          	j	80006f58 <__printf+0x440>
    80006f4c:	00000097          	auipc	ra,0x0
    80006f50:	9e8080e7          	jalr	-1560(ra) # 80006934 <consputc>
    80006f54:	000c8493          	mv	s1,s9
    80006f58:	00094503          	lbu	a0,0(s2)
    80006f5c:	c60510e3          	bnez	a0,80006bbc <__printf+0xa4>
    80006f60:	e40c0ee3          	beqz	s8,80006dbc <__printf+0x2a4>
    80006f64:	00006517          	auipc	a0,0x6
    80006f68:	aac50513          	addi	a0,a0,-1364 # 8000ca10 <pr>
    80006f6c:	00001097          	auipc	ra,0x1
    80006f70:	94c080e7          	jalr	-1716(ra) # 800078b8 <release>
    80006f74:	e49ff06f          	j	80006dbc <__printf+0x2a4>
    80006f78:	f7843783          	ld	a5,-136(s0)
    80006f7c:	03000513          	li	a0,48
    80006f80:	01000d13          	li	s10,16
    80006f84:	00878713          	addi	a4,a5,8
    80006f88:	0007bc83          	ld	s9,0(a5)
    80006f8c:	f6e43c23          	sd	a4,-136(s0)
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	9a4080e7          	jalr	-1628(ra) # 80006934 <consputc>
    80006f98:	07800513          	li	a0,120
    80006f9c:	00000097          	auipc	ra,0x0
    80006fa0:	998080e7          	jalr	-1640(ra) # 80006934 <consputc>
    80006fa4:	00002d97          	auipc	s11,0x2
    80006fa8:	73cd8d93          	addi	s11,s11,1852 # 800096e0 <digits>
    80006fac:	03ccd793          	srli	a5,s9,0x3c
    80006fb0:	00fd87b3          	add	a5,s11,a5
    80006fb4:	0007c503          	lbu	a0,0(a5)
    80006fb8:	fffd0d1b          	addiw	s10,s10,-1
    80006fbc:	004c9c93          	slli	s9,s9,0x4
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	974080e7          	jalr	-1676(ra) # 80006934 <consputc>
    80006fc8:	fe0d12e3          	bnez	s10,80006fac <__printf+0x494>
    80006fcc:	f8dff06f          	j	80006f58 <__printf+0x440>
    80006fd0:	f7843783          	ld	a5,-136(s0)
    80006fd4:	0007bc83          	ld	s9,0(a5)
    80006fd8:	00878793          	addi	a5,a5,8
    80006fdc:	f6f43c23          	sd	a5,-136(s0)
    80006fe0:	000c9a63          	bnez	s9,80006ff4 <__printf+0x4dc>
    80006fe4:	1080006f          	j	800070ec <__printf+0x5d4>
    80006fe8:	001c8c93          	addi	s9,s9,1
    80006fec:	00000097          	auipc	ra,0x0
    80006ff0:	948080e7          	jalr	-1720(ra) # 80006934 <consputc>
    80006ff4:	000cc503          	lbu	a0,0(s9)
    80006ff8:	fe0518e3          	bnez	a0,80006fe8 <__printf+0x4d0>
    80006ffc:	f5dff06f          	j	80006f58 <__printf+0x440>
    80007000:	02500513          	li	a0,37
    80007004:	00000097          	auipc	ra,0x0
    80007008:	930080e7          	jalr	-1744(ra) # 80006934 <consputc>
    8000700c:	000c8513          	mv	a0,s9
    80007010:	00000097          	auipc	ra,0x0
    80007014:	924080e7          	jalr	-1756(ra) # 80006934 <consputc>
    80007018:	f41ff06f          	j	80006f58 <__printf+0x440>
    8000701c:	02500513          	li	a0,37
    80007020:	00000097          	auipc	ra,0x0
    80007024:	914080e7          	jalr	-1772(ra) # 80006934 <consputc>
    80007028:	f31ff06f          	j	80006f58 <__printf+0x440>
    8000702c:	00030513          	mv	a0,t1
    80007030:	00000097          	auipc	ra,0x0
    80007034:	7bc080e7          	jalr	1980(ra) # 800077ec <acquire>
    80007038:	b4dff06f          	j	80006b84 <__printf+0x6c>
    8000703c:	40c0053b          	negw	a0,a2
    80007040:	00a00713          	li	a4,10
    80007044:	02e576bb          	remuw	a3,a0,a4
    80007048:	00002d97          	auipc	s11,0x2
    8000704c:	698d8d93          	addi	s11,s11,1688 # 800096e0 <digits>
    80007050:	ff700593          	li	a1,-9
    80007054:	02069693          	slli	a3,a3,0x20
    80007058:	0206d693          	srli	a3,a3,0x20
    8000705c:	00dd86b3          	add	a3,s11,a3
    80007060:	0006c683          	lbu	a3,0(a3)
    80007064:	02e557bb          	divuw	a5,a0,a4
    80007068:	f8d40023          	sb	a3,-128(s0)
    8000706c:	10b65e63          	bge	a2,a1,80007188 <__printf+0x670>
    80007070:	06300593          	li	a1,99
    80007074:	02e7f6bb          	remuw	a3,a5,a4
    80007078:	02069693          	slli	a3,a3,0x20
    8000707c:	0206d693          	srli	a3,a3,0x20
    80007080:	00dd86b3          	add	a3,s11,a3
    80007084:	0006c683          	lbu	a3,0(a3)
    80007088:	02e7d73b          	divuw	a4,a5,a4
    8000708c:	00200793          	li	a5,2
    80007090:	f8d400a3          	sb	a3,-127(s0)
    80007094:	bca5ece3          	bltu	a1,a0,80006c6c <__printf+0x154>
    80007098:	ce5ff06f          	j	80006d7c <__printf+0x264>
    8000709c:	40e007bb          	negw	a5,a4
    800070a0:	00002d97          	auipc	s11,0x2
    800070a4:	640d8d93          	addi	s11,s11,1600 # 800096e0 <digits>
    800070a8:	00f7f693          	andi	a3,a5,15
    800070ac:	00dd86b3          	add	a3,s11,a3
    800070b0:	0006c583          	lbu	a1,0(a3)
    800070b4:	ff100613          	li	a2,-15
    800070b8:	0047d69b          	srliw	a3,a5,0x4
    800070bc:	f8b40023          	sb	a1,-128(s0)
    800070c0:	0047d59b          	srliw	a1,a5,0x4
    800070c4:	0ac75e63          	bge	a4,a2,80007180 <__printf+0x668>
    800070c8:	00f6f693          	andi	a3,a3,15
    800070cc:	00dd86b3          	add	a3,s11,a3
    800070d0:	0006c603          	lbu	a2,0(a3)
    800070d4:	00f00693          	li	a3,15
    800070d8:	0087d79b          	srliw	a5,a5,0x8
    800070dc:	f8c400a3          	sb	a2,-127(s0)
    800070e0:	d8b6e4e3          	bltu	a3,a1,80006e68 <__printf+0x350>
    800070e4:	00200793          	li	a5,2
    800070e8:	e2dff06f          	j	80006f14 <__printf+0x3fc>
    800070ec:	00002c97          	auipc	s9,0x2
    800070f0:	5d4c8c93          	addi	s9,s9,1492 # 800096c0 <CONSOLE_STATUS+0x6b0>
    800070f4:	02800513          	li	a0,40
    800070f8:	ef1ff06f          	j	80006fe8 <__printf+0x4d0>
    800070fc:	00700793          	li	a5,7
    80007100:	00600c93          	li	s9,6
    80007104:	e0dff06f          	j	80006f10 <__printf+0x3f8>
    80007108:	00700793          	li	a5,7
    8000710c:	00600c93          	li	s9,6
    80007110:	c69ff06f          	j	80006d78 <__printf+0x260>
    80007114:	00300793          	li	a5,3
    80007118:	00200c93          	li	s9,2
    8000711c:	c5dff06f          	j	80006d78 <__printf+0x260>
    80007120:	00300793          	li	a5,3
    80007124:	00200c93          	li	s9,2
    80007128:	de9ff06f          	j	80006f10 <__printf+0x3f8>
    8000712c:	00400793          	li	a5,4
    80007130:	00300c93          	li	s9,3
    80007134:	dddff06f          	j	80006f10 <__printf+0x3f8>
    80007138:	00400793          	li	a5,4
    8000713c:	00300c93          	li	s9,3
    80007140:	c39ff06f          	j	80006d78 <__printf+0x260>
    80007144:	00500793          	li	a5,5
    80007148:	00400c93          	li	s9,4
    8000714c:	c2dff06f          	j	80006d78 <__printf+0x260>
    80007150:	00500793          	li	a5,5
    80007154:	00400c93          	li	s9,4
    80007158:	db9ff06f          	j	80006f10 <__printf+0x3f8>
    8000715c:	00600793          	li	a5,6
    80007160:	00500c93          	li	s9,5
    80007164:	dadff06f          	j	80006f10 <__printf+0x3f8>
    80007168:	00600793          	li	a5,6
    8000716c:	00500c93          	li	s9,5
    80007170:	c09ff06f          	j	80006d78 <__printf+0x260>
    80007174:	00800793          	li	a5,8
    80007178:	00700c93          	li	s9,7
    8000717c:	bfdff06f          	j	80006d78 <__printf+0x260>
    80007180:	00100793          	li	a5,1
    80007184:	d91ff06f          	j	80006f14 <__printf+0x3fc>
    80007188:	00100793          	li	a5,1
    8000718c:	bf1ff06f          	j	80006d7c <__printf+0x264>
    80007190:	00900793          	li	a5,9
    80007194:	00800c93          	li	s9,8
    80007198:	be1ff06f          	j	80006d78 <__printf+0x260>
    8000719c:	00002517          	auipc	a0,0x2
    800071a0:	52c50513          	addi	a0,a0,1324 # 800096c8 <CONSOLE_STATUS+0x6b8>
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	918080e7          	jalr	-1768(ra) # 80006abc <panic>

00000000800071ac <printfinit>:
    800071ac:	fe010113          	addi	sp,sp,-32
    800071b0:	00813823          	sd	s0,16(sp)
    800071b4:	00913423          	sd	s1,8(sp)
    800071b8:	00113c23          	sd	ra,24(sp)
    800071bc:	02010413          	addi	s0,sp,32
    800071c0:	00006497          	auipc	s1,0x6
    800071c4:	85048493          	addi	s1,s1,-1968 # 8000ca10 <pr>
    800071c8:	00048513          	mv	a0,s1
    800071cc:	00002597          	auipc	a1,0x2
    800071d0:	50c58593          	addi	a1,a1,1292 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800071d4:	00000097          	auipc	ra,0x0
    800071d8:	5f4080e7          	jalr	1524(ra) # 800077c8 <initlock>
    800071dc:	01813083          	ld	ra,24(sp)
    800071e0:	01013403          	ld	s0,16(sp)
    800071e4:	0004ac23          	sw	zero,24(s1)
    800071e8:	00813483          	ld	s1,8(sp)
    800071ec:	02010113          	addi	sp,sp,32
    800071f0:	00008067          	ret

00000000800071f4 <uartinit>:
    800071f4:	ff010113          	addi	sp,sp,-16
    800071f8:	00813423          	sd	s0,8(sp)
    800071fc:	01010413          	addi	s0,sp,16
    80007200:	100007b7          	lui	a5,0x10000
    80007204:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007208:	f8000713          	li	a4,-128
    8000720c:	00e781a3          	sb	a4,3(a5)
    80007210:	00300713          	li	a4,3
    80007214:	00e78023          	sb	a4,0(a5)
    80007218:	000780a3          	sb	zero,1(a5)
    8000721c:	00e781a3          	sb	a4,3(a5)
    80007220:	00700693          	li	a3,7
    80007224:	00d78123          	sb	a3,2(a5)
    80007228:	00e780a3          	sb	a4,1(a5)
    8000722c:	00813403          	ld	s0,8(sp)
    80007230:	01010113          	addi	sp,sp,16
    80007234:	00008067          	ret

0000000080007238 <uartputc>:
    80007238:	00004797          	auipc	a5,0x4
    8000723c:	5107a783          	lw	a5,1296(a5) # 8000b748 <panicked>
    80007240:	00078463          	beqz	a5,80007248 <uartputc+0x10>
    80007244:	0000006f          	j	80007244 <uartputc+0xc>
    80007248:	fd010113          	addi	sp,sp,-48
    8000724c:	02813023          	sd	s0,32(sp)
    80007250:	00913c23          	sd	s1,24(sp)
    80007254:	01213823          	sd	s2,16(sp)
    80007258:	01313423          	sd	s3,8(sp)
    8000725c:	02113423          	sd	ra,40(sp)
    80007260:	03010413          	addi	s0,sp,48
    80007264:	00004917          	auipc	s2,0x4
    80007268:	4ec90913          	addi	s2,s2,1260 # 8000b750 <uart_tx_r>
    8000726c:	00093783          	ld	a5,0(s2)
    80007270:	00004497          	auipc	s1,0x4
    80007274:	4e848493          	addi	s1,s1,1256 # 8000b758 <uart_tx_w>
    80007278:	0004b703          	ld	a4,0(s1)
    8000727c:	02078693          	addi	a3,a5,32
    80007280:	00050993          	mv	s3,a0
    80007284:	02e69c63          	bne	a3,a4,800072bc <uartputc+0x84>
    80007288:	00001097          	auipc	ra,0x1
    8000728c:	834080e7          	jalr	-1996(ra) # 80007abc <push_on>
    80007290:	00093783          	ld	a5,0(s2)
    80007294:	0004b703          	ld	a4,0(s1)
    80007298:	02078793          	addi	a5,a5,32
    8000729c:	00e79463          	bne	a5,a4,800072a4 <uartputc+0x6c>
    800072a0:	0000006f          	j	800072a0 <uartputc+0x68>
    800072a4:	00001097          	auipc	ra,0x1
    800072a8:	88c080e7          	jalr	-1908(ra) # 80007b30 <pop_on>
    800072ac:	00093783          	ld	a5,0(s2)
    800072b0:	0004b703          	ld	a4,0(s1)
    800072b4:	02078693          	addi	a3,a5,32
    800072b8:	fce688e3          	beq	a3,a4,80007288 <uartputc+0x50>
    800072bc:	01f77693          	andi	a3,a4,31
    800072c0:	00005597          	auipc	a1,0x5
    800072c4:	77058593          	addi	a1,a1,1904 # 8000ca30 <uart_tx_buf>
    800072c8:	00d586b3          	add	a3,a1,a3
    800072cc:	00170713          	addi	a4,a4,1
    800072d0:	01368023          	sb	s3,0(a3)
    800072d4:	00e4b023          	sd	a4,0(s1)
    800072d8:	10000637          	lui	a2,0x10000
    800072dc:	02f71063          	bne	a4,a5,800072fc <uartputc+0xc4>
    800072e0:	0340006f          	j	80007314 <uartputc+0xdc>
    800072e4:	00074703          	lbu	a4,0(a4)
    800072e8:	00f93023          	sd	a5,0(s2)
    800072ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800072f0:	00093783          	ld	a5,0(s2)
    800072f4:	0004b703          	ld	a4,0(s1)
    800072f8:	00f70e63          	beq	a4,a5,80007314 <uartputc+0xdc>
    800072fc:	00564683          	lbu	a3,5(a2)
    80007300:	01f7f713          	andi	a4,a5,31
    80007304:	00e58733          	add	a4,a1,a4
    80007308:	0206f693          	andi	a3,a3,32
    8000730c:	00178793          	addi	a5,a5,1
    80007310:	fc069ae3          	bnez	a3,800072e4 <uartputc+0xac>
    80007314:	02813083          	ld	ra,40(sp)
    80007318:	02013403          	ld	s0,32(sp)
    8000731c:	01813483          	ld	s1,24(sp)
    80007320:	01013903          	ld	s2,16(sp)
    80007324:	00813983          	ld	s3,8(sp)
    80007328:	03010113          	addi	sp,sp,48
    8000732c:	00008067          	ret

0000000080007330 <uartputc_sync>:
    80007330:	ff010113          	addi	sp,sp,-16
    80007334:	00813423          	sd	s0,8(sp)
    80007338:	01010413          	addi	s0,sp,16
    8000733c:	00004717          	auipc	a4,0x4
    80007340:	40c72703          	lw	a4,1036(a4) # 8000b748 <panicked>
    80007344:	02071663          	bnez	a4,80007370 <uartputc_sync+0x40>
    80007348:	00050793          	mv	a5,a0
    8000734c:	100006b7          	lui	a3,0x10000
    80007350:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007354:	02077713          	andi	a4,a4,32
    80007358:	fe070ce3          	beqz	a4,80007350 <uartputc_sync+0x20>
    8000735c:	0ff7f793          	andi	a5,a5,255
    80007360:	00f68023          	sb	a5,0(a3)
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret
    80007370:	0000006f          	j	80007370 <uartputc_sync+0x40>

0000000080007374 <uartstart>:
    80007374:	ff010113          	addi	sp,sp,-16
    80007378:	00813423          	sd	s0,8(sp)
    8000737c:	01010413          	addi	s0,sp,16
    80007380:	00004617          	auipc	a2,0x4
    80007384:	3d060613          	addi	a2,a2,976 # 8000b750 <uart_tx_r>
    80007388:	00004517          	auipc	a0,0x4
    8000738c:	3d050513          	addi	a0,a0,976 # 8000b758 <uart_tx_w>
    80007390:	00063783          	ld	a5,0(a2)
    80007394:	00053703          	ld	a4,0(a0)
    80007398:	04f70263          	beq	a4,a5,800073dc <uartstart+0x68>
    8000739c:	100005b7          	lui	a1,0x10000
    800073a0:	00005817          	auipc	a6,0x5
    800073a4:	69080813          	addi	a6,a6,1680 # 8000ca30 <uart_tx_buf>
    800073a8:	01c0006f          	j	800073c4 <uartstart+0x50>
    800073ac:	0006c703          	lbu	a4,0(a3)
    800073b0:	00f63023          	sd	a5,0(a2)
    800073b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800073b8:	00063783          	ld	a5,0(a2)
    800073bc:	00053703          	ld	a4,0(a0)
    800073c0:	00f70e63          	beq	a4,a5,800073dc <uartstart+0x68>
    800073c4:	01f7f713          	andi	a4,a5,31
    800073c8:	00e806b3          	add	a3,a6,a4
    800073cc:	0055c703          	lbu	a4,5(a1)
    800073d0:	00178793          	addi	a5,a5,1
    800073d4:	02077713          	andi	a4,a4,32
    800073d8:	fc071ae3          	bnez	a4,800073ac <uartstart+0x38>
    800073dc:	00813403          	ld	s0,8(sp)
    800073e0:	01010113          	addi	sp,sp,16
    800073e4:	00008067          	ret

00000000800073e8 <uartgetc>:
    800073e8:	ff010113          	addi	sp,sp,-16
    800073ec:	00813423          	sd	s0,8(sp)
    800073f0:	01010413          	addi	s0,sp,16
    800073f4:	10000737          	lui	a4,0x10000
    800073f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800073fc:	0017f793          	andi	a5,a5,1
    80007400:	00078c63          	beqz	a5,80007418 <uartgetc+0x30>
    80007404:	00074503          	lbu	a0,0(a4)
    80007408:	0ff57513          	andi	a0,a0,255
    8000740c:	00813403          	ld	s0,8(sp)
    80007410:	01010113          	addi	sp,sp,16
    80007414:	00008067          	ret
    80007418:	fff00513          	li	a0,-1
    8000741c:	ff1ff06f          	j	8000740c <uartgetc+0x24>

0000000080007420 <uartintr>:
    80007420:	100007b7          	lui	a5,0x10000
    80007424:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007428:	0017f793          	andi	a5,a5,1
    8000742c:	0a078463          	beqz	a5,800074d4 <uartintr+0xb4>
    80007430:	fe010113          	addi	sp,sp,-32
    80007434:	00813823          	sd	s0,16(sp)
    80007438:	00913423          	sd	s1,8(sp)
    8000743c:	00113c23          	sd	ra,24(sp)
    80007440:	02010413          	addi	s0,sp,32
    80007444:	100004b7          	lui	s1,0x10000
    80007448:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000744c:	0ff57513          	andi	a0,a0,255
    80007450:	fffff097          	auipc	ra,0xfffff
    80007454:	534080e7          	jalr	1332(ra) # 80006984 <consoleintr>
    80007458:	0054c783          	lbu	a5,5(s1)
    8000745c:	0017f793          	andi	a5,a5,1
    80007460:	fe0794e3          	bnez	a5,80007448 <uartintr+0x28>
    80007464:	00004617          	auipc	a2,0x4
    80007468:	2ec60613          	addi	a2,a2,748 # 8000b750 <uart_tx_r>
    8000746c:	00004517          	auipc	a0,0x4
    80007470:	2ec50513          	addi	a0,a0,748 # 8000b758 <uart_tx_w>
    80007474:	00063783          	ld	a5,0(a2)
    80007478:	00053703          	ld	a4,0(a0)
    8000747c:	04f70263          	beq	a4,a5,800074c0 <uartintr+0xa0>
    80007480:	100005b7          	lui	a1,0x10000
    80007484:	00005817          	auipc	a6,0x5
    80007488:	5ac80813          	addi	a6,a6,1452 # 8000ca30 <uart_tx_buf>
    8000748c:	01c0006f          	j	800074a8 <uartintr+0x88>
    80007490:	0006c703          	lbu	a4,0(a3)
    80007494:	00f63023          	sd	a5,0(a2)
    80007498:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000749c:	00063783          	ld	a5,0(a2)
    800074a0:	00053703          	ld	a4,0(a0)
    800074a4:	00f70e63          	beq	a4,a5,800074c0 <uartintr+0xa0>
    800074a8:	01f7f713          	andi	a4,a5,31
    800074ac:	00e806b3          	add	a3,a6,a4
    800074b0:	0055c703          	lbu	a4,5(a1)
    800074b4:	00178793          	addi	a5,a5,1
    800074b8:	02077713          	andi	a4,a4,32
    800074bc:	fc071ae3          	bnez	a4,80007490 <uartintr+0x70>
    800074c0:	01813083          	ld	ra,24(sp)
    800074c4:	01013403          	ld	s0,16(sp)
    800074c8:	00813483          	ld	s1,8(sp)
    800074cc:	02010113          	addi	sp,sp,32
    800074d0:	00008067          	ret
    800074d4:	00004617          	auipc	a2,0x4
    800074d8:	27c60613          	addi	a2,a2,636 # 8000b750 <uart_tx_r>
    800074dc:	00004517          	auipc	a0,0x4
    800074e0:	27c50513          	addi	a0,a0,636 # 8000b758 <uart_tx_w>
    800074e4:	00063783          	ld	a5,0(a2)
    800074e8:	00053703          	ld	a4,0(a0)
    800074ec:	04f70263          	beq	a4,a5,80007530 <uartintr+0x110>
    800074f0:	100005b7          	lui	a1,0x10000
    800074f4:	00005817          	auipc	a6,0x5
    800074f8:	53c80813          	addi	a6,a6,1340 # 8000ca30 <uart_tx_buf>
    800074fc:	01c0006f          	j	80007518 <uartintr+0xf8>
    80007500:	0006c703          	lbu	a4,0(a3)
    80007504:	00f63023          	sd	a5,0(a2)
    80007508:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000750c:	00063783          	ld	a5,0(a2)
    80007510:	00053703          	ld	a4,0(a0)
    80007514:	02f70063          	beq	a4,a5,80007534 <uartintr+0x114>
    80007518:	01f7f713          	andi	a4,a5,31
    8000751c:	00e806b3          	add	a3,a6,a4
    80007520:	0055c703          	lbu	a4,5(a1)
    80007524:	00178793          	addi	a5,a5,1
    80007528:	02077713          	andi	a4,a4,32
    8000752c:	fc071ae3          	bnez	a4,80007500 <uartintr+0xe0>
    80007530:	00008067          	ret
    80007534:	00008067          	ret

0000000080007538 <kinit>:
    80007538:	fc010113          	addi	sp,sp,-64
    8000753c:	02913423          	sd	s1,40(sp)
    80007540:	fffff7b7          	lui	a5,0xfffff
    80007544:	00006497          	auipc	s1,0x6
    80007548:	50b48493          	addi	s1,s1,1291 # 8000da4f <end+0xfff>
    8000754c:	02813823          	sd	s0,48(sp)
    80007550:	01313c23          	sd	s3,24(sp)
    80007554:	00f4f4b3          	and	s1,s1,a5
    80007558:	02113c23          	sd	ra,56(sp)
    8000755c:	03213023          	sd	s2,32(sp)
    80007560:	01413823          	sd	s4,16(sp)
    80007564:	01513423          	sd	s5,8(sp)
    80007568:	04010413          	addi	s0,sp,64
    8000756c:	000017b7          	lui	a5,0x1
    80007570:	01100993          	li	s3,17
    80007574:	00f487b3          	add	a5,s1,a5
    80007578:	01b99993          	slli	s3,s3,0x1b
    8000757c:	06f9e063          	bltu	s3,a5,800075dc <kinit+0xa4>
    80007580:	00005a97          	auipc	s5,0x5
    80007584:	4d0a8a93          	addi	s5,s5,1232 # 8000ca50 <end>
    80007588:	0754ec63          	bltu	s1,s5,80007600 <kinit+0xc8>
    8000758c:	0734fa63          	bgeu	s1,s3,80007600 <kinit+0xc8>
    80007590:	00088a37          	lui	s4,0x88
    80007594:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007598:	00004917          	auipc	s2,0x4
    8000759c:	1c890913          	addi	s2,s2,456 # 8000b760 <kmem>
    800075a0:	00ca1a13          	slli	s4,s4,0xc
    800075a4:	0140006f          	j	800075b8 <kinit+0x80>
    800075a8:	000017b7          	lui	a5,0x1
    800075ac:	00f484b3          	add	s1,s1,a5
    800075b0:	0554e863          	bltu	s1,s5,80007600 <kinit+0xc8>
    800075b4:	0534f663          	bgeu	s1,s3,80007600 <kinit+0xc8>
    800075b8:	00001637          	lui	a2,0x1
    800075bc:	00100593          	li	a1,1
    800075c0:	00048513          	mv	a0,s1
    800075c4:	00000097          	auipc	ra,0x0
    800075c8:	5e4080e7          	jalr	1508(ra) # 80007ba8 <__memset>
    800075cc:	00093783          	ld	a5,0(s2)
    800075d0:	00f4b023          	sd	a5,0(s1)
    800075d4:	00993023          	sd	s1,0(s2)
    800075d8:	fd4498e3          	bne	s1,s4,800075a8 <kinit+0x70>
    800075dc:	03813083          	ld	ra,56(sp)
    800075e0:	03013403          	ld	s0,48(sp)
    800075e4:	02813483          	ld	s1,40(sp)
    800075e8:	02013903          	ld	s2,32(sp)
    800075ec:	01813983          	ld	s3,24(sp)
    800075f0:	01013a03          	ld	s4,16(sp)
    800075f4:	00813a83          	ld	s5,8(sp)
    800075f8:	04010113          	addi	sp,sp,64
    800075fc:	00008067          	ret
    80007600:	00002517          	auipc	a0,0x2
    80007604:	0f850513          	addi	a0,a0,248 # 800096f8 <digits+0x18>
    80007608:	fffff097          	auipc	ra,0xfffff
    8000760c:	4b4080e7          	jalr	1204(ra) # 80006abc <panic>

0000000080007610 <freerange>:
    80007610:	fc010113          	addi	sp,sp,-64
    80007614:	000017b7          	lui	a5,0x1
    80007618:	02913423          	sd	s1,40(sp)
    8000761c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007620:	009504b3          	add	s1,a0,s1
    80007624:	fffff537          	lui	a0,0xfffff
    80007628:	02813823          	sd	s0,48(sp)
    8000762c:	02113c23          	sd	ra,56(sp)
    80007630:	03213023          	sd	s2,32(sp)
    80007634:	01313c23          	sd	s3,24(sp)
    80007638:	01413823          	sd	s4,16(sp)
    8000763c:	01513423          	sd	s5,8(sp)
    80007640:	01613023          	sd	s6,0(sp)
    80007644:	04010413          	addi	s0,sp,64
    80007648:	00a4f4b3          	and	s1,s1,a0
    8000764c:	00f487b3          	add	a5,s1,a5
    80007650:	06f5e463          	bltu	a1,a5,800076b8 <freerange+0xa8>
    80007654:	00005a97          	auipc	s5,0x5
    80007658:	3fca8a93          	addi	s5,s5,1020 # 8000ca50 <end>
    8000765c:	0954e263          	bltu	s1,s5,800076e0 <freerange+0xd0>
    80007660:	01100993          	li	s3,17
    80007664:	01b99993          	slli	s3,s3,0x1b
    80007668:	0734fc63          	bgeu	s1,s3,800076e0 <freerange+0xd0>
    8000766c:	00058a13          	mv	s4,a1
    80007670:	00004917          	auipc	s2,0x4
    80007674:	0f090913          	addi	s2,s2,240 # 8000b760 <kmem>
    80007678:	00002b37          	lui	s6,0x2
    8000767c:	0140006f          	j	80007690 <freerange+0x80>
    80007680:	000017b7          	lui	a5,0x1
    80007684:	00f484b3          	add	s1,s1,a5
    80007688:	0554ec63          	bltu	s1,s5,800076e0 <freerange+0xd0>
    8000768c:	0534fa63          	bgeu	s1,s3,800076e0 <freerange+0xd0>
    80007690:	00001637          	lui	a2,0x1
    80007694:	00100593          	li	a1,1
    80007698:	00048513          	mv	a0,s1
    8000769c:	00000097          	auipc	ra,0x0
    800076a0:	50c080e7          	jalr	1292(ra) # 80007ba8 <__memset>
    800076a4:	00093703          	ld	a4,0(s2)
    800076a8:	016487b3          	add	a5,s1,s6
    800076ac:	00e4b023          	sd	a4,0(s1)
    800076b0:	00993023          	sd	s1,0(s2)
    800076b4:	fcfa76e3          	bgeu	s4,a5,80007680 <freerange+0x70>
    800076b8:	03813083          	ld	ra,56(sp)
    800076bc:	03013403          	ld	s0,48(sp)
    800076c0:	02813483          	ld	s1,40(sp)
    800076c4:	02013903          	ld	s2,32(sp)
    800076c8:	01813983          	ld	s3,24(sp)
    800076cc:	01013a03          	ld	s4,16(sp)
    800076d0:	00813a83          	ld	s5,8(sp)
    800076d4:	00013b03          	ld	s6,0(sp)
    800076d8:	04010113          	addi	sp,sp,64
    800076dc:	00008067          	ret
    800076e0:	00002517          	auipc	a0,0x2
    800076e4:	01850513          	addi	a0,a0,24 # 800096f8 <digits+0x18>
    800076e8:	fffff097          	auipc	ra,0xfffff
    800076ec:	3d4080e7          	jalr	980(ra) # 80006abc <panic>

00000000800076f0 <kfree>:
    800076f0:	fe010113          	addi	sp,sp,-32
    800076f4:	00813823          	sd	s0,16(sp)
    800076f8:	00113c23          	sd	ra,24(sp)
    800076fc:	00913423          	sd	s1,8(sp)
    80007700:	02010413          	addi	s0,sp,32
    80007704:	03451793          	slli	a5,a0,0x34
    80007708:	04079c63          	bnez	a5,80007760 <kfree+0x70>
    8000770c:	00005797          	auipc	a5,0x5
    80007710:	34478793          	addi	a5,a5,836 # 8000ca50 <end>
    80007714:	00050493          	mv	s1,a0
    80007718:	04f56463          	bltu	a0,a5,80007760 <kfree+0x70>
    8000771c:	01100793          	li	a5,17
    80007720:	01b79793          	slli	a5,a5,0x1b
    80007724:	02f57e63          	bgeu	a0,a5,80007760 <kfree+0x70>
    80007728:	00001637          	lui	a2,0x1
    8000772c:	00100593          	li	a1,1
    80007730:	00000097          	auipc	ra,0x0
    80007734:	478080e7          	jalr	1144(ra) # 80007ba8 <__memset>
    80007738:	00004797          	auipc	a5,0x4
    8000773c:	02878793          	addi	a5,a5,40 # 8000b760 <kmem>
    80007740:	0007b703          	ld	a4,0(a5)
    80007744:	01813083          	ld	ra,24(sp)
    80007748:	01013403          	ld	s0,16(sp)
    8000774c:	00e4b023          	sd	a4,0(s1)
    80007750:	0097b023          	sd	s1,0(a5)
    80007754:	00813483          	ld	s1,8(sp)
    80007758:	02010113          	addi	sp,sp,32
    8000775c:	00008067          	ret
    80007760:	00002517          	auipc	a0,0x2
    80007764:	f9850513          	addi	a0,a0,-104 # 800096f8 <digits+0x18>
    80007768:	fffff097          	auipc	ra,0xfffff
    8000776c:	354080e7          	jalr	852(ra) # 80006abc <panic>

0000000080007770 <kalloc>:
    80007770:	fe010113          	addi	sp,sp,-32
    80007774:	00813823          	sd	s0,16(sp)
    80007778:	00913423          	sd	s1,8(sp)
    8000777c:	00113c23          	sd	ra,24(sp)
    80007780:	02010413          	addi	s0,sp,32
    80007784:	00004797          	auipc	a5,0x4
    80007788:	fdc78793          	addi	a5,a5,-36 # 8000b760 <kmem>
    8000778c:	0007b483          	ld	s1,0(a5)
    80007790:	02048063          	beqz	s1,800077b0 <kalloc+0x40>
    80007794:	0004b703          	ld	a4,0(s1)
    80007798:	00001637          	lui	a2,0x1
    8000779c:	00500593          	li	a1,5
    800077a0:	00048513          	mv	a0,s1
    800077a4:	00e7b023          	sd	a4,0(a5)
    800077a8:	00000097          	auipc	ra,0x0
    800077ac:	400080e7          	jalr	1024(ra) # 80007ba8 <__memset>
    800077b0:	01813083          	ld	ra,24(sp)
    800077b4:	01013403          	ld	s0,16(sp)
    800077b8:	00048513          	mv	a0,s1
    800077bc:	00813483          	ld	s1,8(sp)
    800077c0:	02010113          	addi	sp,sp,32
    800077c4:	00008067          	ret

00000000800077c8 <initlock>:
    800077c8:	ff010113          	addi	sp,sp,-16
    800077cc:	00813423          	sd	s0,8(sp)
    800077d0:	01010413          	addi	s0,sp,16
    800077d4:	00813403          	ld	s0,8(sp)
    800077d8:	00b53423          	sd	a1,8(a0)
    800077dc:	00052023          	sw	zero,0(a0)
    800077e0:	00053823          	sd	zero,16(a0)
    800077e4:	01010113          	addi	sp,sp,16
    800077e8:	00008067          	ret

00000000800077ec <acquire>:
    800077ec:	fe010113          	addi	sp,sp,-32
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	00113c23          	sd	ra,24(sp)
    800077fc:	01213023          	sd	s2,0(sp)
    80007800:	02010413          	addi	s0,sp,32
    80007804:	00050493          	mv	s1,a0
    80007808:	10002973          	csrr	s2,sstatus
    8000780c:	100027f3          	csrr	a5,sstatus
    80007810:	ffd7f793          	andi	a5,a5,-3
    80007814:	10079073          	csrw	sstatus,a5
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	8ec080e7          	jalr	-1812(ra) # 80006104 <mycpu>
    80007820:	07852783          	lw	a5,120(a0)
    80007824:	06078e63          	beqz	a5,800078a0 <acquire+0xb4>
    80007828:	fffff097          	auipc	ra,0xfffff
    8000782c:	8dc080e7          	jalr	-1828(ra) # 80006104 <mycpu>
    80007830:	07852783          	lw	a5,120(a0)
    80007834:	0004a703          	lw	a4,0(s1)
    80007838:	0017879b          	addiw	a5,a5,1
    8000783c:	06f52c23          	sw	a5,120(a0)
    80007840:	04071063          	bnez	a4,80007880 <acquire+0x94>
    80007844:	00100713          	li	a4,1
    80007848:	00070793          	mv	a5,a4
    8000784c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007850:	0007879b          	sext.w	a5,a5
    80007854:	fe079ae3          	bnez	a5,80007848 <acquire+0x5c>
    80007858:	0ff0000f          	fence
    8000785c:	fffff097          	auipc	ra,0xfffff
    80007860:	8a8080e7          	jalr	-1880(ra) # 80006104 <mycpu>
    80007864:	01813083          	ld	ra,24(sp)
    80007868:	01013403          	ld	s0,16(sp)
    8000786c:	00a4b823          	sd	a0,16(s1)
    80007870:	00013903          	ld	s2,0(sp)
    80007874:	00813483          	ld	s1,8(sp)
    80007878:	02010113          	addi	sp,sp,32
    8000787c:	00008067          	ret
    80007880:	0104b903          	ld	s2,16(s1)
    80007884:	fffff097          	auipc	ra,0xfffff
    80007888:	880080e7          	jalr	-1920(ra) # 80006104 <mycpu>
    8000788c:	faa91ce3          	bne	s2,a0,80007844 <acquire+0x58>
    80007890:	00002517          	auipc	a0,0x2
    80007894:	e7050513          	addi	a0,a0,-400 # 80009700 <digits+0x20>
    80007898:	fffff097          	auipc	ra,0xfffff
    8000789c:	224080e7          	jalr	548(ra) # 80006abc <panic>
    800078a0:	00195913          	srli	s2,s2,0x1
    800078a4:	fffff097          	auipc	ra,0xfffff
    800078a8:	860080e7          	jalr	-1952(ra) # 80006104 <mycpu>
    800078ac:	00197913          	andi	s2,s2,1
    800078b0:	07252e23          	sw	s2,124(a0)
    800078b4:	f75ff06f          	j	80007828 <acquire+0x3c>

00000000800078b8 <release>:
    800078b8:	fe010113          	addi	sp,sp,-32
    800078bc:	00813823          	sd	s0,16(sp)
    800078c0:	00113c23          	sd	ra,24(sp)
    800078c4:	00913423          	sd	s1,8(sp)
    800078c8:	01213023          	sd	s2,0(sp)
    800078cc:	02010413          	addi	s0,sp,32
    800078d0:	00052783          	lw	a5,0(a0)
    800078d4:	00079a63          	bnez	a5,800078e8 <release+0x30>
    800078d8:	00002517          	auipc	a0,0x2
    800078dc:	e3050513          	addi	a0,a0,-464 # 80009708 <digits+0x28>
    800078e0:	fffff097          	auipc	ra,0xfffff
    800078e4:	1dc080e7          	jalr	476(ra) # 80006abc <panic>
    800078e8:	01053903          	ld	s2,16(a0)
    800078ec:	00050493          	mv	s1,a0
    800078f0:	fffff097          	auipc	ra,0xfffff
    800078f4:	814080e7          	jalr	-2028(ra) # 80006104 <mycpu>
    800078f8:	fea910e3          	bne	s2,a0,800078d8 <release+0x20>
    800078fc:	0004b823          	sd	zero,16(s1)
    80007900:	0ff0000f          	fence
    80007904:	0f50000f          	fence	iorw,ow
    80007908:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000790c:	ffffe097          	auipc	ra,0xffffe
    80007910:	7f8080e7          	jalr	2040(ra) # 80006104 <mycpu>
    80007914:	100027f3          	csrr	a5,sstatus
    80007918:	0027f793          	andi	a5,a5,2
    8000791c:	04079a63          	bnez	a5,80007970 <release+0xb8>
    80007920:	07852783          	lw	a5,120(a0)
    80007924:	02f05e63          	blez	a5,80007960 <release+0xa8>
    80007928:	fff7871b          	addiw	a4,a5,-1
    8000792c:	06e52c23          	sw	a4,120(a0)
    80007930:	00071c63          	bnez	a4,80007948 <release+0x90>
    80007934:	07c52783          	lw	a5,124(a0)
    80007938:	00078863          	beqz	a5,80007948 <release+0x90>
    8000793c:	100027f3          	csrr	a5,sstatus
    80007940:	0027e793          	ori	a5,a5,2
    80007944:	10079073          	csrw	sstatus,a5
    80007948:	01813083          	ld	ra,24(sp)
    8000794c:	01013403          	ld	s0,16(sp)
    80007950:	00813483          	ld	s1,8(sp)
    80007954:	00013903          	ld	s2,0(sp)
    80007958:	02010113          	addi	sp,sp,32
    8000795c:	00008067          	ret
    80007960:	00002517          	auipc	a0,0x2
    80007964:	dc850513          	addi	a0,a0,-568 # 80009728 <digits+0x48>
    80007968:	fffff097          	auipc	ra,0xfffff
    8000796c:	154080e7          	jalr	340(ra) # 80006abc <panic>
    80007970:	00002517          	auipc	a0,0x2
    80007974:	da050513          	addi	a0,a0,-608 # 80009710 <digits+0x30>
    80007978:	fffff097          	auipc	ra,0xfffff
    8000797c:	144080e7          	jalr	324(ra) # 80006abc <panic>

0000000080007980 <holding>:
    80007980:	00052783          	lw	a5,0(a0)
    80007984:	00079663          	bnez	a5,80007990 <holding+0x10>
    80007988:	00000513          	li	a0,0
    8000798c:	00008067          	ret
    80007990:	fe010113          	addi	sp,sp,-32
    80007994:	00813823          	sd	s0,16(sp)
    80007998:	00913423          	sd	s1,8(sp)
    8000799c:	00113c23          	sd	ra,24(sp)
    800079a0:	02010413          	addi	s0,sp,32
    800079a4:	01053483          	ld	s1,16(a0)
    800079a8:	ffffe097          	auipc	ra,0xffffe
    800079ac:	75c080e7          	jalr	1884(ra) # 80006104 <mycpu>
    800079b0:	01813083          	ld	ra,24(sp)
    800079b4:	01013403          	ld	s0,16(sp)
    800079b8:	40a48533          	sub	a0,s1,a0
    800079bc:	00153513          	seqz	a0,a0
    800079c0:	00813483          	ld	s1,8(sp)
    800079c4:	02010113          	addi	sp,sp,32
    800079c8:	00008067          	ret

00000000800079cc <push_off>:
    800079cc:	fe010113          	addi	sp,sp,-32
    800079d0:	00813823          	sd	s0,16(sp)
    800079d4:	00113c23          	sd	ra,24(sp)
    800079d8:	00913423          	sd	s1,8(sp)
    800079dc:	02010413          	addi	s0,sp,32
    800079e0:	100024f3          	csrr	s1,sstatus
    800079e4:	100027f3          	csrr	a5,sstatus
    800079e8:	ffd7f793          	andi	a5,a5,-3
    800079ec:	10079073          	csrw	sstatus,a5
    800079f0:	ffffe097          	auipc	ra,0xffffe
    800079f4:	714080e7          	jalr	1812(ra) # 80006104 <mycpu>
    800079f8:	07852783          	lw	a5,120(a0)
    800079fc:	02078663          	beqz	a5,80007a28 <push_off+0x5c>
    80007a00:	ffffe097          	auipc	ra,0xffffe
    80007a04:	704080e7          	jalr	1796(ra) # 80006104 <mycpu>
    80007a08:	07852783          	lw	a5,120(a0)
    80007a0c:	01813083          	ld	ra,24(sp)
    80007a10:	01013403          	ld	s0,16(sp)
    80007a14:	0017879b          	addiw	a5,a5,1
    80007a18:	06f52c23          	sw	a5,120(a0)
    80007a1c:	00813483          	ld	s1,8(sp)
    80007a20:	02010113          	addi	sp,sp,32
    80007a24:	00008067          	ret
    80007a28:	0014d493          	srli	s1,s1,0x1
    80007a2c:	ffffe097          	auipc	ra,0xffffe
    80007a30:	6d8080e7          	jalr	1752(ra) # 80006104 <mycpu>
    80007a34:	0014f493          	andi	s1,s1,1
    80007a38:	06952e23          	sw	s1,124(a0)
    80007a3c:	fc5ff06f          	j	80007a00 <push_off+0x34>

0000000080007a40 <pop_off>:
    80007a40:	ff010113          	addi	sp,sp,-16
    80007a44:	00813023          	sd	s0,0(sp)
    80007a48:	00113423          	sd	ra,8(sp)
    80007a4c:	01010413          	addi	s0,sp,16
    80007a50:	ffffe097          	auipc	ra,0xffffe
    80007a54:	6b4080e7          	jalr	1716(ra) # 80006104 <mycpu>
    80007a58:	100027f3          	csrr	a5,sstatus
    80007a5c:	0027f793          	andi	a5,a5,2
    80007a60:	04079663          	bnez	a5,80007aac <pop_off+0x6c>
    80007a64:	07852783          	lw	a5,120(a0)
    80007a68:	02f05a63          	blez	a5,80007a9c <pop_off+0x5c>
    80007a6c:	fff7871b          	addiw	a4,a5,-1
    80007a70:	06e52c23          	sw	a4,120(a0)
    80007a74:	00071c63          	bnez	a4,80007a8c <pop_off+0x4c>
    80007a78:	07c52783          	lw	a5,124(a0)
    80007a7c:	00078863          	beqz	a5,80007a8c <pop_off+0x4c>
    80007a80:	100027f3          	csrr	a5,sstatus
    80007a84:	0027e793          	ori	a5,a5,2
    80007a88:	10079073          	csrw	sstatus,a5
    80007a8c:	00813083          	ld	ra,8(sp)
    80007a90:	00013403          	ld	s0,0(sp)
    80007a94:	01010113          	addi	sp,sp,16
    80007a98:	00008067          	ret
    80007a9c:	00002517          	auipc	a0,0x2
    80007aa0:	c8c50513          	addi	a0,a0,-884 # 80009728 <digits+0x48>
    80007aa4:	fffff097          	auipc	ra,0xfffff
    80007aa8:	018080e7          	jalr	24(ra) # 80006abc <panic>
    80007aac:	00002517          	auipc	a0,0x2
    80007ab0:	c6450513          	addi	a0,a0,-924 # 80009710 <digits+0x30>
    80007ab4:	fffff097          	auipc	ra,0xfffff
    80007ab8:	008080e7          	jalr	8(ra) # 80006abc <panic>

0000000080007abc <push_on>:
    80007abc:	fe010113          	addi	sp,sp,-32
    80007ac0:	00813823          	sd	s0,16(sp)
    80007ac4:	00113c23          	sd	ra,24(sp)
    80007ac8:	00913423          	sd	s1,8(sp)
    80007acc:	02010413          	addi	s0,sp,32
    80007ad0:	100024f3          	csrr	s1,sstatus
    80007ad4:	100027f3          	csrr	a5,sstatus
    80007ad8:	0027e793          	ori	a5,a5,2
    80007adc:	10079073          	csrw	sstatus,a5
    80007ae0:	ffffe097          	auipc	ra,0xffffe
    80007ae4:	624080e7          	jalr	1572(ra) # 80006104 <mycpu>
    80007ae8:	07852783          	lw	a5,120(a0)
    80007aec:	02078663          	beqz	a5,80007b18 <push_on+0x5c>
    80007af0:	ffffe097          	auipc	ra,0xffffe
    80007af4:	614080e7          	jalr	1556(ra) # 80006104 <mycpu>
    80007af8:	07852783          	lw	a5,120(a0)
    80007afc:	01813083          	ld	ra,24(sp)
    80007b00:	01013403          	ld	s0,16(sp)
    80007b04:	0017879b          	addiw	a5,a5,1
    80007b08:	06f52c23          	sw	a5,120(a0)
    80007b0c:	00813483          	ld	s1,8(sp)
    80007b10:	02010113          	addi	sp,sp,32
    80007b14:	00008067          	ret
    80007b18:	0014d493          	srli	s1,s1,0x1
    80007b1c:	ffffe097          	auipc	ra,0xffffe
    80007b20:	5e8080e7          	jalr	1512(ra) # 80006104 <mycpu>
    80007b24:	0014f493          	andi	s1,s1,1
    80007b28:	06952e23          	sw	s1,124(a0)
    80007b2c:	fc5ff06f          	j	80007af0 <push_on+0x34>

0000000080007b30 <pop_on>:
    80007b30:	ff010113          	addi	sp,sp,-16
    80007b34:	00813023          	sd	s0,0(sp)
    80007b38:	00113423          	sd	ra,8(sp)
    80007b3c:	01010413          	addi	s0,sp,16
    80007b40:	ffffe097          	auipc	ra,0xffffe
    80007b44:	5c4080e7          	jalr	1476(ra) # 80006104 <mycpu>
    80007b48:	100027f3          	csrr	a5,sstatus
    80007b4c:	0027f793          	andi	a5,a5,2
    80007b50:	04078463          	beqz	a5,80007b98 <pop_on+0x68>
    80007b54:	07852783          	lw	a5,120(a0)
    80007b58:	02f05863          	blez	a5,80007b88 <pop_on+0x58>
    80007b5c:	fff7879b          	addiw	a5,a5,-1
    80007b60:	06f52c23          	sw	a5,120(a0)
    80007b64:	07853783          	ld	a5,120(a0)
    80007b68:	00079863          	bnez	a5,80007b78 <pop_on+0x48>
    80007b6c:	100027f3          	csrr	a5,sstatus
    80007b70:	ffd7f793          	andi	a5,a5,-3
    80007b74:	10079073          	csrw	sstatus,a5
    80007b78:	00813083          	ld	ra,8(sp)
    80007b7c:	00013403          	ld	s0,0(sp)
    80007b80:	01010113          	addi	sp,sp,16
    80007b84:	00008067          	ret
    80007b88:	00002517          	auipc	a0,0x2
    80007b8c:	bc850513          	addi	a0,a0,-1080 # 80009750 <digits+0x70>
    80007b90:	fffff097          	auipc	ra,0xfffff
    80007b94:	f2c080e7          	jalr	-212(ra) # 80006abc <panic>
    80007b98:	00002517          	auipc	a0,0x2
    80007b9c:	b9850513          	addi	a0,a0,-1128 # 80009730 <digits+0x50>
    80007ba0:	fffff097          	auipc	ra,0xfffff
    80007ba4:	f1c080e7          	jalr	-228(ra) # 80006abc <panic>

0000000080007ba8 <__memset>:
    80007ba8:	ff010113          	addi	sp,sp,-16
    80007bac:	00813423          	sd	s0,8(sp)
    80007bb0:	01010413          	addi	s0,sp,16
    80007bb4:	1a060e63          	beqz	a2,80007d70 <__memset+0x1c8>
    80007bb8:	40a007b3          	neg	a5,a0
    80007bbc:	0077f793          	andi	a5,a5,7
    80007bc0:	00778693          	addi	a3,a5,7
    80007bc4:	00b00813          	li	a6,11
    80007bc8:	0ff5f593          	andi	a1,a1,255
    80007bcc:	fff6071b          	addiw	a4,a2,-1
    80007bd0:	1b06e663          	bltu	a3,a6,80007d7c <__memset+0x1d4>
    80007bd4:	1cd76463          	bltu	a4,a3,80007d9c <__memset+0x1f4>
    80007bd8:	1a078e63          	beqz	a5,80007d94 <__memset+0x1ec>
    80007bdc:	00b50023          	sb	a1,0(a0)
    80007be0:	00100713          	li	a4,1
    80007be4:	1ae78463          	beq	a5,a4,80007d8c <__memset+0x1e4>
    80007be8:	00b500a3          	sb	a1,1(a0)
    80007bec:	00200713          	li	a4,2
    80007bf0:	1ae78a63          	beq	a5,a4,80007da4 <__memset+0x1fc>
    80007bf4:	00b50123          	sb	a1,2(a0)
    80007bf8:	00300713          	li	a4,3
    80007bfc:	18e78463          	beq	a5,a4,80007d84 <__memset+0x1dc>
    80007c00:	00b501a3          	sb	a1,3(a0)
    80007c04:	00400713          	li	a4,4
    80007c08:	1ae78263          	beq	a5,a4,80007dac <__memset+0x204>
    80007c0c:	00b50223          	sb	a1,4(a0)
    80007c10:	00500713          	li	a4,5
    80007c14:	1ae78063          	beq	a5,a4,80007db4 <__memset+0x20c>
    80007c18:	00b502a3          	sb	a1,5(a0)
    80007c1c:	00700713          	li	a4,7
    80007c20:	18e79e63          	bne	a5,a4,80007dbc <__memset+0x214>
    80007c24:	00b50323          	sb	a1,6(a0)
    80007c28:	00700e93          	li	t4,7
    80007c2c:	00859713          	slli	a4,a1,0x8
    80007c30:	00e5e733          	or	a4,a1,a4
    80007c34:	01059e13          	slli	t3,a1,0x10
    80007c38:	01c76e33          	or	t3,a4,t3
    80007c3c:	01859313          	slli	t1,a1,0x18
    80007c40:	006e6333          	or	t1,t3,t1
    80007c44:	02059893          	slli	a7,a1,0x20
    80007c48:	40f60e3b          	subw	t3,a2,a5
    80007c4c:	011368b3          	or	a7,t1,a7
    80007c50:	02859813          	slli	a6,a1,0x28
    80007c54:	0108e833          	or	a6,a7,a6
    80007c58:	03059693          	slli	a3,a1,0x30
    80007c5c:	003e589b          	srliw	a7,t3,0x3
    80007c60:	00d866b3          	or	a3,a6,a3
    80007c64:	03859713          	slli	a4,a1,0x38
    80007c68:	00389813          	slli	a6,a7,0x3
    80007c6c:	00f507b3          	add	a5,a0,a5
    80007c70:	00e6e733          	or	a4,a3,a4
    80007c74:	000e089b          	sext.w	a7,t3
    80007c78:	00f806b3          	add	a3,a6,a5
    80007c7c:	00e7b023          	sd	a4,0(a5)
    80007c80:	00878793          	addi	a5,a5,8
    80007c84:	fed79ce3          	bne	a5,a3,80007c7c <__memset+0xd4>
    80007c88:	ff8e7793          	andi	a5,t3,-8
    80007c8c:	0007871b          	sext.w	a4,a5
    80007c90:	01d787bb          	addw	a5,a5,t4
    80007c94:	0ce88e63          	beq	a7,a4,80007d70 <__memset+0x1c8>
    80007c98:	00f50733          	add	a4,a0,a5
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0017871b          	addiw	a4,a5,1
    80007ca4:	0cc77663          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	0027871b          	addiw	a4,a5,2
    80007cb4:	0ac77e63          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	0037871b          	addiw	a4,a5,3
    80007cc4:	0ac77663          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	0047871b          	addiw	a4,a5,4
    80007cd4:	08c77e63          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	0057871b          	addiw	a4,a5,5
    80007ce4:	08c77663          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007ce8:	00e50733          	add	a4,a0,a4
    80007cec:	00b70023          	sb	a1,0(a4)
    80007cf0:	0067871b          	addiw	a4,a5,6
    80007cf4:	06c77e63          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007cf8:	00e50733          	add	a4,a0,a4
    80007cfc:	00b70023          	sb	a1,0(a4)
    80007d00:	0077871b          	addiw	a4,a5,7
    80007d04:	06c77663          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007d08:	00e50733          	add	a4,a0,a4
    80007d0c:	00b70023          	sb	a1,0(a4)
    80007d10:	0087871b          	addiw	a4,a5,8
    80007d14:	04c77e63          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007d18:	00e50733          	add	a4,a0,a4
    80007d1c:	00b70023          	sb	a1,0(a4)
    80007d20:	0097871b          	addiw	a4,a5,9
    80007d24:	04c77663          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007d28:	00e50733          	add	a4,a0,a4
    80007d2c:	00b70023          	sb	a1,0(a4)
    80007d30:	00a7871b          	addiw	a4,a5,10
    80007d34:	02c77e63          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007d38:	00e50733          	add	a4,a0,a4
    80007d3c:	00b70023          	sb	a1,0(a4)
    80007d40:	00b7871b          	addiw	a4,a5,11
    80007d44:	02c77663          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007d48:	00e50733          	add	a4,a0,a4
    80007d4c:	00b70023          	sb	a1,0(a4)
    80007d50:	00c7871b          	addiw	a4,a5,12
    80007d54:	00c77e63          	bgeu	a4,a2,80007d70 <__memset+0x1c8>
    80007d58:	00e50733          	add	a4,a0,a4
    80007d5c:	00b70023          	sb	a1,0(a4)
    80007d60:	00d7879b          	addiw	a5,a5,13
    80007d64:	00c7f663          	bgeu	a5,a2,80007d70 <__memset+0x1c8>
    80007d68:	00f507b3          	add	a5,a0,a5
    80007d6c:	00b78023          	sb	a1,0(a5)
    80007d70:	00813403          	ld	s0,8(sp)
    80007d74:	01010113          	addi	sp,sp,16
    80007d78:	00008067          	ret
    80007d7c:	00b00693          	li	a3,11
    80007d80:	e55ff06f          	j	80007bd4 <__memset+0x2c>
    80007d84:	00300e93          	li	t4,3
    80007d88:	ea5ff06f          	j	80007c2c <__memset+0x84>
    80007d8c:	00100e93          	li	t4,1
    80007d90:	e9dff06f          	j	80007c2c <__memset+0x84>
    80007d94:	00000e93          	li	t4,0
    80007d98:	e95ff06f          	j	80007c2c <__memset+0x84>
    80007d9c:	00000793          	li	a5,0
    80007da0:	ef9ff06f          	j	80007c98 <__memset+0xf0>
    80007da4:	00200e93          	li	t4,2
    80007da8:	e85ff06f          	j	80007c2c <__memset+0x84>
    80007dac:	00400e93          	li	t4,4
    80007db0:	e7dff06f          	j	80007c2c <__memset+0x84>
    80007db4:	00500e93          	li	t4,5
    80007db8:	e75ff06f          	j	80007c2c <__memset+0x84>
    80007dbc:	00600e93          	li	t4,6
    80007dc0:	e6dff06f          	j	80007c2c <__memset+0x84>

0000000080007dc4 <__memmove>:
    80007dc4:	ff010113          	addi	sp,sp,-16
    80007dc8:	00813423          	sd	s0,8(sp)
    80007dcc:	01010413          	addi	s0,sp,16
    80007dd0:	0e060863          	beqz	a2,80007ec0 <__memmove+0xfc>
    80007dd4:	fff6069b          	addiw	a3,a2,-1
    80007dd8:	0006881b          	sext.w	a6,a3
    80007ddc:	0ea5e863          	bltu	a1,a0,80007ecc <__memmove+0x108>
    80007de0:	00758713          	addi	a4,a1,7
    80007de4:	00a5e7b3          	or	a5,a1,a0
    80007de8:	40a70733          	sub	a4,a4,a0
    80007dec:	0077f793          	andi	a5,a5,7
    80007df0:	00f73713          	sltiu	a4,a4,15
    80007df4:	00174713          	xori	a4,a4,1
    80007df8:	0017b793          	seqz	a5,a5
    80007dfc:	00e7f7b3          	and	a5,a5,a4
    80007e00:	10078863          	beqz	a5,80007f10 <__memmove+0x14c>
    80007e04:	00900793          	li	a5,9
    80007e08:	1107f463          	bgeu	a5,a6,80007f10 <__memmove+0x14c>
    80007e0c:	0036581b          	srliw	a6,a2,0x3
    80007e10:	fff8081b          	addiw	a6,a6,-1
    80007e14:	02081813          	slli	a6,a6,0x20
    80007e18:	01d85893          	srli	a7,a6,0x1d
    80007e1c:	00858813          	addi	a6,a1,8
    80007e20:	00058793          	mv	a5,a1
    80007e24:	00050713          	mv	a4,a0
    80007e28:	01088833          	add	a6,a7,a6
    80007e2c:	0007b883          	ld	a7,0(a5)
    80007e30:	00878793          	addi	a5,a5,8
    80007e34:	00870713          	addi	a4,a4,8
    80007e38:	ff173c23          	sd	a7,-8(a4)
    80007e3c:	ff0798e3          	bne	a5,a6,80007e2c <__memmove+0x68>
    80007e40:	ff867713          	andi	a4,a2,-8
    80007e44:	02071793          	slli	a5,a4,0x20
    80007e48:	0207d793          	srli	a5,a5,0x20
    80007e4c:	00f585b3          	add	a1,a1,a5
    80007e50:	40e686bb          	subw	a3,a3,a4
    80007e54:	00f507b3          	add	a5,a0,a5
    80007e58:	06e60463          	beq	a2,a4,80007ec0 <__memmove+0xfc>
    80007e5c:	0005c703          	lbu	a4,0(a1)
    80007e60:	00e78023          	sb	a4,0(a5)
    80007e64:	04068e63          	beqz	a3,80007ec0 <__memmove+0xfc>
    80007e68:	0015c603          	lbu	a2,1(a1)
    80007e6c:	00100713          	li	a4,1
    80007e70:	00c780a3          	sb	a2,1(a5)
    80007e74:	04e68663          	beq	a3,a4,80007ec0 <__memmove+0xfc>
    80007e78:	0025c603          	lbu	a2,2(a1)
    80007e7c:	00200713          	li	a4,2
    80007e80:	00c78123          	sb	a2,2(a5)
    80007e84:	02e68e63          	beq	a3,a4,80007ec0 <__memmove+0xfc>
    80007e88:	0035c603          	lbu	a2,3(a1)
    80007e8c:	00300713          	li	a4,3
    80007e90:	00c781a3          	sb	a2,3(a5)
    80007e94:	02e68663          	beq	a3,a4,80007ec0 <__memmove+0xfc>
    80007e98:	0045c603          	lbu	a2,4(a1)
    80007e9c:	00400713          	li	a4,4
    80007ea0:	00c78223          	sb	a2,4(a5)
    80007ea4:	00e68e63          	beq	a3,a4,80007ec0 <__memmove+0xfc>
    80007ea8:	0055c603          	lbu	a2,5(a1)
    80007eac:	00500713          	li	a4,5
    80007eb0:	00c782a3          	sb	a2,5(a5)
    80007eb4:	00e68663          	beq	a3,a4,80007ec0 <__memmove+0xfc>
    80007eb8:	0065c703          	lbu	a4,6(a1)
    80007ebc:	00e78323          	sb	a4,6(a5)
    80007ec0:	00813403          	ld	s0,8(sp)
    80007ec4:	01010113          	addi	sp,sp,16
    80007ec8:	00008067          	ret
    80007ecc:	02061713          	slli	a4,a2,0x20
    80007ed0:	02075713          	srli	a4,a4,0x20
    80007ed4:	00e587b3          	add	a5,a1,a4
    80007ed8:	f0f574e3          	bgeu	a0,a5,80007de0 <__memmove+0x1c>
    80007edc:	02069613          	slli	a2,a3,0x20
    80007ee0:	02065613          	srli	a2,a2,0x20
    80007ee4:	fff64613          	not	a2,a2
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00c78633          	add	a2,a5,a2
    80007ef0:	fff7c683          	lbu	a3,-1(a5)
    80007ef4:	fff78793          	addi	a5,a5,-1
    80007ef8:	fff70713          	addi	a4,a4,-1
    80007efc:	00d70023          	sb	a3,0(a4)
    80007f00:	fec798e3          	bne	a5,a2,80007ef0 <__memmove+0x12c>
    80007f04:	00813403          	ld	s0,8(sp)
    80007f08:	01010113          	addi	sp,sp,16
    80007f0c:	00008067          	ret
    80007f10:	02069713          	slli	a4,a3,0x20
    80007f14:	02075713          	srli	a4,a4,0x20
    80007f18:	00170713          	addi	a4,a4,1
    80007f1c:	00e50733          	add	a4,a0,a4
    80007f20:	00050793          	mv	a5,a0
    80007f24:	0005c683          	lbu	a3,0(a1)
    80007f28:	00178793          	addi	a5,a5,1
    80007f2c:	00158593          	addi	a1,a1,1
    80007f30:	fed78fa3          	sb	a3,-1(a5)
    80007f34:	fee798e3          	bne	a5,a4,80007f24 <__memmove+0x160>
    80007f38:	f89ff06f          	j	80007ec0 <__memmove+0xfc>

0000000080007f3c <__putc>:
    80007f3c:	fe010113          	addi	sp,sp,-32
    80007f40:	00813823          	sd	s0,16(sp)
    80007f44:	00113c23          	sd	ra,24(sp)
    80007f48:	02010413          	addi	s0,sp,32
    80007f4c:	00050793          	mv	a5,a0
    80007f50:	fef40593          	addi	a1,s0,-17
    80007f54:	00100613          	li	a2,1
    80007f58:	00000513          	li	a0,0
    80007f5c:	fef407a3          	sb	a5,-17(s0)
    80007f60:	fffff097          	auipc	ra,0xfffff
    80007f64:	b3c080e7          	jalr	-1220(ra) # 80006a9c <console_write>
    80007f68:	01813083          	ld	ra,24(sp)
    80007f6c:	01013403          	ld	s0,16(sp)
    80007f70:	02010113          	addi	sp,sp,32
    80007f74:	00008067          	ret

0000000080007f78 <__getc>:
    80007f78:	fe010113          	addi	sp,sp,-32
    80007f7c:	00813823          	sd	s0,16(sp)
    80007f80:	00113c23          	sd	ra,24(sp)
    80007f84:	02010413          	addi	s0,sp,32
    80007f88:	fe840593          	addi	a1,s0,-24
    80007f8c:	00100613          	li	a2,1
    80007f90:	00000513          	li	a0,0
    80007f94:	fffff097          	auipc	ra,0xfffff
    80007f98:	ae8080e7          	jalr	-1304(ra) # 80006a7c <console_read>
    80007f9c:	fe844503          	lbu	a0,-24(s0)
    80007fa0:	01813083          	ld	ra,24(sp)
    80007fa4:	01013403          	ld	s0,16(sp)
    80007fa8:	02010113          	addi	sp,sp,32
    80007fac:	00008067          	ret

0000000080007fb0 <console_handler>:
    80007fb0:	fe010113          	addi	sp,sp,-32
    80007fb4:	00813823          	sd	s0,16(sp)
    80007fb8:	00113c23          	sd	ra,24(sp)
    80007fbc:	00913423          	sd	s1,8(sp)
    80007fc0:	02010413          	addi	s0,sp,32
    80007fc4:	14202773          	csrr	a4,scause
    80007fc8:	100027f3          	csrr	a5,sstatus
    80007fcc:	0027f793          	andi	a5,a5,2
    80007fd0:	06079e63          	bnez	a5,8000804c <console_handler+0x9c>
    80007fd4:	00074c63          	bltz	a4,80007fec <console_handler+0x3c>
    80007fd8:	01813083          	ld	ra,24(sp)
    80007fdc:	01013403          	ld	s0,16(sp)
    80007fe0:	00813483          	ld	s1,8(sp)
    80007fe4:	02010113          	addi	sp,sp,32
    80007fe8:	00008067          	ret
    80007fec:	0ff77713          	andi	a4,a4,255
    80007ff0:	00900793          	li	a5,9
    80007ff4:	fef712e3          	bne	a4,a5,80007fd8 <console_handler+0x28>
    80007ff8:	ffffe097          	auipc	ra,0xffffe
    80007ffc:	6dc080e7          	jalr	1756(ra) # 800066d4 <plic_claim>
    80008000:	00a00793          	li	a5,10
    80008004:	00050493          	mv	s1,a0
    80008008:	02f50c63          	beq	a0,a5,80008040 <console_handler+0x90>
    8000800c:	fc0506e3          	beqz	a0,80007fd8 <console_handler+0x28>
    80008010:	00050593          	mv	a1,a0
    80008014:	00001517          	auipc	a0,0x1
    80008018:	64450513          	addi	a0,a0,1604 # 80009658 <CONSOLE_STATUS+0x648>
    8000801c:	fffff097          	auipc	ra,0xfffff
    80008020:	afc080e7          	jalr	-1284(ra) # 80006b18 <__printf>
    80008024:	01013403          	ld	s0,16(sp)
    80008028:	01813083          	ld	ra,24(sp)
    8000802c:	00048513          	mv	a0,s1
    80008030:	00813483          	ld	s1,8(sp)
    80008034:	02010113          	addi	sp,sp,32
    80008038:	ffffe317          	auipc	t1,0xffffe
    8000803c:	6d430067          	jr	1748(t1) # 8000670c <plic_complete>
    80008040:	fffff097          	auipc	ra,0xfffff
    80008044:	3e0080e7          	jalr	992(ra) # 80007420 <uartintr>
    80008048:	fddff06f          	j	80008024 <console_handler+0x74>
    8000804c:	00001517          	auipc	a0,0x1
    80008050:	70c50513          	addi	a0,a0,1804 # 80009758 <digits+0x78>
    80008054:	fffff097          	auipc	ra,0xfffff
    80008058:	a68080e7          	jalr	-1432(ra) # 80006abc <panic>
	...
