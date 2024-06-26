
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	69813103          	ld	sp,1688(sp) # 8000a698 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5cd050ef          	jal	ra,80005de8 <start>

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
    80001184:	7b9000ef          	jal	ra,8000213c <_ZN5Riscv20handleSupervisorTrapEv>

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

# a1 - &running->context
ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)
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
    80001450:	00113423          	sd	ra,8(sp)
    80001454:	00813023          	sd	s0,0(sp)
    80001458:	01010413          	addi	s0,sp,16
    return __getc();
    8000145c:	00007097          	auipc	ra,0x7
    80001460:	a8c080e7          	jalr	-1396(ra) # 80007ee8 <__getc>
}
    80001464:	00813083          	ld	ra,8(sp)
    80001468:	00013403          	ld	s0,0(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z4putcc>:

void putc(char a) {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00113423          	sd	ra,8(sp)
    8000147c:	00813023          	sd	s0,0(sp)
    80001480:	01010413          	addi	s0,sp,16
    __putc(a);
    80001484:	00007097          	auipc	ra,0x7
    80001488:	a28080e7          	jalr	-1496(ra) # 80007eac <__putc>
}
    8000148c:	00813083          	ld	ra,8(sp)
    80001490:	00013403          	ld	s0,0(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_Z13sem_timedwaitP3semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16
    return 0;
}
    800014a8:	00000513          	li	a0,0
    800014ac:	00813403          	ld	s0,8(sp)
    800014b0:	01010113          	addi	sp,sp,16
    800014b4:	00008067          	ret

00000000800014b8 <_Z10time_sleepm>:

int time_sleep(time_t) {
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    return 0;
}
    800014c4:	00000513          	li	a0,0
    800014c8:	00813403          	ld	s0,8(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_ZN9semaphorenwEm>:
//

#include "../h/semaphore.hpp"

void *semaphore::operator new(size_t n)
{
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	018080e7          	jalr	24(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
}
    800014ec:	00813083          	ld	ra,8(sp)
    800014f0:	00013403          	ld	s0,0(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <_ZN9semaphorenaEm>:

void *semaphore::operator new[](size_t n)
{
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00113423          	sd	ra,8(sp)
    80001504:	00813023          	sd	s0,0(sp)
    80001508:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	ff0080e7          	jalr	-16(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001514:	00813083          	ld	ra,8(sp)
    80001518:	00013403          	ld	s0,0(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_ZN9semaphoredlEPv>:

void semaphore::operator delete(void *p) noexcept
{
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00113423          	sd	ra,8(sp)
    8000152c:	00813023          	sd	s0,0(sp)
    80001530:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001534:	00001097          	auipc	ra,0x1
    80001538:	11c080e7          	jalr	284(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    8000153c:	00813083          	ld	ra,8(sp)
    80001540:	00013403          	ld	s0,0(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_ZN9semaphoredaEPv>:

void semaphore::operator delete[](void *p) noexcept
{
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	0f4080e7          	jalr	244(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001564:	00813083          	ld	ra,8(sp)
    80001568:	00013403          	ld	s0,0(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_ZN9semaphore13openSemaphoreEi>:

semaphore *semaphore::openSemaphore(int val) {
    80001574:	fe010113          	addi	sp,sp,-32
    80001578:	00113c23          	sd	ra,24(sp)
    8000157c:	00813823          	sd	s0,16(sp)
    80001580:	00913423          	sd	s1,8(sp)
    80001584:	02010413          	addi	s0,sp,32
    80001588:	00050493          	mv	s1,a0
    return new semaphore(val);
    8000158c:	01800513          	li	a0,24
    80001590:	00000097          	auipc	ra,0x0
    80001594:	f44080e7          	jalr	-188(ra) # 800014d4 <_ZN9semaphorenwEm>
    int trywait();
    int timed_wait();


private:
    explicit semaphore(int val = 1): value(val), closed(false){};
    80001598:	00952023          	sw	s1,0(a0) # 1000 <_entry-0x7ffff000>
    8000159c:	00050223          	sb	zero,4(a0)
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    800015a0:	00053423          	sd	zero,8(a0)
    800015a4:	00053823          	sd	zero,16(a0)
}
    800015a8:	01813083          	ld	ra,24(sp)
    800015ac:	01013403          	ld	s0,16(sp)
    800015b0:	00813483          	ld	s1,8(sp)
    800015b4:	02010113          	addi	sp,sp,32
    800015b8:	00008067          	ret

00000000800015bc <_ZN9semaphore7trywaitEv>:
       unblock();
    }
    return 0;
}

int semaphore::trywait() {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16

    if(this->closed) return -2;
    800015c8:	00454783          	lbu	a5,4(a0)
    800015cc:	00079e63          	bnez	a5,800015e8 <_ZN9semaphore7trywaitEv+0x2c>
    if(this->value -1 <0){
    800015d0:	00052783          	lw	a5,0(a0)
    800015d4:	00f05e63          	blez	a5,800015f0 <_ZN9semaphore7trywaitEv+0x34>
        return 0;
    }
    return 1;
    800015d8:	00100513          	li	a0,1

}
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret
    if(this->closed) return -2;
    800015e8:	ffe00513          	li	a0,-2
    800015ec:	ff1ff06f          	j	800015dc <_ZN9semaphore7trywaitEv+0x20>
        return 0;
    800015f0:	00000513          	li	a0,0
    800015f4:	fe9ff06f          	j	800015dc <_ZN9semaphore7trywaitEv+0x20>

00000000800015f8 <_ZN9semaphore10timed_waitEv>:

int semaphore::timed_wait() {
    800015f8:	ff010113          	addi	sp,sp,-16
    800015fc:	00813423          	sd	s0,8(sp)
    80001600:	01010413          	addi	s0,sp,16
    return 0;
}
    80001604:	00000513          	li	a0,0
    80001608:	00813403          	ld	s0,8(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret

0000000080001614 <_ZN9semaphore5blockEv>:

void semaphore::block() {
    80001614:	fe010113          	addi	sp,sp,-32
    80001618:	00113c23          	sd	ra,24(sp)
    8000161c:	00813823          	sd	s0,16(sp)
    80001620:	00913423          	sd	s1,8(sp)
    80001624:	01213023          	sd	s2,0(sp)
    80001628:	02010413          	addi	s0,sp,32
    8000162c:	00050493          	mv	s1,a0
    this->blocked.addLast(TCB::running);
    80001630:	00009797          	auipc	a5,0x9
    80001634:	0707b783          	ld	a5,112(a5) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001638:	0007b903          	ld	s2,0(a5)
                elem->next=0;
                head= elem;
                if(!tail) tail = head;
            }
            void addLast (T* data){
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    8000163c:	01000513          	li	a0,16
    80001640:	00001097          	auipc	ra,0x1
    80001644:	ebc080e7          	jalr	-324(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001648:	01253023          	sd	s2,0(a0)
                elem->next=0;
    8000164c:	00053423          	sd	zero,8(a0)
                if(tail){
    80001650:	0104b783          	ld	a5,16(s1)
    80001654:	04078863          	beqz	a5,800016a4 <_ZN9semaphore5blockEv+0x90>
                    tail->next = elem;
    80001658:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    8000165c:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    80001660:	00100593          	li	a1,1
    80001664:	00009797          	auipc	a5,0x9
    80001668:	03c7b783          	ld	a5,60(a5) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000166c:	0007b503          	ld	a0,0(a5)
    80001670:	00000097          	auipc	ra,0x0
    80001674:	594080e7          	jalr	1428(ra) # 80001c04 <_ZN3TCB10setBlockedEb>

    TCB::timeSliceCounter=0;
    80001678:	00009797          	auipc	a5,0x9
    8000167c:	0187b783          	ld	a5,24(a5) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001680:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001684:	00000097          	auipc	ra,0x0
    80001688:	320080e7          	jalr	800(ra) # 800019a4 <_ZN3TCB8dispatchEv>
}
    8000168c:	01813083          	ld	ra,24(sp)
    80001690:	01013403          	ld	s0,16(sp)
    80001694:	00813483          	ld	s1,8(sp)
    80001698:	00013903          	ld	s2,0(sp)
    8000169c:	02010113          	addi	sp,sp,32
    800016a0:	00008067          	ret
                }else{
                    head= tail = elem;
    800016a4:	00a4b823          	sd	a0,16(s1)
    800016a8:	00a4b423          	sd	a0,8(s1)
    800016ac:	fb5ff06f          	j	80001660 <_ZN9semaphore5blockEv+0x4c>

00000000800016b0 <_ZN9semaphore4waitEv>:
    if(this->closed) return -2;
    800016b0:	00454783          	lbu	a5,4(a0)
    800016b4:	04079663          	bnez	a5,80001700 <_ZN9semaphore4waitEv+0x50>
    this->value--;
    800016b8:	00052783          	lw	a5,0(a0)
    800016bc:	fff7879b          	addiw	a5,a5,-1
    800016c0:	00f52023          	sw	a5,0(a0)
    if(this->value <0){
    800016c4:	02079713          	slli	a4,a5,0x20
    800016c8:	00074663          	bltz	a4,800016d4 <_ZN9semaphore4waitEv+0x24>
    return 0;
    800016cc:	00000513          	li	a0,0
}
    800016d0:	00008067          	ret
int semaphore::wait() {
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00113423          	sd	ra,8(sp)
    800016dc:	00813023          	sd	s0,0(sp)
    800016e0:	01010413          	addi	s0,sp,16
        block();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	f30080e7          	jalr	-208(ra) # 80001614 <_ZN9semaphore5blockEv>
    return 0;
    800016ec:	00000513          	li	a0,0
}
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret
    if(this->closed) return -2;
    80001700:	ffe00513          	li	a0,-2
    80001704:	00008067          	ret

0000000080001708 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001708:	00050793          	mv	a5,a0
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    8000170c:	00853503          	ld	a0,8(a0)
    80001710:	06050663          	beqz	a0,8000177c <_ZN9semaphore7unblockEv+0x74>
    80001714:	fe010113          	addi	sp,sp,-32
    80001718:	00113c23          	sd	ra,24(sp)
    8000171c:	00813823          	sd	s0,16(sp)
    80001720:	00913423          	sd	s1,8(sp)
    80001724:	02010413          	addi	s0,sp,32
                Elem *elem = head;
                head = head->next;
    80001728:	00853703          	ld	a4,8(a0)
    8000172c:	00e7b423          	sd	a4,8(a5)
                if(!head) tail = 0;
    80001730:	04070263          	beqz	a4,80001774 <_ZN9semaphore7unblockEv+0x6c>
                T *ret = elem->data;
    80001734:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	f18080e7          	jalr	-232(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
    80001740:	02048063          	beqz	s1,80001760 <_ZN9semaphore7unblockEv+0x58>
        thread->setBlocked(false);
    80001744:	00000593          	li	a1,0
    80001748:	00048513          	mv	a0,s1
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	4b8080e7          	jalr	1208(ra) # 80001c04 <_ZN3TCB10setBlockedEb>
        Scheduler::put(thread);
    80001754:	00048513          	mv	a0,s1
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	d04080e7          	jalr	-764(ra) # 8000245c <_ZN9Scheduler3putEP3TCB>
    }
}
    80001760:	01813083          	ld	ra,24(sp)
    80001764:	01013403          	ld	s0,16(sp)
    80001768:	00813483          	ld	s1,8(sp)
    8000176c:	02010113          	addi	sp,sp,32
    80001770:	00008067          	ret
                if(!head) tail = 0;
    80001774:	0007b823          	sd	zero,16(a5)
    80001778:	fbdff06f          	j	80001734 <_ZN9semaphore7unblockEv+0x2c>
    8000177c:	00008067          	ret

0000000080001780 <_ZN9semaphore14closeSemaphoreEv>:
    if(!this->closed) this->closed = true;
    80001780:	00454783          	lbu	a5,4(a0)
    80001784:	04079263          	bnez	a5,800017c8 <_ZN9semaphore14closeSemaphoreEv+0x48>
int semaphore::closeSemaphore() {
    80001788:	fe010113          	addi	sp,sp,-32
    8000178c:	00113c23          	sd	ra,24(sp)
    80001790:	00813823          	sd	s0,16(sp)
    80001794:	00913423          	sd	s1,8(sp)
    80001798:	02010413          	addi	s0,sp,32
    8000179c:	00050493          	mv	s1,a0
    if(!this->closed) this->closed = true;
    800017a0:	00100793          	li	a5,1
    800017a4:	00f50223          	sb	a5,4(a0)
                operator delete(elem);
                return ret;
            }
            T* peekFirst(){
                if(!head) return 0;
    800017a8:	0084b783          	ld	a5,8(s1)
    800017ac:	02078263          	beqz	a5,800017d0 <_ZN9semaphore14closeSemaphoreEv+0x50>
                return head->data;
    800017b0:	0007b783          	ld	a5,0(a5)
   while(this->blocked.peekFirst()){
    800017b4:	02078a63          	beqz	a5,800017e8 <_ZN9semaphore14closeSemaphoreEv+0x68>
       unblock();
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	f4c080e7          	jalr	-180(ra) # 80001708 <_ZN9semaphore7unblockEv>
   while(this->blocked.peekFirst()){
    800017c4:	fe5ff06f          	j	800017a8 <_ZN9semaphore14closeSemaphoreEv+0x28>
    else return -2;
    800017c8:	ffe00513          	li	a0,-2
}
    800017cc:	00008067          	ret
    return 0;
    800017d0:	00000513          	li	a0,0
}
    800017d4:	01813083          	ld	ra,24(sp)
    800017d8:	01013403          	ld	s0,16(sp)
    800017dc:	00813483          	ld	s1,8(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret
    return 0;
    800017e8:	00000513          	li	a0,0
    800017ec:	fe9ff06f          	j	800017d4 <_ZN9semaphore14closeSemaphoreEv+0x54>

00000000800017f0 <_ZN9semaphore6signalEv>:
    if(this->closed) return -2;
    800017f0:	00454783          	lbu	a5,4(a0)
    800017f4:	04079663          	bnez	a5,80001840 <_ZN9semaphore6signalEv+0x50>
    this->value++;
    800017f8:	00052783          	lw	a5,0(a0)
    800017fc:	0017879b          	addiw	a5,a5,1
    80001800:	0007871b          	sext.w	a4,a5
    80001804:	00f52023          	sw	a5,0(a0)
    if(this->value <=0){
    80001808:	00e05663          	blez	a4,80001814 <_ZN9semaphore6signalEv+0x24>
    return 0;
    8000180c:	00000513          	li	a0,0
}
    80001810:	00008067          	ret
int semaphore::signal() {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
       unblock();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	ee4080e7          	jalr	-284(ra) # 80001708 <_ZN9semaphore7unblockEv>
    return 0;
    8000182c:	00000513          	li	a0,0
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret
    if(this->closed) return -2;
    80001840:	ffe00513          	li	a0,-2
    80001844:	00008067          	ret

0000000080001848 <_Z14functionHelperPv>:
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"

extern void userMain();

void functionHelper(void* thr){ //omotac korisnicke funkcije
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00113423          	sd	ra,8(sp)
    80001850:	00813023          	sd	s0,0(sp)
    80001854:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001858:	10000793          	li	a5,256
    8000185c:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    userMain();
    80001860:	00004097          	auipc	ra,0x4
    80001864:	a0c080e7          	jalr	-1524(ra) # 8000526c <_Z8userMainv>
}
    80001868:	00813083          	ld	ra,8(sp)
    8000186c:	00013403          	ld	s0,0(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <main>:

int main(){
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrw stvec, %[trap]" : : [trap] "r" (&Riscv::supervisorTrap)); //pripremanje osnovnih stvari u sis.r
    80001888:	00009797          	auipc	a5,0x9
    8000188c:	e007b783          	ld	a5,-512(a5) # 8000a688 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001890:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    80001894:	00001097          	auipc	ra,0x1
    80001898:	d24080e7          	jalr	-732(ra) # 800025b8 <_ZN15MemoryAllocator4initEv>

    TCB* threads[2];

    thread_create(&threads[0], nullptr, nullptr);
    8000189c:	00000613          	li	a2,0
    800018a0:	00000593          	li	a1,0
    800018a4:	fe040513          	addi	a0,s0,-32
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	a48080e7          	jalr	-1464(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800018b0:	fe043703          	ld	a4,-32(s0)
    800018b4:	00009797          	auipc	a5,0x9
    800018b8:	dec7b783          	ld	a5,-532(a5) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018bc:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1],functionHelper, nullptr);
    800018c0:	00000613          	li	a2,0
    800018c4:	00000597          	auipc	a1,0x0
    800018c8:	f8458593          	addi	a1,a1,-124 # 80001848 <_Z14functionHelperPv>
    800018cc:	fe840513          	addi	a0,s0,-24
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	a20080e7          	jalr	-1504(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    while(!(threads[1]->isFinished())) thread_dispatch();
    800018d8:	fe843783          	ld	a5,-24(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){ delete stack;}
    bool isFinished() const {return finished;}
    800018dc:	0307c783          	lbu	a5,48(a5)
    800018e0:	00079863          	bnez	a5,800018f0 <main+0x78>
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	9c4080e7          	jalr	-1596(ra) # 800012a8 <_Z15thread_dispatchv>
    800018ec:	fedff06f          	j	800018d8 <main+0x60>

    return 0;
}
    800018f0:	00000513          	li	a0,0
    800018f4:	01813083          	ld	ra,24(sp)
    800018f8:	01013403          	ld	s0,16(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret

0000000080001904 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001914:	00001097          	auipc	ra,0x1
    80001918:	be8080e7          	jalr	-1048(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
}
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret

000000008000192c <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	bc0080e7          	jalr	-1088(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001944:	00813083          	ld	ra,8(sp)
    80001948:	00013403          	ld	s0,0(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001964:	00001097          	auipc	ra,0x1
    80001968:	cec080e7          	jalr	-788(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    8000196c:	00813083          	ld	ra,8(sp)
    80001970:	00013403          	ld	s0,0(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret

000000008000197c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00113423          	sd	ra,8(sp)
    80001984:	00813023          	sd	s0,0(sp)
    80001988:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	cc4080e7          	jalr	-828(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001994:	00813083          	ld	ra,8(sp)
    80001998:	00013403          	ld	s0,0(sp)
    8000199c:	01010113          	addi	sp,sp,16
    800019a0:	00008067          	ret

00000000800019a4 <_ZN3TCB8dispatchEv>:
    //__asm__ volatile("ecall");
    TCB::timeSliceCounter=0;
    TCB::dispatch();
}

void TCB::dispatch(){
    800019a4:	fe010113          	addi	sp,sp,-32
    800019a8:	00113c23          	sd	ra,24(sp)
    800019ac:	00813823          	sd	s0,16(sp)
    800019b0:	00913423          	sd	s1,8(sp)
    800019b4:	02010413          	addi	s0,sp,32

    TCB* old= running;
    800019b8:	00009497          	auipc	s1,0x9
    800019bc:	d484b483          	ld	s1,-696(s1) # 8000a700 <_ZN3TCB7runningE>
    800019c0:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->blocked){
    800019c4:	00079663          	bnez	a5,800019d0 <_ZN3TCB8dispatchEv+0x2c>
    800019c8:	0314c783          	lbu	a5,49(s1)
    800019cc:	02078c63          	beqz	a5,80001a04 <_ZN3TCB8dispatchEv+0x60>
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	a24080e7          	jalr	-1500(ra) # 800023f4 <_ZN9Scheduler3getEv>
    800019d8:	00009797          	auipc	a5,0x9
    800019dc:	d2a7b423          	sd	a0,-728(a5) # 8000a700 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800019e0:	01850593          	addi	a1,a0,24
    800019e4:	01848513          	addi	a0,s1,24
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	828080e7          	jalr	-2008(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret
        Scheduler::put(old);
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	a54080e7          	jalr	-1452(ra) # 8000245c <_ZN9Scheduler3putEP3TCB>
    80001a10:	fc1ff06f          	j	800019d0 <_ZN3TCB8dispatchEv+0x2c>

0000000080001a14 <_ZN3TCB5yieldEv>:
void TCB::yield(){
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00113423          	sd	ra,8(sp)
    80001a1c:	00813023          	sd	s0,0(sp)
    80001a20:	01010413          	addi	s0,sp,16
    TCB::timeSliceCounter=0;
    80001a24:	00009797          	auipc	a5,0x9
    80001a28:	ce07b223          	sd	zero,-796(a5) # 8000a708 <_ZN3TCB16timeSliceCounterE>
    TCB::dispatch();
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	f78080e7          	jalr	-136(ra) # 800019a4 <_ZN3TCB8dispatchEv>
}
    80001a34:	00813083          	ld	ra,8(sp)
    80001a38:	00013403          	ld	s0,0(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN3TCB13threadWrapperEv>:
    TCB::yield();
    return 0;
}


void TCB::threadWrapper() {
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	6c4080e7          	jalr	1732(ra) # 8000211c <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001a60:	00009497          	auipc	s1,0x9
    80001a64:	ca048493          	addi	s1,s1,-864 # 8000a700 <_ZN3TCB7runningE>
    80001a68:	0004b783          	ld	a5,0(s1)
    80001a6c:	0007b703          	ld	a4,0(a5)
    80001a70:	0087b503          	ld	a0,8(a5)
    80001a74:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a78:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { finished = f;}
    80001a7c:	00100713          	li	a4,1
    80001a80:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	f90080e7          	jalr	-112(ra) # 80001a14 <_ZN3TCB5yieldEv>
}
    80001a8c:	01813083          	ld	ra,24(sp)
    80001a90:	01013403          	ld	s0,16(sp)
    80001a94:	00813483          	ld	s1,8(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret

0000000080001aa0 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001aa0:	fd010113          	addi	sp,sp,-48
    80001aa4:	02113423          	sd	ra,40(sp)
    80001aa8:	02813023          	sd	s0,32(sp)
    80001aac:	00913c23          	sd	s1,24(sp)
    80001ab0:	01213823          	sd	s2,16(sp)
    80001ab4:	01313423          	sd	s3,8(sp)
    80001ab8:	01413023          	sd	s4,0(sp)
    80001abc:	03010413          	addi	s0,sp,48
    80001ac0:	00050993          	mv	s3,a0
    80001ac4:	00058a13          	mv	s4,a1
    80001ac8:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001acc:	03800513          	li	a0,56
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	e34080e7          	jalr	-460(ra) # 80001904 <_ZN3TCBnwEm>
    80001ad8:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001adc:	01353023          	sd	s3,0(a0)
    80001ae0:	01453423          	sd	s4,8(a0)
    explicit TCB(Body body, uint64 timeSlice, void* arg, void* stek): body(body), argument(arg), stack((uint8*)stek + 8 * DEFAULT_STACK_SIZE),
    80001ae4:	000087b7          	lui	a5,0x8
    80001ae8:	00f907b3          	add	a5,s2,a5
                blocked(false)
    80001aec:	00f53823          	sd	a5,16(a0)
    80001af0:	00000717          	auipc	a4,0x0
    80001af4:	f5470713          	addi	a4,a4,-172 # 80001a44 <_ZN3TCB13threadWrapperEv>
    80001af8:	00e53c23          	sd	a4,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001afc:	02078a63          	beqz	a5,80001b30 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x90>
    80001b00:	00009637          	lui	a2,0x9
    80001b04:	00c90933          	add	s2,s2,a2
                blocked(false)
    80001b08:	0324b023          	sd	s2,32(s1)
    80001b0c:	00200793          	li	a5,2
    80001b10:	02f4b423          	sd	a5,40(s1)
    80001b14:	02048823          	sb	zero,48(s1)
    80001b18:	020488a3          	sb	zero,49(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80001b1c:	02098c63          	beqz	s3,80001b54 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
    80001b20:	00048513          	mv	a0,s1
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	938080e7          	jalr	-1736(ra) # 8000245c <_ZN9Scheduler3putEP3TCB>
    80001b2c:	0280006f          	j	80001b54 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b30:	00000913          	li	s2,0
    80001b34:	fd5ff06f          	j	80001b08 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x68>
    80001b38:	00050913          	mv	s2,a0
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	e14080e7          	jalr	-492(ra) # 80001954 <_ZN3TCBdlEPv>
    80001b48:	00090513          	mv	a0,s2
    80001b4c:	0000a097          	auipc	ra,0xa
    80001b50:	cfc080e7          	jalr	-772(ra) # 8000b848 <_Unwind_Resume>
}
    80001b54:	00048513          	mv	a0,s1
    80001b58:	02813083          	ld	ra,40(sp)
    80001b5c:	02013403          	ld	s0,32(sp)
    80001b60:	01813483          	ld	s1,24(sp)
    80001b64:	01013903          	ld	s2,16(sp)
    80001b68:	00813983          	ld	s3,8(sp)
    80001b6c:	00013a03          	ld	s4,0(sp)
    80001b70:	03010113          	addi	sp,sp,48
    80001b74:	00008067          	ret

0000000080001b78 <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001b78:	04050663          	beqz	a0,80001bc4 <_ZN3TCB12deleteThreadEPS_+0x4c>
void TCB::deleteThread(TCB* thread){
    80001b7c:	fe010113          	addi	sp,sp,-32
    80001b80:	00113c23          	sd	ra,24(sp)
    80001b84:	00813823          	sd	s0,16(sp)
    80001b88:	00913423          	sd	s1,8(sp)
    80001b8c:	02010413          	addi	s0,sp,32
    80001b90:	00050493          	mv	s1,a0
    ~TCB(){ delete stack;}
    80001b94:	01053503          	ld	a0,16(a0)
    80001b98:	00050663          	beqz	a0,80001ba4 <_ZN3TCB12deleteThreadEPS_+0x2c>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	0d4080e7          	jalr	212(ra) # 80001c70 <_ZdlPv>
    delete thread;
    80001ba4:	00048513          	mv	a0,s1
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	dac080e7          	jalr	-596(ra) # 80001954 <_ZN3TCBdlEPv>
}
    80001bb0:	01813083          	ld	ra,24(sp)
    80001bb4:	01013403          	ld	s0,16(sp)
    80001bb8:	00813483          	ld	s1,8(sp)
    80001bbc:	02010113          	addi	sp,sp,32
    80001bc0:	00008067          	ret
    80001bc4:	00008067          	ret

0000000080001bc8 <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { finished = f;}
    80001bd8:	00009797          	auipc	a5,0x9
    80001bdc:	b287b783          	ld	a5,-1240(a5) # 8000a700 <_ZN3TCB7runningE>
    80001be0:	00100713          	li	a4,1
    80001be4:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	e2c080e7          	jalr	-468(ra) # 80001a14 <_ZN3TCB5yieldEv>
}
    80001bf0:	00000513          	li	a0,0
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN3TCB10setBlockedEb>:

void TCB::setBlocked(bool b) {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    this->blocked = b;
    80001c10:	02b508a3          	sb	a1,49(a0)
}
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	614080e7          	jalr	1556(ra) # 80001244 <_Z9mem_allocm>
}
    80001c38:	00813083          	ld	ra,8(sp)
    80001c3c:	00013403          	ld	s0,0(sp)
    80001c40:	01010113          	addi	sp,sp,16
    80001c44:	00008067          	ret

0000000080001c48 <_Znam>:

void *operator new[](size_t n)
{
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	5ec080e7          	jalr	1516(ra) # 80001244 <_Z9mem_allocm>
}
    80001c60:	00813083          	ld	ra,8(sp)
    80001c64:	00013403          	ld	s0,0(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	5fc080e7          	jalr	1532(ra) # 8000127c <_Z8mem_freePv>
}
    80001c88:	00813083          	ld	ra,8(sp)
    80001c8c:	00013403          	ld	s0,0(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	5d4080e7          	jalr	1492(ra) # 8000127c <_Z8mem_freePv>
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN6Thread13threadWrapperEPv>:
Thread::Thread() {
    this->body = Thread::threadWrapper;
    this->arg = this;
}

void Thread::threadWrapper(void *thread) {
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00113423          	sd	ra,8(sp)
    80001cc8:	00813023          	sd	s0,0(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001cd0:	00053783          	ld	a5,0(a0)
    80001cd4:	0107b783          	ld	a5,16(a5)
    80001cd8:	000780e7          	jalr	a5
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00113423          	sd	ra,8(sp)
    80001cf4:	00813023          	sd	s0,0(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    80001cfc:	00008797          	auipc	a5,0x8
    80001d00:	79c78793          	addi	a5,a5,1948 # 8000a498 <_ZTV6Thread+0x10>
    80001d04:	00f53023          	sd	a5,0(a0)
    operator delete(myHandle);
    80001d08:	00853503          	ld	a0,8(a0)
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	f64080e7          	jalr	-156(ra) # 80001c70 <_ZdlPv>
}
    80001d14:	00813083          	ld	ra,8(sp)
    80001d18:	00013403          	ld	s0,0(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001d24:	fe010113          	addi	sp,sp,-32
    80001d28:	00113c23          	sd	ra,24(sp)
    80001d2c:	00813823          	sd	s0,16(sp)
    80001d30:	00913423          	sd	s1,8(sp)
    80001d34:	02010413          	addi	s0,sp,32
    80001d38:	00050493          	mv	s1,a0
}
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	fb0080e7          	jalr	-80(ra) # 80001cec <_ZN6ThreadD1Ev>
    80001d44:	00048513          	mv	a0,s1
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	f28080e7          	jalr	-216(ra) # 80001c70 <_ZdlPv>
    80001d50:	01813083          	ld	ra,24(sp)
    80001d54:	01013403          	ld	s0,16(sp)
    80001d58:	00813483          	ld	s1,8(sp)
    80001d5c:	02010113          	addi	sp,sp,32
    80001d60:	00008067          	ret

0000000080001d64 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    80001d74:	00008797          	auipc	a5,0x8
    80001d78:	74c78793          	addi	a5,a5,1868 # 8000a4c0 <_ZTV9Semaphore+0x10>
    80001d7c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d80:	00853503          	ld	a0,8(a0)
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	618080e7          	jalr	1560(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80001d8c:	00813083          	ld	ra,8(sp)
    80001d90:	00013403          	ld	s0,0(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	02010413          	addi	s0,sp,32
    80001db0:	00050493          	mv	s1,a0
}
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	fb0080e7          	jalr	-80(ra) # 80001d64 <_ZN9SemaphoreD1Ev>
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	eb0080e7          	jalr	-336(ra) # 80001c70 <_ZdlPv>
    80001dc8:	01813083          	ld	ra,24(sp)
    80001dcc:	01013403          	ld	s0,16(sp)
    80001dd0:	00813483          	ld	s1,8(sp)
    80001dd4:	02010113          	addi	sp,sp,32
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00113423          	sd	ra,8(sp)
    80001de4:	00813023          	sd	s0,0(sp)
    80001de8:	01010413          	addi	s0,sp,16
    80001dec:	00008797          	auipc	a5,0x8
    80001df0:	6ac78793          	addi	a5,a5,1708 # 8000a498 <_ZTV6Thread+0x10>
    80001df4:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001df8:	00850513          	addi	a0,a0,8
    80001dfc:	fffff097          	auipc	ra,0xfffff
    80001e00:	4f4080e7          	jalr	1268(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}//prvo mem alloc!!!
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN6Thread5startEv>:
int Thread::start() {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00113423          	sd	ra,8(sp)
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	01010413          	addi	s0,sp,16
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    80001e24:	00050613          	mv	a2,a0
    80001e28:	00000597          	auipc	a1,0x0
    80001e2c:	e9858593          	addi	a1,a1,-360 # 80001cc0 <_ZN6Thread13threadWrapperEPv>
    80001e30:	00850513          	addi	a0,a0,8
    80001e34:	fffff097          	auipc	ra,0xfffff
    80001e38:	4bc080e7          	jalr	1212(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001e3c:	00000513          	li	a0,0
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	448080e7          	jalr	1096(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	00813023          	sd	s0,0(sp)
    80001e84:	01010413          	addi	s0,sp,16
    time_sleep(t);
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	630080e7          	jalr	1584(ra) # 800014b8 <_Z10time_sleepm>
}
    80001e90:	00000513          	li	a0,0
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00813423          	sd	s0,8(sp)
    80001eac:	01010413          	addi	s0,sp,16
    80001eb0:	00008797          	auipc	a5,0x8
    80001eb4:	5e878793          	addi	a5,a5,1512 # 8000a498 <_ZTV6Thread+0x10>
    80001eb8:	00f53023          	sd	a5,0(a0)
    this->body = Thread::threadWrapper;
    80001ebc:	00000797          	auipc	a5,0x0
    80001ec0:	e0478793          	addi	a5,a5,-508 # 80001cc0 <_ZN6Thread13threadWrapperEPv>
    80001ec4:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    80001ec8:	00a53c23          	sd	a0,24(a0)
}
    80001ecc:	00813403          	ld	s0,8(sp)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00008797          	auipc	a5,0x8
    80001eec:	5d878793          	addi	a5,a5,1496 # 8000a4c0 <_ZTV9Semaphore+0x10>
    80001ef0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001ef4:	00850513          	addi	a0,a0,8
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	474080e7          	jalr	1140(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80001f00:	00813083          	ld	ra,8(sp)
    80001f04:	00013403          	ld	s0,0(sp)
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret

0000000080001f10 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00113423          	sd	ra,8(sp)
    80001f18:	00813023          	sd	s0,0(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001f20:	00853503          	ld	a0,8(a0)
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	4a4080e7          	jalr	1188(ra) # 800013c8 <_Z8sem_waitP3sem>
}
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00113423          	sd	ra,8(sp)
    80001f44:	00813023          	sd	s0,0(sp)
    80001f48:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001f4c:	00853503          	ld	a0,8(a0)
    80001f50:	fffff097          	auipc	ra,0xfffff
    80001f54:	4a4080e7          	jalr	1188(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80001f58:	00813083          	ld	ra,8(sp)
    80001f5c:	00013403          	ld	s0,0(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00113423          	sd	ra,8(sp)
    80001f70:	00813023          	sd	s0,0(sp)
    80001f74:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001f78:	00853503          	ld	a0,8(a0)
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	4a4080e7          	jalr	1188(ra) # 80001420 <_Z11sem_trywaitP3sem>
}
    80001f84:	00813083          	ld	ra,8(sp)
    80001f88:	00013403          	ld	s0,0(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_ZN9Semaphore9timedWaitEm>:



int Semaphore::timedWait(time_t t) {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00113423          	sd	ra,8(sp)
    80001f9c:	00813023          	sd	s0,0(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    sem_timedwait(myHandle,t);
    80001fa4:	00853503          	ld	a0,8(a0)
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	4f4080e7          	jalr	1268(ra) # 8000149c <_Z13sem_timedwaitP3semm>
    return 0;
}
    80001fb0:	00000513          	li	a0,0
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00813423          	sd	s0,8(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    //terminate();
}
    80001fd0:	00813403          	ld	s0,8(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001fdc:	fe010113          	addi	sp,sp,-32
    80001fe0:	00113c23          	sd	ra,24(sp)
    80001fe4:	00813823          	sd	s0,16(sp)
    80001fe8:	00913423          	sd	s1,8(sp)
    80001fec:	02010413          	addi	s0,sp,32
    80001ff0:	00050493          	mv	s1,a0
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	eb0080e7          	jalr	-336(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    80001ffc:	00008797          	auipc	a5,0x8
    80002000:	46c78793          	addi	a5,a5,1132 # 8000a468 <_ZTV14PeriodicThread+0x10>
    80002004:	00f4b023          	sd	a5,0(s1)

}
    80002008:	01813083          	ld	ra,24(sp)
    8000200c:	01013403          	ld	s0,16(sp)
    80002010:	00813483          	ld	s1,8(sp)
    80002014:	02010113          	addi	sp,sp,32
    80002018:	00008067          	ret

000000008000201c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00113423          	sd	ra,8(sp)
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	448080e7          	jalr	1096(ra) # 80001474 <_Z4putcc>
}
    80002034:	00813083          	ld	ra,8(sp)
    80002038:	00013403          	ld	s0,0(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <_ZN7Console4getcEv>:
char Console::getc() {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00113423          	sd	ra,8(sp)
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	01010413          	addi	s0,sp,16
   return ::getc();
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	3f8080e7          	jalr	1016(ra) # 8000144c <_Z4getcv>
}
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZN6Thread3runEv>:
    int start ();//
    static void dispatch ();//
    static int sleep (time_t);
protected:
    Thread ();//
    virtual void run () {}//
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
        public:
        void terminate ();
        protected:
        PeriodicThread (time_t period);
        virtual void periodicActivation () {}
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00813423          	sd	s0,8(sp)
    8000208c:	01010413          	addi	s0,sp,16
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	00008797          	auipc	a5,0x8
    800020b0:	3bc78793          	addi	a5,a5,956 # 8000a468 <_ZTV14PeriodicThread+0x10>
    800020b4:	00f53023          	sd	a5,0(a0)
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	c34080e7          	jalr	-972(ra) # 80001cec <_ZN6ThreadD1Ev>
    800020c0:	00813083          	ld	ra,8(sp)
    800020c4:	00013403          	ld	s0,0(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret

00000000800020d0 <_ZN14PeriodicThreadD0Ev>:
    800020d0:	fe010113          	addi	sp,sp,-32
    800020d4:	00113c23          	sd	ra,24(sp)
    800020d8:	00813823          	sd	s0,16(sp)
    800020dc:	00913423          	sd	s1,8(sp)
    800020e0:	02010413          	addi	s0,sp,32
    800020e4:	00050493          	mv	s1,a0
    800020e8:	00008797          	auipc	a5,0x8
    800020ec:	38078793          	addi	a5,a5,896 # 8000a468 <_ZTV14PeriodicThread+0x10>
    800020f0:	00f53023          	sd	a5,0(a0)
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	bf8080e7          	jalr	-1032(ra) # 80001cec <_ZN6ThreadD1Ev>
    800020fc:	00048513          	mv	a0,s1
    80002100:	00000097          	auipc	ra,0x0
    80002104:	b70080e7          	jalr	-1168(ra) # 80001c70 <_ZdlPv>
    80002108:	01813083          	ld	ra,24(sp)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret

000000008000211c <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002128:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000212c:	10200073          	sret
}
    80002130:	00813403          	ld	s0,8(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    8000213c:	f9010113          	addi	sp,sp,-112
    80002140:	06113423          	sd	ra,104(sp)
    80002144:	06813023          	sd	s0,96(sp)
    80002148:	04913c23          	sd	s1,88(sp)
    8000214c:	07010413          	addi	s0,sp,112

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002150:	00050793          	mv	a5,a0
    80002154:	faf43c23          	sd	a5,-72(s0)
    return a0;
    80002158:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000215c:	14202773          	csrr	a4,scause
    80002160:	fae43823          	sd	a4,-80(s0)
    return scause;
    80002164:	fb043703          	ld	a4,-80(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    80002168:	ff870613          	addi	a2,a4,-8
    8000216c:	00100693          	li	a3,1
    80002170:	02c6f863          	bgeu	a3,a2,800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0x64>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80002174:	fff00793          	li	a5,-1
    80002178:	03f79793          	slli	a5,a5,0x3f
    8000217c:	00178793          	addi	a5,a5,1
    80002180:	1af70e63          	beq	a4,a5,8000233c <_ZN5Riscv20handleSupervisorTrapEv+0x200>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    80002184:	fff00793          	li	a5,-1
    80002188:	03f79793          	slli	a5,a5,0x3f
    8000218c:	00978793          	addi	a5,a5,9
    80002190:	06f71e63          	bne	a4,a5,8000220c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
        // supervisor external interrupt; console

        console_handler();
    80002194:	00006097          	auipc	ra,0x6
    80002198:	d8c080e7          	jalr	-628(ra) # 80007f20 <console_handler>
        //unexpected interrupt;
        //printInteger(scause);
        //printInteger(r_sepc());
        //printInteger(r_stval());
    }
    8000219c:	0700006f          	j	8000220c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021a0:	14102773          	csrr	a4,sepc
    800021a4:	fce43423          	sd	a4,-56(s0)
    return sepc;
    800021a8:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() +4;
    800021ac:	00470713          	addi	a4,a4,4
    800021b0:	f8e43823          	sd	a4,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021b4:	10002773          	csrr	a4,sstatus
    800021b8:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    800021bc:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    800021c0:	f8e43c23          	sd	a4,-104(s0)
        switch (ra) {
    800021c4:	02600713          	li	a4,38
    800021c8:	02f76a63          	bltu	a4,a5,800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    800021cc:	00279793          	slli	a5,a5,0x2
    800021d0:	00006717          	auipc	a4,0x6
    800021d4:	e5070713          	addi	a4,a4,-432 # 80008020 <CONSOLE_STATUS+0x10>
    800021d8:	00e787b3          	add	a5,a5,a4
    800021dc:	0007a783          	lw	a5,0(a5)
    800021e0:	00e787b3          	add	a5,a5,a4
    800021e4:	00078067          	jr	a5
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
    800021e8:	05843503          	ld	a0,88(s0)
                mallocr = MemoryAllocator::mem_alloc(size);
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	310080e7          	jalr	784(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    800021f4:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    800021f8:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    800021fc:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002200:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002204:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002208:	14179073          	csrw	sepc,a5
    8000220c:	06813083          	ld	ra,104(sp)
    80002210:	06013403          	ld	s0,96(sp)
    80002214:	05813483          	ld	s1,88(sp)
    80002218:	07010113          	addi	sp,sp,112
    8000221c:	00008067          	ret
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
    80002220:	05843503          	ld	a0,88(s0)
                greska = MemoryAllocator::mem_free(freep);
    80002224:	00000097          	auipc	ra,0x0
    80002228:	42c080e7          	jalr	1068(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    8000222c:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002230:	04543823          	sd	t0,80(s0)
                break;
    80002234:	fc9ff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
    80002238:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    8000223c:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    80002240:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    80002244:	07043603          	ld	a2,112(s0)
                *thandle = TCB::createThread(start_routine,arg, stek);
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	858080e7          	jalr	-1960(ra) # 80001aa0 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002250:	00a4b023          	sd	a0,0(s1)
                if(*thandle != nullptr) ret =0;
    80002254:	00050a63          	beqz	a0,80002268 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    80002258:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000225c:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    80002260:	04543823          	sd	t0,80(s0)
                break;
    80002264:	f99ff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                else ret = -1;
    80002268:	fff00793          	li	a5,-1
    8000226c:	ff1ff06f          	j	8000225c <_ZN5Riscv20handleSupervisorTrapEv+0x120>
                ret = TCB::exitThread();
    80002270:	00000097          	auipc	ra,0x0
    80002274:	958080e7          	jalr	-1704(ra) # 80001bc8 <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002278:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    8000227c:	04542823          	sw	t0,80(s0)
                break;
    80002280:	f7dff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                TCB::timeSliceCounter=0;
    80002284:	00008797          	auipc	a5,0x8
    80002288:	40c7b783          	ld	a5,1036(a5) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000228c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	714080e7          	jalr	1812(ra) # 800019a4 <_ZN3TCB8dispatchEv>
                break;
    80002298:	f65ff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
    8000229c:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
    800022a0:	06043503          	ld	a0,96(s0)
                *shandle = semaphore::openSemaphore(val);
    800022a4:	0005051b          	sext.w	a0,a0
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	2cc080e7          	jalr	716(ra) # 80001574 <_ZN9semaphore13openSemaphoreEi>
    800022b0:	00a4b023          	sd	a0,0(s1)
                if(*shandle != nullptr) ret =0;
    800022b4:	00050a63          	beqz	a0,800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    800022b8:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022bc:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800022c0:	04542823          	sw	t0,80(s0)
                break;
    800022c4:	f39ff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                else ret = -1;
    800022c8:	fff00793          	li	a5,-1
    800022cc:	ff1ff06f          	j	800022bc <_ZN5Riscv20handleSupervisorTrapEv+0x180>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    800022d0:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::closeSemaphore();
    800022d4:	fffff097          	auipc	ra,0xfffff
    800022d8:	4ac080e7          	jalr	1196(ra) # 80001780 <_ZN9semaphore14closeSemaphoreEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022dc:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022e0:	04542823          	sw	t0,80(s0)
                break;
    800022e4:	f19ff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    800022e8:	05843503          	ld	a0,88(s0)
                if(id != nullptr) ret = id->semaphore::wait();
    800022ec:	00050c63          	beqz	a0,80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	3c0080e7          	jalr	960(ra) # 800016b0 <_ZN9semaphore4waitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022f8:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022fc:	04542823          	sw	t0,80(s0)
                break;
    80002300:	efdff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                else ret = -1;
    80002304:	fff00513          	li	a0,-1
    80002308:	ff1ff06f          	j	800022f8 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    8000230c:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::signal();
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	4e0080e7          	jalr	1248(ra) # 800017f0 <_ZN9semaphore6signalEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002318:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    8000231c:	04542823          	sw	t0,80(s0)
                break;
    80002320:	eddff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002324:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::trywait();
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	294080e7          	jalr	660(ra) # 800015bc <_ZN9semaphore7trywaitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002330:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002334:	04542823          	sw	t0,80(s0)
                break;
    80002338:	ec5ff06f          	j	800021fc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000233c:	00200793          	li	a5,2
    80002340:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002344:	00008717          	auipc	a4,0x8
    80002348:	34c73703          	ld	a4,844(a4) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000234c:	00073783          	ld	a5,0(a4)
    80002350:	00178793          	addi	a5,a5,1
    80002354:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80002358:	00008717          	auipc	a4,0x8
    8000235c:	34873703          	ld	a4,840(a4) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002360:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002364:	02873703          	ld	a4,40(a4)
    80002368:	eae7e2e3          	bltu	a5,a4,8000220c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000236c:	141027f3          	csrr	a5,sepc
    80002370:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002374:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80002378:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000237c:	100027f3          	csrr	a5,sstatus
    80002380:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002384:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80002388:	faf43423          	sd	a5,-88(s0)
            TCB::timeSliceCounter=0;
    8000238c:	00008797          	auipc	a5,0x8
    80002390:	3047b783          	ld	a5,772(a5) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002394:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	60c080e7          	jalr	1548(ra) # 800019a4 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800023a0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023a4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800023a8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023ac:	14179073          	csrw	sepc,a5
}
    800023b0:	e5dff06f          	j	8000220c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>

00000000800023b4 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813423          	sd	s0,8(sp)
    800023bc:	01010413          	addi	s0,sp,16
    800023c0:	00100793          	li	a5,1
    800023c4:	00f50863          	beq	a0,a5,800023d4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret
    800023d4:	000107b7          	lui	a5,0x10
    800023d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023dc:	fef596e3          	bne	a1,a5,800023c8 <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    800023e0:	00008797          	auipc	a5,0x8
    800023e4:	33078793          	addi	a5,a5,816 # 8000a710 <_ZN9Scheduler16readyThreadQueueE>
    800023e8:	0007b023          	sd	zero,0(a5)
    800023ec:	0007b423          	sd	zero,8(a5)
    800023f0:	fd9ff06f          	j	800023c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800023f4 <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    800023f4:	fe010113          	addi	sp,sp,-32
    800023f8:	00113c23          	sd	ra,24(sp)
    800023fc:	00813823          	sd	s0,16(sp)
    80002400:	00913423          	sd	s1,8(sp)
    80002404:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    80002408:	00008517          	auipc	a0,0x8
    8000240c:	30853503          	ld	a0,776(a0) # 8000a710 <_ZN9Scheduler16readyThreadQueueE>
    80002410:	04050263          	beqz	a0,80002454 <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    80002414:	00853783          	ld	a5,8(a0)
    80002418:	00008717          	auipc	a4,0x8
    8000241c:	2ef73c23          	sd	a5,760(a4) # 8000a710 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80002420:	02078463          	beqz	a5,80002448 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    80002424:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	228080e7          	jalr	552(ra) # 80002650 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80002430:	00048513          	mv	a0,s1
    80002434:	01813083          	ld	ra,24(sp)
    80002438:	01013403          	ld	s0,16(sp)
    8000243c:	00813483          	ld	s1,8(sp)
    80002440:	02010113          	addi	sp,sp,32
    80002444:	00008067          	ret
                if(!head) tail = 0;
    80002448:	00008797          	auipc	a5,0x8
    8000244c:	2c07b823          	sd	zero,720(a5) # 8000a718 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002450:	fd5ff06f          	j	80002424 <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80002454:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002458:	fd9ff06f          	j	80002430 <_ZN9Scheduler3getEv+0x3c>

000000008000245c <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    8000245c:	fe010113          	addi	sp,sp,-32
    80002460:	00113c23          	sd	ra,24(sp)
    80002464:	00813823          	sd	s0,16(sp)
    80002468:	00913423          	sd	s1,8(sp)
    8000246c:	02010413          	addi	s0,sp,32
    80002470:	00050493          	mv	s1,a0
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    80002474:	01000513          	li	a0,16
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	084080e7          	jalr	132(ra) # 800024fc <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80002480:	00953023          	sd	s1,0(a0)
                elem->next=0;
    80002484:	00053423          	sd	zero,8(a0)
                if(tail){
    80002488:	00008797          	auipc	a5,0x8
    8000248c:	2907b783          	ld	a5,656(a5) # 8000a718 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002490:	02078263          	beqz	a5,800024b4 <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    80002494:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80002498:	00008797          	auipc	a5,0x8
    8000249c:	28a7b023          	sd	a0,640(a5) # 8000a718 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	01013403          	ld	s0,16(sp)
    800024a8:	00813483          	ld	s1,8(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret
                    head= tail = elem;
    800024b4:	00008797          	auipc	a5,0x8
    800024b8:	25c78793          	addi	a5,a5,604 # 8000a710 <_ZN9Scheduler16readyThreadQueueE>
    800024bc:	00a7b423          	sd	a0,8(a5)
    800024c0:	00a7b023          	sd	a0,0(a5)
    800024c4:	fddff06f          	j	800024a0 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800024c8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	000105b7          	lui	a1,0x10
    800024dc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800024e0:	00100513          	li	a0,1
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	ed0080e7          	jalr	-304(ra) # 800023b4 <_Z41__static_initialization_and_destruction_0ii>
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    8000250c:	00008517          	auipc	a0,0x8
    80002510:	21453503          	ld	a0,532(a0) # 8000a720 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    80002514:	03f7f713          	andi	a4,a5,63
    80002518:	00070663          	beqz	a4,80002524 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    8000251c:	fc07f793          	andi	a5,a5,-64
    80002520:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    80002524:	02050863          	beqz	a0,80002554 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002528:	00853703          	ld	a4,8(a0)
    8000252c:	02f77863          	bgeu	a4,a5,8000255c <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    80002530:	00050693          	mv	a3,a0
        tek = tek->sled;
    80002534:	00053503          	ld	a0,0(a0)
    80002538:	00c0006f          	j	80002544 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    8000253c:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    80002540:	00053503          	ld	a0,0(a0)
    80002544:	00050e63          	beqz	a0,80002560 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002548:	00853703          	ld	a4,8(a0)
    8000254c:	fef768e3          	bltu	a4,a5,8000253c <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80002550:	0100006f          	j	80002560 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    80002554:	00050693          	mv	a3,a0
    80002558:	0080006f          	j	80002560 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    8000255c:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    80002560:	02050c63          	beqz	a0,80002598 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    80002564:	00853703          	ld	a4,8(a0)
    80002568:	02e7fe63          	bgeu	a5,a4,800025a4 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    8000256c:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    80002570:	00f505b3          	add	a1,a0,a5
    80002574:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    80002578:	40f707b3          	sub	a5,a4,a5
    8000257c:	ff078793          	addi	a5,a5,-16
    80002580:	00f63423          	sd	a5,8(a2) # 9008 <_entry-0x7fff6ff8>
        sledeci->sled = tek->sled;
    80002584:	00053783          	ld	a5,0(a0)
    80002588:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    8000258c:	02068063          	beqz	a3,800025ac <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80002590:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    80002594:	01050513          	addi	a0,a0,16
}
    80002598:	00813403          	ld	s0,8(sp)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    800025a4:	00053603          	ld	a2,0(a0)
    800025a8:	fe5ff06f          	j	8000258c <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    800025ac:	00008797          	auipc	a5,0x8
    800025b0:	16c7ba23          	sd	a2,372(a5) # 8000a720 <_ZN15MemoryAllocator11freememheadE>
    800025b4:	fe1ff06f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0x98>

00000000800025b8 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    800025c4:	00008797          	auipc	a5,0x8
    800025c8:	0bc7b783          	ld	a5,188(a5) # 8000a680 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025cc:	0007b703          	ld	a4,0(a5)
    800025d0:	00008797          	auipc	a5,0x8
    800025d4:	14e7b823          	sd	a4,336(a5) # 8000a720 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    800025d8:	00008797          	auipc	a5,0x8
    800025dc:	0d07b783          	ld	a5,208(a5) # 8000a6a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800025e0:	0007b783          	ld	a5,0(a5)
    800025e4:	40e787b3          	sub	a5,a5,a4
    800025e8:	ff078793          	addi	a5,a5,-16
    800025ec:	00073023          	sd	zero,0(a4)
    800025f0:	00f73423          	sd	a5,8(a4)
};
    800025f4:	00813403          	ld	s0,8(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00813423          	sd	s0,8(sp)
    80002608:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    8000260c:	00053783          	ld	a5,0(a0)
    80002610:	00078a63          	beqz	a5,80002624 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    80002614:	00853683          	ld	a3,8(a0)
    80002618:	00d50733          	add	a4,a0,a3
    8000261c:	01070713          	addi	a4,a4,16
    80002620:	00f70a63          	beq	a4,a5,80002634 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    80002624:	00000513          	li	a0,0
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    80002634:	0087b703          	ld	a4,8(a5)
    80002638:	00e686b3          	add	a3,a3,a4
    8000263c:	01068693          	addi	a3,a3,16
    80002640:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    80002644:	0007b783          	ld	a5,0(a5)
    80002648:	00f53023          	sd	a5,0(a0)
    8000264c:	fd9ff06f          	j	80002624 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

0000000080002650 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002650:	0c050263          	beqz	a0,80002714 <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    80002654:	00050713          	mv	a4,a0
    80002658:	00008797          	auipc	a5,0x8
    8000265c:	0287b783          	ld	a5,40(a5) # 8000a680 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002660:	0007b783          	ld	a5,0(a5)
    80002664:	0af56c63          	bltu	a0,a5,8000271c <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    80002668:	00008797          	auipc	a5,0x8
    8000266c:	0407b783          	ld	a5,64(a5) # 8000a6a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002670:	0007b783          	ld	a5,0(a5)
    80002674:	0af57863          	bgeu	a0,a5,80002724 <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    80002678:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    8000267c:	00008797          	auipc	a5,0x8
    80002680:	0a47b783          	ld	a5,164(a5) # 8000a720 <_ZN15MemoryAllocator11freememheadE>
    80002684:	06078063          	beqz	a5,800026e4 <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    80002688:	fe010113          	addi	sp,sp,-32
    8000268c:	00113c23          	sd	ra,24(sp)
    80002690:	00813823          	sd	s0,16(sp)
    80002694:	00913423          	sd	s1,8(sp)
    80002698:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    8000269c:	04f56e63          	bltu	a0,a5,800026f8 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    800026a0:	00078493          	mv	s1,a5
    800026a4:	0007b783          	ld	a5,0(a5)
    800026a8:	00078463          	beqz	a5,800026b0 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    800026ac:	fea7eae3          	bltu	a5,a0,800026a0 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    800026b0:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    800026b4:	00a4b023          	sd	a0,0(s1)
        join(tek);
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	f48080e7          	jalr	-184(ra) # 80002600 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    800026c0:	00048513          	mv	a0,s1
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	f3c080e7          	jalr	-196(ra) # 80002600 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    800026cc:	00000513          	li	a0,0
}
    800026d0:	01813083          	ld	ra,24(sp)
    800026d4:	01013403          	ld	s0,16(sp)
    800026d8:	00813483          	ld	s1,8(sp)
    800026dc:	02010113          	addi	sp,sp,32
    800026e0:	00008067          	ret
        freememhead = tek;
    800026e4:	00008797          	auipc	a5,0x8
    800026e8:	02a7be23          	sd	a0,60(a5) # 8000a720 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    800026ec:	fe073823          	sd	zero,-16(a4)
    return 0;
    800026f0:	00000513          	li	a0,0
    800026f4:	00008067          	ret
        tek->sled = freememhead;
    800026f8:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    800026fc:	00008797          	auipc	a5,0x8
    80002700:	02a7b223          	sd	a0,36(a5) # 8000a720 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    80002704:	00000097          	auipc	ra,0x0
    80002708:	efc080e7          	jalr	-260(ra) # 80002600 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    8000270c:	00000513          	li	a0,0
    80002710:	fc1ff06f          	j	800026d0 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002714:	fff00513          	li	a0,-1
    80002718:	00008067          	ret
    8000271c:	fff00513          	li	a0,-1
    80002720:	00008067          	ret
    80002724:	fff00513          	li	a0,-1
}
    80002728:	00008067          	ret

000000008000272c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	01213023          	sd	s2,0(sp)
    80002740:	02010413          	addi	s0,sp,32
    80002744:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002748:	00000913          	li	s2,0
    8000274c:	00c0006f          	j	80002758 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	b58080e7          	jalr	-1192(ra) # 800012a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	cf4080e7          	jalr	-780(ra) # 8000144c <_Z4getcv>
    80002760:	0005059b          	sext.w	a1,a0
    80002764:	01b00793          	li	a5,27
    80002768:	02f58a63          	beq	a1,a5,8000279c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000276c:	0084b503          	ld	a0,8(s1)
    80002770:	00003097          	auipc	ra,0x3
    80002774:	3f4080e7          	jalr	1012(ra) # 80005b64 <_ZN6Buffer3putEi>
        i++;
    80002778:	0019071b          	addiw	a4,s2,1
    8000277c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002780:	0004a683          	lw	a3,0(s1)
    80002784:	0026979b          	slliw	a5,a3,0x2
    80002788:	00d787bb          	addw	a5,a5,a3
    8000278c:	0017979b          	slliw	a5,a5,0x1
    80002790:	02f767bb          	remw	a5,a4,a5
    80002794:	fc0792e3          	bnez	a5,80002758 <_ZL16producerKeyboardPv+0x2c>
    80002798:	fb9ff06f          	j	80002750 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000279c:	00100793          	li	a5,1
    800027a0:	00008717          	auipc	a4,0x8
    800027a4:	f8f72423          	sw	a5,-120(a4) # 8000a728 <_ZL9threadEnd>
    data->buffer->put('!');
    800027a8:	02100593          	li	a1,33
    800027ac:	0084b503          	ld	a0,8(s1)
    800027b0:	00003097          	auipc	ra,0x3
    800027b4:	3b4080e7          	jalr	948(ra) # 80005b64 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800027b8:	0104b503          	ld	a0,16(s1)
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	c38080e7          	jalr	-968(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    800027c4:	01813083          	ld	ra,24(sp)
    800027c8:	01013403          	ld	s0,16(sp)
    800027cc:	00813483          	ld	s1,8(sp)
    800027d0:	00013903          	ld	s2,0(sp)
    800027d4:	02010113          	addi	sp,sp,32
    800027d8:	00008067          	ret

00000000800027dc <_ZL8producerPv>:

static void producer(void *arg) {
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	01213023          	sd	s2,0(sp)
    800027f0:	02010413          	addi	s0,sp,32
    800027f4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800027f8:	00000913          	li	s2,0
    800027fc:	00c0006f          	j	80002808 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	aa8080e7          	jalr	-1368(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002808:	00008797          	auipc	a5,0x8
    8000280c:	f207a783          	lw	a5,-224(a5) # 8000a728 <_ZL9threadEnd>
    80002810:	02079e63          	bnez	a5,8000284c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002814:	0004a583          	lw	a1,0(s1)
    80002818:	0305859b          	addiw	a1,a1,48
    8000281c:	0084b503          	ld	a0,8(s1)
    80002820:	00003097          	auipc	ra,0x3
    80002824:	344080e7          	jalr	836(ra) # 80005b64 <_ZN6Buffer3putEi>
        i++;
    80002828:	0019071b          	addiw	a4,s2,1
    8000282c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002830:	0004a683          	lw	a3,0(s1)
    80002834:	0026979b          	slliw	a5,a3,0x2
    80002838:	00d787bb          	addw	a5,a5,a3
    8000283c:	0017979b          	slliw	a5,a5,0x1
    80002840:	02f767bb          	remw	a5,a4,a5
    80002844:	fc0792e3          	bnez	a5,80002808 <_ZL8producerPv+0x2c>
    80002848:	fb9ff06f          	j	80002800 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000284c:	0104b503          	ld	a0,16(s1)
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	ba4080e7          	jalr	-1116(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80002858:	01813083          	ld	ra,24(sp)
    8000285c:	01013403          	ld	s0,16(sp)
    80002860:	00813483          	ld	s1,8(sp)
    80002864:	00013903          	ld	s2,0(sp)
    80002868:	02010113          	addi	sp,sp,32
    8000286c:	00008067          	ret

0000000080002870 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002870:	fd010113          	addi	sp,sp,-48
    80002874:	02113423          	sd	ra,40(sp)
    80002878:	02813023          	sd	s0,32(sp)
    8000287c:	00913c23          	sd	s1,24(sp)
    80002880:	01213823          	sd	s2,16(sp)
    80002884:	01313423          	sd	s3,8(sp)
    80002888:	03010413          	addi	s0,sp,48
    8000288c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002890:	00000993          	li	s3,0
    80002894:	01c0006f          	j	800028b0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	a10080e7          	jalr	-1520(ra) # 800012a8 <_Z15thread_dispatchv>
    800028a0:	0500006f          	j	800028f0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800028a4:	00a00513          	li	a0,10
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	bcc080e7          	jalr	-1076(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    800028b0:	00008797          	auipc	a5,0x8
    800028b4:	e787a783          	lw	a5,-392(a5) # 8000a728 <_ZL9threadEnd>
    800028b8:	06079063          	bnez	a5,80002918 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800028bc:	00893503          	ld	a0,8(s2)
    800028c0:	00003097          	auipc	ra,0x3
    800028c4:	334080e7          	jalr	820(ra) # 80005bf4 <_ZN6Buffer3getEv>
        i++;
    800028c8:	0019849b          	addiw	s1,s3,1
    800028cc:	0004899b          	sext.w	s3,s1
        putc(key);
    800028d0:	0ff57513          	andi	a0,a0,255
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	ba0080e7          	jalr	-1120(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800028dc:	00092703          	lw	a4,0(s2)
    800028e0:	0027179b          	slliw	a5,a4,0x2
    800028e4:	00e787bb          	addw	a5,a5,a4
    800028e8:	02f4e7bb          	remw	a5,s1,a5
    800028ec:	fa0786e3          	beqz	a5,80002898 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800028f0:	05000793          	li	a5,80
    800028f4:	02f4e4bb          	remw	s1,s1,a5
    800028f8:	fa049ce3          	bnez	s1,800028b0 <_ZL8consumerPv+0x40>
    800028fc:	fa9ff06f          	j	800028a4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002900:	00893503          	ld	a0,8(s2)
    80002904:	00003097          	auipc	ra,0x3
    80002908:	2f0080e7          	jalr	752(ra) # 80005bf4 <_ZN6Buffer3getEv>
        putc(key);
    8000290c:	0ff57513          	andi	a0,a0,255
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	b64080e7          	jalr	-1180(ra) # 80001474 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002918:	00893503          	ld	a0,8(s2)
    8000291c:	00003097          	auipc	ra,0x3
    80002920:	364080e7          	jalr	868(ra) # 80005c80 <_ZN6Buffer6getCntEv>
    80002924:	fca04ee3          	bgtz	a0,80002900 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002928:	01093503          	ld	a0,16(s2)
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	ac8080e7          	jalr	-1336(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80002934:	02813083          	ld	ra,40(sp)
    80002938:	02013403          	ld	s0,32(sp)
    8000293c:	01813483          	ld	s1,24(sp)
    80002940:	01013903          	ld	s2,16(sp)
    80002944:	00813983          	ld	s3,8(sp)
    80002948:	03010113          	addi	sp,sp,48
    8000294c:	00008067          	ret

0000000080002950 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002950:	f9010113          	addi	sp,sp,-112
    80002954:	06113423          	sd	ra,104(sp)
    80002958:	06813023          	sd	s0,96(sp)
    8000295c:	04913c23          	sd	s1,88(sp)
    80002960:	05213823          	sd	s2,80(sp)
    80002964:	05313423          	sd	s3,72(sp)
    80002968:	05413023          	sd	s4,64(sp)
    8000296c:	03513c23          	sd	s5,56(sp)
    80002970:	03613823          	sd	s6,48(sp)
    80002974:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002978:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000297c:	00005517          	auipc	a0,0x5
    80002980:	74450513          	addi	a0,a0,1860 # 800080c0 <CONSOLE_STATUS+0xb0>
    80002984:	00002097          	auipc	ra,0x2
    80002988:	220080e7          	jalr	544(ra) # 80004ba4 <_Z11printStringPKc>
    getString(input, 30);
    8000298c:	01e00593          	li	a1,30
    80002990:	fa040493          	addi	s1,s0,-96
    80002994:	00048513          	mv	a0,s1
    80002998:	00002097          	auipc	ra,0x2
    8000299c:	294080e7          	jalr	660(ra) # 80004c2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800029a0:	00048513          	mv	a0,s1
    800029a4:	00002097          	auipc	ra,0x2
    800029a8:	360080e7          	jalr	864(ra) # 80004d04 <_Z11stringToIntPKc>
    800029ac:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800029b0:	00005517          	auipc	a0,0x5
    800029b4:	73050513          	addi	a0,a0,1840 # 800080e0 <CONSOLE_STATUS+0xd0>
    800029b8:	00002097          	auipc	ra,0x2
    800029bc:	1ec080e7          	jalr	492(ra) # 80004ba4 <_Z11printStringPKc>
    getString(input, 30);
    800029c0:	01e00593          	li	a1,30
    800029c4:	00048513          	mv	a0,s1
    800029c8:	00002097          	auipc	ra,0x2
    800029cc:	264080e7          	jalr	612(ra) # 80004c2c <_Z9getStringPci>
    n = stringToInt(input);
    800029d0:	00048513          	mv	a0,s1
    800029d4:	00002097          	auipc	ra,0x2
    800029d8:	330080e7          	jalr	816(ra) # 80004d04 <_Z11stringToIntPKc>
    800029dc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800029e0:	00005517          	auipc	a0,0x5
    800029e4:	72050513          	addi	a0,a0,1824 # 80008100 <CONSOLE_STATUS+0xf0>
    800029e8:	00002097          	auipc	ra,0x2
    800029ec:	1bc080e7          	jalr	444(ra) # 80004ba4 <_Z11printStringPKc>
    800029f0:	00000613          	li	a2,0
    800029f4:	00a00593          	li	a1,10
    800029f8:	00090513          	mv	a0,s2
    800029fc:	00002097          	auipc	ra,0x2
    80002a00:	358080e7          	jalr	856(ra) # 80004d54 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002a04:	00005517          	auipc	a0,0x5
    80002a08:	71450513          	addi	a0,a0,1812 # 80008118 <CONSOLE_STATUS+0x108>
    80002a0c:	00002097          	auipc	ra,0x2
    80002a10:	198080e7          	jalr	408(ra) # 80004ba4 <_Z11printStringPKc>
    80002a14:	00000613          	li	a2,0
    80002a18:	00a00593          	li	a1,10
    80002a1c:	00048513          	mv	a0,s1
    80002a20:	00002097          	auipc	ra,0x2
    80002a24:	334080e7          	jalr	820(ra) # 80004d54 <_Z8printIntiii>
    printString(".\n");
    80002a28:	00005517          	auipc	a0,0x5
    80002a2c:	70850513          	addi	a0,a0,1800 # 80008130 <CONSOLE_STATUS+0x120>
    80002a30:	00002097          	auipc	ra,0x2
    80002a34:	174080e7          	jalr	372(ra) # 80004ba4 <_Z11printStringPKc>
    if(threadNum > n) {
    80002a38:	0324c463          	blt	s1,s2,80002a60 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002a3c:	03205c63          	blez	s2,80002a74 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002a40:	03800513          	li	a0,56
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	1dc080e7          	jalr	476(ra) # 80001c20 <_Znwm>
    80002a4c:	00050a13          	mv	s4,a0
    80002a50:	00048593          	mv	a1,s1
    80002a54:	00003097          	auipc	ra,0x3
    80002a58:	074080e7          	jalr	116(ra) # 80005ac8 <_ZN6BufferC1Ei>
    80002a5c:	0300006f          	j	80002a8c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002a60:	00005517          	auipc	a0,0x5
    80002a64:	6d850513          	addi	a0,a0,1752 # 80008138 <CONSOLE_STATUS+0x128>
    80002a68:	00002097          	auipc	ra,0x2
    80002a6c:	13c080e7          	jalr	316(ra) # 80004ba4 <_Z11printStringPKc>
        return;
    80002a70:	0140006f          	j	80002a84 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002a74:	00005517          	auipc	a0,0x5
    80002a78:	70450513          	addi	a0,a0,1796 # 80008178 <CONSOLE_STATUS+0x168>
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	128080e7          	jalr	296(ra) # 80004ba4 <_Z11printStringPKc>
        return;
    80002a84:	000b0113          	mv	sp,s6
    80002a88:	1500006f          	j	80002bd8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002a8c:	00000593          	li	a1,0
    80002a90:	00008517          	auipc	a0,0x8
    80002a94:	ca050513          	addi	a0,a0,-864 # 8000a730 <_ZL10waitForAll>
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	8d4080e7          	jalr	-1836(ra) # 8000136c <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80002aa0:	00391793          	slli	a5,s2,0x3
    80002aa4:	00f78793          	addi	a5,a5,15
    80002aa8:	ff07f793          	andi	a5,a5,-16
    80002aac:	40f10133          	sub	sp,sp,a5
    80002ab0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002ab4:	0019071b          	addiw	a4,s2,1
    80002ab8:	00171793          	slli	a5,a4,0x1
    80002abc:	00e787b3          	add	a5,a5,a4
    80002ac0:	00379793          	slli	a5,a5,0x3
    80002ac4:	00f78793          	addi	a5,a5,15
    80002ac8:	ff07f793          	andi	a5,a5,-16
    80002acc:	40f10133          	sub	sp,sp,a5
    80002ad0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002ad4:	00191613          	slli	a2,s2,0x1
    80002ad8:	012607b3          	add	a5,a2,s2
    80002adc:	00379793          	slli	a5,a5,0x3
    80002ae0:	00f987b3          	add	a5,s3,a5
    80002ae4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002ae8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002aec:	00008717          	auipc	a4,0x8
    80002af0:	c4473703          	ld	a4,-956(a4) # 8000a730 <_ZL10waitForAll>
    80002af4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002af8:	00078613          	mv	a2,a5
    80002afc:	00000597          	auipc	a1,0x0
    80002b00:	d7458593          	addi	a1,a1,-652 # 80002870 <_ZL8consumerPv>
    80002b04:	f9840513          	addi	a0,s0,-104
    80002b08:	ffffe097          	auipc	ra,0xffffe
    80002b0c:	7e8080e7          	jalr	2024(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002b10:	00000493          	li	s1,0
    80002b14:	0280006f          	j	80002b3c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002b18:	00000597          	auipc	a1,0x0
    80002b1c:	c1458593          	addi	a1,a1,-1004 # 8000272c <_ZL16producerKeyboardPv>
                      data + i);
    80002b20:	00179613          	slli	a2,a5,0x1
    80002b24:	00f60633          	add	a2,a2,a5
    80002b28:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002b2c:	00c98633          	add	a2,s3,a2
    80002b30:	ffffe097          	auipc	ra,0xffffe
    80002b34:	7c0080e7          	jalr	1984(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002b38:	0014849b          	addiw	s1,s1,1
    80002b3c:	0524d263          	bge	s1,s2,80002b80 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002b40:	00149793          	slli	a5,s1,0x1
    80002b44:	009787b3          	add	a5,a5,s1
    80002b48:	00379793          	slli	a5,a5,0x3
    80002b4c:	00f987b3          	add	a5,s3,a5
    80002b50:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002b54:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002b58:	00008717          	auipc	a4,0x8
    80002b5c:	bd873703          	ld	a4,-1064(a4) # 8000a730 <_ZL10waitForAll>
    80002b60:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002b64:	00048793          	mv	a5,s1
    80002b68:	00349513          	slli	a0,s1,0x3
    80002b6c:	00aa8533          	add	a0,s5,a0
    80002b70:	fa9054e3          	blez	s1,80002b18 <_Z22producerConsumer_C_APIv+0x1c8>
    80002b74:	00000597          	auipc	a1,0x0
    80002b78:	c6858593          	addi	a1,a1,-920 # 800027dc <_ZL8producerPv>
    80002b7c:	fa5ff06f          	j	80002b20 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002b80:	ffffe097          	auipc	ra,0xffffe
    80002b84:	728080e7          	jalr	1832(ra) # 800012a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002b88:	00000493          	li	s1,0
    80002b8c:	00994e63          	blt	s2,s1,80002ba8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002b90:	00008517          	auipc	a0,0x8
    80002b94:	ba053503          	ld	a0,-1120(a0) # 8000a730 <_ZL10waitForAll>
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	830080e7          	jalr	-2000(ra) # 800013c8 <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80002ba0:	0014849b          	addiw	s1,s1,1
    80002ba4:	fe9ff06f          	j	80002b8c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002ba8:	00008517          	auipc	a0,0x8
    80002bac:	b8853503          	ld	a0,-1144(a0) # 8000a730 <_ZL10waitForAll>
    80002bb0:	ffffe097          	auipc	ra,0xffffe
    80002bb4:	7ec080e7          	jalr	2028(ra) # 8000139c <_Z9sem_closeP3sem>
    delete buffer;
    80002bb8:	000a0e63          	beqz	s4,80002bd4 <_Z22producerConsumer_C_APIv+0x284>
    80002bbc:	000a0513          	mv	a0,s4
    80002bc0:	00003097          	auipc	ra,0x3
    80002bc4:	148080e7          	jalr	328(ra) # 80005d08 <_ZN6BufferD1Ev>
    80002bc8:	000a0513          	mv	a0,s4
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	0a4080e7          	jalr	164(ra) # 80001c70 <_ZdlPv>
    80002bd4:	000b0113          	mv	sp,s6

}
    80002bd8:	f9040113          	addi	sp,s0,-112
    80002bdc:	06813083          	ld	ra,104(sp)
    80002be0:	06013403          	ld	s0,96(sp)
    80002be4:	05813483          	ld	s1,88(sp)
    80002be8:	05013903          	ld	s2,80(sp)
    80002bec:	04813983          	ld	s3,72(sp)
    80002bf0:	04013a03          	ld	s4,64(sp)
    80002bf4:	03813a83          	ld	s5,56(sp)
    80002bf8:	03013b03          	ld	s6,48(sp)
    80002bfc:	07010113          	addi	sp,sp,112
    80002c00:	00008067          	ret
    80002c04:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002c08:	000a0513          	mv	a0,s4
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	064080e7          	jalr	100(ra) # 80001c70 <_ZdlPv>
    80002c14:	00048513          	mv	a0,s1
    80002c18:	00009097          	auipc	ra,0x9
    80002c1c:	c30080e7          	jalr	-976(ra) # 8000b848 <_Unwind_Resume>

0000000080002c20 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002c20:	fe010113          	addi	sp,sp,-32
    80002c24:	00113c23          	sd	ra,24(sp)
    80002c28:	00813823          	sd	s0,16(sp)
    80002c2c:	00913423          	sd	s1,8(sp)
    80002c30:	01213023          	sd	s2,0(sp)
    80002c34:	02010413          	addi	s0,sp,32
    80002c38:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002c3c:	00100793          	li	a5,1
    80002c40:	02a7f863          	bgeu	a5,a0,80002c70 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002c44:	00a00793          	li	a5,10
    80002c48:	02f577b3          	remu	a5,a0,a5
    80002c4c:	02078e63          	beqz	a5,80002c88 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002c50:	fff48513          	addi	a0,s1,-1
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	fcc080e7          	jalr	-52(ra) # 80002c20 <_ZL9fibonaccim>
    80002c5c:	00050913          	mv	s2,a0
    80002c60:	ffe48513          	addi	a0,s1,-2
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	fbc080e7          	jalr	-68(ra) # 80002c20 <_ZL9fibonaccim>
    80002c6c:	00a90533          	add	a0,s2,a0
}
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	00013903          	ld	s2,0(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002c88:	ffffe097          	auipc	ra,0xffffe
    80002c8c:	620080e7          	jalr	1568(ra) # 800012a8 <_Z15thread_dispatchv>
    80002c90:	fc1ff06f          	j	80002c50 <_ZL9fibonaccim+0x30>

0000000080002c94 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002c94:	fe010113          	addi	sp,sp,-32
    80002c98:	00113c23          	sd	ra,24(sp)
    80002c9c:	00813823          	sd	s0,16(sp)
    80002ca0:	00913423          	sd	s1,8(sp)
    80002ca4:	01213023          	sd	s2,0(sp)
    80002ca8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002cac:	00000913          	li	s2,0
    80002cb0:	0380006f          	j	80002ce8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002cb4:	ffffe097          	auipc	ra,0xffffe
    80002cb8:	5f4080e7          	jalr	1524(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002cbc:	00148493          	addi	s1,s1,1
    80002cc0:	000027b7          	lui	a5,0x2
    80002cc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cc8:	0097ee63          	bltu	a5,s1,80002ce4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002ccc:	00000713          	li	a4,0
    80002cd0:	000077b7          	lui	a5,0x7
    80002cd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002cd8:	fce7eee3          	bltu	a5,a4,80002cb4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002cdc:	00170713          	addi	a4,a4,1
    80002ce0:	ff1ff06f          	j	80002cd0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ce4:	00190913          	addi	s2,s2,1
    80002ce8:	00900793          	li	a5,9
    80002cec:	0527e063          	bltu	a5,s2,80002d2c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002cf0:	00005517          	auipc	a0,0x5
    80002cf4:	4b850513          	addi	a0,a0,1208 # 800081a8 <CONSOLE_STATUS+0x198>
    80002cf8:	00002097          	auipc	ra,0x2
    80002cfc:	eac080e7          	jalr	-340(ra) # 80004ba4 <_Z11printStringPKc>
    80002d00:	00000613          	li	a2,0
    80002d04:	00a00593          	li	a1,10
    80002d08:	0009051b          	sext.w	a0,s2
    80002d0c:	00002097          	auipc	ra,0x2
    80002d10:	048080e7          	jalr	72(ra) # 80004d54 <_Z8printIntiii>
    80002d14:	00005517          	auipc	a0,0x5
    80002d18:	72450513          	addi	a0,a0,1828 # 80008438 <CONSOLE_STATUS+0x428>
    80002d1c:	00002097          	auipc	ra,0x2
    80002d20:	e88080e7          	jalr	-376(ra) # 80004ba4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d24:	00000493          	li	s1,0
    80002d28:	f99ff06f          	j	80002cc0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002d2c:	00005517          	auipc	a0,0x5
    80002d30:	48450513          	addi	a0,a0,1156 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80002d34:	00002097          	auipc	ra,0x2
    80002d38:	e70080e7          	jalr	-400(ra) # 80004ba4 <_Z11printStringPKc>
    finishedA = true;
    80002d3c:	00100793          	li	a5,1
    80002d40:	00008717          	auipc	a4,0x8
    80002d44:	9ef70c23          	sb	a5,-1544(a4) # 8000a738 <_ZL9finishedA>
}
    80002d48:	01813083          	ld	ra,24(sp)
    80002d4c:	01013403          	ld	s0,16(sp)
    80002d50:	00813483          	ld	s1,8(sp)
    80002d54:	00013903          	ld	s2,0(sp)
    80002d58:	02010113          	addi	sp,sp,32
    80002d5c:	00008067          	ret

0000000080002d60 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002d60:	fe010113          	addi	sp,sp,-32
    80002d64:	00113c23          	sd	ra,24(sp)
    80002d68:	00813823          	sd	s0,16(sp)
    80002d6c:	00913423          	sd	s1,8(sp)
    80002d70:	01213023          	sd	s2,0(sp)
    80002d74:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d78:	00000913          	li	s2,0
    80002d7c:	0380006f          	j	80002db4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002d80:	ffffe097          	auipc	ra,0xffffe
    80002d84:	528080e7          	jalr	1320(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d88:	00148493          	addi	s1,s1,1
    80002d8c:	000027b7          	lui	a5,0x2
    80002d90:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d94:	0097ee63          	bltu	a5,s1,80002db0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d98:	00000713          	li	a4,0
    80002d9c:	000077b7          	lui	a5,0x7
    80002da0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002da4:	fce7eee3          	bltu	a5,a4,80002d80 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002da8:	00170713          	addi	a4,a4,1
    80002dac:	ff1ff06f          	j	80002d9c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002db0:	00190913          	addi	s2,s2,1
    80002db4:	00f00793          	li	a5,15
    80002db8:	0527e063          	bltu	a5,s2,80002df8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002dbc:	00005517          	auipc	a0,0x5
    80002dc0:	40450513          	addi	a0,a0,1028 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80002dc4:	00002097          	auipc	ra,0x2
    80002dc8:	de0080e7          	jalr	-544(ra) # 80004ba4 <_Z11printStringPKc>
    80002dcc:	00000613          	li	a2,0
    80002dd0:	00a00593          	li	a1,10
    80002dd4:	0009051b          	sext.w	a0,s2
    80002dd8:	00002097          	auipc	ra,0x2
    80002ddc:	f7c080e7          	jalr	-132(ra) # 80004d54 <_Z8printIntiii>
    80002de0:	00005517          	auipc	a0,0x5
    80002de4:	65850513          	addi	a0,a0,1624 # 80008438 <CONSOLE_STATUS+0x428>
    80002de8:	00002097          	auipc	ra,0x2
    80002dec:	dbc080e7          	jalr	-580(ra) # 80004ba4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002df0:	00000493          	li	s1,0
    80002df4:	f99ff06f          	j	80002d8c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002df8:	00005517          	auipc	a0,0x5
    80002dfc:	3d050513          	addi	a0,a0,976 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80002e00:	00002097          	auipc	ra,0x2
    80002e04:	da4080e7          	jalr	-604(ra) # 80004ba4 <_Z11printStringPKc>
    finishedB = true;
    80002e08:	00100793          	li	a5,1
    80002e0c:	00008717          	auipc	a4,0x8
    80002e10:	92f706a3          	sb	a5,-1747(a4) # 8000a739 <_ZL9finishedB>
    thread_dispatch();
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	494080e7          	jalr	1172(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002e1c:	01813083          	ld	ra,24(sp)
    80002e20:	01013403          	ld	s0,16(sp)
    80002e24:	00813483          	ld	s1,8(sp)
    80002e28:	00013903          	ld	s2,0(sp)
    80002e2c:	02010113          	addi	sp,sp,32
    80002e30:	00008067          	ret

0000000080002e34 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002e34:	fe010113          	addi	sp,sp,-32
    80002e38:	00113c23          	sd	ra,24(sp)
    80002e3c:	00813823          	sd	s0,16(sp)
    80002e40:	00913423          	sd	s1,8(sp)
    80002e44:	01213023          	sd	s2,0(sp)
    80002e48:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002e4c:	00000493          	li	s1,0
    80002e50:	0400006f          	j	80002e90 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002e54:	00005517          	auipc	a0,0x5
    80002e58:	38450513          	addi	a0,a0,900 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80002e5c:	00002097          	auipc	ra,0x2
    80002e60:	d48080e7          	jalr	-696(ra) # 80004ba4 <_Z11printStringPKc>
    80002e64:	00000613          	li	a2,0
    80002e68:	00a00593          	li	a1,10
    80002e6c:	00048513          	mv	a0,s1
    80002e70:	00002097          	auipc	ra,0x2
    80002e74:	ee4080e7          	jalr	-284(ra) # 80004d54 <_Z8printIntiii>
    80002e78:	00005517          	auipc	a0,0x5
    80002e7c:	5c050513          	addi	a0,a0,1472 # 80008438 <CONSOLE_STATUS+0x428>
    80002e80:	00002097          	auipc	ra,0x2
    80002e84:	d24080e7          	jalr	-732(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002e88:	0014849b          	addiw	s1,s1,1
    80002e8c:	0ff4f493          	andi	s1,s1,255
    80002e90:	00200793          	li	a5,2
    80002e94:	fc97f0e3          	bgeu	a5,s1,80002e54 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002e98:	00005517          	auipc	a0,0x5
    80002e9c:	34850513          	addi	a0,a0,840 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80002ea0:	00002097          	auipc	ra,0x2
    80002ea4:	d04080e7          	jalr	-764(ra) # 80004ba4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002ea8:	00700313          	li	t1,7
    thread_dispatch();
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	3fc080e7          	jalr	1020(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002eb4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002eb8:	00005517          	auipc	a0,0x5
    80002ebc:	33850513          	addi	a0,a0,824 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80002ec0:	00002097          	auipc	ra,0x2
    80002ec4:	ce4080e7          	jalr	-796(ra) # 80004ba4 <_Z11printStringPKc>
    80002ec8:	00000613          	li	a2,0
    80002ecc:	00a00593          	li	a1,10
    80002ed0:	0009051b          	sext.w	a0,s2
    80002ed4:	00002097          	auipc	ra,0x2
    80002ed8:	e80080e7          	jalr	-384(ra) # 80004d54 <_Z8printIntiii>
    80002edc:	00005517          	auipc	a0,0x5
    80002ee0:	55c50513          	addi	a0,a0,1372 # 80008438 <CONSOLE_STATUS+0x428>
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	cc0080e7          	jalr	-832(ra) # 80004ba4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002eec:	00c00513          	li	a0,12
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	d30080e7          	jalr	-720(ra) # 80002c20 <_ZL9fibonaccim>
    80002ef8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002efc:	00005517          	auipc	a0,0x5
    80002f00:	2fc50513          	addi	a0,a0,764 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80002f04:	00002097          	auipc	ra,0x2
    80002f08:	ca0080e7          	jalr	-864(ra) # 80004ba4 <_Z11printStringPKc>
    80002f0c:	00000613          	li	a2,0
    80002f10:	00a00593          	li	a1,10
    80002f14:	0009051b          	sext.w	a0,s2
    80002f18:	00002097          	auipc	ra,0x2
    80002f1c:	e3c080e7          	jalr	-452(ra) # 80004d54 <_Z8printIntiii>
    80002f20:	00005517          	auipc	a0,0x5
    80002f24:	51850513          	addi	a0,a0,1304 # 80008438 <CONSOLE_STATUS+0x428>
    80002f28:	00002097          	auipc	ra,0x2
    80002f2c:	c7c080e7          	jalr	-900(ra) # 80004ba4 <_Z11printStringPKc>
    80002f30:	0400006f          	j	80002f70 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002f34:	00005517          	auipc	a0,0x5
    80002f38:	2a450513          	addi	a0,a0,676 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80002f3c:	00002097          	auipc	ra,0x2
    80002f40:	c68080e7          	jalr	-920(ra) # 80004ba4 <_Z11printStringPKc>
    80002f44:	00000613          	li	a2,0
    80002f48:	00a00593          	li	a1,10
    80002f4c:	00048513          	mv	a0,s1
    80002f50:	00002097          	auipc	ra,0x2
    80002f54:	e04080e7          	jalr	-508(ra) # 80004d54 <_Z8printIntiii>
    80002f58:	00005517          	auipc	a0,0x5
    80002f5c:	4e050513          	addi	a0,a0,1248 # 80008438 <CONSOLE_STATUS+0x428>
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	c44080e7          	jalr	-956(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002f68:	0014849b          	addiw	s1,s1,1
    80002f6c:	0ff4f493          	andi	s1,s1,255
    80002f70:	00500793          	li	a5,5
    80002f74:	fc97f0e3          	bgeu	a5,s1,80002f34 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80002f78:	00005517          	auipc	a0,0x5
    80002f7c:	29050513          	addi	a0,a0,656 # 80008208 <CONSOLE_STATUS+0x1f8>
    80002f80:	00002097          	auipc	ra,0x2
    80002f84:	c24080e7          	jalr	-988(ra) # 80004ba4 <_Z11printStringPKc>
    finishedC = true;
    80002f88:	00100793          	li	a5,1
    80002f8c:	00007717          	auipc	a4,0x7
    80002f90:	7af70723          	sb	a5,1966(a4) # 8000a73a <_ZL9finishedC>
    thread_dispatch();
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	314080e7          	jalr	788(ra) # 800012a8 <_Z15thread_dispatchv>

}
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	00013903          	ld	s2,0(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002fb4:	fe010113          	addi	sp,sp,-32
    80002fb8:	00113c23          	sd	ra,24(sp)
    80002fbc:	00813823          	sd	s0,16(sp)
    80002fc0:	00913423          	sd	s1,8(sp)
    80002fc4:	01213023          	sd	s2,0(sp)
    80002fc8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002fcc:	00a00493          	li	s1,10
    80002fd0:	0400006f          	j	80003010 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002fd4:	00005517          	auipc	a0,0x5
    80002fd8:	24450513          	addi	a0,a0,580 # 80008218 <CONSOLE_STATUS+0x208>
    80002fdc:	00002097          	auipc	ra,0x2
    80002fe0:	bc8080e7          	jalr	-1080(ra) # 80004ba4 <_Z11printStringPKc>
    80002fe4:	00000613          	li	a2,0
    80002fe8:	00a00593          	li	a1,10
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00002097          	auipc	ra,0x2
    80002ff4:	d64080e7          	jalr	-668(ra) # 80004d54 <_Z8printIntiii>
    80002ff8:	00005517          	auipc	a0,0x5
    80002ffc:	44050513          	addi	a0,a0,1088 # 80008438 <CONSOLE_STATUS+0x428>
    80003000:	00002097          	auipc	ra,0x2
    80003004:	ba4080e7          	jalr	-1116(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003008:	0014849b          	addiw	s1,s1,1
    8000300c:	0ff4f493          	andi	s1,s1,255
    80003010:	00c00793          	li	a5,12
    80003014:	fc97f0e3          	bgeu	a5,s1,80002fd4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003018:	00005517          	auipc	a0,0x5
    8000301c:	20850513          	addi	a0,a0,520 # 80008220 <CONSOLE_STATUS+0x210>
    80003020:	00002097          	auipc	ra,0x2
    80003024:	b84080e7          	jalr	-1148(ra) # 80004ba4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003028:	00500313          	li	t1,5
    thread_dispatch();
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	27c080e7          	jalr	636(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003034:	01000513          	li	a0,16
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	be8080e7          	jalr	-1048(ra) # 80002c20 <_ZL9fibonaccim>
    80003040:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003044:	00005517          	auipc	a0,0x5
    80003048:	1ec50513          	addi	a0,a0,492 # 80008230 <CONSOLE_STATUS+0x220>
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	b58080e7          	jalr	-1192(ra) # 80004ba4 <_Z11printStringPKc>
    80003054:	00000613          	li	a2,0
    80003058:	00a00593          	li	a1,10
    8000305c:	0009051b          	sext.w	a0,s2
    80003060:	00002097          	auipc	ra,0x2
    80003064:	cf4080e7          	jalr	-780(ra) # 80004d54 <_Z8printIntiii>
    80003068:	00005517          	auipc	a0,0x5
    8000306c:	3d050513          	addi	a0,a0,976 # 80008438 <CONSOLE_STATUS+0x428>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	b34080e7          	jalr	-1228(ra) # 80004ba4 <_Z11printStringPKc>
    80003078:	0400006f          	j	800030b8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000307c:	00005517          	auipc	a0,0x5
    80003080:	19c50513          	addi	a0,a0,412 # 80008218 <CONSOLE_STATUS+0x208>
    80003084:	00002097          	auipc	ra,0x2
    80003088:	b20080e7          	jalr	-1248(ra) # 80004ba4 <_Z11printStringPKc>
    8000308c:	00000613          	li	a2,0
    80003090:	00a00593          	li	a1,10
    80003094:	00048513          	mv	a0,s1
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	cbc080e7          	jalr	-836(ra) # 80004d54 <_Z8printIntiii>
    800030a0:	00005517          	auipc	a0,0x5
    800030a4:	39850513          	addi	a0,a0,920 # 80008438 <CONSOLE_STATUS+0x428>
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	afc080e7          	jalr	-1284(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800030b0:	0014849b          	addiw	s1,s1,1
    800030b4:	0ff4f493          	andi	s1,s1,255
    800030b8:	00f00793          	li	a5,15
    800030bc:	fc97f0e3          	bgeu	a5,s1,8000307c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800030c0:	00005517          	auipc	a0,0x5
    800030c4:	18050513          	addi	a0,a0,384 # 80008240 <CONSOLE_STATUS+0x230>
    800030c8:	00002097          	auipc	ra,0x2
    800030cc:	adc080e7          	jalr	-1316(ra) # 80004ba4 <_Z11printStringPKc>
    finishedD = true;
    800030d0:	00100793          	li	a5,1
    800030d4:	00007717          	auipc	a4,0x7
    800030d8:	66f703a3          	sb	a5,1639(a4) # 8000a73b <_ZL9finishedD>
    thread_dispatch();
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	1cc080e7          	jalr	460(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800030e4:	01813083          	ld	ra,24(sp)
    800030e8:	01013403          	ld	s0,16(sp)
    800030ec:	00813483          	ld	s1,8(sp)
    800030f0:	00013903          	ld	s2,0(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret

00000000800030fc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800030fc:	fc010113          	addi	sp,sp,-64
    80003100:	02113c23          	sd	ra,56(sp)
    80003104:	02813823          	sd	s0,48(sp)
    80003108:	02913423          	sd	s1,40(sp)
    8000310c:	03213023          	sd	s2,32(sp)
    80003110:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003114:	02000513          	li	a0,32
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	b08080e7          	jalr	-1272(ra) # 80001c20 <_Znwm>
    80003120:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003124:	fffff097          	auipc	ra,0xfffff
    80003128:	d80080e7          	jalr	-640(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    8000312c:	00007797          	auipc	a5,0x7
    80003130:	3b478793          	addi	a5,a5,948 # 8000a4e0 <_ZTV7WorkerA+0x10>
    80003134:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003138:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000313c:	00005517          	auipc	a0,0x5
    80003140:	11450513          	addi	a0,a0,276 # 80008250 <CONSOLE_STATUS+0x240>
    80003144:	00002097          	auipc	ra,0x2
    80003148:	a60080e7          	jalr	-1440(ra) # 80004ba4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000314c:	02000513          	li	a0,32
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	ad0080e7          	jalr	-1328(ra) # 80001c20 <_Znwm>
    80003158:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	d48080e7          	jalr	-696(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    80003164:	00007797          	auipc	a5,0x7
    80003168:	3a478793          	addi	a5,a5,932 # 8000a508 <_ZTV7WorkerB+0x10>
    8000316c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003170:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003174:	00005517          	auipc	a0,0x5
    80003178:	0f450513          	addi	a0,a0,244 # 80008268 <CONSOLE_STATUS+0x258>
    8000317c:	00002097          	auipc	ra,0x2
    80003180:	a28080e7          	jalr	-1496(ra) # 80004ba4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003184:	02000513          	li	a0,32
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	a98080e7          	jalr	-1384(ra) # 80001c20 <_Znwm>
    80003190:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	d10080e7          	jalr	-752(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    8000319c:	00007797          	auipc	a5,0x7
    800031a0:	39478793          	addi	a5,a5,916 # 8000a530 <_ZTV7WorkerC+0x10>
    800031a4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800031a8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800031ac:	00005517          	auipc	a0,0x5
    800031b0:	0d450513          	addi	a0,a0,212 # 80008280 <CONSOLE_STATUS+0x270>
    800031b4:	00002097          	auipc	ra,0x2
    800031b8:	9f0080e7          	jalr	-1552(ra) # 80004ba4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800031bc:	02000513          	li	a0,32
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	a60080e7          	jalr	-1440(ra) # 80001c20 <_Znwm>
    800031c8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	cd8080e7          	jalr	-808(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    800031d4:	00007797          	auipc	a5,0x7
    800031d8:	38478793          	addi	a5,a5,900 # 8000a558 <_ZTV7WorkerD+0x10>
    800031dc:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800031e0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800031e4:	00005517          	auipc	a0,0x5
    800031e8:	0b450513          	addi	a0,a0,180 # 80008298 <CONSOLE_STATUS+0x288>
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	9b8080e7          	jalr	-1608(ra) # 80004ba4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800031f4:	00000493          	li	s1,0
    800031f8:	00300793          	li	a5,3
    800031fc:	0297c663          	blt	a5,s1,80003228 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003200:	00349793          	slli	a5,s1,0x3
    80003204:	fe040713          	addi	a4,s0,-32
    80003208:	00f707b3          	add	a5,a4,a5
    8000320c:	fe07b503          	ld	a0,-32(a5)
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	c04080e7          	jalr	-1020(ra) # 80001e14 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003218:	0014849b          	addiw	s1,s1,1
    8000321c:	fddff06f          	j	800031f8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	c30080e7          	jalr	-976(ra) # 80001e50 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003228:	00007797          	auipc	a5,0x7
    8000322c:	5107c783          	lbu	a5,1296(a5) # 8000a738 <_ZL9finishedA>
    80003230:	fe0788e3          	beqz	a5,80003220 <_Z20Threads_CPP_API_testv+0x124>
    80003234:	00007797          	auipc	a5,0x7
    80003238:	5057c783          	lbu	a5,1285(a5) # 8000a739 <_ZL9finishedB>
    8000323c:	fe0782e3          	beqz	a5,80003220 <_Z20Threads_CPP_API_testv+0x124>
    80003240:	00007797          	auipc	a5,0x7
    80003244:	4fa7c783          	lbu	a5,1274(a5) # 8000a73a <_ZL9finishedC>
    80003248:	fc078ce3          	beqz	a5,80003220 <_Z20Threads_CPP_API_testv+0x124>
    8000324c:	00007797          	auipc	a5,0x7
    80003250:	4ef7c783          	lbu	a5,1263(a5) # 8000a73b <_ZL9finishedD>
    80003254:	fc0786e3          	beqz	a5,80003220 <_Z20Threads_CPP_API_testv+0x124>
    80003258:	fc040493          	addi	s1,s0,-64
    8000325c:	0080006f          	j	80003264 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003260:	00848493          	addi	s1,s1,8
    80003264:	fe040793          	addi	a5,s0,-32
    80003268:	08f48663          	beq	s1,a5,800032f4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000326c:	0004b503          	ld	a0,0(s1)
    80003270:	fe0508e3          	beqz	a0,80003260 <_Z20Threads_CPP_API_testv+0x164>
    80003274:	00053783          	ld	a5,0(a0)
    80003278:	0087b783          	ld	a5,8(a5)
    8000327c:	000780e7          	jalr	a5
    80003280:	fe1ff06f          	j	80003260 <_Z20Threads_CPP_API_testv+0x164>
    80003284:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003288:	00048513          	mv	a0,s1
    8000328c:	fffff097          	auipc	ra,0xfffff
    80003290:	9e4080e7          	jalr	-1564(ra) # 80001c70 <_ZdlPv>
    80003294:	00090513          	mv	a0,s2
    80003298:	00008097          	auipc	ra,0x8
    8000329c:	5b0080e7          	jalr	1456(ra) # 8000b848 <_Unwind_Resume>
    800032a0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800032a4:	00048513          	mv	a0,s1
    800032a8:	fffff097          	auipc	ra,0xfffff
    800032ac:	9c8080e7          	jalr	-1592(ra) # 80001c70 <_ZdlPv>
    800032b0:	00090513          	mv	a0,s2
    800032b4:	00008097          	auipc	ra,0x8
    800032b8:	594080e7          	jalr	1428(ra) # 8000b848 <_Unwind_Resume>
    800032bc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800032c0:	00048513          	mv	a0,s1
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	9ac080e7          	jalr	-1620(ra) # 80001c70 <_ZdlPv>
    800032cc:	00090513          	mv	a0,s2
    800032d0:	00008097          	auipc	ra,0x8
    800032d4:	578080e7          	jalr	1400(ra) # 8000b848 <_Unwind_Resume>
    800032d8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800032dc:	00048513          	mv	a0,s1
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	990080e7          	jalr	-1648(ra) # 80001c70 <_ZdlPv>
    800032e8:	00090513          	mv	a0,s2
    800032ec:	00008097          	auipc	ra,0x8
    800032f0:	55c080e7          	jalr	1372(ra) # 8000b848 <_Unwind_Resume>
}
    800032f4:	03813083          	ld	ra,56(sp)
    800032f8:	03013403          	ld	s0,48(sp)
    800032fc:	02813483          	ld	s1,40(sp)
    80003300:	02013903          	ld	s2,32(sp)
    80003304:	04010113          	addi	sp,sp,64
    80003308:	00008067          	ret

000000008000330c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00113423          	sd	ra,8(sp)
    80003314:	00813023          	sd	s0,0(sp)
    80003318:	01010413          	addi	s0,sp,16
    8000331c:	00007797          	auipc	a5,0x7
    80003320:	1c478793          	addi	a5,a5,452 # 8000a4e0 <_ZTV7WorkerA+0x10>
    80003324:	00f53023          	sd	a5,0(a0)
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	9c4080e7          	jalr	-1596(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003330:	00813083          	ld	ra,8(sp)
    80003334:	00013403          	ld	s0,0(sp)
    80003338:	01010113          	addi	sp,sp,16
    8000333c:	00008067          	ret

0000000080003340 <_ZN7WorkerAD0Ev>:
    80003340:	fe010113          	addi	sp,sp,-32
    80003344:	00113c23          	sd	ra,24(sp)
    80003348:	00813823          	sd	s0,16(sp)
    8000334c:	00913423          	sd	s1,8(sp)
    80003350:	02010413          	addi	s0,sp,32
    80003354:	00050493          	mv	s1,a0
    80003358:	00007797          	auipc	a5,0x7
    8000335c:	18878793          	addi	a5,a5,392 # 8000a4e0 <_ZTV7WorkerA+0x10>
    80003360:	00f53023          	sd	a5,0(a0)
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	988080e7          	jalr	-1656(ra) # 80001cec <_ZN6ThreadD1Ev>
    8000336c:	00048513          	mv	a0,s1
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	900080e7          	jalr	-1792(ra) # 80001c70 <_ZdlPv>
    80003378:	01813083          	ld	ra,24(sp)
    8000337c:	01013403          	ld	s0,16(sp)
    80003380:	00813483          	ld	s1,8(sp)
    80003384:	02010113          	addi	sp,sp,32
    80003388:	00008067          	ret

000000008000338c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00113423          	sd	ra,8(sp)
    80003394:	00813023          	sd	s0,0(sp)
    80003398:	01010413          	addi	s0,sp,16
    8000339c:	00007797          	auipc	a5,0x7
    800033a0:	16c78793          	addi	a5,a5,364 # 8000a508 <_ZTV7WorkerB+0x10>
    800033a4:	00f53023          	sd	a5,0(a0)
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	944080e7          	jalr	-1724(ra) # 80001cec <_ZN6ThreadD1Ev>
    800033b0:	00813083          	ld	ra,8(sp)
    800033b4:	00013403          	ld	s0,0(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <_ZN7WorkerBD0Ev>:
    800033c0:	fe010113          	addi	sp,sp,-32
    800033c4:	00113c23          	sd	ra,24(sp)
    800033c8:	00813823          	sd	s0,16(sp)
    800033cc:	00913423          	sd	s1,8(sp)
    800033d0:	02010413          	addi	s0,sp,32
    800033d4:	00050493          	mv	s1,a0
    800033d8:	00007797          	auipc	a5,0x7
    800033dc:	13078793          	addi	a5,a5,304 # 8000a508 <_ZTV7WorkerB+0x10>
    800033e0:	00f53023          	sd	a5,0(a0)
    800033e4:	fffff097          	auipc	ra,0xfffff
    800033e8:	908080e7          	jalr	-1784(ra) # 80001cec <_ZN6ThreadD1Ev>
    800033ec:	00048513          	mv	a0,s1
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	880080e7          	jalr	-1920(ra) # 80001c70 <_ZdlPv>
    800033f8:	01813083          	ld	ra,24(sp)
    800033fc:	01013403          	ld	s0,16(sp)
    80003400:	00813483          	ld	s1,8(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret

000000008000340c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000340c:	ff010113          	addi	sp,sp,-16
    80003410:	00113423          	sd	ra,8(sp)
    80003414:	00813023          	sd	s0,0(sp)
    80003418:	01010413          	addi	s0,sp,16
    8000341c:	00007797          	auipc	a5,0x7
    80003420:	11478793          	addi	a5,a5,276 # 8000a530 <_ZTV7WorkerC+0x10>
    80003424:	00f53023          	sd	a5,0(a0)
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	8c4080e7          	jalr	-1852(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003430:	00813083          	ld	ra,8(sp)
    80003434:	00013403          	ld	s0,0(sp)
    80003438:	01010113          	addi	sp,sp,16
    8000343c:	00008067          	ret

0000000080003440 <_ZN7WorkerCD0Ev>:
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00113c23          	sd	ra,24(sp)
    80003448:	00813823          	sd	s0,16(sp)
    8000344c:	00913423          	sd	s1,8(sp)
    80003450:	02010413          	addi	s0,sp,32
    80003454:	00050493          	mv	s1,a0
    80003458:	00007797          	auipc	a5,0x7
    8000345c:	0d878793          	addi	a5,a5,216 # 8000a530 <_ZTV7WorkerC+0x10>
    80003460:	00f53023          	sd	a5,0(a0)
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	888080e7          	jalr	-1912(ra) # 80001cec <_ZN6ThreadD1Ev>
    8000346c:	00048513          	mv	a0,s1
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	800080e7          	jalr	-2048(ra) # 80001c70 <_ZdlPv>
    80003478:	01813083          	ld	ra,24(sp)
    8000347c:	01013403          	ld	s0,16(sp)
    80003480:	00813483          	ld	s1,8(sp)
    80003484:	02010113          	addi	sp,sp,32
    80003488:	00008067          	ret

000000008000348c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00113423          	sd	ra,8(sp)
    80003494:	00813023          	sd	s0,0(sp)
    80003498:	01010413          	addi	s0,sp,16
    8000349c:	00007797          	auipc	a5,0x7
    800034a0:	0bc78793          	addi	a5,a5,188 # 8000a558 <_ZTV7WorkerD+0x10>
    800034a4:	00f53023          	sd	a5,0(a0)
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	844080e7          	jalr	-1980(ra) # 80001cec <_ZN6ThreadD1Ev>
    800034b0:	00813083          	ld	ra,8(sp)
    800034b4:	00013403          	ld	s0,0(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <_ZN7WorkerDD0Ev>:
    800034c0:	fe010113          	addi	sp,sp,-32
    800034c4:	00113c23          	sd	ra,24(sp)
    800034c8:	00813823          	sd	s0,16(sp)
    800034cc:	00913423          	sd	s1,8(sp)
    800034d0:	02010413          	addi	s0,sp,32
    800034d4:	00050493          	mv	s1,a0
    800034d8:	00007797          	auipc	a5,0x7
    800034dc:	08078793          	addi	a5,a5,128 # 8000a558 <_ZTV7WorkerD+0x10>
    800034e0:	00f53023          	sd	a5,0(a0)
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	808080e7          	jalr	-2040(ra) # 80001cec <_ZN6ThreadD1Ev>
    800034ec:	00048513          	mv	a0,s1
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	780080e7          	jalr	1920(ra) # 80001c70 <_ZdlPv>
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret

000000008000350c <_ZN7WorkerA3runEv>:
    void run() override {
    8000350c:	ff010113          	addi	sp,sp,-16
    80003510:	00113423          	sd	ra,8(sp)
    80003514:	00813023          	sd	s0,0(sp)
    80003518:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000351c:	00000593          	li	a1,0
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	774080e7          	jalr	1908(ra) # 80002c94 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003528:	00813083          	ld	ra,8(sp)
    8000352c:	00013403          	ld	s0,0(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <_ZN7WorkerB3runEv>:
    void run() override {
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00113423          	sd	ra,8(sp)
    80003540:	00813023          	sd	s0,0(sp)
    80003544:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003548:	00000593          	li	a1,0
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	814080e7          	jalr	-2028(ra) # 80002d60 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003554:	00813083          	ld	ra,8(sp)
    80003558:	00013403          	ld	s0,0(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN7WorkerC3runEv>:
    void run() override {
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00113423          	sd	ra,8(sp)
    8000356c:	00813023          	sd	s0,0(sp)
    80003570:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003574:	00000593          	li	a1,0
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	8bc080e7          	jalr	-1860(ra) # 80002e34 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003580:	00813083          	ld	ra,8(sp)
    80003584:	00013403          	ld	s0,0(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret

0000000080003590 <_ZN7WorkerD3runEv>:
    void run() override {
    80003590:	ff010113          	addi	sp,sp,-16
    80003594:	00113423          	sd	ra,8(sp)
    80003598:	00813023          	sd	s0,0(sp)
    8000359c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800035a0:	00000593          	li	a1,0
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	a10080e7          	jalr	-1520(ra) # 80002fb4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800035ac:	00813083          	ld	ra,8(sp)
    800035b0:	00013403          	ld	s0,0(sp)
    800035b4:	01010113          	addi	sp,sp,16
    800035b8:	00008067          	ret

00000000800035bc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800035bc:	f8010113          	addi	sp,sp,-128
    800035c0:	06113c23          	sd	ra,120(sp)
    800035c4:	06813823          	sd	s0,112(sp)
    800035c8:	06913423          	sd	s1,104(sp)
    800035cc:	07213023          	sd	s2,96(sp)
    800035d0:	05313c23          	sd	s3,88(sp)
    800035d4:	05413823          	sd	s4,80(sp)
    800035d8:	05513423          	sd	s5,72(sp)
    800035dc:	05613023          	sd	s6,64(sp)
    800035e0:	03713c23          	sd	s7,56(sp)
    800035e4:	03813823          	sd	s8,48(sp)
    800035e8:	03913423          	sd	s9,40(sp)
    800035ec:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800035f0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800035f4:	00005517          	auipc	a0,0x5
    800035f8:	acc50513          	addi	a0,a0,-1332 # 800080c0 <CONSOLE_STATUS+0xb0>
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	5a8080e7          	jalr	1448(ra) # 80004ba4 <_Z11printStringPKc>
    getString(input, 30);
    80003604:	01e00593          	li	a1,30
    80003608:	f8040493          	addi	s1,s0,-128
    8000360c:	00048513          	mv	a0,s1
    80003610:	00001097          	auipc	ra,0x1
    80003614:	61c080e7          	jalr	1564(ra) # 80004c2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003618:	00048513          	mv	a0,s1
    8000361c:	00001097          	auipc	ra,0x1
    80003620:	6e8080e7          	jalr	1768(ra) # 80004d04 <_Z11stringToIntPKc>
    80003624:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003628:	00005517          	auipc	a0,0x5
    8000362c:	ab850513          	addi	a0,a0,-1352 # 800080e0 <CONSOLE_STATUS+0xd0>
    80003630:	00001097          	auipc	ra,0x1
    80003634:	574080e7          	jalr	1396(ra) # 80004ba4 <_Z11printStringPKc>
    getString(input, 30);
    80003638:	01e00593          	li	a1,30
    8000363c:	00048513          	mv	a0,s1
    80003640:	00001097          	auipc	ra,0x1
    80003644:	5ec080e7          	jalr	1516(ra) # 80004c2c <_Z9getStringPci>
    n = stringToInt(input);
    80003648:	00048513          	mv	a0,s1
    8000364c:	00001097          	auipc	ra,0x1
    80003650:	6b8080e7          	jalr	1720(ra) # 80004d04 <_Z11stringToIntPKc>
    80003654:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003658:	00005517          	auipc	a0,0x5
    8000365c:	aa850513          	addi	a0,a0,-1368 # 80008100 <CONSOLE_STATUS+0xf0>
    80003660:	00001097          	auipc	ra,0x1
    80003664:	544080e7          	jalr	1348(ra) # 80004ba4 <_Z11printStringPKc>
    printInt(threadNum);
    80003668:	00000613          	li	a2,0
    8000366c:	00a00593          	li	a1,10
    80003670:	00098513          	mv	a0,s3
    80003674:	00001097          	auipc	ra,0x1
    80003678:	6e0080e7          	jalr	1760(ra) # 80004d54 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000367c:	00005517          	auipc	a0,0x5
    80003680:	a9c50513          	addi	a0,a0,-1380 # 80008118 <CONSOLE_STATUS+0x108>
    80003684:	00001097          	auipc	ra,0x1
    80003688:	520080e7          	jalr	1312(ra) # 80004ba4 <_Z11printStringPKc>
    printInt(n);
    8000368c:	00000613          	li	a2,0
    80003690:	00a00593          	li	a1,10
    80003694:	00048513          	mv	a0,s1
    80003698:	00001097          	auipc	ra,0x1
    8000369c:	6bc080e7          	jalr	1724(ra) # 80004d54 <_Z8printIntiii>
    printString(".\n");
    800036a0:	00005517          	auipc	a0,0x5
    800036a4:	a9050513          	addi	a0,a0,-1392 # 80008130 <CONSOLE_STATUS+0x120>
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	4fc080e7          	jalr	1276(ra) # 80004ba4 <_Z11printStringPKc>
    if (threadNum > n) {
    800036b0:	0334c463          	blt	s1,s3,800036d8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800036b4:	03305c63          	blez	s3,800036ec <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800036b8:	03800513          	li	a0,56
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	564080e7          	jalr	1380(ra) # 80001c20 <_Znwm>
    800036c4:	00050a93          	mv	s5,a0
    800036c8:	00048593          	mv	a1,s1
    800036cc:	00001097          	auipc	ra,0x1
    800036d0:	7a8080e7          	jalr	1960(ra) # 80004e74 <_ZN9BufferCPPC1Ei>
    800036d4:	0300006f          	j	80003704 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036d8:	00005517          	auipc	a0,0x5
    800036dc:	a6050513          	addi	a0,a0,-1440 # 80008138 <CONSOLE_STATUS+0x128>
    800036e0:	00001097          	auipc	ra,0x1
    800036e4:	4c4080e7          	jalr	1220(ra) # 80004ba4 <_Z11printStringPKc>
        return;
    800036e8:	0140006f          	j	800036fc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800036ec:	00005517          	auipc	a0,0x5
    800036f0:	a8c50513          	addi	a0,a0,-1396 # 80008178 <CONSOLE_STATUS+0x168>
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	4b0080e7          	jalr	1200(ra) # 80004ba4 <_Z11printStringPKc>
        return;
    800036fc:	000c0113          	mv	sp,s8
    80003700:	2140006f          	j	80003914 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003704:	01000513          	li	a0,16
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	518080e7          	jalr	1304(ra) # 80001c20 <_Znwm>
    80003710:	00050913          	mv	s2,a0
    80003714:	00000593          	li	a1,0
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	7c0080e7          	jalr	1984(ra) # 80001ed8 <_ZN9SemaphoreC1Ej>
    80003720:	00007797          	auipc	a5,0x7
    80003724:	0327b423          	sd	s2,40(a5) # 8000a748 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003728:	00399793          	slli	a5,s3,0x3
    8000372c:	00f78793          	addi	a5,a5,15
    80003730:	ff07f793          	andi	a5,a5,-16
    80003734:	40f10133          	sub	sp,sp,a5
    80003738:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000373c:	0019871b          	addiw	a4,s3,1
    80003740:	00171793          	slli	a5,a4,0x1
    80003744:	00e787b3          	add	a5,a5,a4
    80003748:	00379793          	slli	a5,a5,0x3
    8000374c:	00f78793          	addi	a5,a5,15
    80003750:	ff07f793          	andi	a5,a5,-16
    80003754:	40f10133          	sub	sp,sp,a5
    80003758:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000375c:	00199493          	slli	s1,s3,0x1
    80003760:	013484b3          	add	s1,s1,s3
    80003764:	00349493          	slli	s1,s1,0x3
    80003768:	009b04b3          	add	s1,s6,s1
    8000376c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003770:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003774:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003778:	02800513          	li	a0,40
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	4a4080e7          	jalr	1188(ra) # 80001c20 <_Znwm>
    80003784:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	71c080e7          	jalr	1820(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    80003790:	00007797          	auipc	a5,0x7
    80003794:	e4078793          	addi	a5,a5,-448 # 8000a5d0 <_ZTV8Consumer+0x10>
    80003798:	00fbb023          	sd	a5,0(s7)
    8000379c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800037a0:	000b8513          	mv	a0,s7
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	670080e7          	jalr	1648(ra) # 80001e14 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800037ac:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800037b0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800037b4:	00007797          	auipc	a5,0x7
    800037b8:	f947b783          	ld	a5,-108(a5) # 8000a748 <_ZL10waitForAll>
    800037bc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800037c0:	02800513          	li	a0,40
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	45c080e7          	jalr	1116(ra) # 80001c20 <_Znwm>
    800037cc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	6d4080e7          	jalr	1748(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    800037d8:	00007797          	auipc	a5,0x7
    800037dc:	da878793          	addi	a5,a5,-600 # 8000a580 <_ZTV16ProducerKeyborad+0x10>
    800037e0:	00f4b023          	sd	a5,0(s1)
    800037e4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800037e8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800037ec:	00048513          	mv	a0,s1
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	624080e7          	jalr	1572(ra) # 80001e14 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800037f8:	00100913          	li	s2,1
    800037fc:	0300006f          	j	8000382c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003800:	00007797          	auipc	a5,0x7
    80003804:	da878793          	addi	a5,a5,-600 # 8000a5a8 <_ZTV8Producer+0x10>
    80003808:	00fcb023          	sd	a5,0(s9)
    8000380c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003810:	00391793          	slli	a5,s2,0x3
    80003814:	00fa07b3          	add	a5,s4,a5
    80003818:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000381c:	000c8513          	mv	a0,s9
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	5f4080e7          	jalr	1524(ra) # 80001e14 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003828:	0019091b          	addiw	s2,s2,1
    8000382c:	05395263          	bge	s2,s3,80003870 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003830:	00191493          	slli	s1,s2,0x1
    80003834:	012484b3          	add	s1,s1,s2
    80003838:	00349493          	slli	s1,s1,0x3
    8000383c:	009b04b3          	add	s1,s6,s1
    80003840:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003844:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003848:	00007797          	auipc	a5,0x7
    8000384c:	f007b783          	ld	a5,-256(a5) # 8000a748 <_ZL10waitForAll>
    80003850:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003854:	02800513          	li	a0,40
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	3c8080e7          	jalr	968(ra) # 80001c20 <_Znwm>
    80003860:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	640080e7          	jalr	1600(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    8000386c:	f95ff06f          	j	80003800 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	5e0080e7          	jalr	1504(ra) # 80001e50 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003878:	00000493          	li	s1,0
    8000387c:	0099ce63          	blt	s3,s1,80003898 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003880:	00007517          	auipc	a0,0x7
    80003884:	ec853503          	ld	a0,-312(a0) # 8000a748 <_ZL10waitForAll>
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	688080e7          	jalr	1672(ra) # 80001f10 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003890:	0014849b          	addiw	s1,s1,1
    80003894:	fe9ff06f          	j	8000387c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003898:	00007517          	auipc	a0,0x7
    8000389c:	eb053503          	ld	a0,-336(a0) # 8000a748 <_ZL10waitForAll>
    800038a0:	00050863          	beqz	a0,800038b0 <_Z20testConsumerProducerv+0x2f4>
    800038a4:	00053783          	ld	a5,0(a0)
    800038a8:	0087b783          	ld	a5,8(a5)
    800038ac:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800038b0:	00000493          	li	s1,0
    800038b4:	0080006f          	j	800038bc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800038b8:	0014849b          	addiw	s1,s1,1
    800038bc:	0334d263          	bge	s1,s3,800038e0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800038c0:	00349793          	slli	a5,s1,0x3
    800038c4:	00fa07b3          	add	a5,s4,a5
    800038c8:	0007b503          	ld	a0,0(a5)
    800038cc:	fe0506e3          	beqz	a0,800038b8 <_Z20testConsumerProducerv+0x2fc>
    800038d0:	00053783          	ld	a5,0(a0)
    800038d4:	0087b783          	ld	a5,8(a5)
    800038d8:	000780e7          	jalr	a5
    800038dc:	fddff06f          	j	800038b8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800038e0:	000b8a63          	beqz	s7,800038f4 <_Z20testConsumerProducerv+0x338>
    800038e4:	000bb783          	ld	a5,0(s7)
    800038e8:	0087b783          	ld	a5,8(a5)
    800038ec:	000b8513          	mv	a0,s7
    800038f0:	000780e7          	jalr	a5
    delete buffer;
    800038f4:	000a8e63          	beqz	s5,80003910 <_Z20testConsumerProducerv+0x354>
    800038f8:	000a8513          	mv	a0,s5
    800038fc:	00002097          	auipc	ra,0x2
    80003900:	870080e7          	jalr	-1936(ra) # 8000516c <_ZN9BufferCPPD1Ev>
    80003904:	000a8513          	mv	a0,s5
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	368080e7          	jalr	872(ra) # 80001c70 <_ZdlPv>
    80003910:	000c0113          	mv	sp,s8
}
    80003914:	f8040113          	addi	sp,s0,-128
    80003918:	07813083          	ld	ra,120(sp)
    8000391c:	07013403          	ld	s0,112(sp)
    80003920:	06813483          	ld	s1,104(sp)
    80003924:	06013903          	ld	s2,96(sp)
    80003928:	05813983          	ld	s3,88(sp)
    8000392c:	05013a03          	ld	s4,80(sp)
    80003930:	04813a83          	ld	s5,72(sp)
    80003934:	04013b03          	ld	s6,64(sp)
    80003938:	03813b83          	ld	s7,56(sp)
    8000393c:	03013c03          	ld	s8,48(sp)
    80003940:	02813c83          	ld	s9,40(sp)
    80003944:	08010113          	addi	sp,sp,128
    80003948:	00008067          	ret
    8000394c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003950:	000a8513          	mv	a0,s5
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	31c080e7          	jalr	796(ra) # 80001c70 <_ZdlPv>
    8000395c:	00048513          	mv	a0,s1
    80003960:	00008097          	auipc	ra,0x8
    80003964:	ee8080e7          	jalr	-280(ra) # 8000b848 <_Unwind_Resume>
    80003968:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000396c:	00090513          	mv	a0,s2
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	300080e7          	jalr	768(ra) # 80001c70 <_ZdlPv>
    80003978:	00048513          	mv	a0,s1
    8000397c:	00008097          	auipc	ra,0x8
    80003980:	ecc080e7          	jalr	-308(ra) # 8000b848 <_Unwind_Resume>
    80003984:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003988:	000b8513          	mv	a0,s7
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	2e4080e7          	jalr	740(ra) # 80001c70 <_ZdlPv>
    80003994:	00048513          	mv	a0,s1
    80003998:	00008097          	auipc	ra,0x8
    8000399c:	eb0080e7          	jalr	-336(ra) # 8000b848 <_Unwind_Resume>
    800039a0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039a4:	00048513          	mv	a0,s1
    800039a8:	ffffe097          	auipc	ra,0xffffe
    800039ac:	2c8080e7          	jalr	712(ra) # 80001c70 <_ZdlPv>
    800039b0:	00090513          	mv	a0,s2
    800039b4:	00008097          	auipc	ra,0x8
    800039b8:	e94080e7          	jalr	-364(ra) # 8000b848 <_Unwind_Resume>
    800039bc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800039c0:	000c8513          	mv	a0,s9
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	2ac080e7          	jalr	684(ra) # 80001c70 <_ZdlPv>
    800039cc:	00048513          	mv	a0,s1
    800039d0:	00008097          	auipc	ra,0x8
    800039d4:	e78080e7          	jalr	-392(ra) # 8000b848 <_Unwind_Resume>

00000000800039d8 <_ZN8Consumer3runEv>:
    void run() override {
    800039d8:	fd010113          	addi	sp,sp,-48
    800039dc:	02113423          	sd	ra,40(sp)
    800039e0:	02813023          	sd	s0,32(sp)
    800039e4:	00913c23          	sd	s1,24(sp)
    800039e8:	01213823          	sd	s2,16(sp)
    800039ec:	01313423          	sd	s3,8(sp)
    800039f0:	03010413          	addi	s0,sp,48
    800039f4:	00050913          	mv	s2,a0
        int i = 0;
    800039f8:	00000993          	li	s3,0
    800039fc:	0100006f          	j	80003a0c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003a00:	00a00513          	li	a0,10
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	618080e7          	jalr	1560(ra) # 8000201c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003a0c:	00007797          	auipc	a5,0x7
    80003a10:	d347a783          	lw	a5,-716(a5) # 8000a740 <_ZL9threadEnd>
    80003a14:	04079a63          	bnez	a5,80003a68 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003a18:	02093783          	ld	a5,32(s2)
    80003a1c:	0087b503          	ld	a0,8(a5)
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	638080e7          	jalr	1592(ra) # 80005058 <_ZN9BufferCPP3getEv>
            i++;
    80003a28:	0019849b          	addiw	s1,s3,1
    80003a2c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003a30:	0ff57513          	andi	a0,a0,255
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	5e8080e7          	jalr	1512(ra) # 8000201c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003a3c:	05000793          	li	a5,80
    80003a40:	02f4e4bb          	remw	s1,s1,a5
    80003a44:	fc0494e3          	bnez	s1,80003a0c <_ZN8Consumer3runEv+0x34>
    80003a48:	fb9ff06f          	j	80003a00 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003a4c:	02093783          	ld	a5,32(s2)
    80003a50:	0087b503          	ld	a0,8(a5)
    80003a54:	00001097          	auipc	ra,0x1
    80003a58:	604080e7          	jalr	1540(ra) # 80005058 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003a5c:	0ff57513          	andi	a0,a0,255
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	5bc080e7          	jalr	1468(ra) # 8000201c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003a68:	02093783          	ld	a5,32(s2)
    80003a6c:	0087b503          	ld	a0,8(a5)
    80003a70:	00001097          	auipc	ra,0x1
    80003a74:	674080e7          	jalr	1652(ra) # 800050e4 <_ZN9BufferCPP6getCntEv>
    80003a78:	fca04ae3          	bgtz	a0,80003a4c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003a7c:	02093783          	ld	a5,32(s2)
    80003a80:	0107b503          	ld	a0,16(a5)
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	4b8080e7          	jalr	1208(ra) # 80001f3c <_ZN9Semaphore6signalEv>
    }
    80003a8c:	02813083          	ld	ra,40(sp)
    80003a90:	02013403          	ld	s0,32(sp)
    80003a94:	01813483          	ld	s1,24(sp)
    80003a98:	01013903          	ld	s2,16(sp)
    80003a9c:	00813983          	ld	s3,8(sp)
    80003aa0:	03010113          	addi	sp,sp,48
    80003aa4:	00008067          	ret

0000000080003aa8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00113423          	sd	ra,8(sp)
    80003ab0:	00813023          	sd	s0,0(sp)
    80003ab4:	01010413          	addi	s0,sp,16
    80003ab8:	00007797          	auipc	a5,0x7
    80003abc:	b1878793          	addi	a5,a5,-1256 # 8000a5d0 <_ZTV8Consumer+0x10>
    80003ac0:	00f53023          	sd	a5,0(a0)
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	228080e7          	jalr	552(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003acc:	00813083          	ld	ra,8(sp)
    80003ad0:	00013403          	ld	s0,0(sp)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret

0000000080003adc <_ZN8ConsumerD0Ev>:
    80003adc:	fe010113          	addi	sp,sp,-32
    80003ae0:	00113c23          	sd	ra,24(sp)
    80003ae4:	00813823          	sd	s0,16(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	00050493          	mv	s1,a0
    80003af4:	00007797          	auipc	a5,0x7
    80003af8:	adc78793          	addi	a5,a5,-1316 # 8000a5d0 <_ZTV8Consumer+0x10>
    80003afc:	00f53023          	sd	a5,0(a0)
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	1ec080e7          	jalr	492(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003b08:	00048513          	mv	a0,s1
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	164080e7          	jalr	356(ra) # 80001c70 <_ZdlPv>
    80003b14:	01813083          	ld	ra,24(sp)
    80003b18:	01013403          	ld	s0,16(sp)
    80003b1c:	00813483          	ld	s1,8(sp)
    80003b20:	02010113          	addi	sp,sp,32
    80003b24:	00008067          	ret

0000000080003b28 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00113423          	sd	ra,8(sp)
    80003b30:	00813023          	sd	s0,0(sp)
    80003b34:	01010413          	addi	s0,sp,16
    80003b38:	00007797          	auipc	a5,0x7
    80003b3c:	a4878793          	addi	a5,a5,-1464 # 8000a580 <_ZTV16ProducerKeyborad+0x10>
    80003b40:	00f53023          	sd	a5,0(a0)
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	1a8080e7          	jalr	424(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003b4c:	00813083          	ld	ra,8(sp)
    80003b50:	00013403          	ld	s0,0(sp)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <_ZN16ProducerKeyboradD0Ev>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00113c23          	sd	ra,24(sp)
    80003b64:	00813823          	sd	s0,16(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	02010413          	addi	s0,sp,32
    80003b70:	00050493          	mv	s1,a0
    80003b74:	00007797          	auipc	a5,0x7
    80003b78:	a0c78793          	addi	a5,a5,-1524 # 8000a580 <_ZTV16ProducerKeyborad+0x10>
    80003b7c:	00f53023          	sd	a5,0(a0)
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	16c080e7          	jalr	364(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	ffffe097          	auipc	ra,0xffffe
    80003b90:	0e4080e7          	jalr	228(ra) # 80001c70 <_ZdlPv>
    80003b94:	01813083          	ld	ra,24(sp)
    80003b98:	01013403          	ld	s0,16(sp)
    80003b9c:	00813483          	ld	s1,8(sp)
    80003ba0:	02010113          	addi	sp,sp,32
    80003ba4:	00008067          	ret

0000000080003ba8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00113423          	sd	ra,8(sp)
    80003bb0:	00813023          	sd	s0,0(sp)
    80003bb4:	01010413          	addi	s0,sp,16
    80003bb8:	00007797          	auipc	a5,0x7
    80003bbc:	9f078793          	addi	a5,a5,-1552 # 8000a5a8 <_ZTV8Producer+0x10>
    80003bc0:	00f53023          	sd	a5,0(a0)
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	128080e7          	jalr	296(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN8ProducerD0Ev>:
    80003bdc:	fe010113          	addi	sp,sp,-32
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	02010413          	addi	s0,sp,32
    80003bf0:	00050493          	mv	s1,a0
    80003bf4:	00007797          	auipc	a5,0x7
    80003bf8:	9b478793          	addi	a5,a5,-1612 # 8000a5a8 <_ZTV8Producer+0x10>
    80003bfc:	00f53023          	sd	a5,0(a0)
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	0ec080e7          	jalr	236(ra) # 80001cec <_ZN6ThreadD1Ev>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	064080e7          	jalr	100(ra) # 80001c70 <_ZdlPv>
    80003c14:	01813083          	ld	ra,24(sp)
    80003c18:	01013403          	ld	s0,16(sp)
    80003c1c:	00813483          	ld	s1,8(sp)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00008067          	ret

0000000080003c28 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00113c23          	sd	ra,24(sp)
    80003c30:	00813823          	sd	s0,16(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	02010413          	addi	s0,sp,32
    80003c3c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	80c080e7          	jalr	-2036(ra) # 8000144c <_Z4getcv>
    80003c48:	0005059b          	sext.w	a1,a0
    80003c4c:	01b00793          	li	a5,27
    80003c50:	00f58c63          	beq	a1,a5,80003c68 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003c54:	0204b783          	ld	a5,32(s1)
    80003c58:	0087b503          	ld	a0,8(a5)
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	36c080e7          	jalr	876(ra) # 80004fc8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003c64:	fddff06f          	j	80003c40 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003c68:	00100793          	li	a5,1
    80003c6c:	00007717          	auipc	a4,0x7
    80003c70:	acf72a23          	sw	a5,-1324(a4) # 8000a740 <_ZL9threadEnd>
        td->buffer->put('!');
    80003c74:	0204b783          	ld	a5,32(s1)
    80003c78:	02100593          	li	a1,33
    80003c7c:	0087b503          	ld	a0,8(a5)
    80003c80:	00001097          	auipc	ra,0x1
    80003c84:	348080e7          	jalr	840(ra) # 80004fc8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003c88:	0204b783          	ld	a5,32(s1)
    80003c8c:	0107b503          	ld	a0,16(a5)
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	2ac080e7          	jalr	684(ra) # 80001f3c <_ZN9Semaphore6signalEv>
    }
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	01013403          	ld	s0,16(sp)
    80003ca0:	00813483          	ld	s1,8(sp)
    80003ca4:	02010113          	addi	sp,sp,32
    80003ca8:	00008067          	ret

0000000080003cac <_ZN8Producer3runEv>:
    void run() override {
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	01213023          	sd	s2,0(sp)
    80003cc0:	02010413          	addi	s0,sp,32
    80003cc4:	00050493          	mv	s1,a0
        int i = 0;
    80003cc8:	00000913          	li	s2,0
        while (!threadEnd) {
    80003ccc:	00007797          	auipc	a5,0x7
    80003cd0:	a747a783          	lw	a5,-1420(a5) # 8000a740 <_ZL9threadEnd>
    80003cd4:	04079263          	bnez	a5,80003d18 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003cd8:	0204b783          	ld	a5,32(s1)
    80003cdc:	0007a583          	lw	a1,0(a5)
    80003ce0:	0305859b          	addiw	a1,a1,48
    80003ce4:	0087b503          	ld	a0,8(a5)
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	2e0080e7          	jalr	736(ra) # 80004fc8 <_ZN9BufferCPP3putEi>
            i++;
    80003cf0:	0019071b          	addiw	a4,s2,1
    80003cf4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003cf8:	0204b783          	ld	a5,32(s1)
    80003cfc:	0007a783          	lw	a5,0(a5)
    80003d00:	00e787bb          	addw	a5,a5,a4
    80003d04:	00500513          	li	a0,5
    80003d08:	02a7e53b          	remw	a0,a5,a0
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	16c080e7          	jalr	364(ra) # 80001e78 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003d14:	fb9ff06f          	j	80003ccc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003d18:	0204b783          	ld	a5,32(s1)
    80003d1c:	0107b503          	ld	a0,16(a5)
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	21c080e7          	jalr	540(ra) # 80001f3c <_ZN9Semaphore6signalEv>
    }
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	00013903          	ld	s2,0(sp)
    80003d38:	02010113          	addi	sp,sp,32
    80003d3c:	00008067          	ret

0000000080003d40 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00813823          	sd	s0,16(sp)
    80003d4c:	00913423          	sd	s1,8(sp)
    80003d50:	01213023          	sd	s2,0(sp)
    80003d54:	02010413          	addi	s0,sp,32
    80003d58:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d5c:	00100793          	li	a5,1
    80003d60:	02a7f863          	bgeu	a5,a0,80003d90 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d64:	00a00793          	li	a5,10
    80003d68:	02f577b3          	remu	a5,a0,a5
    80003d6c:	02078e63          	beqz	a5,80003da8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d70:	fff48513          	addi	a0,s1,-1
    80003d74:	00000097          	auipc	ra,0x0
    80003d78:	fcc080e7          	jalr	-52(ra) # 80003d40 <_ZL9fibonaccim>
    80003d7c:	00050913          	mv	s2,a0
    80003d80:	ffe48513          	addi	a0,s1,-2
    80003d84:	00000097          	auipc	ra,0x0
    80003d88:	fbc080e7          	jalr	-68(ra) # 80003d40 <_ZL9fibonaccim>
    80003d8c:	00a90533          	add	a0,s2,a0
}
    80003d90:	01813083          	ld	ra,24(sp)
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	00813483          	ld	s1,8(sp)
    80003d9c:	00013903          	ld	s2,0(sp)
    80003da0:	02010113          	addi	sp,sp,32
    80003da4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003da8:	ffffd097          	auipc	ra,0xffffd
    80003dac:	500080e7          	jalr	1280(ra) # 800012a8 <_Z15thread_dispatchv>
    80003db0:	fc1ff06f          	j	80003d70 <_ZL9fibonaccim+0x30>

0000000080003db4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003db4:	fe010113          	addi	sp,sp,-32
    80003db8:	00113c23          	sd	ra,24(sp)
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00913423          	sd	s1,8(sp)
    80003dc4:	01213023          	sd	s2,0(sp)
    80003dc8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003dcc:	00a00493          	li	s1,10
    80003dd0:	0400006f          	j	80003e10 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003dd4:	00004517          	auipc	a0,0x4
    80003dd8:	44450513          	addi	a0,a0,1092 # 80008218 <CONSOLE_STATUS+0x208>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	dc8080e7          	jalr	-568(ra) # 80004ba4 <_Z11printStringPKc>
    80003de4:	00000613          	li	a2,0
    80003de8:	00a00593          	li	a1,10
    80003dec:	00048513          	mv	a0,s1
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	f64080e7          	jalr	-156(ra) # 80004d54 <_Z8printIntiii>
    80003df8:	00004517          	auipc	a0,0x4
    80003dfc:	64050513          	addi	a0,a0,1600 # 80008438 <CONSOLE_STATUS+0x428>
    80003e00:	00001097          	auipc	ra,0x1
    80003e04:	da4080e7          	jalr	-604(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e08:	0014849b          	addiw	s1,s1,1
    80003e0c:	0ff4f493          	andi	s1,s1,255
    80003e10:	00c00793          	li	a5,12
    80003e14:	fc97f0e3          	bgeu	a5,s1,80003dd4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003e18:	00004517          	auipc	a0,0x4
    80003e1c:	40850513          	addi	a0,a0,1032 # 80008220 <CONSOLE_STATUS+0x210>
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	d84080e7          	jalr	-636(ra) # 80004ba4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e28:	00500313          	li	t1,5
    thread_dispatch();
    80003e2c:	ffffd097          	auipc	ra,0xffffd
    80003e30:	47c080e7          	jalr	1148(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e34:	01000513          	li	a0,16
    80003e38:	00000097          	auipc	ra,0x0
    80003e3c:	f08080e7          	jalr	-248(ra) # 80003d40 <_ZL9fibonaccim>
    80003e40:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e44:	00004517          	auipc	a0,0x4
    80003e48:	3ec50513          	addi	a0,a0,1004 # 80008230 <CONSOLE_STATUS+0x220>
    80003e4c:	00001097          	auipc	ra,0x1
    80003e50:	d58080e7          	jalr	-680(ra) # 80004ba4 <_Z11printStringPKc>
    80003e54:	00000613          	li	a2,0
    80003e58:	00a00593          	li	a1,10
    80003e5c:	0009051b          	sext.w	a0,s2
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	ef4080e7          	jalr	-268(ra) # 80004d54 <_Z8printIntiii>
    80003e68:	00004517          	auipc	a0,0x4
    80003e6c:	5d050513          	addi	a0,a0,1488 # 80008438 <CONSOLE_STATUS+0x428>
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	d34080e7          	jalr	-716(ra) # 80004ba4 <_Z11printStringPKc>
    80003e78:	0400006f          	j	80003eb8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e7c:	00004517          	auipc	a0,0x4
    80003e80:	39c50513          	addi	a0,a0,924 # 80008218 <CONSOLE_STATUS+0x208>
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	d20080e7          	jalr	-736(ra) # 80004ba4 <_Z11printStringPKc>
    80003e8c:	00000613          	li	a2,0
    80003e90:	00a00593          	li	a1,10
    80003e94:	00048513          	mv	a0,s1
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	ebc080e7          	jalr	-324(ra) # 80004d54 <_Z8printIntiii>
    80003ea0:	00004517          	auipc	a0,0x4
    80003ea4:	59850513          	addi	a0,a0,1432 # 80008438 <CONSOLE_STATUS+0x428>
    80003ea8:	00001097          	auipc	ra,0x1
    80003eac:	cfc080e7          	jalr	-772(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003eb0:	0014849b          	addiw	s1,s1,1
    80003eb4:	0ff4f493          	andi	s1,s1,255
    80003eb8:	00f00793          	li	a5,15
    80003ebc:	fc97f0e3          	bgeu	a5,s1,80003e7c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003ec0:	00004517          	auipc	a0,0x4
    80003ec4:	38050513          	addi	a0,a0,896 # 80008240 <CONSOLE_STATUS+0x230>
    80003ec8:	00001097          	auipc	ra,0x1
    80003ecc:	cdc080e7          	jalr	-804(ra) # 80004ba4 <_Z11printStringPKc>
    finishedD = true;
    80003ed0:	00100793          	li	a5,1
    80003ed4:	00007717          	auipc	a4,0x7
    80003ed8:	86f70e23          	sb	a5,-1924(a4) # 8000a750 <_ZL9finishedD>
    thread_dispatch();
    80003edc:	ffffd097          	auipc	ra,0xffffd
    80003ee0:	3cc080e7          	jalr	972(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003ee4:	01813083          	ld	ra,24(sp)
    80003ee8:	01013403          	ld	s0,16(sp)
    80003eec:	00813483          	ld	s1,8(sp)
    80003ef0:	00013903          	ld	s2,0(sp)
    80003ef4:	02010113          	addi	sp,sp,32
    80003ef8:	00008067          	ret

0000000080003efc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00113c23          	sd	ra,24(sp)
    80003f04:	00813823          	sd	s0,16(sp)
    80003f08:	00913423          	sd	s1,8(sp)
    80003f0c:	01213023          	sd	s2,0(sp)
    80003f10:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f14:	00000493          	li	s1,0
    80003f18:	0400006f          	j	80003f58 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003f1c:	00004517          	auipc	a0,0x4
    80003f20:	2bc50513          	addi	a0,a0,700 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	c80080e7          	jalr	-896(ra) # 80004ba4 <_Z11printStringPKc>
    80003f2c:	00000613          	li	a2,0
    80003f30:	00a00593          	li	a1,10
    80003f34:	00048513          	mv	a0,s1
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	e1c080e7          	jalr	-484(ra) # 80004d54 <_Z8printIntiii>
    80003f40:	00004517          	auipc	a0,0x4
    80003f44:	4f850513          	addi	a0,a0,1272 # 80008438 <CONSOLE_STATUS+0x428>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	c5c080e7          	jalr	-932(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f50:	0014849b          	addiw	s1,s1,1
    80003f54:	0ff4f493          	andi	s1,s1,255
    80003f58:	00200793          	li	a5,2
    80003f5c:	fc97f0e3          	bgeu	a5,s1,80003f1c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003f60:	00004517          	auipc	a0,0x4
    80003f64:	28050513          	addi	a0,a0,640 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80003f68:	00001097          	auipc	ra,0x1
    80003f6c:	c3c080e7          	jalr	-964(ra) # 80004ba4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f70:	00700313          	li	t1,7
    thread_dispatch();
    80003f74:	ffffd097          	auipc	ra,0xffffd
    80003f78:	334080e7          	jalr	820(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f7c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003f80:	00004517          	auipc	a0,0x4
    80003f84:	27050513          	addi	a0,a0,624 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80003f88:	00001097          	auipc	ra,0x1
    80003f8c:	c1c080e7          	jalr	-996(ra) # 80004ba4 <_Z11printStringPKc>
    80003f90:	00000613          	li	a2,0
    80003f94:	00a00593          	li	a1,10
    80003f98:	0009051b          	sext.w	a0,s2
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	db8080e7          	jalr	-584(ra) # 80004d54 <_Z8printIntiii>
    80003fa4:	00004517          	auipc	a0,0x4
    80003fa8:	49450513          	addi	a0,a0,1172 # 80008438 <CONSOLE_STATUS+0x428>
    80003fac:	00001097          	auipc	ra,0x1
    80003fb0:	bf8080e7          	jalr	-1032(ra) # 80004ba4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003fb4:	00c00513          	li	a0,12
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	d88080e7          	jalr	-632(ra) # 80003d40 <_ZL9fibonaccim>
    80003fc0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003fc4:	00004517          	auipc	a0,0x4
    80003fc8:	23450513          	addi	a0,a0,564 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	bd8080e7          	jalr	-1064(ra) # 80004ba4 <_Z11printStringPKc>
    80003fd4:	00000613          	li	a2,0
    80003fd8:	00a00593          	li	a1,10
    80003fdc:	0009051b          	sext.w	a0,s2
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	d74080e7          	jalr	-652(ra) # 80004d54 <_Z8printIntiii>
    80003fe8:	00004517          	auipc	a0,0x4
    80003fec:	45050513          	addi	a0,a0,1104 # 80008438 <CONSOLE_STATUS+0x428>
    80003ff0:	00001097          	auipc	ra,0x1
    80003ff4:	bb4080e7          	jalr	-1100(ra) # 80004ba4 <_Z11printStringPKc>
    80003ff8:	0400006f          	j	80004038 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003ffc:	00004517          	auipc	a0,0x4
    80004000:	1dc50513          	addi	a0,a0,476 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80004004:	00001097          	auipc	ra,0x1
    80004008:	ba0080e7          	jalr	-1120(ra) # 80004ba4 <_Z11printStringPKc>
    8000400c:	00000613          	li	a2,0
    80004010:	00a00593          	li	a1,10
    80004014:	00048513          	mv	a0,s1
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	d3c080e7          	jalr	-708(ra) # 80004d54 <_Z8printIntiii>
    80004020:	00004517          	auipc	a0,0x4
    80004024:	41850513          	addi	a0,a0,1048 # 80008438 <CONSOLE_STATUS+0x428>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	b7c080e7          	jalr	-1156(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004030:	0014849b          	addiw	s1,s1,1
    80004034:	0ff4f493          	andi	s1,s1,255
    80004038:	00500793          	li	a5,5
    8000403c:	fc97f0e3          	bgeu	a5,s1,80003ffc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004040:	00004517          	auipc	a0,0x4
    80004044:	17050513          	addi	a0,a0,368 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80004048:	00001097          	auipc	ra,0x1
    8000404c:	b5c080e7          	jalr	-1188(ra) # 80004ba4 <_Z11printStringPKc>
    finishedC = true;
    80004050:	00100793          	li	a5,1
    80004054:	00006717          	auipc	a4,0x6
    80004058:	6ef70ea3          	sb	a5,1789(a4) # 8000a751 <_ZL9finishedC>
    thread_dispatch();
    8000405c:	ffffd097          	auipc	ra,0xffffd
    80004060:	24c080e7          	jalr	588(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret

000000008000407c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00113c23          	sd	ra,24(sp)
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00913423          	sd	s1,8(sp)
    8000408c:	01213023          	sd	s2,0(sp)
    80004090:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004094:	00000913          	li	s2,0
    80004098:	0380006f          	j	800040d0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000409c:	ffffd097          	auipc	ra,0xffffd
    800040a0:	20c080e7          	jalr	524(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800040a4:	00148493          	addi	s1,s1,1
    800040a8:	000027b7          	lui	a5,0x2
    800040ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040b0:	0097ee63          	bltu	a5,s1,800040cc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040b4:	00000713          	li	a4,0
    800040b8:	000077b7          	lui	a5,0x7
    800040bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040c0:	fce7eee3          	bltu	a5,a4,8000409c <_ZL11workerBodyBPv+0x20>
    800040c4:	00170713          	addi	a4,a4,1
    800040c8:	ff1ff06f          	j	800040b8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800040cc:	00190913          	addi	s2,s2,1
    800040d0:	00f00793          	li	a5,15
    800040d4:	0527e063          	bltu	a5,s2,80004114 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800040d8:	00004517          	auipc	a0,0x4
    800040dc:	0e850513          	addi	a0,a0,232 # 800081c0 <CONSOLE_STATUS+0x1b0>
    800040e0:	00001097          	auipc	ra,0x1
    800040e4:	ac4080e7          	jalr	-1340(ra) # 80004ba4 <_Z11printStringPKc>
    800040e8:	00000613          	li	a2,0
    800040ec:	00a00593          	li	a1,10
    800040f0:	0009051b          	sext.w	a0,s2
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	c60080e7          	jalr	-928(ra) # 80004d54 <_Z8printIntiii>
    800040fc:	00004517          	auipc	a0,0x4
    80004100:	33c50513          	addi	a0,a0,828 # 80008438 <CONSOLE_STATUS+0x428>
    80004104:	00001097          	auipc	ra,0x1
    80004108:	aa0080e7          	jalr	-1376(ra) # 80004ba4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000410c:	00000493          	li	s1,0
    80004110:	f99ff06f          	j	800040a8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004114:	00004517          	auipc	a0,0x4
    80004118:	0b450513          	addi	a0,a0,180 # 800081c8 <CONSOLE_STATUS+0x1b8>
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	a88080e7          	jalr	-1400(ra) # 80004ba4 <_Z11printStringPKc>
    finishedB = true;
    80004124:	00100793          	li	a5,1
    80004128:	00006717          	auipc	a4,0x6
    8000412c:	62f70523          	sb	a5,1578(a4) # 8000a752 <_ZL9finishedB>
    thread_dispatch();
    80004130:	ffffd097          	auipc	ra,0xffffd
    80004134:	178080e7          	jalr	376(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80004138:	01813083          	ld	ra,24(sp)
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	00813483          	ld	s1,8(sp)
    80004144:	00013903          	ld	s2,0(sp)
    80004148:	02010113          	addi	sp,sp,32
    8000414c:	00008067          	ret

0000000080004150 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004150:	fe010113          	addi	sp,sp,-32
    80004154:	00113c23          	sd	ra,24(sp)
    80004158:	00813823          	sd	s0,16(sp)
    8000415c:	00913423          	sd	s1,8(sp)
    80004160:	01213023          	sd	s2,0(sp)
    80004164:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004168:	00000913          	li	s2,0
    8000416c:	0380006f          	j	800041a4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004170:	ffffd097          	auipc	ra,0xffffd
    80004174:	138080e7          	jalr	312(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004178:	00148493          	addi	s1,s1,1
    8000417c:	000027b7          	lui	a5,0x2
    80004180:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004184:	0097ee63          	bltu	a5,s1,800041a0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004188:	00000713          	li	a4,0
    8000418c:	000077b7          	lui	a5,0x7
    80004190:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004194:	fce7eee3          	bltu	a5,a4,80004170 <_ZL11workerBodyAPv+0x20>
    80004198:	00170713          	addi	a4,a4,1
    8000419c:	ff1ff06f          	j	8000418c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800041a0:	00190913          	addi	s2,s2,1
    800041a4:	00900793          	li	a5,9
    800041a8:	0527e063          	bltu	a5,s2,800041e8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800041ac:	00004517          	auipc	a0,0x4
    800041b0:	ffc50513          	addi	a0,a0,-4 # 800081a8 <CONSOLE_STATUS+0x198>
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	9f0080e7          	jalr	-1552(ra) # 80004ba4 <_Z11printStringPKc>
    800041bc:	00000613          	li	a2,0
    800041c0:	00a00593          	li	a1,10
    800041c4:	0009051b          	sext.w	a0,s2
    800041c8:	00001097          	auipc	ra,0x1
    800041cc:	b8c080e7          	jalr	-1140(ra) # 80004d54 <_Z8printIntiii>
    800041d0:	00004517          	auipc	a0,0x4
    800041d4:	26850513          	addi	a0,a0,616 # 80008438 <CONSOLE_STATUS+0x428>
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	9cc080e7          	jalr	-1588(ra) # 80004ba4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041e0:	00000493          	li	s1,0
    800041e4:	f99ff06f          	j	8000417c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800041e8:	00004517          	auipc	a0,0x4
    800041ec:	fc850513          	addi	a0,a0,-56 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	9b4080e7          	jalr	-1612(ra) # 80004ba4 <_Z11printStringPKc>
    finishedA = true;
    800041f8:	00100793          	li	a5,1
    800041fc:	00006717          	auipc	a4,0x6
    80004200:	54f70ba3          	sb	a5,1367(a4) # 8000a753 <_ZL9finishedA>
}
    80004204:	01813083          	ld	ra,24(sp)
    80004208:	01013403          	ld	s0,16(sp)
    8000420c:	00813483          	ld	s1,8(sp)
    80004210:	00013903          	ld	s2,0(sp)
    80004214:	02010113          	addi	sp,sp,32
    80004218:	00008067          	ret

000000008000421c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000421c:	fd010113          	addi	sp,sp,-48
    80004220:	02113423          	sd	ra,40(sp)
    80004224:	02813023          	sd	s0,32(sp)
    80004228:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000422c:	00000613          	li	a2,0
    80004230:	00000597          	auipc	a1,0x0
    80004234:	f2058593          	addi	a1,a1,-224 # 80004150 <_ZL11workerBodyAPv>
    80004238:	fd040513          	addi	a0,s0,-48
    8000423c:	ffffd097          	auipc	ra,0xffffd
    80004240:	0b4080e7          	jalr	180(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004244:	00004517          	auipc	a0,0x4
    80004248:	00c50513          	addi	a0,a0,12 # 80008250 <CONSOLE_STATUS+0x240>
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	958080e7          	jalr	-1704(ra) # 80004ba4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004254:	00000613          	li	a2,0
    80004258:	00000597          	auipc	a1,0x0
    8000425c:	e2458593          	addi	a1,a1,-476 # 8000407c <_ZL11workerBodyBPv>
    80004260:	fd840513          	addi	a0,s0,-40
    80004264:	ffffd097          	auipc	ra,0xffffd
    80004268:	08c080e7          	jalr	140(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000426c:	00004517          	auipc	a0,0x4
    80004270:	ffc50513          	addi	a0,a0,-4 # 80008268 <CONSOLE_STATUS+0x258>
    80004274:	00001097          	auipc	ra,0x1
    80004278:	930080e7          	jalr	-1744(ra) # 80004ba4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000427c:	00000613          	li	a2,0
    80004280:	00000597          	auipc	a1,0x0
    80004284:	c7c58593          	addi	a1,a1,-900 # 80003efc <_ZL11workerBodyCPv>
    80004288:	fe040513          	addi	a0,s0,-32
    8000428c:	ffffd097          	auipc	ra,0xffffd
    80004290:	064080e7          	jalr	100(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004294:	00004517          	auipc	a0,0x4
    80004298:	fec50513          	addi	a0,a0,-20 # 80008280 <CONSOLE_STATUS+0x270>
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	908080e7          	jalr	-1784(ra) # 80004ba4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800042a4:	00000613          	li	a2,0
    800042a8:	00000597          	auipc	a1,0x0
    800042ac:	b0c58593          	addi	a1,a1,-1268 # 80003db4 <_ZL11workerBodyDPv>
    800042b0:	fe840513          	addi	a0,s0,-24
    800042b4:	ffffd097          	auipc	ra,0xffffd
    800042b8:	03c080e7          	jalr	60(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800042bc:	00004517          	auipc	a0,0x4
    800042c0:	fdc50513          	addi	a0,a0,-36 # 80008298 <CONSOLE_STATUS+0x288>
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	8e0080e7          	jalr	-1824(ra) # 80004ba4 <_Z11printStringPKc>
    800042cc:	00c0006f          	j	800042d8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800042d0:	ffffd097          	auipc	ra,0xffffd
    800042d4:	fd8080e7          	jalr	-40(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800042d8:	00006797          	auipc	a5,0x6
    800042dc:	47b7c783          	lbu	a5,1147(a5) # 8000a753 <_ZL9finishedA>
    800042e0:	fe0788e3          	beqz	a5,800042d0 <_Z18Threads_C_API_testv+0xb4>
    800042e4:	00006797          	auipc	a5,0x6
    800042e8:	46e7c783          	lbu	a5,1134(a5) # 8000a752 <_ZL9finishedB>
    800042ec:	fe0782e3          	beqz	a5,800042d0 <_Z18Threads_C_API_testv+0xb4>
    800042f0:	00006797          	auipc	a5,0x6
    800042f4:	4617c783          	lbu	a5,1121(a5) # 8000a751 <_ZL9finishedC>
    800042f8:	fc078ce3          	beqz	a5,800042d0 <_Z18Threads_C_API_testv+0xb4>
    800042fc:	00006797          	auipc	a5,0x6
    80004300:	4547c783          	lbu	a5,1108(a5) # 8000a750 <_ZL9finishedD>
    80004304:	fc0786e3          	beqz	a5,800042d0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004308:	02813083          	ld	ra,40(sp)
    8000430c:	02013403          	ld	s0,32(sp)
    80004310:	03010113          	addi	sp,sp,48
    80004314:	00008067          	ret

0000000080004318 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004318:	fd010113          	addi	sp,sp,-48
    8000431c:	02113423          	sd	ra,40(sp)
    80004320:	02813023          	sd	s0,32(sp)
    80004324:	00913c23          	sd	s1,24(sp)
    80004328:	01213823          	sd	s2,16(sp)
    8000432c:	01313423          	sd	s3,8(sp)
    80004330:	03010413          	addi	s0,sp,48
    80004334:	00050993          	mv	s3,a0
    80004338:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000433c:	00000913          	li	s2,0
    80004340:	00c0006f          	j	8000434c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	b0c080e7          	jalr	-1268(ra) # 80001e50 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	100080e7          	jalr	256(ra) # 8000144c <_Z4getcv>
    80004354:	0005059b          	sext.w	a1,a0
    80004358:	01b00793          	li	a5,27
    8000435c:	02f58a63          	beq	a1,a5,80004390 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004360:	0084b503          	ld	a0,8(s1)
    80004364:	00001097          	auipc	ra,0x1
    80004368:	c64080e7          	jalr	-924(ra) # 80004fc8 <_ZN9BufferCPP3putEi>
        i++;
    8000436c:	0019071b          	addiw	a4,s2,1
    80004370:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004374:	0004a683          	lw	a3,0(s1)
    80004378:	0026979b          	slliw	a5,a3,0x2
    8000437c:	00d787bb          	addw	a5,a5,a3
    80004380:	0017979b          	slliw	a5,a5,0x1
    80004384:	02f767bb          	remw	a5,a4,a5
    80004388:	fc0792e3          	bnez	a5,8000434c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000438c:	fb9ff06f          	j	80004344 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004390:	00100793          	li	a5,1
    80004394:	00006717          	auipc	a4,0x6
    80004398:	3cf72223          	sw	a5,964(a4) # 8000a758 <_ZL9threadEnd>
    td->buffer->put('!');
    8000439c:	0209b783          	ld	a5,32(s3)
    800043a0:	02100593          	li	a1,33
    800043a4:	0087b503          	ld	a0,8(a5)
    800043a8:	00001097          	auipc	ra,0x1
    800043ac:	c20080e7          	jalr	-992(ra) # 80004fc8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800043b0:	0104b503          	ld	a0,16(s1)
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	b88080e7          	jalr	-1144(ra) # 80001f3c <_ZN9Semaphore6signalEv>
}
    800043bc:	02813083          	ld	ra,40(sp)
    800043c0:	02013403          	ld	s0,32(sp)
    800043c4:	01813483          	ld	s1,24(sp)
    800043c8:	01013903          	ld	s2,16(sp)
    800043cc:	00813983          	ld	s3,8(sp)
    800043d0:	03010113          	addi	sp,sp,48
    800043d4:	00008067          	ret

00000000800043d8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800043d8:	fe010113          	addi	sp,sp,-32
    800043dc:	00113c23          	sd	ra,24(sp)
    800043e0:	00813823          	sd	s0,16(sp)
    800043e4:	00913423          	sd	s1,8(sp)
    800043e8:	01213023          	sd	s2,0(sp)
    800043ec:	02010413          	addi	s0,sp,32
    800043f0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800043f4:	00000913          	li	s2,0
    800043f8:	00c0006f          	j	80004404 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	a54080e7          	jalr	-1452(ra) # 80001e50 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004404:	00006797          	auipc	a5,0x6
    80004408:	3547a783          	lw	a5,852(a5) # 8000a758 <_ZL9threadEnd>
    8000440c:	02079e63          	bnez	a5,80004448 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004410:	0004a583          	lw	a1,0(s1)
    80004414:	0305859b          	addiw	a1,a1,48
    80004418:	0084b503          	ld	a0,8(s1)
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	bac080e7          	jalr	-1108(ra) # 80004fc8 <_ZN9BufferCPP3putEi>
        i++;
    80004424:	0019071b          	addiw	a4,s2,1
    80004428:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000442c:	0004a683          	lw	a3,0(s1)
    80004430:	0026979b          	slliw	a5,a3,0x2
    80004434:	00d787bb          	addw	a5,a5,a3
    80004438:	0017979b          	slliw	a5,a5,0x1
    8000443c:	02f767bb          	remw	a5,a4,a5
    80004440:	fc0792e3          	bnez	a5,80004404 <_ZN12ProducerSync8producerEPv+0x2c>
    80004444:	fb9ff06f          	j	800043fc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004448:	0104b503          	ld	a0,16(s1)
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	af0080e7          	jalr	-1296(ra) # 80001f3c <_ZN9Semaphore6signalEv>
}
    80004454:	01813083          	ld	ra,24(sp)
    80004458:	01013403          	ld	s0,16(sp)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	00013903          	ld	s2,0(sp)
    80004464:	02010113          	addi	sp,sp,32
    80004468:	00008067          	ret

000000008000446c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000446c:	fd010113          	addi	sp,sp,-48
    80004470:	02113423          	sd	ra,40(sp)
    80004474:	02813023          	sd	s0,32(sp)
    80004478:	00913c23          	sd	s1,24(sp)
    8000447c:	01213823          	sd	s2,16(sp)
    80004480:	01313423          	sd	s3,8(sp)
    80004484:	01413023          	sd	s4,0(sp)
    80004488:	03010413          	addi	s0,sp,48
    8000448c:	00050993          	mv	s3,a0
    80004490:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004494:	00000a13          	li	s4,0
    80004498:	01c0006f          	j	800044b4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000449c:	ffffe097          	auipc	ra,0xffffe
    800044a0:	9b4080e7          	jalr	-1612(ra) # 80001e50 <_ZN6Thread8dispatchEv>
    800044a4:	0500006f          	j	800044f4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800044a8:	00a00513          	li	a0,10
    800044ac:	ffffd097          	auipc	ra,0xffffd
    800044b0:	fc8080e7          	jalr	-56(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    800044b4:	00006797          	auipc	a5,0x6
    800044b8:	2a47a783          	lw	a5,676(a5) # 8000a758 <_ZL9threadEnd>
    800044bc:	06079263          	bnez	a5,80004520 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800044c0:	00893503          	ld	a0,8(s2)
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	b94080e7          	jalr	-1132(ra) # 80005058 <_ZN9BufferCPP3getEv>
        i++;
    800044cc:	001a049b          	addiw	s1,s4,1
    800044d0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800044d4:	0ff57513          	andi	a0,a0,255
    800044d8:	ffffd097          	auipc	ra,0xffffd
    800044dc:	f9c080e7          	jalr	-100(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800044e0:	00092703          	lw	a4,0(s2)
    800044e4:	0027179b          	slliw	a5,a4,0x2
    800044e8:	00e787bb          	addw	a5,a5,a4
    800044ec:	02f4e7bb          	remw	a5,s1,a5
    800044f0:	fa0786e3          	beqz	a5,8000449c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800044f4:	05000793          	li	a5,80
    800044f8:	02f4e4bb          	remw	s1,s1,a5
    800044fc:	fa049ce3          	bnez	s1,800044b4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004500:	fa9ff06f          	j	800044a8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004504:	0209b783          	ld	a5,32(s3)
    80004508:	0087b503          	ld	a0,8(a5)
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	b4c080e7          	jalr	-1204(ra) # 80005058 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004514:	0ff57513          	andi	a0,a0,255
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	b04080e7          	jalr	-1276(ra) # 8000201c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004520:	0209b783          	ld	a5,32(s3)
    80004524:	0087b503          	ld	a0,8(a5)
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	bbc080e7          	jalr	-1092(ra) # 800050e4 <_ZN9BufferCPP6getCntEv>
    80004530:	fca04ae3          	bgtz	a0,80004504 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004534:	01093503          	ld	a0,16(s2)
    80004538:	ffffe097          	auipc	ra,0xffffe
    8000453c:	a04080e7          	jalr	-1532(ra) # 80001f3c <_ZN9Semaphore6signalEv>
}
    80004540:	02813083          	ld	ra,40(sp)
    80004544:	02013403          	ld	s0,32(sp)
    80004548:	01813483          	ld	s1,24(sp)
    8000454c:	01013903          	ld	s2,16(sp)
    80004550:	00813983          	ld	s3,8(sp)
    80004554:	00013a03          	ld	s4,0(sp)
    80004558:	03010113          	addi	sp,sp,48
    8000455c:	00008067          	ret

0000000080004560 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004560:	f8010113          	addi	sp,sp,-128
    80004564:	06113c23          	sd	ra,120(sp)
    80004568:	06813823          	sd	s0,112(sp)
    8000456c:	06913423          	sd	s1,104(sp)
    80004570:	07213023          	sd	s2,96(sp)
    80004574:	05313c23          	sd	s3,88(sp)
    80004578:	05413823          	sd	s4,80(sp)
    8000457c:	05513423          	sd	s5,72(sp)
    80004580:	05613023          	sd	s6,64(sp)
    80004584:	03713c23          	sd	s7,56(sp)
    80004588:	03813823          	sd	s8,48(sp)
    8000458c:	03913423          	sd	s9,40(sp)
    80004590:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004594:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004598:	00004517          	auipc	a0,0x4
    8000459c:	b2850513          	addi	a0,a0,-1240 # 800080c0 <CONSOLE_STATUS+0xb0>
    800045a0:	00000097          	auipc	ra,0x0
    800045a4:	604080e7          	jalr	1540(ra) # 80004ba4 <_Z11printStringPKc>
    getString(input, 30);
    800045a8:	01e00593          	li	a1,30
    800045ac:	f8040493          	addi	s1,s0,-128
    800045b0:	00048513          	mv	a0,s1
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	678080e7          	jalr	1656(ra) # 80004c2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800045bc:	00048513          	mv	a0,s1
    800045c0:	00000097          	auipc	ra,0x0
    800045c4:	744080e7          	jalr	1860(ra) # 80004d04 <_Z11stringToIntPKc>
    800045c8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800045cc:	00004517          	auipc	a0,0x4
    800045d0:	b1450513          	addi	a0,a0,-1260 # 800080e0 <CONSOLE_STATUS+0xd0>
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	5d0080e7          	jalr	1488(ra) # 80004ba4 <_Z11printStringPKc>
    getString(input, 30);
    800045dc:	01e00593          	li	a1,30
    800045e0:	00048513          	mv	a0,s1
    800045e4:	00000097          	auipc	ra,0x0
    800045e8:	648080e7          	jalr	1608(ra) # 80004c2c <_Z9getStringPci>
    n = stringToInt(input);
    800045ec:	00048513          	mv	a0,s1
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	714080e7          	jalr	1812(ra) # 80004d04 <_Z11stringToIntPKc>
    800045f8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800045fc:	00004517          	auipc	a0,0x4
    80004600:	b0450513          	addi	a0,a0,-1276 # 80008100 <CONSOLE_STATUS+0xf0>
    80004604:	00000097          	auipc	ra,0x0
    80004608:	5a0080e7          	jalr	1440(ra) # 80004ba4 <_Z11printStringPKc>
    8000460c:	00000613          	li	a2,0
    80004610:	00a00593          	li	a1,10
    80004614:	00090513          	mv	a0,s2
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	73c080e7          	jalr	1852(ra) # 80004d54 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004620:	00004517          	auipc	a0,0x4
    80004624:	af850513          	addi	a0,a0,-1288 # 80008118 <CONSOLE_STATUS+0x108>
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	57c080e7          	jalr	1404(ra) # 80004ba4 <_Z11printStringPKc>
    80004630:	00000613          	li	a2,0
    80004634:	00a00593          	li	a1,10
    80004638:	00048513          	mv	a0,s1
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	718080e7          	jalr	1816(ra) # 80004d54 <_Z8printIntiii>
    printString(".\n");
    80004644:	00004517          	auipc	a0,0x4
    80004648:	aec50513          	addi	a0,a0,-1300 # 80008130 <CONSOLE_STATUS+0x120>
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	558080e7          	jalr	1368(ra) # 80004ba4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004654:	0324c463          	blt	s1,s2,8000467c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004658:	03205c63          	blez	s2,80004690 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000465c:	03800513          	li	a0,56
    80004660:	ffffd097          	auipc	ra,0xffffd
    80004664:	5c0080e7          	jalr	1472(ra) # 80001c20 <_Znwm>
    80004668:	00050a93          	mv	s5,a0
    8000466c:	00048593          	mv	a1,s1
    80004670:	00001097          	auipc	ra,0x1
    80004674:	804080e7          	jalr	-2044(ra) # 80004e74 <_ZN9BufferCPPC1Ei>
    80004678:	0300006f          	j	800046a8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000467c:	00004517          	auipc	a0,0x4
    80004680:	abc50513          	addi	a0,a0,-1348 # 80008138 <CONSOLE_STATUS+0x128>
    80004684:	00000097          	auipc	ra,0x0
    80004688:	520080e7          	jalr	1312(ra) # 80004ba4 <_Z11printStringPKc>
        return;
    8000468c:	0140006f          	j	800046a0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004690:	00004517          	auipc	a0,0x4
    80004694:	ae850513          	addi	a0,a0,-1304 # 80008178 <CONSOLE_STATUS+0x168>
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	50c080e7          	jalr	1292(ra) # 80004ba4 <_Z11printStringPKc>
        return;
    800046a0:	000b8113          	mv	sp,s7
    800046a4:	2380006f          	j	800048dc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800046a8:	01000513          	li	a0,16
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	574080e7          	jalr	1396(ra) # 80001c20 <_Znwm>
    800046b4:	00050493          	mv	s1,a0
    800046b8:	00000593          	li	a1,0
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	81c080e7          	jalr	-2020(ra) # 80001ed8 <_ZN9SemaphoreC1Ej>
    800046c4:	00006797          	auipc	a5,0x6
    800046c8:	0897be23          	sd	s1,156(a5) # 8000a760 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800046cc:	00391793          	slli	a5,s2,0x3
    800046d0:	00f78793          	addi	a5,a5,15
    800046d4:	ff07f793          	andi	a5,a5,-16
    800046d8:	40f10133          	sub	sp,sp,a5
    800046dc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800046e0:	0019071b          	addiw	a4,s2,1
    800046e4:	00171793          	slli	a5,a4,0x1
    800046e8:	00e787b3          	add	a5,a5,a4
    800046ec:	00379793          	slli	a5,a5,0x3
    800046f0:	00f78793          	addi	a5,a5,15
    800046f4:	ff07f793          	andi	a5,a5,-16
    800046f8:	40f10133          	sub	sp,sp,a5
    800046fc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004700:	00191c13          	slli	s8,s2,0x1
    80004704:	012c07b3          	add	a5,s8,s2
    80004708:	00379793          	slli	a5,a5,0x3
    8000470c:	00fa07b3          	add	a5,s4,a5
    80004710:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004714:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004718:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000471c:	02800513          	li	a0,40
    80004720:	ffffd097          	auipc	ra,0xffffd
    80004724:	500080e7          	jalr	1280(ra) # 80001c20 <_Znwm>
    80004728:	00050b13          	mv	s6,a0
    8000472c:	012c0c33          	add	s8,s8,s2
    80004730:	003c1c13          	slli	s8,s8,0x3
    80004734:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	76c080e7          	jalr	1900(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    80004740:	00006797          	auipc	a5,0x6
    80004744:	f0878793          	addi	a5,a5,-248 # 8000a648 <_ZTV12ConsumerSync+0x10>
    80004748:	00fb3023          	sd	a5,0(s6)
    8000474c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004750:	000b0513          	mv	a0,s6
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	6c0080e7          	jalr	1728(ra) # 80001e14 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000475c:	00000493          	li	s1,0
    80004760:	0380006f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004764:	00006797          	auipc	a5,0x6
    80004768:	ebc78793          	addi	a5,a5,-324 # 8000a620 <_ZTV12ProducerSync+0x10>
    8000476c:	00fcb023          	sd	a5,0(s9)
    80004770:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004774:	00349793          	slli	a5,s1,0x3
    80004778:	00f987b3          	add	a5,s3,a5
    8000477c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004780:	00349793          	slli	a5,s1,0x3
    80004784:	00f987b3          	add	a5,s3,a5
    80004788:	0007b503          	ld	a0,0(a5)
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	688080e7          	jalr	1672(ra) # 80001e14 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004794:	0014849b          	addiw	s1,s1,1
    80004798:	0b24d063          	bge	s1,s2,80004838 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000479c:	00149793          	slli	a5,s1,0x1
    800047a0:	009787b3          	add	a5,a5,s1
    800047a4:	00379793          	slli	a5,a5,0x3
    800047a8:	00fa07b3          	add	a5,s4,a5
    800047ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800047b0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800047b4:	00006717          	auipc	a4,0x6
    800047b8:	fac73703          	ld	a4,-84(a4) # 8000a760 <_ZL10waitForAll>
    800047bc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800047c0:	02905863          	blez	s1,800047f0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800047c4:	02800513          	li	a0,40
    800047c8:	ffffd097          	auipc	ra,0xffffd
    800047cc:	458080e7          	jalr	1112(ra) # 80001c20 <_Znwm>
    800047d0:	00050c93          	mv	s9,a0
    800047d4:	00149c13          	slli	s8,s1,0x1
    800047d8:	009c0c33          	add	s8,s8,s1
    800047dc:	003c1c13          	slli	s8,s8,0x3
    800047e0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	6c0080e7          	jalr	1728(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    800047ec:	f79ff06f          	j	80004764 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800047f0:	02800513          	li	a0,40
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	42c080e7          	jalr	1068(ra) # 80001c20 <_Znwm>
    800047fc:	00050c93          	mv	s9,a0
    80004800:	00149c13          	slli	s8,s1,0x1
    80004804:	009c0c33          	add	s8,s8,s1
    80004808:	003c1c13          	slli	s8,s8,0x3
    8000480c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	694080e7          	jalr	1684(ra) # 80001ea4 <_ZN6ThreadC1Ev>
    80004818:	00006797          	auipc	a5,0x6
    8000481c:	de078793          	addi	a5,a5,-544 # 8000a5f8 <_ZTV16ProducerKeyboard+0x10>
    80004820:	00fcb023          	sd	a5,0(s9)
    80004824:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004828:	00349793          	slli	a5,s1,0x3
    8000482c:	00f987b3          	add	a5,s3,a5
    80004830:	0197b023          	sd	s9,0(a5)
    80004834:	f4dff06f          	j	80004780 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	618080e7          	jalr	1560(ra) # 80001e50 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004840:	00000493          	li	s1,0
    80004844:	00994e63          	blt	s2,s1,80004860 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004848:	00006517          	auipc	a0,0x6
    8000484c:	f1853503          	ld	a0,-232(a0) # 8000a760 <_ZL10waitForAll>
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	6c0080e7          	jalr	1728(ra) # 80001f10 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004858:	0014849b          	addiw	s1,s1,1
    8000485c:	fe9ff06f          	j	80004844 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004860:	00000493          	li	s1,0
    80004864:	0080006f          	j	8000486c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004868:	0014849b          	addiw	s1,s1,1
    8000486c:	0324d263          	bge	s1,s2,80004890 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004870:	00349793          	slli	a5,s1,0x3
    80004874:	00f987b3          	add	a5,s3,a5
    80004878:	0007b503          	ld	a0,0(a5)
    8000487c:	fe0506e3          	beqz	a0,80004868 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004880:	00053783          	ld	a5,0(a0)
    80004884:	0087b783          	ld	a5,8(a5)
    80004888:	000780e7          	jalr	a5
    8000488c:	fddff06f          	j	80004868 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004890:	000b0a63          	beqz	s6,800048a4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004894:	000b3783          	ld	a5,0(s6)
    80004898:	0087b783          	ld	a5,8(a5)
    8000489c:	000b0513          	mv	a0,s6
    800048a0:	000780e7          	jalr	a5
    delete waitForAll;
    800048a4:	00006517          	auipc	a0,0x6
    800048a8:	ebc53503          	ld	a0,-324(a0) # 8000a760 <_ZL10waitForAll>
    800048ac:	00050863          	beqz	a0,800048bc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800048b0:	00053783          	ld	a5,0(a0)
    800048b4:	0087b783          	ld	a5,8(a5)
    800048b8:	000780e7          	jalr	a5
    delete buffer;
    800048bc:	000a8e63          	beqz	s5,800048d8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800048c0:	000a8513          	mv	a0,s5
    800048c4:	00001097          	auipc	ra,0x1
    800048c8:	8a8080e7          	jalr	-1880(ra) # 8000516c <_ZN9BufferCPPD1Ev>
    800048cc:	000a8513          	mv	a0,s5
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	3a0080e7          	jalr	928(ra) # 80001c70 <_ZdlPv>
    800048d8:	000b8113          	mv	sp,s7

}
    800048dc:	f8040113          	addi	sp,s0,-128
    800048e0:	07813083          	ld	ra,120(sp)
    800048e4:	07013403          	ld	s0,112(sp)
    800048e8:	06813483          	ld	s1,104(sp)
    800048ec:	06013903          	ld	s2,96(sp)
    800048f0:	05813983          	ld	s3,88(sp)
    800048f4:	05013a03          	ld	s4,80(sp)
    800048f8:	04813a83          	ld	s5,72(sp)
    800048fc:	04013b03          	ld	s6,64(sp)
    80004900:	03813b83          	ld	s7,56(sp)
    80004904:	03013c03          	ld	s8,48(sp)
    80004908:	02813c83          	ld	s9,40(sp)
    8000490c:	08010113          	addi	sp,sp,128
    80004910:	00008067          	ret
    80004914:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004918:	000a8513          	mv	a0,s5
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	354080e7          	jalr	852(ra) # 80001c70 <_ZdlPv>
    80004924:	00048513          	mv	a0,s1
    80004928:	00007097          	auipc	ra,0x7
    8000492c:	f20080e7          	jalr	-224(ra) # 8000b848 <_Unwind_Resume>
    80004930:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004934:	00048513          	mv	a0,s1
    80004938:	ffffd097          	auipc	ra,0xffffd
    8000493c:	338080e7          	jalr	824(ra) # 80001c70 <_ZdlPv>
    80004940:	00090513          	mv	a0,s2
    80004944:	00007097          	auipc	ra,0x7
    80004948:	f04080e7          	jalr	-252(ra) # 8000b848 <_Unwind_Resume>
    8000494c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004950:	000b0513          	mv	a0,s6
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	31c080e7          	jalr	796(ra) # 80001c70 <_ZdlPv>
    8000495c:	00048513          	mv	a0,s1
    80004960:	00007097          	auipc	ra,0x7
    80004964:	ee8080e7          	jalr	-280(ra) # 8000b848 <_Unwind_Resume>
    80004968:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000496c:	000c8513          	mv	a0,s9
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	300080e7          	jalr	768(ra) # 80001c70 <_ZdlPv>
    80004978:	00048513          	mv	a0,s1
    8000497c:	00007097          	auipc	ra,0x7
    80004980:	ecc080e7          	jalr	-308(ra) # 8000b848 <_Unwind_Resume>
    80004984:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004988:	000c8513          	mv	a0,s9
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	2e4080e7          	jalr	740(ra) # 80001c70 <_ZdlPv>
    80004994:	00048513          	mv	a0,s1
    80004998:	00007097          	auipc	ra,0x7
    8000499c:	eb0080e7          	jalr	-336(ra) # 8000b848 <_Unwind_Resume>

00000000800049a0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800049a0:	ff010113          	addi	sp,sp,-16
    800049a4:	00113423          	sd	ra,8(sp)
    800049a8:	00813023          	sd	s0,0(sp)
    800049ac:	01010413          	addi	s0,sp,16
    800049b0:	00006797          	auipc	a5,0x6
    800049b4:	c9878793          	addi	a5,a5,-872 # 8000a648 <_ZTV12ConsumerSync+0x10>
    800049b8:	00f53023          	sd	a5,0(a0)
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	330080e7          	jalr	816(ra) # 80001cec <_ZN6ThreadD1Ev>
    800049c4:	00813083          	ld	ra,8(sp)
    800049c8:	00013403          	ld	s0,0(sp)
    800049cc:	01010113          	addi	sp,sp,16
    800049d0:	00008067          	ret

00000000800049d4 <_ZN12ConsumerSyncD0Ev>:
    800049d4:	fe010113          	addi	sp,sp,-32
    800049d8:	00113c23          	sd	ra,24(sp)
    800049dc:	00813823          	sd	s0,16(sp)
    800049e0:	00913423          	sd	s1,8(sp)
    800049e4:	02010413          	addi	s0,sp,32
    800049e8:	00050493          	mv	s1,a0
    800049ec:	00006797          	auipc	a5,0x6
    800049f0:	c5c78793          	addi	a5,a5,-932 # 8000a648 <_ZTV12ConsumerSync+0x10>
    800049f4:	00f53023          	sd	a5,0(a0)
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	2f4080e7          	jalr	756(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004a00:	00048513          	mv	a0,s1
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	26c080e7          	jalr	620(ra) # 80001c70 <_ZdlPv>
    80004a0c:	01813083          	ld	ra,24(sp)
    80004a10:	01013403          	ld	s0,16(sp)
    80004a14:	00813483          	ld	s1,8(sp)
    80004a18:	02010113          	addi	sp,sp,32
    80004a1c:	00008067          	ret

0000000080004a20 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004a20:	ff010113          	addi	sp,sp,-16
    80004a24:	00113423          	sd	ra,8(sp)
    80004a28:	00813023          	sd	s0,0(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    80004a30:	00006797          	auipc	a5,0x6
    80004a34:	bf078793          	addi	a5,a5,-1040 # 8000a620 <_ZTV12ProducerSync+0x10>
    80004a38:	00f53023          	sd	a5,0(a0)
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	2b0080e7          	jalr	688(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004a44:	00813083          	ld	ra,8(sp)
    80004a48:	00013403          	ld	s0,0(sp)
    80004a4c:	01010113          	addi	sp,sp,16
    80004a50:	00008067          	ret

0000000080004a54 <_ZN12ProducerSyncD0Ev>:
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	02010413          	addi	s0,sp,32
    80004a68:	00050493          	mv	s1,a0
    80004a6c:	00006797          	auipc	a5,0x6
    80004a70:	bb478793          	addi	a5,a5,-1100 # 8000a620 <_ZTV12ProducerSync+0x10>
    80004a74:	00f53023          	sd	a5,0(a0)
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	274080e7          	jalr	628(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004a80:	00048513          	mv	a0,s1
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	1ec080e7          	jalr	492(ra) # 80001c70 <_ZdlPv>
    80004a8c:	01813083          	ld	ra,24(sp)
    80004a90:	01013403          	ld	s0,16(sp)
    80004a94:	00813483          	ld	s1,8(sp)
    80004a98:	02010113          	addi	sp,sp,32
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004aa0:	ff010113          	addi	sp,sp,-16
    80004aa4:	00113423          	sd	ra,8(sp)
    80004aa8:	00813023          	sd	s0,0(sp)
    80004aac:	01010413          	addi	s0,sp,16
    80004ab0:	00006797          	auipc	a5,0x6
    80004ab4:	b4878793          	addi	a5,a5,-1208 # 8000a5f8 <_ZTV16ProducerKeyboard+0x10>
    80004ab8:	00f53023          	sd	a5,0(a0)
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	230080e7          	jalr	560(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004ac4:	00813083          	ld	ra,8(sp)
    80004ac8:	00013403          	ld	s0,0(sp)
    80004acc:	01010113          	addi	sp,sp,16
    80004ad0:	00008067          	ret

0000000080004ad4 <_ZN16ProducerKeyboardD0Ev>:
    80004ad4:	fe010113          	addi	sp,sp,-32
    80004ad8:	00113c23          	sd	ra,24(sp)
    80004adc:	00813823          	sd	s0,16(sp)
    80004ae0:	00913423          	sd	s1,8(sp)
    80004ae4:	02010413          	addi	s0,sp,32
    80004ae8:	00050493          	mv	s1,a0
    80004aec:	00006797          	auipc	a5,0x6
    80004af0:	b0c78793          	addi	a5,a5,-1268 # 8000a5f8 <_ZTV16ProducerKeyboard+0x10>
    80004af4:	00f53023          	sd	a5,0(a0)
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	1f4080e7          	jalr	500(ra) # 80001cec <_ZN6ThreadD1Ev>
    80004b00:	00048513          	mv	a0,s1
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	16c080e7          	jalr	364(ra) # 80001c70 <_ZdlPv>
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	02010113          	addi	sp,sp,32
    80004b1c:	00008067          	ret

0000000080004b20 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004b20:	ff010113          	addi	sp,sp,-16
    80004b24:	00113423          	sd	ra,8(sp)
    80004b28:	00813023          	sd	s0,0(sp)
    80004b2c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004b30:	02053583          	ld	a1,32(a0)
    80004b34:	fffff097          	auipc	ra,0xfffff
    80004b38:	7e4080e7          	jalr	2020(ra) # 80004318 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004b3c:	00813083          	ld	ra,8(sp)
    80004b40:	00013403          	ld	s0,0(sp)
    80004b44:	01010113          	addi	sp,sp,16
    80004b48:	00008067          	ret

0000000080004b4c <_ZN12ProducerSync3runEv>:
    void run() override {
    80004b4c:	ff010113          	addi	sp,sp,-16
    80004b50:	00113423          	sd	ra,8(sp)
    80004b54:	00813023          	sd	s0,0(sp)
    80004b58:	01010413          	addi	s0,sp,16
        producer(td);
    80004b5c:	02053583          	ld	a1,32(a0)
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	878080e7          	jalr	-1928(ra) # 800043d8 <_ZN12ProducerSync8producerEPv>
    }
    80004b68:	00813083          	ld	ra,8(sp)
    80004b6c:	00013403          	ld	s0,0(sp)
    80004b70:	01010113          	addi	sp,sp,16
    80004b74:	00008067          	ret

0000000080004b78 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004b78:	ff010113          	addi	sp,sp,-16
    80004b7c:	00113423          	sd	ra,8(sp)
    80004b80:	00813023          	sd	s0,0(sp)
    80004b84:	01010413          	addi	s0,sp,16
        consumer(td);
    80004b88:	02053583          	ld	a1,32(a0)
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	8e0080e7          	jalr	-1824(ra) # 8000446c <_ZN12ConsumerSync8consumerEPv>
    }
    80004b94:	00813083          	ld	ra,8(sp)
    80004b98:	00013403          	ld	s0,0(sp)
    80004b9c:	01010113          	addi	sp,sp,16
    80004ba0:	00008067          	ret

0000000080004ba4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004ba4:	fe010113          	addi	sp,sp,-32
    80004ba8:	00113c23          	sd	ra,24(sp)
    80004bac:	00813823          	sd	s0,16(sp)
    80004bb0:	00913423          	sd	s1,8(sp)
    80004bb4:	02010413          	addi	s0,sp,32
    80004bb8:	00050493          	mv	s1,a0
    LOCK();
    80004bbc:	00100613          	li	a2,1
    80004bc0:	00000593          	li	a1,0
    80004bc4:	00006517          	auipc	a0,0x6
    80004bc8:	ba450513          	addi	a0,a0,-1116 # 8000a768 <lockPrint>
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	658080e7          	jalr	1624(ra) # 80001224 <copy_and_swap>
    80004bd4:	00050863          	beqz	a0,80004be4 <_Z11printStringPKc+0x40>
    80004bd8:	ffffc097          	auipc	ra,0xffffc
    80004bdc:	6d0080e7          	jalr	1744(ra) # 800012a8 <_Z15thread_dispatchv>
    80004be0:	fddff06f          	j	80004bbc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004be4:	0004c503          	lbu	a0,0(s1)
    80004be8:	00050a63          	beqz	a0,80004bfc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	888080e7          	jalr	-1912(ra) # 80001474 <_Z4putcc>
        string++;
    80004bf4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004bf8:	fedff06f          	j	80004be4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004bfc:	00000613          	li	a2,0
    80004c00:	00100593          	li	a1,1
    80004c04:	00006517          	auipc	a0,0x6
    80004c08:	b6450513          	addi	a0,a0,-1180 # 8000a768 <lockPrint>
    80004c0c:	ffffc097          	auipc	ra,0xffffc
    80004c10:	618080e7          	jalr	1560(ra) # 80001224 <copy_and_swap>
    80004c14:	fe0514e3          	bnez	a0,80004bfc <_Z11printStringPKc+0x58>
}
    80004c18:	01813083          	ld	ra,24(sp)
    80004c1c:	01013403          	ld	s0,16(sp)
    80004c20:	00813483          	ld	s1,8(sp)
    80004c24:	02010113          	addi	sp,sp,32
    80004c28:	00008067          	ret

0000000080004c2c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004c2c:	fd010113          	addi	sp,sp,-48
    80004c30:	02113423          	sd	ra,40(sp)
    80004c34:	02813023          	sd	s0,32(sp)
    80004c38:	00913c23          	sd	s1,24(sp)
    80004c3c:	01213823          	sd	s2,16(sp)
    80004c40:	01313423          	sd	s3,8(sp)
    80004c44:	01413023          	sd	s4,0(sp)
    80004c48:	03010413          	addi	s0,sp,48
    80004c4c:	00050993          	mv	s3,a0
    80004c50:	00058a13          	mv	s4,a1
    LOCK();
    80004c54:	00100613          	li	a2,1
    80004c58:	00000593          	li	a1,0
    80004c5c:	00006517          	auipc	a0,0x6
    80004c60:	b0c50513          	addi	a0,a0,-1268 # 8000a768 <lockPrint>
    80004c64:	ffffc097          	auipc	ra,0xffffc
    80004c68:	5c0080e7          	jalr	1472(ra) # 80001224 <copy_and_swap>
    80004c6c:	00050863          	beqz	a0,80004c7c <_Z9getStringPci+0x50>
    80004c70:	ffffc097          	auipc	ra,0xffffc
    80004c74:	638080e7          	jalr	1592(ra) # 800012a8 <_Z15thread_dispatchv>
    80004c78:	fddff06f          	j	80004c54 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004c7c:	00000913          	li	s2,0
    80004c80:	00090493          	mv	s1,s2
    80004c84:	0019091b          	addiw	s2,s2,1
    80004c88:	03495a63          	bge	s2,s4,80004cbc <_Z9getStringPci+0x90>
        cc = getc();
    80004c8c:	ffffc097          	auipc	ra,0xffffc
    80004c90:	7c0080e7          	jalr	1984(ra) # 8000144c <_Z4getcv>
        if(cc < 1)
    80004c94:	02050463          	beqz	a0,80004cbc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004c98:	009984b3          	add	s1,s3,s1
    80004c9c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004ca0:	00a00793          	li	a5,10
    80004ca4:	00f50a63          	beq	a0,a5,80004cb8 <_Z9getStringPci+0x8c>
    80004ca8:	00d00793          	li	a5,13
    80004cac:	fcf51ae3          	bne	a0,a5,80004c80 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004cb0:	00090493          	mv	s1,s2
    80004cb4:	0080006f          	j	80004cbc <_Z9getStringPci+0x90>
    80004cb8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004cbc:	009984b3          	add	s1,s3,s1
    80004cc0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004cc4:	00000613          	li	a2,0
    80004cc8:	00100593          	li	a1,1
    80004ccc:	00006517          	auipc	a0,0x6
    80004cd0:	a9c50513          	addi	a0,a0,-1380 # 8000a768 <lockPrint>
    80004cd4:	ffffc097          	auipc	ra,0xffffc
    80004cd8:	550080e7          	jalr	1360(ra) # 80001224 <copy_and_swap>
    80004cdc:	fe0514e3          	bnez	a0,80004cc4 <_Z9getStringPci+0x98>
    return buf;
}
    80004ce0:	00098513          	mv	a0,s3
    80004ce4:	02813083          	ld	ra,40(sp)
    80004ce8:	02013403          	ld	s0,32(sp)
    80004cec:	01813483          	ld	s1,24(sp)
    80004cf0:	01013903          	ld	s2,16(sp)
    80004cf4:	00813983          	ld	s3,8(sp)
    80004cf8:	00013a03          	ld	s4,0(sp)
    80004cfc:	03010113          	addi	sp,sp,48
    80004d00:	00008067          	ret

0000000080004d04 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004d04:	ff010113          	addi	sp,sp,-16
    80004d08:	00813423          	sd	s0,8(sp)
    80004d0c:	01010413          	addi	s0,sp,16
    80004d10:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004d14:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004d18:	0006c603          	lbu	a2,0(a3)
    80004d1c:	fd06071b          	addiw	a4,a2,-48
    80004d20:	0ff77713          	andi	a4,a4,255
    80004d24:	00900793          	li	a5,9
    80004d28:	02e7e063          	bltu	a5,a4,80004d48 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004d2c:	0025179b          	slliw	a5,a0,0x2
    80004d30:	00a787bb          	addw	a5,a5,a0
    80004d34:	0017979b          	slliw	a5,a5,0x1
    80004d38:	00168693          	addi	a3,a3,1
    80004d3c:	00c787bb          	addw	a5,a5,a2
    80004d40:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004d44:	fd5ff06f          	j	80004d18 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004d48:	00813403          	ld	s0,8(sp)
    80004d4c:	01010113          	addi	sp,sp,16
    80004d50:	00008067          	ret

0000000080004d54 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004d54:	fc010113          	addi	sp,sp,-64
    80004d58:	02113c23          	sd	ra,56(sp)
    80004d5c:	02813823          	sd	s0,48(sp)
    80004d60:	02913423          	sd	s1,40(sp)
    80004d64:	03213023          	sd	s2,32(sp)
    80004d68:	01313c23          	sd	s3,24(sp)
    80004d6c:	04010413          	addi	s0,sp,64
    80004d70:	00050493          	mv	s1,a0
    80004d74:	00058913          	mv	s2,a1
    80004d78:	00060993          	mv	s3,a2
    LOCK();
    80004d7c:	00100613          	li	a2,1
    80004d80:	00000593          	li	a1,0
    80004d84:	00006517          	auipc	a0,0x6
    80004d88:	9e450513          	addi	a0,a0,-1564 # 8000a768 <lockPrint>
    80004d8c:	ffffc097          	auipc	ra,0xffffc
    80004d90:	498080e7          	jalr	1176(ra) # 80001224 <copy_and_swap>
    80004d94:	00050863          	beqz	a0,80004da4 <_Z8printIntiii+0x50>
    80004d98:	ffffc097          	auipc	ra,0xffffc
    80004d9c:	510080e7          	jalr	1296(ra) # 800012a8 <_Z15thread_dispatchv>
    80004da0:	fddff06f          	j	80004d7c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004da4:	00098463          	beqz	s3,80004dac <_Z8printIntiii+0x58>
    80004da8:	0804c463          	bltz	s1,80004e30 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004dac:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004db0:	00000593          	li	a1,0
    }

    i = 0;
    80004db4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004db8:	0009079b          	sext.w	a5,s2
    80004dbc:	0325773b          	remuw	a4,a0,s2
    80004dc0:	00048613          	mv	a2,s1
    80004dc4:	0014849b          	addiw	s1,s1,1
    80004dc8:	02071693          	slli	a3,a4,0x20
    80004dcc:	0206d693          	srli	a3,a3,0x20
    80004dd0:	00006717          	auipc	a4,0x6
    80004dd4:	89070713          	addi	a4,a4,-1904 # 8000a660 <digits>
    80004dd8:	00d70733          	add	a4,a4,a3
    80004ddc:	00074683          	lbu	a3,0(a4)
    80004de0:	fd040713          	addi	a4,s0,-48
    80004de4:	00c70733          	add	a4,a4,a2
    80004de8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004dec:	0005071b          	sext.w	a4,a0
    80004df0:	0325553b          	divuw	a0,a0,s2
    80004df4:	fcf772e3          	bgeu	a4,a5,80004db8 <_Z8printIntiii+0x64>
    if(neg)
    80004df8:	00058c63          	beqz	a1,80004e10 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004dfc:	fd040793          	addi	a5,s0,-48
    80004e00:	009784b3          	add	s1,a5,s1
    80004e04:	02d00793          	li	a5,45
    80004e08:	fef48823          	sb	a5,-16(s1)
    80004e0c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004e10:	fff4849b          	addiw	s1,s1,-1
    80004e14:	0204c463          	bltz	s1,80004e3c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004e18:	fd040793          	addi	a5,s0,-48
    80004e1c:	009787b3          	add	a5,a5,s1
    80004e20:	ff07c503          	lbu	a0,-16(a5)
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	650080e7          	jalr	1616(ra) # 80001474 <_Z4putcc>
    80004e2c:	fe5ff06f          	j	80004e10 <_Z8printIntiii+0xbc>
        x = -xx;
    80004e30:	4090053b          	negw	a0,s1
        neg = 1;
    80004e34:	00100593          	li	a1,1
        x = -xx;
    80004e38:	f7dff06f          	j	80004db4 <_Z8printIntiii+0x60>

    UNLOCK();
    80004e3c:	00000613          	li	a2,0
    80004e40:	00100593          	li	a1,1
    80004e44:	00006517          	auipc	a0,0x6
    80004e48:	92450513          	addi	a0,a0,-1756 # 8000a768 <lockPrint>
    80004e4c:	ffffc097          	auipc	ra,0xffffc
    80004e50:	3d8080e7          	jalr	984(ra) # 80001224 <copy_and_swap>
    80004e54:	fe0514e3          	bnez	a0,80004e3c <_Z8printIntiii+0xe8>
    80004e58:	03813083          	ld	ra,56(sp)
    80004e5c:	03013403          	ld	s0,48(sp)
    80004e60:	02813483          	ld	s1,40(sp)
    80004e64:	02013903          	ld	s2,32(sp)
    80004e68:	01813983          	ld	s3,24(sp)
    80004e6c:	04010113          	addi	sp,sp,64
    80004e70:	00008067          	ret

0000000080004e74 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004e74:	fd010113          	addi	sp,sp,-48
    80004e78:	02113423          	sd	ra,40(sp)
    80004e7c:	02813023          	sd	s0,32(sp)
    80004e80:	00913c23          	sd	s1,24(sp)
    80004e84:	01213823          	sd	s2,16(sp)
    80004e88:	01313423          	sd	s3,8(sp)
    80004e8c:	03010413          	addi	s0,sp,48
    80004e90:	00050493          	mv	s1,a0
    80004e94:	00058913          	mv	s2,a1
    80004e98:	0015879b          	addiw	a5,a1,1
    80004e9c:	0007851b          	sext.w	a0,a5
    80004ea0:	00f4a023          	sw	a5,0(s1)
    80004ea4:	0004a823          	sw	zero,16(s1)
    80004ea8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004eac:	00251513          	slli	a0,a0,0x2
    80004eb0:	ffffc097          	auipc	ra,0xffffc
    80004eb4:	394080e7          	jalr	916(ra) # 80001244 <_Z9mem_allocm>
    80004eb8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004ebc:	01000513          	li	a0,16
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	d60080e7          	jalr	-672(ra) # 80001c20 <_Znwm>
    80004ec8:	00050993          	mv	s3,a0
    80004ecc:	00000593          	li	a1,0
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	008080e7          	jalr	8(ra) # 80001ed8 <_ZN9SemaphoreC1Ej>
    80004ed8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004edc:	01000513          	li	a0,16
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	d40080e7          	jalr	-704(ra) # 80001c20 <_Znwm>
    80004ee8:	00050993          	mv	s3,a0
    80004eec:	00090593          	mv	a1,s2
    80004ef0:	ffffd097          	auipc	ra,0xffffd
    80004ef4:	fe8080e7          	jalr	-24(ra) # 80001ed8 <_ZN9SemaphoreC1Ej>
    80004ef8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004efc:	01000513          	li	a0,16
    80004f00:	ffffd097          	auipc	ra,0xffffd
    80004f04:	d20080e7          	jalr	-736(ra) # 80001c20 <_Znwm>
    80004f08:	00050913          	mv	s2,a0
    80004f0c:	00100593          	li	a1,1
    80004f10:	ffffd097          	auipc	ra,0xffffd
    80004f14:	fc8080e7          	jalr	-56(ra) # 80001ed8 <_ZN9SemaphoreC1Ej>
    80004f18:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004f1c:	01000513          	li	a0,16
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	d00080e7          	jalr	-768(ra) # 80001c20 <_Znwm>
    80004f28:	00050913          	mv	s2,a0
    80004f2c:	00100593          	li	a1,1
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	fa8080e7          	jalr	-88(ra) # 80001ed8 <_ZN9SemaphoreC1Ej>
    80004f38:	0324b823          	sd	s2,48(s1)
}
    80004f3c:	02813083          	ld	ra,40(sp)
    80004f40:	02013403          	ld	s0,32(sp)
    80004f44:	01813483          	ld	s1,24(sp)
    80004f48:	01013903          	ld	s2,16(sp)
    80004f4c:	00813983          	ld	s3,8(sp)
    80004f50:	03010113          	addi	sp,sp,48
    80004f54:	00008067          	ret
    80004f58:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004f5c:	00098513          	mv	a0,s3
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	d10080e7          	jalr	-752(ra) # 80001c70 <_ZdlPv>
    80004f68:	00048513          	mv	a0,s1
    80004f6c:	00007097          	auipc	ra,0x7
    80004f70:	8dc080e7          	jalr	-1828(ra) # 8000b848 <_Unwind_Resume>
    80004f74:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004f78:	00098513          	mv	a0,s3
    80004f7c:	ffffd097          	auipc	ra,0xffffd
    80004f80:	cf4080e7          	jalr	-780(ra) # 80001c70 <_ZdlPv>
    80004f84:	00048513          	mv	a0,s1
    80004f88:	00007097          	auipc	ra,0x7
    80004f8c:	8c0080e7          	jalr	-1856(ra) # 8000b848 <_Unwind_Resume>
    80004f90:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004f94:	00090513          	mv	a0,s2
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	cd8080e7          	jalr	-808(ra) # 80001c70 <_ZdlPv>
    80004fa0:	00048513          	mv	a0,s1
    80004fa4:	00007097          	auipc	ra,0x7
    80004fa8:	8a4080e7          	jalr	-1884(ra) # 8000b848 <_Unwind_Resume>
    80004fac:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004fb0:	00090513          	mv	a0,s2
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	cbc080e7          	jalr	-836(ra) # 80001c70 <_ZdlPv>
    80004fbc:	00048513          	mv	a0,s1
    80004fc0:	00007097          	auipc	ra,0x7
    80004fc4:	888080e7          	jalr	-1912(ra) # 8000b848 <_Unwind_Resume>

0000000080004fc8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004fc8:	fe010113          	addi	sp,sp,-32
    80004fcc:	00113c23          	sd	ra,24(sp)
    80004fd0:	00813823          	sd	s0,16(sp)
    80004fd4:	00913423          	sd	s1,8(sp)
    80004fd8:	01213023          	sd	s2,0(sp)
    80004fdc:	02010413          	addi	s0,sp,32
    80004fe0:	00050493          	mv	s1,a0
    80004fe4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004fe8:	01853503          	ld	a0,24(a0)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	f24080e7          	jalr	-220(ra) # 80001f10 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004ff4:	0304b503          	ld	a0,48(s1)
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	f18080e7          	jalr	-232(ra) # 80001f10 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005000:	0084b783          	ld	a5,8(s1)
    80005004:	0144a703          	lw	a4,20(s1)
    80005008:	00271713          	slli	a4,a4,0x2
    8000500c:	00e787b3          	add	a5,a5,a4
    80005010:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005014:	0144a783          	lw	a5,20(s1)
    80005018:	0017879b          	addiw	a5,a5,1
    8000501c:	0004a703          	lw	a4,0(s1)
    80005020:	02e7e7bb          	remw	a5,a5,a4
    80005024:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005028:	0304b503          	ld	a0,48(s1)
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	f10080e7          	jalr	-240(ra) # 80001f3c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005034:	0204b503          	ld	a0,32(s1)
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	f04080e7          	jalr	-252(ra) # 80001f3c <_ZN9Semaphore6signalEv>

}
    80005040:	01813083          	ld	ra,24(sp)
    80005044:	01013403          	ld	s0,16(sp)
    80005048:	00813483          	ld	s1,8(sp)
    8000504c:	00013903          	ld	s2,0(sp)
    80005050:	02010113          	addi	sp,sp,32
    80005054:	00008067          	ret

0000000080005058 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005058:	fe010113          	addi	sp,sp,-32
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	00813823          	sd	s0,16(sp)
    80005064:	00913423          	sd	s1,8(sp)
    80005068:	01213023          	sd	s2,0(sp)
    8000506c:	02010413          	addi	s0,sp,32
    80005070:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005074:	02053503          	ld	a0,32(a0)
    80005078:	ffffd097          	auipc	ra,0xffffd
    8000507c:	e98080e7          	jalr	-360(ra) # 80001f10 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005080:	0284b503          	ld	a0,40(s1)
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	e8c080e7          	jalr	-372(ra) # 80001f10 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000508c:	0084b703          	ld	a4,8(s1)
    80005090:	0104a783          	lw	a5,16(s1)
    80005094:	00279693          	slli	a3,a5,0x2
    80005098:	00d70733          	add	a4,a4,a3
    8000509c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800050a0:	0017879b          	addiw	a5,a5,1
    800050a4:	0004a703          	lw	a4,0(s1)
    800050a8:	02e7e7bb          	remw	a5,a5,a4
    800050ac:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800050b0:	0284b503          	ld	a0,40(s1)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	e88080e7          	jalr	-376(ra) # 80001f3c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800050bc:	0184b503          	ld	a0,24(s1)
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	e7c080e7          	jalr	-388(ra) # 80001f3c <_ZN9Semaphore6signalEv>

    return ret;
}
    800050c8:	00090513          	mv	a0,s2
    800050cc:	01813083          	ld	ra,24(sp)
    800050d0:	01013403          	ld	s0,16(sp)
    800050d4:	00813483          	ld	s1,8(sp)
    800050d8:	00013903          	ld	s2,0(sp)
    800050dc:	02010113          	addi	sp,sp,32
    800050e0:	00008067          	ret

00000000800050e4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800050e4:	fe010113          	addi	sp,sp,-32
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	00813823          	sd	s0,16(sp)
    800050f0:	00913423          	sd	s1,8(sp)
    800050f4:	01213023          	sd	s2,0(sp)
    800050f8:	02010413          	addi	s0,sp,32
    800050fc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005100:	02853503          	ld	a0,40(a0)
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	e0c080e7          	jalr	-500(ra) # 80001f10 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000510c:	0304b503          	ld	a0,48(s1)
    80005110:	ffffd097          	auipc	ra,0xffffd
    80005114:	e00080e7          	jalr	-512(ra) # 80001f10 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005118:	0144a783          	lw	a5,20(s1)
    8000511c:	0104a903          	lw	s2,16(s1)
    80005120:	0327ce63          	blt	a5,s2,8000515c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005124:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005128:	0304b503          	ld	a0,48(s1)
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	e10080e7          	jalr	-496(ra) # 80001f3c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005134:	0284b503          	ld	a0,40(s1)
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	e04080e7          	jalr	-508(ra) # 80001f3c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005140:	00090513          	mv	a0,s2
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00813483          	ld	s1,8(sp)
    80005150:	00013903          	ld	s2,0(sp)
    80005154:	02010113          	addi	sp,sp,32
    80005158:	00008067          	ret
        ret = cap - head + tail;
    8000515c:	0004a703          	lw	a4,0(s1)
    80005160:	4127093b          	subw	s2,a4,s2
    80005164:	00f9093b          	addw	s2,s2,a5
    80005168:	fc1ff06f          	j	80005128 <_ZN9BufferCPP6getCntEv+0x44>

000000008000516c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000516c:	fe010113          	addi	sp,sp,-32
    80005170:	00113c23          	sd	ra,24(sp)
    80005174:	00813823          	sd	s0,16(sp)
    80005178:	00913423          	sd	s1,8(sp)
    8000517c:	02010413          	addi	s0,sp,32
    80005180:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005184:	00a00513          	li	a0,10
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	e94080e7          	jalr	-364(ra) # 8000201c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005190:	00003517          	auipc	a0,0x3
    80005194:	12050513          	addi	a0,a0,288 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80005198:	00000097          	auipc	ra,0x0
    8000519c:	a0c080e7          	jalr	-1524(ra) # 80004ba4 <_Z11printStringPKc>
    while (getCnt()) {
    800051a0:	00048513          	mv	a0,s1
    800051a4:	00000097          	auipc	ra,0x0
    800051a8:	f40080e7          	jalr	-192(ra) # 800050e4 <_ZN9BufferCPP6getCntEv>
    800051ac:	02050c63          	beqz	a0,800051e4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800051b0:	0084b783          	ld	a5,8(s1)
    800051b4:	0104a703          	lw	a4,16(s1)
    800051b8:	00271713          	slli	a4,a4,0x2
    800051bc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800051c0:	0007c503          	lbu	a0,0(a5)
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	e58080e7          	jalr	-424(ra) # 8000201c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800051cc:	0104a783          	lw	a5,16(s1)
    800051d0:	0017879b          	addiw	a5,a5,1
    800051d4:	0004a703          	lw	a4,0(s1)
    800051d8:	02e7e7bb          	remw	a5,a5,a4
    800051dc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800051e0:	fc1ff06f          	j	800051a0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800051e4:	02100513          	li	a0,33
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	e34080e7          	jalr	-460(ra) # 8000201c <_ZN7Console4putcEc>
    Console::putc('\n');
    800051f0:	00a00513          	li	a0,10
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	e28080e7          	jalr	-472(ra) # 8000201c <_ZN7Console4putcEc>
    mem_free(buffer);
    800051fc:	0084b503          	ld	a0,8(s1)
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	07c080e7          	jalr	124(ra) # 8000127c <_Z8mem_freePv>
    delete itemAvailable;
    80005208:	0204b503          	ld	a0,32(s1)
    8000520c:	00050863          	beqz	a0,8000521c <_ZN9BufferCPPD1Ev+0xb0>
    80005210:	00053783          	ld	a5,0(a0)
    80005214:	0087b783          	ld	a5,8(a5)
    80005218:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000521c:	0184b503          	ld	a0,24(s1)
    80005220:	00050863          	beqz	a0,80005230 <_ZN9BufferCPPD1Ev+0xc4>
    80005224:	00053783          	ld	a5,0(a0)
    80005228:	0087b783          	ld	a5,8(a5)
    8000522c:	000780e7          	jalr	a5
    delete mutexTail;
    80005230:	0304b503          	ld	a0,48(s1)
    80005234:	00050863          	beqz	a0,80005244 <_ZN9BufferCPPD1Ev+0xd8>
    80005238:	00053783          	ld	a5,0(a0)
    8000523c:	0087b783          	ld	a5,8(a5)
    80005240:	000780e7          	jalr	a5
    delete mutexHead;
    80005244:	0284b503          	ld	a0,40(s1)
    80005248:	00050863          	beqz	a0,80005258 <_ZN9BufferCPPD1Ev+0xec>
    8000524c:	00053783          	ld	a5,0(a0)
    80005250:	0087b783          	ld	a5,8(a5)
    80005254:	000780e7          	jalr	a5
}
    80005258:	01813083          	ld	ra,24(sp)
    8000525c:	01013403          	ld	s0,16(sp)
    80005260:	00813483          	ld	s1,8(sp)
    80005264:	02010113          	addi	sp,sp,32
    80005268:	00008067          	ret

000000008000526c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000526c:	fe010113          	addi	sp,sp,-32
    80005270:	00113c23          	sd	ra,24(sp)
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00913423          	sd	s1,8(sp)
    8000527c:	01213023          	sd	s2,0(sp)
    80005280:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005284:	00003517          	auipc	a0,0x3
    80005288:	04450513          	addi	a0,a0,68 # 800082c8 <CONSOLE_STATUS+0x2b8>
    8000528c:	00000097          	auipc	ra,0x0
    80005290:	918080e7          	jalr	-1768(ra) # 80004ba4 <_Z11printStringPKc>
    int test = getc() - '0';
    80005294:	ffffc097          	auipc	ra,0xffffc
    80005298:	1b8080e7          	jalr	440(ra) # 8000144c <_Z4getcv>
    8000529c:	00050913          	mv	s2,a0
    800052a0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	1a8080e7          	jalr	424(ra) # 8000144c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800052ac:	fcb9091b          	addiw	s2,s2,-53
    800052b0:	00100793          	li	a5,1
    800052b4:	0327f463          	bgeu	a5,s2,800052dc <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800052b8:	00700793          	li	a5,7
    800052bc:	0e97e263          	bltu	a5,s1,800053a0 <_Z8userMainv+0x134>
    800052c0:	00249493          	slli	s1,s1,0x2
    800052c4:	00003717          	auipc	a4,0x3
    800052c8:	21c70713          	addi	a4,a4,540 # 800084e0 <CONSOLE_STATUS+0x4d0>
    800052cc:	00e484b3          	add	s1,s1,a4
    800052d0:	0004a783          	lw	a5,0(s1)
    800052d4:	00e787b3          	add	a5,a5,a4
    800052d8:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800052dc:	00003517          	auipc	a0,0x3
    800052e0:	00c50513          	addi	a0,a0,12 # 800082e8 <CONSOLE_STATUS+0x2d8>
    800052e4:	00000097          	auipc	ra,0x0
    800052e8:	8c0080e7          	jalr	-1856(ra) # 80004ba4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	00813483          	ld	s1,8(sp)
    800052f8:	00013903          	ld	s2,0(sp)
    800052fc:	02010113          	addi	sp,sp,32
    80005300:	00008067          	ret
            Threads_C_API_test();
    80005304:	fffff097          	auipc	ra,0xfffff
    80005308:	f18080e7          	jalr	-232(ra) # 8000421c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000530c:	00003517          	auipc	a0,0x3
    80005310:	00c50513          	addi	a0,a0,12 # 80008318 <CONSOLE_STATUS+0x308>
    80005314:	00000097          	auipc	ra,0x0
    80005318:	890080e7          	jalr	-1904(ra) # 80004ba4 <_Z11printStringPKc>
            break;
    8000531c:	fd1ff06f          	j	800052ec <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	ddc080e7          	jalr	-548(ra) # 800030fc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005328:	00003517          	auipc	a0,0x3
    8000532c:	03050513          	addi	a0,a0,48 # 80008358 <CONSOLE_STATUS+0x348>
    80005330:	00000097          	auipc	ra,0x0
    80005334:	874080e7          	jalr	-1932(ra) # 80004ba4 <_Z11printStringPKc>
            break;
    80005338:	fb5ff06f          	j	800052ec <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	614080e7          	jalr	1556(ra) # 80002950 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005344:	00003517          	auipc	a0,0x3
    80005348:	05450513          	addi	a0,a0,84 # 80008398 <CONSOLE_STATUS+0x388>
    8000534c:	00000097          	auipc	ra,0x0
    80005350:	858080e7          	jalr	-1960(ra) # 80004ba4 <_Z11printStringPKc>
            break;
    80005354:	f99ff06f          	j	800052ec <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005358:	fffff097          	auipc	ra,0xfffff
    8000535c:	208080e7          	jalr	520(ra) # 80004560 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005360:	00003517          	auipc	a0,0x3
    80005364:	08850513          	addi	a0,a0,136 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005368:	00000097          	auipc	ra,0x0
    8000536c:	83c080e7          	jalr	-1988(ra) # 80004ba4 <_Z11printStringPKc>
            break;
    80005370:	f7dff06f          	j	800052ec <_Z8userMainv+0x80>
            System_Mode_test();
    80005374:	00000097          	auipc	ra,0x0
    80005378:	658080e7          	jalr	1624(ra) # 800059cc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000537c:	00003517          	auipc	a0,0x3
    80005380:	0c450513          	addi	a0,a0,196 # 80008440 <CONSOLE_STATUS+0x430>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	820080e7          	jalr	-2016(ra) # 80004ba4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000538c:	00003517          	auipc	a0,0x3
    80005390:	0d450513          	addi	a0,a0,212 # 80008460 <CONSOLE_STATUS+0x450>
    80005394:	00000097          	auipc	ra,0x0
    80005398:	810080e7          	jalr	-2032(ra) # 80004ba4 <_Z11printStringPKc>
            break;
    8000539c:	f51ff06f          	j	800052ec <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800053a0:	00003517          	auipc	a0,0x3
    800053a4:	11850513          	addi	a0,a0,280 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	7fc080e7          	jalr	2044(ra) # 80004ba4 <_Z11printStringPKc>
    800053b0:	f3dff06f          	j	800052ec <_Z8userMainv+0x80>

00000000800053b4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800053b4:	fe010113          	addi	sp,sp,-32
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00813823          	sd	s0,16(sp)
    800053c0:	00913423          	sd	s1,8(sp)
    800053c4:	01213023          	sd	s2,0(sp)
    800053c8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800053cc:	00053903          	ld	s2,0(a0)
    int i = 6;
    800053d0:	00600493          	li	s1,6
    while (--i > 0) {
    800053d4:	fff4849b          	addiw	s1,s1,-1
    800053d8:	04905463          	blez	s1,80005420 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800053dc:	00003517          	auipc	a0,0x3
    800053e0:	12450513          	addi	a0,a0,292 # 80008500 <CONSOLE_STATUS+0x4f0>
    800053e4:	fffff097          	auipc	ra,0xfffff
    800053e8:	7c0080e7          	jalr	1984(ra) # 80004ba4 <_Z11printStringPKc>
        printInt(sleep_time);
    800053ec:	00000613          	li	a2,0
    800053f0:	00a00593          	li	a1,10
    800053f4:	0009051b          	sext.w	a0,s2
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	95c080e7          	jalr	-1700(ra) # 80004d54 <_Z8printIntiii>
        printString(" !\n");
    80005400:	00003517          	auipc	a0,0x3
    80005404:	10850513          	addi	a0,a0,264 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005408:	fffff097          	auipc	ra,0xfffff
    8000540c:	79c080e7          	jalr	1948(ra) # 80004ba4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005410:	00090513          	mv	a0,s2
    80005414:	ffffc097          	auipc	ra,0xffffc
    80005418:	0a4080e7          	jalr	164(ra) # 800014b8 <_Z10time_sleepm>
    while (--i > 0) {
    8000541c:	fb9ff06f          	j	800053d4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005420:	00a00793          	li	a5,10
    80005424:	02f95933          	divu	s2,s2,a5
    80005428:	fff90913          	addi	s2,s2,-1
    8000542c:	00005797          	auipc	a5,0x5
    80005430:	34478793          	addi	a5,a5,836 # 8000a770 <_ZL8finished>
    80005434:	01278933          	add	s2,a5,s2
    80005438:	00100793          	li	a5,1
    8000543c:	00f90023          	sb	a5,0(s2)
}
    80005440:	01813083          	ld	ra,24(sp)
    80005444:	01013403          	ld	s0,16(sp)
    80005448:	00813483          	ld	s1,8(sp)
    8000544c:	00013903          	ld	s2,0(sp)
    80005450:	02010113          	addi	sp,sp,32
    80005454:	00008067          	ret

0000000080005458 <_Z12testSleepingv>:

void testSleeping() {
    80005458:	fc010113          	addi	sp,sp,-64
    8000545c:	02113c23          	sd	ra,56(sp)
    80005460:	02813823          	sd	s0,48(sp)
    80005464:	02913423          	sd	s1,40(sp)
    80005468:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000546c:	00a00793          	li	a5,10
    80005470:	fcf43823          	sd	a5,-48(s0)
    80005474:	01400793          	li	a5,20
    80005478:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000547c:	00000493          	li	s1,0
    80005480:	02c0006f          	j	800054ac <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005484:	00349793          	slli	a5,s1,0x3
    80005488:	fd040613          	addi	a2,s0,-48
    8000548c:	00f60633          	add	a2,a2,a5
    80005490:	00000597          	auipc	a1,0x0
    80005494:	f2458593          	addi	a1,a1,-220 # 800053b4 <_ZL9sleepyRunPv>
    80005498:	fc040513          	addi	a0,s0,-64
    8000549c:	00f50533          	add	a0,a0,a5
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	e50080e7          	jalr	-432(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800054a8:	0014849b          	addiw	s1,s1,1
    800054ac:	00100793          	li	a5,1
    800054b0:	fc97dae3          	bge	a5,s1,80005484 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800054b4:	00005797          	auipc	a5,0x5
    800054b8:	2bc7c783          	lbu	a5,700(a5) # 8000a770 <_ZL8finished>
    800054bc:	fe078ce3          	beqz	a5,800054b4 <_Z12testSleepingv+0x5c>
    800054c0:	00005797          	auipc	a5,0x5
    800054c4:	2b17c783          	lbu	a5,689(a5) # 8000a771 <_ZL8finished+0x1>
    800054c8:	fe0786e3          	beqz	a5,800054b4 <_Z12testSleepingv+0x5c>
}
    800054cc:	03813083          	ld	ra,56(sp)
    800054d0:	03013403          	ld	s0,48(sp)
    800054d4:	02813483          	ld	s1,40(sp)
    800054d8:	04010113          	addi	sp,sp,64
    800054dc:	00008067          	ret

00000000800054e0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800054e0:	fe010113          	addi	sp,sp,-32
    800054e4:	00113c23          	sd	ra,24(sp)
    800054e8:	00813823          	sd	s0,16(sp)
    800054ec:	00913423          	sd	s1,8(sp)
    800054f0:	01213023          	sd	s2,0(sp)
    800054f4:	02010413          	addi	s0,sp,32
    800054f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800054fc:	00100793          	li	a5,1
    80005500:	02a7f863          	bgeu	a5,a0,80005530 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005504:	00a00793          	li	a5,10
    80005508:	02f577b3          	remu	a5,a0,a5
    8000550c:	02078e63          	beqz	a5,80005548 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005510:	fff48513          	addi	a0,s1,-1
    80005514:	00000097          	auipc	ra,0x0
    80005518:	fcc080e7          	jalr	-52(ra) # 800054e0 <_ZL9fibonaccim>
    8000551c:	00050913          	mv	s2,a0
    80005520:	ffe48513          	addi	a0,s1,-2
    80005524:	00000097          	auipc	ra,0x0
    80005528:	fbc080e7          	jalr	-68(ra) # 800054e0 <_ZL9fibonaccim>
    8000552c:	00a90533          	add	a0,s2,a0
}
    80005530:	01813083          	ld	ra,24(sp)
    80005534:	01013403          	ld	s0,16(sp)
    80005538:	00813483          	ld	s1,8(sp)
    8000553c:	00013903          	ld	s2,0(sp)
    80005540:	02010113          	addi	sp,sp,32
    80005544:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	d60080e7          	jalr	-672(ra) # 800012a8 <_Z15thread_dispatchv>
    80005550:	fc1ff06f          	j	80005510 <_ZL9fibonaccim+0x30>

0000000080005554 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005554:	fe010113          	addi	sp,sp,-32
    80005558:	00113c23          	sd	ra,24(sp)
    8000555c:	00813823          	sd	s0,16(sp)
    80005560:	00913423          	sd	s1,8(sp)
    80005564:	01213023          	sd	s2,0(sp)
    80005568:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000556c:	00a00493          	li	s1,10
    80005570:	0400006f          	j	800055b0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005574:	00003517          	auipc	a0,0x3
    80005578:	ca450513          	addi	a0,a0,-860 # 80008218 <CONSOLE_STATUS+0x208>
    8000557c:	fffff097          	auipc	ra,0xfffff
    80005580:	628080e7          	jalr	1576(ra) # 80004ba4 <_Z11printStringPKc>
    80005584:	00000613          	li	a2,0
    80005588:	00a00593          	li	a1,10
    8000558c:	00048513          	mv	a0,s1
    80005590:	fffff097          	auipc	ra,0xfffff
    80005594:	7c4080e7          	jalr	1988(ra) # 80004d54 <_Z8printIntiii>
    80005598:	00003517          	auipc	a0,0x3
    8000559c:	ea050513          	addi	a0,a0,-352 # 80008438 <CONSOLE_STATUS+0x428>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	604080e7          	jalr	1540(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800055a8:	0014849b          	addiw	s1,s1,1
    800055ac:	0ff4f493          	andi	s1,s1,255
    800055b0:	00c00793          	li	a5,12
    800055b4:	fc97f0e3          	bgeu	a5,s1,80005574 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800055b8:	00003517          	auipc	a0,0x3
    800055bc:	c6850513          	addi	a0,a0,-920 # 80008220 <CONSOLE_STATUS+0x210>
    800055c0:	fffff097          	auipc	ra,0xfffff
    800055c4:	5e4080e7          	jalr	1508(ra) # 80004ba4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800055c8:	00500313          	li	t1,5
    thread_dispatch();
    800055cc:	ffffc097          	auipc	ra,0xffffc
    800055d0:	cdc080e7          	jalr	-804(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800055d4:	01000513          	li	a0,16
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	f08080e7          	jalr	-248(ra) # 800054e0 <_ZL9fibonaccim>
    800055e0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800055e4:	00003517          	auipc	a0,0x3
    800055e8:	c4c50513          	addi	a0,a0,-948 # 80008230 <CONSOLE_STATUS+0x220>
    800055ec:	fffff097          	auipc	ra,0xfffff
    800055f0:	5b8080e7          	jalr	1464(ra) # 80004ba4 <_Z11printStringPKc>
    800055f4:	00000613          	li	a2,0
    800055f8:	00a00593          	li	a1,10
    800055fc:	0009051b          	sext.w	a0,s2
    80005600:	fffff097          	auipc	ra,0xfffff
    80005604:	754080e7          	jalr	1876(ra) # 80004d54 <_Z8printIntiii>
    80005608:	00003517          	auipc	a0,0x3
    8000560c:	e3050513          	addi	a0,a0,-464 # 80008438 <CONSOLE_STATUS+0x428>
    80005610:	fffff097          	auipc	ra,0xfffff
    80005614:	594080e7          	jalr	1428(ra) # 80004ba4 <_Z11printStringPKc>
    80005618:	0400006f          	j	80005658 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000561c:	00003517          	auipc	a0,0x3
    80005620:	bfc50513          	addi	a0,a0,-1028 # 80008218 <CONSOLE_STATUS+0x208>
    80005624:	fffff097          	auipc	ra,0xfffff
    80005628:	580080e7          	jalr	1408(ra) # 80004ba4 <_Z11printStringPKc>
    8000562c:	00000613          	li	a2,0
    80005630:	00a00593          	li	a1,10
    80005634:	00048513          	mv	a0,s1
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	71c080e7          	jalr	1820(ra) # 80004d54 <_Z8printIntiii>
    80005640:	00003517          	auipc	a0,0x3
    80005644:	df850513          	addi	a0,a0,-520 # 80008438 <CONSOLE_STATUS+0x428>
    80005648:	fffff097          	auipc	ra,0xfffff
    8000564c:	55c080e7          	jalr	1372(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005650:	0014849b          	addiw	s1,s1,1
    80005654:	0ff4f493          	andi	s1,s1,255
    80005658:	00f00793          	li	a5,15
    8000565c:	fc97f0e3          	bgeu	a5,s1,8000561c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005660:	00003517          	auipc	a0,0x3
    80005664:	be050513          	addi	a0,a0,-1056 # 80008240 <CONSOLE_STATUS+0x230>
    80005668:	fffff097          	auipc	ra,0xfffff
    8000566c:	53c080e7          	jalr	1340(ra) # 80004ba4 <_Z11printStringPKc>
    finishedD = true;
    80005670:	00100793          	li	a5,1
    80005674:	00005717          	auipc	a4,0x5
    80005678:	0ef70f23          	sb	a5,254(a4) # 8000a772 <_ZL9finishedD>
    thread_dispatch();
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	c2c080e7          	jalr	-980(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005684:	01813083          	ld	ra,24(sp)
    80005688:	01013403          	ld	s0,16(sp)
    8000568c:	00813483          	ld	s1,8(sp)
    80005690:	00013903          	ld	s2,0(sp)
    80005694:	02010113          	addi	sp,sp,32
    80005698:	00008067          	ret

000000008000569c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000569c:	fe010113          	addi	sp,sp,-32
    800056a0:	00113c23          	sd	ra,24(sp)
    800056a4:	00813823          	sd	s0,16(sp)
    800056a8:	00913423          	sd	s1,8(sp)
    800056ac:	01213023          	sd	s2,0(sp)
    800056b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800056b4:	00000493          	li	s1,0
    800056b8:	0400006f          	j	800056f8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800056bc:	00003517          	auipc	a0,0x3
    800056c0:	b1c50513          	addi	a0,a0,-1252 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800056c4:	fffff097          	auipc	ra,0xfffff
    800056c8:	4e0080e7          	jalr	1248(ra) # 80004ba4 <_Z11printStringPKc>
    800056cc:	00000613          	li	a2,0
    800056d0:	00a00593          	li	a1,10
    800056d4:	00048513          	mv	a0,s1
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	67c080e7          	jalr	1660(ra) # 80004d54 <_Z8printIntiii>
    800056e0:	00003517          	auipc	a0,0x3
    800056e4:	d5850513          	addi	a0,a0,-680 # 80008438 <CONSOLE_STATUS+0x428>
    800056e8:	fffff097          	auipc	ra,0xfffff
    800056ec:	4bc080e7          	jalr	1212(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800056f0:	0014849b          	addiw	s1,s1,1
    800056f4:	0ff4f493          	andi	s1,s1,255
    800056f8:	00200793          	li	a5,2
    800056fc:	fc97f0e3          	bgeu	a5,s1,800056bc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005700:	00003517          	auipc	a0,0x3
    80005704:	ae050513          	addi	a0,a0,-1312 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80005708:	fffff097          	auipc	ra,0xfffff
    8000570c:	49c080e7          	jalr	1180(ra) # 80004ba4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005710:	00700313          	li	t1,7
    thread_dispatch();
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	b94080e7          	jalr	-1132(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000571c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005720:	00003517          	auipc	a0,0x3
    80005724:	ad050513          	addi	a0,a0,-1328 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	47c080e7          	jalr	1148(ra) # 80004ba4 <_Z11printStringPKc>
    80005730:	00000613          	li	a2,0
    80005734:	00a00593          	li	a1,10
    80005738:	0009051b          	sext.w	a0,s2
    8000573c:	fffff097          	auipc	ra,0xfffff
    80005740:	618080e7          	jalr	1560(ra) # 80004d54 <_Z8printIntiii>
    80005744:	00003517          	auipc	a0,0x3
    80005748:	cf450513          	addi	a0,a0,-780 # 80008438 <CONSOLE_STATUS+0x428>
    8000574c:	fffff097          	auipc	ra,0xfffff
    80005750:	458080e7          	jalr	1112(ra) # 80004ba4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005754:	00c00513          	li	a0,12
    80005758:	00000097          	auipc	ra,0x0
    8000575c:	d88080e7          	jalr	-632(ra) # 800054e0 <_ZL9fibonaccim>
    80005760:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005764:	00003517          	auipc	a0,0x3
    80005768:	a9450513          	addi	a0,a0,-1388 # 800081f8 <CONSOLE_STATUS+0x1e8>
    8000576c:	fffff097          	auipc	ra,0xfffff
    80005770:	438080e7          	jalr	1080(ra) # 80004ba4 <_Z11printStringPKc>
    80005774:	00000613          	li	a2,0
    80005778:	00a00593          	li	a1,10
    8000577c:	0009051b          	sext.w	a0,s2
    80005780:	fffff097          	auipc	ra,0xfffff
    80005784:	5d4080e7          	jalr	1492(ra) # 80004d54 <_Z8printIntiii>
    80005788:	00003517          	auipc	a0,0x3
    8000578c:	cb050513          	addi	a0,a0,-848 # 80008438 <CONSOLE_STATUS+0x428>
    80005790:	fffff097          	auipc	ra,0xfffff
    80005794:	414080e7          	jalr	1044(ra) # 80004ba4 <_Z11printStringPKc>
    80005798:	0400006f          	j	800057d8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000579c:	00003517          	auipc	a0,0x3
    800057a0:	a3c50513          	addi	a0,a0,-1476 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800057a4:	fffff097          	auipc	ra,0xfffff
    800057a8:	400080e7          	jalr	1024(ra) # 80004ba4 <_Z11printStringPKc>
    800057ac:	00000613          	li	a2,0
    800057b0:	00a00593          	li	a1,10
    800057b4:	00048513          	mv	a0,s1
    800057b8:	fffff097          	auipc	ra,0xfffff
    800057bc:	59c080e7          	jalr	1436(ra) # 80004d54 <_Z8printIntiii>
    800057c0:	00003517          	auipc	a0,0x3
    800057c4:	c7850513          	addi	a0,a0,-904 # 80008438 <CONSOLE_STATUS+0x428>
    800057c8:	fffff097          	auipc	ra,0xfffff
    800057cc:	3dc080e7          	jalr	988(ra) # 80004ba4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800057d0:	0014849b          	addiw	s1,s1,1
    800057d4:	0ff4f493          	andi	s1,s1,255
    800057d8:	00500793          	li	a5,5
    800057dc:	fc97f0e3          	bgeu	a5,s1,8000579c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800057e0:	00003517          	auipc	a0,0x3
    800057e4:	9d050513          	addi	a0,a0,-1584 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800057e8:	fffff097          	auipc	ra,0xfffff
    800057ec:	3bc080e7          	jalr	956(ra) # 80004ba4 <_Z11printStringPKc>
    finishedC = true;
    800057f0:	00100793          	li	a5,1
    800057f4:	00005717          	auipc	a4,0x5
    800057f8:	f6f70fa3          	sb	a5,-129(a4) # 8000a773 <_ZL9finishedC>
    thread_dispatch();
    800057fc:	ffffc097          	auipc	ra,0xffffc
    80005800:	aac080e7          	jalr	-1364(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005804:	01813083          	ld	ra,24(sp)
    80005808:	01013403          	ld	s0,16(sp)
    8000580c:	00813483          	ld	s1,8(sp)
    80005810:	00013903          	ld	s2,0(sp)
    80005814:	02010113          	addi	sp,sp,32
    80005818:	00008067          	ret

000000008000581c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00113c23          	sd	ra,24(sp)
    80005824:	00813823          	sd	s0,16(sp)
    80005828:	00913423          	sd	s1,8(sp)
    8000582c:	01213023          	sd	s2,0(sp)
    80005830:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005834:	00000913          	li	s2,0
    80005838:	0400006f          	j	80005878 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	a6c080e7          	jalr	-1428(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005844:	00148493          	addi	s1,s1,1
    80005848:	000027b7          	lui	a5,0x2
    8000584c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005850:	0097ee63          	bltu	a5,s1,8000586c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005854:	00000713          	li	a4,0
    80005858:	000077b7          	lui	a5,0x7
    8000585c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005860:	fce7eee3          	bltu	a5,a4,8000583c <_ZL11workerBodyBPv+0x20>
    80005864:	00170713          	addi	a4,a4,1
    80005868:	ff1ff06f          	j	80005858 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000586c:	00a00793          	li	a5,10
    80005870:	04f90663          	beq	s2,a5,800058bc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005874:	00190913          	addi	s2,s2,1
    80005878:	00f00793          	li	a5,15
    8000587c:	0527e463          	bltu	a5,s2,800058c4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005880:	00003517          	auipc	a0,0x3
    80005884:	94050513          	addi	a0,a0,-1728 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80005888:	fffff097          	auipc	ra,0xfffff
    8000588c:	31c080e7          	jalr	796(ra) # 80004ba4 <_Z11printStringPKc>
    80005890:	00000613          	li	a2,0
    80005894:	00a00593          	li	a1,10
    80005898:	0009051b          	sext.w	a0,s2
    8000589c:	fffff097          	auipc	ra,0xfffff
    800058a0:	4b8080e7          	jalr	1208(ra) # 80004d54 <_Z8printIntiii>
    800058a4:	00003517          	auipc	a0,0x3
    800058a8:	b9450513          	addi	a0,a0,-1132 # 80008438 <CONSOLE_STATUS+0x428>
    800058ac:	fffff097          	auipc	ra,0xfffff
    800058b0:	2f8080e7          	jalr	760(ra) # 80004ba4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058b4:	00000493          	li	s1,0
    800058b8:	f91ff06f          	j	80005848 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800058bc:	14102ff3          	csrr	t6,sepc
    800058c0:	fb5ff06f          	j	80005874 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800058c4:	00003517          	auipc	a0,0x3
    800058c8:	90450513          	addi	a0,a0,-1788 # 800081c8 <CONSOLE_STATUS+0x1b8>
    800058cc:	fffff097          	auipc	ra,0xfffff
    800058d0:	2d8080e7          	jalr	728(ra) # 80004ba4 <_Z11printStringPKc>
    finishedB = true;
    800058d4:	00100793          	li	a5,1
    800058d8:	00005717          	auipc	a4,0x5
    800058dc:	e8f70e23          	sb	a5,-356(a4) # 8000a774 <_ZL9finishedB>
    thread_dispatch();
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	9c8080e7          	jalr	-1592(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800058e8:	01813083          	ld	ra,24(sp)
    800058ec:	01013403          	ld	s0,16(sp)
    800058f0:	00813483          	ld	s1,8(sp)
    800058f4:	00013903          	ld	s2,0(sp)
    800058f8:	02010113          	addi	sp,sp,32
    800058fc:	00008067          	ret

0000000080005900 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005900:	fe010113          	addi	sp,sp,-32
    80005904:	00113c23          	sd	ra,24(sp)
    80005908:	00813823          	sd	s0,16(sp)
    8000590c:	00913423          	sd	s1,8(sp)
    80005910:	01213023          	sd	s2,0(sp)
    80005914:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005918:	00000913          	li	s2,0
    8000591c:	0380006f          	j	80005954 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	988080e7          	jalr	-1656(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005928:	00148493          	addi	s1,s1,1
    8000592c:	000027b7          	lui	a5,0x2
    80005930:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005934:	0097ee63          	bltu	a5,s1,80005950 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005938:	00000713          	li	a4,0
    8000593c:	000077b7          	lui	a5,0x7
    80005940:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005944:	fce7eee3          	bltu	a5,a4,80005920 <_ZL11workerBodyAPv+0x20>
    80005948:	00170713          	addi	a4,a4,1
    8000594c:	ff1ff06f          	j	8000593c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005950:	00190913          	addi	s2,s2,1
    80005954:	00900793          	li	a5,9
    80005958:	0527e063          	bltu	a5,s2,80005998 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000595c:	00003517          	auipc	a0,0x3
    80005960:	84c50513          	addi	a0,a0,-1972 # 800081a8 <CONSOLE_STATUS+0x198>
    80005964:	fffff097          	auipc	ra,0xfffff
    80005968:	240080e7          	jalr	576(ra) # 80004ba4 <_Z11printStringPKc>
    8000596c:	00000613          	li	a2,0
    80005970:	00a00593          	li	a1,10
    80005974:	0009051b          	sext.w	a0,s2
    80005978:	fffff097          	auipc	ra,0xfffff
    8000597c:	3dc080e7          	jalr	988(ra) # 80004d54 <_Z8printIntiii>
    80005980:	00003517          	auipc	a0,0x3
    80005984:	ab850513          	addi	a0,a0,-1352 # 80008438 <CONSOLE_STATUS+0x428>
    80005988:	fffff097          	auipc	ra,0xfffff
    8000598c:	21c080e7          	jalr	540(ra) # 80004ba4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005990:	00000493          	li	s1,0
    80005994:	f99ff06f          	j	8000592c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005998:	00003517          	auipc	a0,0x3
    8000599c:	81850513          	addi	a0,a0,-2024 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	204080e7          	jalr	516(ra) # 80004ba4 <_Z11printStringPKc>
    finishedA = true;
    800059a8:	00100793          	li	a5,1
    800059ac:	00005717          	auipc	a4,0x5
    800059b0:	dcf704a3          	sb	a5,-567(a4) # 8000a775 <_ZL9finishedA>
}
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	00013903          	ld	s2,0(sp)
    800059c4:	02010113          	addi	sp,sp,32
    800059c8:	00008067          	ret

00000000800059cc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800059cc:	fd010113          	addi	sp,sp,-48
    800059d0:	02113423          	sd	ra,40(sp)
    800059d4:	02813023          	sd	s0,32(sp)
    800059d8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800059dc:	00000613          	li	a2,0
    800059e0:	00000597          	auipc	a1,0x0
    800059e4:	f2058593          	addi	a1,a1,-224 # 80005900 <_ZL11workerBodyAPv>
    800059e8:	fd040513          	addi	a0,s0,-48
    800059ec:	ffffc097          	auipc	ra,0xffffc
    800059f0:	904080e7          	jalr	-1788(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800059f4:	00003517          	auipc	a0,0x3
    800059f8:	85c50513          	addi	a0,a0,-1956 # 80008250 <CONSOLE_STATUS+0x240>
    800059fc:	fffff097          	auipc	ra,0xfffff
    80005a00:	1a8080e7          	jalr	424(ra) # 80004ba4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a04:	00000613          	li	a2,0
    80005a08:	00000597          	auipc	a1,0x0
    80005a0c:	e1458593          	addi	a1,a1,-492 # 8000581c <_ZL11workerBodyBPv>
    80005a10:	fd840513          	addi	a0,s0,-40
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	8dc080e7          	jalr	-1828(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005a1c:	00003517          	auipc	a0,0x3
    80005a20:	84c50513          	addi	a0,a0,-1972 # 80008268 <CONSOLE_STATUS+0x258>
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	180080e7          	jalr	384(ra) # 80004ba4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a2c:	00000613          	li	a2,0
    80005a30:	00000597          	auipc	a1,0x0
    80005a34:	c6c58593          	addi	a1,a1,-916 # 8000569c <_ZL11workerBodyCPv>
    80005a38:	fe040513          	addi	a0,s0,-32
    80005a3c:	ffffc097          	auipc	ra,0xffffc
    80005a40:	8b4080e7          	jalr	-1868(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005a44:	00003517          	auipc	a0,0x3
    80005a48:	83c50513          	addi	a0,a0,-1988 # 80008280 <CONSOLE_STATUS+0x270>
    80005a4c:	fffff097          	auipc	ra,0xfffff
    80005a50:	158080e7          	jalr	344(ra) # 80004ba4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a54:	00000613          	li	a2,0
    80005a58:	00000597          	auipc	a1,0x0
    80005a5c:	afc58593          	addi	a1,a1,-1284 # 80005554 <_ZL11workerBodyDPv>
    80005a60:	fe840513          	addi	a0,s0,-24
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	88c080e7          	jalr	-1908(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005a6c:	00003517          	auipc	a0,0x3
    80005a70:	82c50513          	addi	a0,a0,-2004 # 80008298 <CONSOLE_STATUS+0x288>
    80005a74:	fffff097          	auipc	ra,0xfffff
    80005a78:	130080e7          	jalr	304(ra) # 80004ba4 <_Z11printStringPKc>
    80005a7c:	00c0006f          	j	80005a88 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	828080e7          	jalr	-2008(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005a88:	00005797          	auipc	a5,0x5
    80005a8c:	ced7c783          	lbu	a5,-787(a5) # 8000a775 <_ZL9finishedA>
    80005a90:	fe0788e3          	beqz	a5,80005a80 <_Z16System_Mode_testv+0xb4>
    80005a94:	00005797          	auipc	a5,0x5
    80005a98:	ce07c783          	lbu	a5,-800(a5) # 8000a774 <_ZL9finishedB>
    80005a9c:	fe0782e3          	beqz	a5,80005a80 <_Z16System_Mode_testv+0xb4>
    80005aa0:	00005797          	auipc	a5,0x5
    80005aa4:	cd37c783          	lbu	a5,-813(a5) # 8000a773 <_ZL9finishedC>
    80005aa8:	fc078ce3          	beqz	a5,80005a80 <_Z16System_Mode_testv+0xb4>
    80005aac:	00005797          	auipc	a5,0x5
    80005ab0:	cc67c783          	lbu	a5,-826(a5) # 8000a772 <_ZL9finishedD>
    80005ab4:	fc0786e3          	beqz	a5,80005a80 <_Z16System_Mode_testv+0xb4>
    }

}
    80005ab8:	02813083          	ld	ra,40(sp)
    80005abc:	02013403          	ld	s0,32(sp)
    80005ac0:	03010113          	addi	sp,sp,48
    80005ac4:	00008067          	ret

0000000080005ac8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ac8:	fe010113          	addi	sp,sp,-32
    80005acc:	00113c23          	sd	ra,24(sp)
    80005ad0:	00813823          	sd	s0,16(sp)
    80005ad4:	00913423          	sd	s1,8(sp)
    80005ad8:	01213023          	sd	s2,0(sp)
    80005adc:	02010413          	addi	s0,sp,32
    80005ae0:	00050493          	mv	s1,a0
    80005ae4:	00058913          	mv	s2,a1
    80005ae8:	0015879b          	addiw	a5,a1,1
    80005aec:	0007851b          	sext.w	a0,a5
    80005af0:	00f4a023          	sw	a5,0(s1)
    80005af4:	0004a823          	sw	zero,16(s1)
    80005af8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005afc:	00251513          	slli	a0,a0,0x2
    80005b00:	ffffb097          	auipc	ra,0xffffb
    80005b04:	744080e7          	jalr	1860(ra) # 80001244 <_Z9mem_allocm>
    80005b08:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b0c:	00000593          	li	a1,0
    80005b10:	02048513          	addi	a0,s1,32
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	858080e7          	jalr	-1960(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    80005b1c:	00090593          	mv	a1,s2
    80005b20:	01848513          	addi	a0,s1,24
    80005b24:	ffffc097          	auipc	ra,0xffffc
    80005b28:	848080e7          	jalr	-1976(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    80005b2c:	00100593          	li	a1,1
    80005b30:	02848513          	addi	a0,s1,40
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	838080e7          	jalr	-1992(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    80005b3c:	00100593          	li	a1,1
    80005b40:	03048513          	addi	a0,s1,48
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	828080e7          	jalr	-2008(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80005b4c:	01813083          	ld	ra,24(sp)
    80005b50:	01013403          	ld	s0,16(sp)
    80005b54:	00813483          	ld	s1,8(sp)
    80005b58:	00013903          	ld	s2,0(sp)
    80005b5c:	02010113          	addi	sp,sp,32
    80005b60:	00008067          	ret

0000000080005b64 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005b64:	fe010113          	addi	sp,sp,-32
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	00813823          	sd	s0,16(sp)
    80005b70:	00913423          	sd	s1,8(sp)
    80005b74:	01213023          	sd	s2,0(sp)
    80005b78:	02010413          	addi	s0,sp,32
    80005b7c:	00050493          	mv	s1,a0
    80005b80:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005b84:	01853503          	ld	a0,24(a0)
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	840080e7          	jalr	-1984(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    80005b90:	0304b503          	ld	a0,48(s1)
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	834080e7          	jalr	-1996(ra) # 800013c8 <_Z8sem_waitP3sem>
    buffer[tail] = val;
    80005b9c:	0084b783          	ld	a5,8(s1)
    80005ba0:	0144a703          	lw	a4,20(s1)
    80005ba4:	00271713          	slli	a4,a4,0x2
    80005ba8:	00e787b3          	add	a5,a5,a4
    80005bac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bb0:	0144a783          	lw	a5,20(s1)
    80005bb4:	0017879b          	addiw	a5,a5,1
    80005bb8:	0004a703          	lw	a4,0(s1)
    80005bbc:	02e7e7bb          	remw	a5,a5,a4
    80005bc0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005bc4:	0304b503          	ld	a0,48(s1)
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	82c080e7          	jalr	-2004(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80005bd0:	0204b503          	ld	a0,32(s1)
    80005bd4:	ffffc097          	auipc	ra,0xffffc
    80005bd8:	820080e7          	jalr	-2016(ra) # 800013f4 <_Z10sem_signalP3sem>

}
    80005bdc:	01813083          	ld	ra,24(sp)
    80005be0:	01013403          	ld	s0,16(sp)
    80005be4:	00813483          	ld	s1,8(sp)
    80005be8:	00013903          	ld	s2,0(sp)
    80005bec:	02010113          	addi	sp,sp,32
    80005bf0:	00008067          	ret

0000000080005bf4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005bf4:	fe010113          	addi	sp,sp,-32
    80005bf8:	00113c23          	sd	ra,24(sp)
    80005bfc:	00813823          	sd	s0,16(sp)
    80005c00:	00913423          	sd	s1,8(sp)
    80005c04:	01213023          	sd	s2,0(sp)
    80005c08:	02010413          	addi	s0,sp,32
    80005c0c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c10:	02053503          	ld	a0,32(a0)
    80005c14:	ffffb097          	auipc	ra,0xffffb
    80005c18:	7b4080e7          	jalr	1972(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    80005c1c:	0284b503          	ld	a0,40(s1)
    80005c20:	ffffb097          	auipc	ra,0xffffb
    80005c24:	7a8080e7          	jalr	1960(ra) # 800013c8 <_Z8sem_waitP3sem>

    int ret = buffer[head];
    80005c28:	0084b703          	ld	a4,8(s1)
    80005c2c:	0104a783          	lw	a5,16(s1)
    80005c30:	00279693          	slli	a3,a5,0x2
    80005c34:	00d70733          	add	a4,a4,a3
    80005c38:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c3c:	0017879b          	addiw	a5,a5,1
    80005c40:	0004a703          	lw	a4,0(s1)
    80005c44:	02e7e7bb          	remw	a5,a5,a4
    80005c48:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c4c:	0284b503          	ld	a0,40(s1)
    80005c50:	ffffb097          	auipc	ra,0xffffb
    80005c54:	7a4080e7          	jalr	1956(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    80005c58:	0184b503          	ld	a0,24(s1)
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	798080e7          	jalr	1944(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005c64:	00090513          	mv	a0,s2
    80005c68:	01813083          	ld	ra,24(sp)
    80005c6c:	01013403          	ld	s0,16(sp)
    80005c70:	00813483          	ld	s1,8(sp)
    80005c74:	00013903          	ld	s2,0(sp)
    80005c78:	02010113          	addi	sp,sp,32
    80005c7c:	00008067          	ret

0000000080005c80 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005c80:	fe010113          	addi	sp,sp,-32
    80005c84:	00113c23          	sd	ra,24(sp)
    80005c88:	00813823          	sd	s0,16(sp)
    80005c8c:	00913423          	sd	s1,8(sp)
    80005c90:	01213023          	sd	s2,0(sp)
    80005c94:	02010413          	addi	s0,sp,32
    80005c98:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005c9c:	02853503          	ld	a0,40(a0)
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	728080e7          	jalr	1832(ra) # 800013c8 <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    80005ca8:	0304b503          	ld	a0,48(s1)
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	71c080e7          	jalr	1820(ra) # 800013c8 <_Z8sem_waitP3sem>

    if (tail >= head) {
    80005cb4:	0144a783          	lw	a5,20(s1)
    80005cb8:	0104a903          	lw	s2,16(s1)
    80005cbc:	0327ce63          	blt	a5,s2,80005cf8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005cc0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005cc4:	0304b503          	ld	a0,48(s1)
    80005cc8:	ffffb097          	auipc	ra,0xffffb
    80005ccc:	72c080e7          	jalr	1836(ra) # 800013f4 <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80005cd0:	0284b503          	ld	a0,40(s1)
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	720080e7          	jalr	1824(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005cdc:	00090513          	mv	a0,s2
    80005ce0:	01813083          	ld	ra,24(sp)
    80005ce4:	01013403          	ld	s0,16(sp)
    80005ce8:	00813483          	ld	s1,8(sp)
    80005cec:	00013903          	ld	s2,0(sp)
    80005cf0:	02010113          	addi	sp,sp,32
    80005cf4:	00008067          	ret
        ret = cap - head + tail;
    80005cf8:	0004a703          	lw	a4,0(s1)
    80005cfc:	4127093b          	subw	s2,a4,s2
    80005d00:	00f9093b          	addw	s2,s2,a5
    80005d04:	fc1ff06f          	j	80005cc4 <_ZN6Buffer6getCntEv+0x44>

0000000080005d08 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00113c23          	sd	ra,24(sp)
    80005d10:	00813823          	sd	s0,16(sp)
    80005d14:	00913423          	sd	s1,8(sp)
    80005d18:	02010413          	addi	s0,sp,32
    80005d1c:	00050493          	mv	s1,a0
    putc('\n');
    80005d20:	00a00513          	li	a0,10
    80005d24:	ffffb097          	auipc	ra,0xffffb
    80005d28:	750080e7          	jalr	1872(ra) # 80001474 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005d2c:	00002517          	auipc	a0,0x2
    80005d30:	58450513          	addi	a0,a0,1412 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80005d34:	fffff097          	auipc	ra,0xfffff
    80005d38:	e70080e7          	jalr	-400(ra) # 80004ba4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	00000097          	auipc	ra,0x0
    80005d44:	f40080e7          	jalr	-192(ra) # 80005c80 <_ZN6Buffer6getCntEv>
    80005d48:	02a05c63          	blez	a0,80005d80 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d4c:	0084b783          	ld	a5,8(s1)
    80005d50:	0104a703          	lw	a4,16(s1)
    80005d54:	00271713          	slli	a4,a4,0x2
    80005d58:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005d5c:	0007c503          	lbu	a0,0(a5)
    80005d60:	ffffb097          	auipc	ra,0xffffb
    80005d64:	714080e7          	jalr	1812(ra) # 80001474 <_Z4putcc>
        head = (head + 1) % cap;
    80005d68:	0104a783          	lw	a5,16(s1)
    80005d6c:	0017879b          	addiw	a5,a5,1
    80005d70:	0004a703          	lw	a4,0(s1)
    80005d74:	02e7e7bb          	remw	a5,a5,a4
    80005d78:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005d7c:	fc1ff06f          	j	80005d3c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005d80:	02100513          	li	a0,33
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	6f0080e7          	jalr	1776(ra) # 80001474 <_Z4putcc>
    putc('\n');
    80005d8c:	00a00513          	li	a0,10
    80005d90:	ffffb097          	auipc	ra,0xffffb
    80005d94:	6e4080e7          	jalr	1764(ra) # 80001474 <_Z4putcc>
    mem_free(buffer);
    80005d98:	0084b503          	ld	a0,8(s1)
    80005d9c:	ffffb097          	auipc	ra,0xffffb
    80005da0:	4e0080e7          	jalr	1248(ra) # 8000127c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005da4:	0204b503          	ld	a0,32(s1)
    80005da8:	ffffb097          	auipc	ra,0xffffb
    80005dac:	5f4080e7          	jalr	1524(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80005db0:	0184b503          	ld	a0,24(s1)
    80005db4:	ffffb097          	auipc	ra,0xffffb
    80005db8:	5e8080e7          	jalr	1512(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80005dbc:	0304b503          	ld	a0,48(s1)
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	5dc080e7          	jalr	1500(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    80005dc8:	0284b503          	ld	a0,40(s1)
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	5d0080e7          	jalr	1488(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80005dd4:	01813083          	ld	ra,24(sp)
    80005dd8:	01013403          	ld	s0,16(sp)
    80005ddc:	00813483          	ld	s1,8(sp)
    80005de0:	02010113          	addi	sp,sp,32
    80005de4:	00008067          	ret

0000000080005de8 <start>:
    80005de8:	ff010113          	addi	sp,sp,-16
    80005dec:	00813423          	sd	s0,8(sp)
    80005df0:	01010413          	addi	s0,sp,16
    80005df4:	300027f3          	csrr	a5,mstatus
    80005df8:	ffffe737          	lui	a4,0xffffe
    80005dfc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2e1f>
    80005e00:	00e7f7b3          	and	a5,a5,a4
    80005e04:	00001737          	lui	a4,0x1
    80005e08:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e0c:	00e7e7b3          	or	a5,a5,a4
    80005e10:	30079073          	csrw	mstatus,a5
    80005e14:	00000797          	auipc	a5,0x0
    80005e18:	16078793          	addi	a5,a5,352 # 80005f74 <system_main>
    80005e1c:	34179073          	csrw	mepc,a5
    80005e20:	00000793          	li	a5,0
    80005e24:	18079073          	csrw	satp,a5
    80005e28:	000107b7          	lui	a5,0x10
    80005e2c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005e30:	30279073          	csrw	medeleg,a5
    80005e34:	30379073          	csrw	mideleg,a5
    80005e38:	104027f3          	csrr	a5,sie
    80005e3c:	2227e793          	ori	a5,a5,546
    80005e40:	10479073          	csrw	sie,a5
    80005e44:	fff00793          	li	a5,-1
    80005e48:	00a7d793          	srli	a5,a5,0xa
    80005e4c:	3b079073          	csrw	pmpaddr0,a5
    80005e50:	00f00793          	li	a5,15
    80005e54:	3a079073          	csrw	pmpcfg0,a5
    80005e58:	f14027f3          	csrr	a5,mhartid
    80005e5c:	0200c737          	lui	a4,0x200c
    80005e60:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e64:	0007869b          	sext.w	a3,a5
    80005e68:	00269713          	slli	a4,a3,0x2
    80005e6c:	000f4637          	lui	a2,0xf4
    80005e70:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005e74:	00d70733          	add	a4,a4,a3
    80005e78:	0037979b          	slliw	a5,a5,0x3
    80005e7c:	020046b7          	lui	a3,0x2004
    80005e80:	00d787b3          	add	a5,a5,a3
    80005e84:	00c585b3          	add	a1,a1,a2
    80005e88:	00371693          	slli	a3,a4,0x3
    80005e8c:	00005717          	auipc	a4,0x5
    80005e90:	8f470713          	addi	a4,a4,-1804 # 8000a780 <timer_scratch>
    80005e94:	00b7b023          	sd	a1,0(a5)
    80005e98:	00d70733          	add	a4,a4,a3
    80005e9c:	00f73c23          	sd	a5,24(a4)
    80005ea0:	02c73023          	sd	a2,32(a4)
    80005ea4:	34071073          	csrw	mscratch,a4
    80005ea8:	00000797          	auipc	a5,0x0
    80005eac:	6e878793          	addi	a5,a5,1768 # 80006590 <timervec>
    80005eb0:	30579073          	csrw	mtvec,a5
    80005eb4:	300027f3          	csrr	a5,mstatus
    80005eb8:	0087e793          	ori	a5,a5,8
    80005ebc:	30079073          	csrw	mstatus,a5
    80005ec0:	304027f3          	csrr	a5,mie
    80005ec4:	0807e793          	ori	a5,a5,128
    80005ec8:	30479073          	csrw	mie,a5
    80005ecc:	f14027f3          	csrr	a5,mhartid
    80005ed0:	0007879b          	sext.w	a5,a5
    80005ed4:	00078213          	mv	tp,a5
    80005ed8:	30200073          	mret
    80005edc:	00813403          	ld	s0,8(sp)
    80005ee0:	01010113          	addi	sp,sp,16
    80005ee4:	00008067          	ret

0000000080005ee8 <timerinit>:
    80005ee8:	ff010113          	addi	sp,sp,-16
    80005eec:	00813423          	sd	s0,8(sp)
    80005ef0:	01010413          	addi	s0,sp,16
    80005ef4:	f14027f3          	csrr	a5,mhartid
    80005ef8:	0200c737          	lui	a4,0x200c
    80005efc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f00:	0007869b          	sext.w	a3,a5
    80005f04:	00269713          	slli	a4,a3,0x2
    80005f08:	000f4637          	lui	a2,0xf4
    80005f0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f10:	00d70733          	add	a4,a4,a3
    80005f14:	0037979b          	slliw	a5,a5,0x3
    80005f18:	020046b7          	lui	a3,0x2004
    80005f1c:	00d787b3          	add	a5,a5,a3
    80005f20:	00c585b3          	add	a1,a1,a2
    80005f24:	00371693          	slli	a3,a4,0x3
    80005f28:	00005717          	auipc	a4,0x5
    80005f2c:	85870713          	addi	a4,a4,-1960 # 8000a780 <timer_scratch>
    80005f30:	00b7b023          	sd	a1,0(a5)
    80005f34:	00d70733          	add	a4,a4,a3
    80005f38:	00f73c23          	sd	a5,24(a4)
    80005f3c:	02c73023          	sd	a2,32(a4)
    80005f40:	34071073          	csrw	mscratch,a4
    80005f44:	00000797          	auipc	a5,0x0
    80005f48:	64c78793          	addi	a5,a5,1612 # 80006590 <timervec>
    80005f4c:	30579073          	csrw	mtvec,a5
    80005f50:	300027f3          	csrr	a5,mstatus
    80005f54:	0087e793          	ori	a5,a5,8
    80005f58:	30079073          	csrw	mstatus,a5
    80005f5c:	304027f3          	csrr	a5,mie
    80005f60:	0807e793          	ori	a5,a5,128
    80005f64:	30479073          	csrw	mie,a5
    80005f68:	00813403          	ld	s0,8(sp)
    80005f6c:	01010113          	addi	sp,sp,16
    80005f70:	00008067          	ret

0000000080005f74 <system_main>:
    80005f74:	fe010113          	addi	sp,sp,-32
    80005f78:	00813823          	sd	s0,16(sp)
    80005f7c:	00913423          	sd	s1,8(sp)
    80005f80:	00113c23          	sd	ra,24(sp)
    80005f84:	02010413          	addi	s0,sp,32
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	0c4080e7          	jalr	196(ra) # 8000604c <cpuid>
    80005f90:	00004497          	auipc	s1,0x4
    80005f94:	74048493          	addi	s1,s1,1856 # 8000a6d0 <started>
    80005f98:	02050263          	beqz	a0,80005fbc <system_main+0x48>
    80005f9c:	0004a783          	lw	a5,0(s1)
    80005fa0:	0007879b          	sext.w	a5,a5
    80005fa4:	fe078ce3          	beqz	a5,80005f9c <system_main+0x28>
    80005fa8:	0ff0000f          	fence
    80005fac:	00002517          	auipc	a0,0x2
    80005fb0:	59450513          	addi	a0,a0,1428 # 80008540 <CONSOLE_STATUS+0x530>
    80005fb4:	00001097          	auipc	ra,0x1
    80005fb8:	a78080e7          	jalr	-1416(ra) # 80006a2c <panic>
    80005fbc:	00001097          	auipc	ra,0x1
    80005fc0:	9cc080e7          	jalr	-1588(ra) # 80006988 <consoleinit>
    80005fc4:	00001097          	auipc	ra,0x1
    80005fc8:	158080e7          	jalr	344(ra) # 8000711c <printfinit>
    80005fcc:	00002517          	auipc	a0,0x2
    80005fd0:	46c50513          	addi	a0,a0,1132 # 80008438 <CONSOLE_STATUS+0x428>
    80005fd4:	00001097          	auipc	ra,0x1
    80005fd8:	ab4080e7          	jalr	-1356(ra) # 80006a88 <__printf>
    80005fdc:	00002517          	auipc	a0,0x2
    80005fe0:	53450513          	addi	a0,a0,1332 # 80008510 <CONSOLE_STATUS+0x500>
    80005fe4:	00001097          	auipc	ra,0x1
    80005fe8:	aa4080e7          	jalr	-1372(ra) # 80006a88 <__printf>
    80005fec:	00002517          	auipc	a0,0x2
    80005ff0:	44c50513          	addi	a0,a0,1100 # 80008438 <CONSOLE_STATUS+0x428>
    80005ff4:	00001097          	auipc	ra,0x1
    80005ff8:	a94080e7          	jalr	-1388(ra) # 80006a88 <__printf>
    80005ffc:	00001097          	auipc	ra,0x1
    80006000:	4ac080e7          	jalr	1196(ra) # 800074a8 <kinit>
    80006004:	00000097          	auipc	ra,0x0
    80006008:	148080e7          	jalr	328(ra) # 8000614c <trapinit>
    8000600c:	00000097          	auipc	ra,0x0
    80006010:	16c080e7          	jalr	364(ra) # 80006178 <trapinithart>
    80006014:	00000097          	auipc	ra,0x0
    80006018:	5bc080e7          	jalr	1468(ra) # 800065d0 <plicinit>
    8000601c:	00000097          	auipc	ra,0x0
    80006020:	5dc080e7          	jalr	1500(ra) # 800065f8 <plicinithart>
    80006024:	00000097          	auipc	ra,0x0
    80006028:	078080e7          	jalr	120(ra) # 8000609c <userinit>
    8000602c:	0ff0000f          	fence
    80006030:	00100793          	li	a5,1
    80006034:	00002517          	auipc	a0,0x2
    80006038:	4f450513          	addi	a0,a0,1268 # 80008528 <CONSOLE_STATUS+0x518>
    8000603c:	00f4a023          	sw	a5,0(s1)
    80006040:	00001097          	auipc	ra,0x1
    80006044:	a48080e7          	jalr	-1464(ra) # 80006a88 <__printf>
    80006048:	0000006f          	j	80006048 <system_main+0xd4>

000000008000604c <cpuid>:
    8000604c:	ff010113          	addi	sp,sp,-16
    80006050:	00813423          	sd	s0,8(sp)
    80006054:	01010413          	addi	s0,sp,16
    80006058:	00020513          	mv	a0,tp
    8000605c:	00813403          	ld	s0,8(sp)
    80006060:	0005051b          	sext.w	a0,a0
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00008067          	ret

000000008000606c <mycpu>:
    8000606c:	ff010113          	addi	sp,sp,-16
    80006070:	00813423          	sd	s0,8(sp)
    80006074:	01010413          	addi	s0,sp,16
    80006078:	00020793          	mv	a5,tp
    8000607c:	00813403          	ld	s0,8(sp)
    80006080:	0007879b          	sext.w	a5,a5
    80006084:	00779793          	slli	a5,a5,0x7
    80006088:	00005517          	auipc	a0,0x5
    8000608c:	72850513          	addi	a0,a0,1832 # 8000b7b0 <cpus>
    80006090:	00f50533          	add	a0,a0,a5
    80006094:	01010113          	addi	sp,sp,16
    80006098:	00008067          	ret

000000008000609c <userinit>:
    8000609c:	ff010113          	addi	sp,sp,-16
    800060a0:	00813423          	sd	s0,8(sp)
    800060a4:	01010413          	addi	s0,sp,16
    800060a8:	00813403          	ld	s0,8(sp)
    800060ac:	01010113          	addi	sp,sp,16
    800060b0:	ffffb317          	auipc	t1,0xffffb
    800060b4:	7c830067          	jr	1992(t1) # 80001878 <main>

00000000800060b8 <either_copyout>:
    800060b8:	ff010113          	addi	sp,sp,-16
    800060bc:	00813023          	sd	s0,0(sp)
    800060c0:	00113423          	sd	ra,8(sp)
    800060c4:	01010413          	addi	s0,sp,16
    800060c8:	02051663          	bnez	a0,800060f4 <either_copyout+0x3c>
    800060cc:	00058513          	mv	a0,a1
    800060d0:	00060593          	mv	a1,a2
    800060d4:	0006861b          	sext.w	a2,a3
    800060d8:	00002097          	auipc	ra,0x2
    800060dc:	c5c080e7          	jalr	-932(ra) # 80007d34 <__memmove>
    800060e0:	00813083          	ld	ra,8(sp)
    800060e4:	00013403          	ld	s0,0(sp)
    800060e8:	00000513          	li	a0,0
    800060ec:	01010113          	addi	sp,sp,16
    800060f0:	00008067          	ret
    800060f4:	00002517          	auipc	a0,0x2
    800060f8:	47450513          	addi	a0,a0,1140 # 80008568 <CONSOLE_STATUS+0x558>
    800060fc:	00001097          	auipc	ra,0x1
    80006100:	930080e7          	jalr	-1744(ra) # 80006a2c <panic>

0000000080006104 <either_copyin>:
    80006104:	ff010113          	addi	sp,sp,-16
    80006108:	00813023          	sd	s0,0(sp)
    8000610c:	00113423          	sd	ra,8(sp)
    80006110:	01010413          	addi	s0,sp,16
    80006114:	02059463          	bnez	a1,8000613c <either_copyin+0x38>
    80006118:	00060593          	mv	a1,a2
    8000611c:	0006861b          	sext.w	a2,a3
    80006120:	00002097          	auipc	ra,0x2
    80006124:	c14080e7          	jalr	-1004(ra) # 80007d34 <__memmove>
    80006128:	00813083          	ld	ra,8(sp)
    8000612c:	00013403          	ld	s0,0(sp)
    80006130:	00000513          	li	a0,0
    80006134:	01010113          	addi	sp,sp,16
    80006138:	00008067          	ret
    8000613c:	00002517          	auipc	a0,0x2
    80006140:	45450513          	addi	a0,a0,1108 # 80008590 <CONSOLE_STATUS+0x580>
    80006144:	00001097          	auipc	ra,0x1
    80006148:	8e8080e7          	jalr	-1816(ra) # 80006a2c <panic>

000000008000614c <trapinit>:
    8000614c:	ff010113          	addi	sp,sp,-16
    80006150:	00813423          	sd	s0,8(sp)
    80006154:	01010413          	addi	s0,sp,16
    80006158:	00813403          	ld	s0,8(sp)
    8000615c:	00002597          	auipc	a1,0x2
    80006160:	45c58593          	addi	a1,a1,1116 # 800085b8 <CONSOLE_STATUS+0x5a8>
    80006164:	00005517          	auipc	a0,0x5
    80006168:	6cc50513          	addi	a0,a0,1740 # 8000b830 <tickslock>
    8000616c:	01010113          	addi	sp,sp,16
    80006170:	00001317          	auipc	t1,0x1
    80006174:	5c830067          	jr	1480(t1) # 80007738 <initlock>

0000000080006178 <trapinithart>:
    80006178:	ff010113          	addi	sp,sp,-16
    8000617c:	00813423          	sd	s0,8(sp)
    80006180:	01010413          	addi	s0,sp,16
    80006184:	00000797          	auipc	a5,0x0
    80006188:	2fc78793          	addi	a5,a5,764 # 80006480 <kernelvec>
    8000618c:	10579073          	csrw	stvec,a5
    80006190:	00813403          	ld	s0,8(sp)
    80006194:	01010113          	addi	sp,sp,16
    80006198:	00008067          	ret

000000008000619c <usertrap>:
    8000619c:	ff010113          	addi	sp,sp,-16
    800061a0:	00813423          	sd	s0,8(sp)
    800061a4:	01010413          	addi	s0,sp,16
    800061a8:	00813403          	ld	s0,8(sp)
    800061ac:	01010113          	addi	sp,sp,16
    800061b0:	00008067          	ret

00000000800061b4 <usertrapret>:
    800061b4:	ff010113          	addi	sp,sp,-16
    800061b8:	00813423          	sd	s0,8(sp)
    800061bc:	01010413          	addi	s0,sp,16
    800061c0:	00813403          	ld	s0,8(sp)
    800061c4:	01010113          	addi	sp,sp,16
    800061c8:	00008067          	ret

00000000800061cc <kerneltrap>:
    800061cc:	fe010113          	addi	sp,sp,-32
    800061d0:	00813823          	sd	s0,16(sp)
    800061d4:	00113c23          	sd	ra,24(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	02010413          	addi	s0,sp,32
    800061e0:	142025f3          	csrr	a1,scause
    800061e4:	100027f3          	csrr	a5,sstatus
    800061e8:	0027f793          	andi	a5,a5,2
    800061ec:	10079c63          	bnez	a5,80006304 <kerneltrap+0x138>
    800061f0:	142027f3          	csrr	a5,scause
    800061f4:	0207ce63          	bltz	a5,80006230 <kerneltrap+0x64>
    800061f8:	00002517          	auipc	a0,0x2
    800061fc:	40850513          	addi	a0,a0,1032 # 80008600 <CONSOLE_STATUS+0x5f0>
    80006200:	00001097          	auipc	ra,0x1
    80006204:	888080e7          	jalr	-1912(ra) # 80006a88 <__printf>
    80006208:	141025f3          	csrr	a1,sepc
    8000620c:	14302673          	csrr	a2,stval
    80006210:	00002517          	auipc	a0,0x2
    80006214:	40050513          	addi	a0,a0,1024 # 80008610 <CONSOLE_STATUS+0x600>
    80006218:	00001097          	auipc	ra,0x1
    8000621c:	870080e7          	jalr	-1936(ra) # 80006a88 <__printf>
    80006220:	00002517          	auipc	a0,0x2
    80006224:	40850513          	addi	a0,a0,1032 # 80008628 <CONSOLE_STATUS+0x618>
    80006228:	00001097          	auipc	ra,0x1
    8000622c:	804080e7          	jalr	-2044(ra) # 80006a2c <panic>
    80006230:	0ff7f713          	andi	a4,a5,255
    80006234:	00900693          	li	a3,9
    80006238:	04d70063          	beq	a4,a3,80006278 <kerneltrap+0xac>
    8000623c:	fff00713          	li	a4,-1
    80006240:	03f71713          	slli	a4,a4,0x3f
    80006244:	00170713          	addi	a4,a4,1
    80006248:	fae798e3          	bne	a5,a4,800061f8 <kerneltrap+0x2c>
    8000624c:	00000097          	auipc	ra,0x0
    80006250:	e00080e7          	jalr	-512(ra) # 8000604c <cpuid>
    80006254:	06050663          	beqz	a0,800062c0 <kerneltrap+0xf4>
    80006258:	144027f3          	csrr	a5,sip
    8000625c:	ffd7f793          	andi	a5,a5,-3
    80006260:	14479073          	csrw	sip,a5
    80006264:	01813083          	ld	ra,24(sp)
    80006268:	01013403          	ld	s0,16(sp)
    8000626c:	00813483          	ld	s1,8(sp)
    80006270:	02010113          	addi	sp,sp,32
    80006274:	00008067          	ret
    80006278:	00000097          	auipc	ra,0x0
    8000627c:	3cc080e7          	jalr	972(ra) # 80006644 <plic_claim>
    80006280:	00a00793          	li	a5,10
    80006284:	00050493          	mv	s1,a0
    80006288:	06f50863          	beq	a0,a5,800062f8 <kerneltrap+0x12c>
    8000628c:	fc050ce3          	beqz	a0,80006264 <kerneltrap+0x98>
    80006290:	00050593          	mv	a1,a0
    80006294:	00002517          	auipc	a0,0x2
    80006298:	34c50513          	addi	a0,a0,844 # 800085e0 <CONSOLE_STATUS+0x5d0>
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	7ec080e7          	jalr	2028(ra) # 80006a88 <__printf>
    800062a4:	01013403          	ld	s0,16(sp)
    800062a8:	01813083          	ld	ra,24(sp)
    800062ac:	00048513          	mv	a0,s1
    800062b0:	00813483          	ld	s1,8(sp)
    800062b4:	02010113          	addi	sp,sp,32
    800062b8:	00000317          	auipc	t1,0x0
    800062bc:	3c430067          	jr	964(t1) # 8000667c <plic_complete>
    800062c0:	00005517          	auipc	a0,0x5
    800062c4:	57050513          	addi	a0,a0,1392 # 8000b830 <tickslock>
    800062c8:	00001097          	auipc	ra,0x1
    800062cc:	494080e7          	jalr	1172(ra) # 8000775c <acquire>
    800062d0:	00004717          	auipc	a4,0x4
    800062d4:	40470713          	addi	a4,a4,1028 # 8000a6d4 <ticks>
    800062d8:	00072783          	lw	a5,0(a4)
    800062dc:	00005517          	auipc	a0,0x5
    800062e0:	55450513          	addi	a0,a0,1364 # 8000b830 <tickslock>
    800062e4:	0017879b          	addiw	a5,a5,1
    800062e8:	00f72023          	sw	a5,0(a4)
    800062ec:	00001097          	auipc	ra,0x1
    800062f0:	53c080e7          	jalr	1340(ra) # 80007828 <release>
    800062f4:	f65ff06f          	j	80006258 <kerneltrap+0x8c>
    800062f8:	00001097          	auipc	ra,0x1
    800062fc:	098080e7          	jalr	152(ra) # 80007390 <uartintr>
    80006300:	fa5ff06f          	j	800062a4 <kerneltrap+0xd8>
    80006304:	00002517          	auipc	a0,0x2
    80006308:	2bc50513          	addi	a0,a0,700 # 800085c0 <CONSOLE_STATUS+0x5b0>
    8000630c:	00000097          	auipc	ra,0x0
    80006310:	720080e7          	jalr	1824(ra) # 80006a2c <panic>

0000000080006314 <clockintr>:
    80006314:	fe010113          	addi	sp,sp,-32
    80006318:	00813823          	sd	s0,16(sp)
    8000631c:	00913423          	sd	s1,8(sp)
    80006320:	00113c23          	sd	ra,24(sp)
    80006324:	02010413          	addi	s0,sp,32
    80006328:	00005497          	auipc	s1,0x5
    8000632c:	50848493          	addi	s1,s1,1288 # 8000b830 <tickslock>
    80006330:	00048513          	mv	a0,s1
    80006334:	00001097          	auipc	ra,0x1
    80006338:	428080e7          	jalr	1064(ra) # 8000775c <acquire>
    8000633c:	00004717          	auipc	a4,0x4
    80006340:	39870713          	addi	a4,a4,920 # 8000a6d4 <ticks>
    80006344:	00072783          	lw	a5,0(a4)
    80006348:	01013403          	ld	s0,16(sp)
    8000634c:	01813083          	ld	ra,24(sp)
    80006350:	00048513          	mv	a0,s1
    80006354:	0017879b          	addiw	a5,a5,1
    80006358:	00813483          	ld	s1,8(sp)
    8000635c:	00f72023          	sw	a5,0(a4)
    80006360:	02010113          	addi	sp,sp,32
    80006364:	00001317          	auipc	t1,0x1
    80006368:	4c430067          	jr	1220(t1) # 80007828 <release>

000000008000636c <devintr>:
    8000636c:	142027f3          	csrr	a5,scause
    80006370:	00000513          	li	a0,0
    80006374:	0007c463          	bltz	a5,8000637c <devintr+0x10>
    80006378:	00008067          	ret
    8000637c:	fe010113          	addi	sp,sp,-32
    80006380:	00813823          	sd	s0,16(sp)
    80006384:	00113c23          	sd	ra,24(sp)
    80006388:	00913423          	sd	s1,8(sp)
    8000638c:	02010413          	addi	s0,sp,32
    80006390:	0ff7f713          	andi	a4,a5,255
    80006394:	00900693          	li	a3,9
    80006398:	04d70c63          	beq	a4,a3,800063f0 <devintr+0x84>
    8000639c:	fff00713          	li	a4,-1
    800063a0:	03f71713          	slli	a4,a4,0x3f
    800063a4:	00170713          	addi	a4,a4,1
    800063a8:	00e78c63          	beq	a5,a4,800063c0 <devintr+0x54>
    800063ac:	01813083          	ld	ra,24(sp)
    800063b0:	01013403          	ld	s0,16(sp)
    800063b4:	00813483          	ld	s1,8(sp)
    800063b8:	02010113          	addi	sp,sp,32
    800063bc:	00008067          	ret
    800063c0:	00000097          	auipc	ra,0x0
    800063c4:	c8c080e7          	jalr	-884(ra) # 8000604c <cpuid>
    800063c8:	06050663          	beqz	a0,80006434 <devintr+0xc8>
    800063cc:	144027f3          	csrr	a5,sip
    800063d0:	ffd7f793          	andi	a5,a5,-3
    800063d4:	14479073          	csrw	sip,a5
    800063d8:	01813083          	ld	ra,24(sp)
    800063dc:	01013403          	ld	s0,16(sp)
    800063e0:	00813483          	ld	s1,8(sp)
    800063e4:	00200513          	li	a0,2
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	254080e7          	jalr	596(ra) # 80006644 <plic_claim>
    800063f8:	00a00793          	li	a5,10
    800063fc:	00050493          	mv	s1,a0
    80006400:	06f50663          	beq	a0,a5,8000646c <devintr+0x100>
    80006404:	00100513          	li	a0,1
    80006408:	fa0482e3          	beqz	s1,800063ac <devintr+0x40>
    8000640c:	00048593          	mv	a1,s1
    80006410:	00002517          	auipc	a0,0x2
    80006414:	1d050513          	addi	a0,a0,464 # 800085e0 <CONSOLE_STATUS+0x5d0>
    80006418:	00000097          	auipc	ra,0x0
    8000641c:	670080e7          	jalr	1648(ra) # 80006a88 <__printf>
    80006420:	00048513          	mv	a0,s1
    80006424:	00000097          	auipc	ra,0x0
    80006428:	258080e7          	jalr	600(ra) # 8000667c <plic_complete>
    8000642c:	00100513          	li	a0,1
    80006430:	f7dff06f          	j	800063ac <devintr+0x40>
    80006434:	00005517          	auipc	a0,0x5
    80006438:	3fc50513          	addi	a0,a0,1020 # 8000b830 <tickslock>
    8000643c:	00001097          	auipc	ra,0x1
    80006440:	320080e7          	jalr	800(ra) # 8000775c <acquire>
    80006444:	00004717          	auipc	a4,0x4
    80006448:	29070713          	addi	a4,a4,656 # 8000a6d4 <ticks>
    8000644c:	00072783          	lw	a5,0(a4)
    80006450:	00005517          	auipc	a0,0x5
    80006454:	3e050513          	addi	a0,a0,992 # 8000b830 <tickslock>
    80006458:	0017879b          	addiw	a5,a5,1
    8000645c:	00f72023          	sw	a5,0(a4)
    80006460:	00001097          	auipc	ra,0x1
    80006464:	3c8080e7          	jalr	968(ra) # 80007828 <release>
    80006468:	f65ff06f          	j	800063cc <devintr+0x60>
    8000646c:	00001097          	auipc	ra,0x1
    80006470:	f24080e7          	jalr	-220(ra) # 80007390 <uartintr>
    80006474:	fadff06f          	j	80006420 <devintr+0xb4>
	...

0000000080006480 <kernelvec>:
    80006480:	f0010113          	addi	sp,sp,-256
    80006484:	00113023          	sd	ra,0(sp)
    80006488:	00213423          	sd	sp,8(sp)
    8000648c:	00313823          	sd	gp,16(sp)
    80006490:	00413c23          	sd	tp,24(sp)
    80006494:	02513023          	sd	t0,32(sp)
    80006498:	02613423          	sd	t1,40(sp)
    8000649c:	02713823          	sd	t2,48(sp)
    800064a0:	02813c23          	sd	s0,56(sp)
    800064a4:	04913023          	sd	s1,64(sp)
    800064a8:	04a13423          	sd	a0,72(sp)
    800064ac:	04b13823          	sd	a1,80(sp)
    800064b0:	04c13c23          	sd	a2,88(sp)
    800064b4:	06d13023          	sd	a3,96(sp)
    800064b8:	06e13423          	sd	a4,104(sp)
    800064bc:	06f13823          	sd	a5,112(sp)
    800064c0:	07013c23          	sd	a6,120(sp)
    800064c4:	09113023          	sd	a7,128(sp)
    800064c8:	09213423          	sd	s2,136(sp)
    800064cc:	09313823          	sd	s3,144(sp)
    800064d0:	09413c23          	sd	s4,152(sp)
    800064d4:	0b513023          	sd	s5,160(sp)
    800064d8:	0b613423          	sd	s6,168(sp)
    800064dc:	0b713823          	sd	s7,176(sp)
    800064e0:	0b813c23          	sd	s8,184(sp)
    800064e4:	0d913023          	sd	s9,192(sp)
    800064e8:	0da13423          	sd	s10,200(sp)
    800064ec:	0db13823          	sd	s11,208(sp)
    800064f0:	0dc13c23          	sd	t3,216(sp)
    800064f4:	0fd13023          	sd	t4,224(sp)
    800064f8:	0fe13423          	sd	t5,232(sp)
    800064fc:	0ff13823          	sd	t6,240(sp)
    80006500:	ccdff0ef          	jal	ra,800061cc <kerneltrap>
    80006504:	00013083          	ld	ra,0(sp)
    80006508:	00813103          	ld	sp,8(sp)
    8000650c:	01013183          	ld	gp,16(sp)
    80006510:	02013283          	ld	t0,32(sp)
    80006514:	02813303          	ld	t1,40(sp)
    80006518:	03013383          	ld	t2,48(sp)
    8000651c:	03813403          	ld	s0,56(sp)
    80006520:	04013483          	ld	s1,64(sp)
    80006524:	04813503          	ld	a0,72(sp)
    80006528:	05013583          	ld	a1,80(sp)
    8000652c:	05813603          	ld	a2,88(sp)
    80006530:	06013683          	ld	a3,96(sp)
    80006534:	06813703          	ld	a4,104(sp)
    80006538:	07013783          	ld	a5,112(sp)
    8000653c:	07813803          	ld	a6,120(sp)
    80006540:	08013883          	ld	a7,128(sp)
    80006544:	08813903          	ld	s2,136(sp)
    80006548:	09013983          	ld	s3,144(sp)
    8000654c:	09813a03          	ld	s4,152(sp)
    80006550:	0a013a83          	ld	s5,160(sp)
    80006554:	0a813b03          	ld	s6,168(sp)
    80006558:	0b013b83          	ld	s7,176(sp)
    8000655c:	0b813c03          	ld	s8,184(sp)
    80006560:	0c013c83          	ld	s9,192(sp)
    80006564:	0c813d03          	ld	s10,200(sp)
    80006568:	0d013d83          	ld	s11,208(sp)
    8000656c:	0d813e03          	ld	t3,216(sp)
    80006570:	0e013e83          	ld	t4,224(sp)
    80006574:	0e813f03          	ld	t5,232(sp)
    80006578:	0f013f83          	ld	t6,240(sp)
    8000657c:	10010113          	addi	sp,sp,256
    80006580:	10200073          	sret
    80006584:	00000013          	nop
    80006588:	00000013          	nop
    8000658c:	00000013          	nop

0000000080006590 <timervec>:
    80006590:	34051573          	csrrw	a0,mscratch,a0
    80006594:	00b53023          	sd	a1,0(a0)
    80006598:	00c53423          	sd	a2,8(a0)
    8000659c:	00d53823          	sd	a3,16(a0)
    800065a0:	01853583          	ld	a1,24(a0)
    800065a4:	02053603          	ld	a2,32(a0)
    800065a8:	0005b683          	ld	a3,0(a1)
    800065ac:	00c686b3          	add	a3,a3,a2
    800065b0:	00d5b023          	sd	a3,0(a1)
    800065b4:	00200593          	li	a1,2
    800065b8:	14459073          	csrw	sip,a1
    800065bc:	01053683          	ld	a3,16(a0)
    800065c0:	00853603          	ld	a2,8(a0)
    800065c4:	00053583          	ld	a1,0(a0)
    800065c8:	34051573          	csrrw	a0,mscratch,a0
    800065cc:	30200073          	mret

00000000800065d0 <plicinit>:
    800065d0:	ff010113          	addi	sp,sp,-16
    800065d4:	00813423          	sd	s0,8(sp)
    800065d8:	01010413          	addi	s0,sp,16
    800065dc:	00813403          	ld	s0,8(sp)
    800065e0:	0c0007b7          	lui	a5,0xc000
    800065e4:	00100713          	li	a4,1
    800065e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800065ec:	00e7a223          	sw	a4,4(a5)
    800065f0:	01010113          	addi	sp,sp,16
    800065f4:	00008067          	ret

00000000800065f8 <plicinithart>:
    800065f8:	ff010113          	addi	sp,sp,-16
    800065fc:	00813023          	sd	s0,0(sp)
    80006600:	00113423          	sd	ra,8(sp)
    80006604:	01010413          	addi	s0,sp,16
    80006608:	00000097          	auipc	ra,0x0
    8000660c:	a44080e7          	jalr	-1468(ra) # 8000604c <cpuid>
    80006610:	0085171b          	slliw	a4,a0,0x8
    80006614:	0c0027b7          	lui	a5,0xc002
    80006618:	00e787b3          	add	a5,a5,a4
    8000661c:	40200713          	li	a4,1026
    80006620:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006624:	00813083          	ld	ra,8(sp)
    80006628:	00013403          	ld	s0,0(sp)
    8000662c:	00d5151b          	slliw	a0,a0,0xd
    80006630:	0c2017b7          	lui	a5,0xc201
    80006634:	00a78533          	add	a0,a5,a0
    80006638:	00052023          	sw	zero,0(a0)
    8000663c:	01010113          	addi	sp,sp,16
    80006640:	00008067          	ret

0000000080006644 <plic_claim>:
    80006644:	ff010113          	addi	sp,sp,-16
    80006648:	00813023          	sd	s0,0(sp)
    8000664c:	00113423          	sd	ra,8(sp)
    80006650:	01010413          	addi	s0,sp,16
    80006654:	00000097          	auipc	ra,0x0
    80006658:	9f8080e7          	jalr	-1544(ra) # 8000604c <cpuid>
    8000665c:	00813083          	ld	ra,8(sp)
    80006660:	00013403          	ld	s0,0(sp)
    80006664:	00d5151b          	slliw	a0,a0,0xd
    80006668:	0c2017b7          	lui	a5,0xc201
    8000666c:	00a78533          	add	a0,a5,a0
    80006670:	00452503          	lw	a0,4(a0)
    80006674:	01010113          	addi	sp,sp,16
    80006678:	00008067          	ret

000000008000667c <plic_complete>:
    8000667c:	fe010113          	addi	sp,sp,-32
    80006680:	00813823          	sd	s0,16(sp)
    80006684:	00913423          	sd	s1,8(sp)
    80006688:	00113c23          	sd	ra,24(sp)
    8000668c:	02010413          	addi	s0,sp,32
    80006690:	00050493          	mv	s1,a0
    80006694:	00000097          	auipc	ra,0x0
    80006698:	9b8080e7          	jalr	-1608(ra) # 8000604c <cpuid>
    8000669c:	01813083          	ld	ra,24(sp)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	00d5179b          	slliw	a5,a0,0xd
    800066a8:	0c201737          	lui	a4,0xc201
    800066ac:	00f707b3          	add	a5,a4,a5
    800066b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800066b4:	00813483          	ld	s1,8(sp)
    800066b8:	02010113          	addi	sp,sp,32
    800066bc:	00008067          	ret

00000000800066c0 <consolewrite>:
    800066c0:	fb010113          	addi	sp,sp,-80
    800066c4:	04813023          	sd	s0,64(sp)
    800066c8:	04113423          	sd	ra,72(sp)
    800066cc:	02913c23          	sd	s1,56(sp)
    800066d0:	03213823          	sd	s2,48(sp)
    800066d4:	03313423          	sd	s3,40(sp)
    800066d8:	03413023          	sd	s4,32(sp)
    800066dc:	01513c23          	sd	s5,24(sp)
    800066e0:	05010413          	addi	s0,sp,80
    800066e4:	06c05c63          	blez	a2,8000675c <consolewrite+0x9c>
    800066e8:	00060993          	mv	s3,a2
    800066ec:	00050a13          	mv	s4,a0
    800066f0:	00058493          	mv	s1,a1
    800066f4:	00000913          	li	s2,0
    800066f8:	fff00a93          	li	s5,-1
    800066fc:	01c0006f          	j	80006718 <consolewrite+0x58>
    80006700:	fbf44503          	lbu	a0,-65(s0)
    80006704:	0019091b          	addiw	s2,s2,1
    80006708:	00148493          	addi	s1,s1,1
    8000670c:	00001097          	auipc	ra,0x1
    80006710:	a9c080e7          	jalr	-1380(ra) # 800071a8 <uartputc>
    80006714:	03298063          	beq	s3,s2,80006734 <consolewrite+0x74>
    80006718:	00048613          	mv	a2,s1
    8000671c:	00100693          	li	a3,1
    80006720:	000a0593          	mv	a1,s4
    80006724:	fbf40513          	addi	a0,s0,-65
    80006728:	00000097          	auipc	ra,0x0
    8000672c:	9dc080e7          	jalr	-1572(ra) # 80006104 <either_copyin>
    80006730:	fd5518e3          	bne	a0,s5,80006700 <consolewrite+0x40>
    80006734:	04813083          	ld	ra,72(sp)
    80006738:	04013403          	ld	s0,64(sp)
    8000673c:	03813483          	ld	s1,56(sp)
    80006740:	02813983          	ld	s3,40(sp)
    80006744:	02013a03          	ld	s4,32(sp)
    80006748:	01813a83          	ld	s5,24(sp)
    8000674c:	00090513          	mv	a0,s2
    80006750:	03013903          	ld	s2,48(sp)
    80006754:	05010113          	addi	sp,sp,80
    80006758:	00008067          	ret
    8000675c:	00000913          	li	s2,0
    80006760:	fd5ff06f          	j	80006734 <consolewrite+0x74>

0000000080006764 <consoleread>:
    80006764:	f9010113          	addi	sp,sp,-112
    80006768:	06813023          	sd	s0,96(sp)
    8000676c:	04913c23          	sd	s1,88(sp)
    80006770:	05213823          	sd	s2,80(sp)
    80006774:	05313423          	sd	s3,72(sp)
    80006778:	05413023          	sd	s4,64(sp)
    8000677c:	03513c23          	sd	s5,56(sp)
    80006780:	03613823          	sd	s6,48(sp)
    80006784:	03713423          	sd	s7,40(sp)
    80006788:	03813023          	sd	s8,32(sp)
    8000678c:	06113423          	sd	ra,104(sp)
    80006790:	01913c23          	sd	s9,24(sp)
    80006794:	07010413          	addi	s0,sp,112
    80006798:	00060b93          	mv	s7,a2
    8000679c:	00050913          	mv	s2,a0
    800067a0:	00058c13          	mv	s8,a1
    800067a4:	00060b1b          	sext.w	s6,a2
    800067a8:	00005497          	auipc	s1,0x5
    800067ac:	0b048493          	addi	s1,s1,176 # 8000b858 <cons>
    800067b0:	00400993          	li	s3,4
    800067b4:	fff00a13          	li	s4,-1
    800067b8:	00a00a93          	li	s5,10
    800067bc:	05705e63          	blez	s7,80006818 <consoleread+0xb4>
    800067c0:	09c4a703          	lw	a4,156(s1)
    800067c4:	0984a783          	lw	a5,152(s1)
    800067c8:	0007071b          	sext.w	a4,a4
    800067cc:	08e78463          	beq	a5,a4,80006854 <consoleread+0xf0>
    800067d0:	07f7f713          	andi	a4,a5,127
    800067d4:	00e48733          	add	a4,s1,a4
    800067d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800067dc:	0017869b          	addiw	a3,a5,1
    800067e0:	08d4ac23          	sw	a3,152(s1)
    800067e4:	00070c9b          	sext.w	s9,a4
    800067e8:	0b370663          	beq	a4,s3,80006894 <consoleread+0x130>
    800067ec:	00100693          	li	a3,1
    800067f0:	f9f40613          	addi	a2,s0,-97
    800067f4:	000c0593          	mv	a1,s8
    800067f8:	00090513          	mv	a0,s2
    800067fc:	f8e40fa3          	sb	a4,-97(s0)
    80006800:	00000097          	auipc	ra,0x0
    80006804:	8b8080e7          	jalr	-1864(ra) # 800060b8 <either_copyout>
    80006808:	01450863          	beq	a0,s4,80006818 <consoleread+0xb4>
    8000680c:	001c0c13          	addi	s8,s8,1
    80006810:	fffb8b9b          	addiw	s7,s7,-1
    80006814:	fb5c94e3          	bne	s9,s5,800067bc <consoleread+0x58>
    80006818:	000b851b          	sext.w	a0,s7
    8000681c:	06813083          	ld	ra,104(sp)
    80006820:	06013403          	ld	s0,96(sp)
    80006824:	05813483          	ld	s1,88(sp)
    80006828:	05013903          	ld	s2,80(sp)
    8000682c:	04813983          	ld	s3,72(sp)
    80006830:	04013a03          	ld	s4,64(sp)
    80006834:	03813a83          	ld	s5,56(sp)
    80006838:	02813b83          	ld	s7,40(sp)
    8000683c:	02013c03          	ld	s8,32(sp)
    80006840:	01813c83          	ld	s9,24(sp)
    80006844:	40ab053b          	subw	a0,s6,a0
    80006848:	03013b03          	ld	s6,48(sp)
    8000684c:	07010113          	addi	sp,sp,112
    80006850:	00008067          	ret
    80006854:	00001097          	auipc	ra,0x1
    80006858:	1d8080e7          	jalr	472(ra) # 80007a2c <push_on>
    8000685c:	0984a703          	lw	a4,152(s1)
    80006860:	09c4a783          	lw	a5,156(s1)
    80006864:	0007879b          	sext.w	a5,a5
    80006868:	fef70ce3          	beq	a4,a5,80006860 <consoleread+0xfc>
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	234080e7          	jalr	564(ra) # 80007aa0 <pop_on>
    80006874:	0984a783          	lw	a5,152(s1)
    80006878:	07f7f713          	andi	a4,a5,127
    8000687c:	00e48733          	add	a4,s1,a4
    80006880:	01874703          	lbu	a4,24(a4)
    80006884:	0017869b          	addiw	a3,a5,1
    80006888:	08d4ac23          	sw	a3,152(s1)
    8000688c:	00070c9b          	sext.w	s9,a4
    80006890:	f5371ee3          	bne	a4,s3,800067ec <consoleread+0x88>
    80006894:	000b851b          	sext.w	a0,s7
    80006898:	f96bf2e3          	bgeu	s7,s6,8000681c <consoleread+0xb8>
    8000689c:	08f4ac23          	sw	a5,152(s1)
    800068a0:	f7dff06f          	j	8000681c <consoleread+0xb8>

00000000800068a4 <consputc>:
    800068a4:	10000793          	li	a5,256
    800068a8:	00f50663          	beq	a0,a5,800068b4 <consputc+0x10>
    800068ac:	00001317          	auipc	t1,0x1
    800068b0:	9f430067          	jr	-1548(t1) # 800072a0 <uartputc_sync>
    800068b4:	ff010113          	addi	sp,sp,-16
    800068b8:	00113423          	sd	ra,8(sp)
    800068bc:	00813023          	sd	s0,0(sp)
    800068c0:	01010413          	addi	s0,sp,16
    800068c4:	00800513          	li	a0,8
    800068c8:	00001097          	auipc	ra,0x1
    800068cc:	9d8080e7          	jalr	-1576(ra) # 800072a0 <uartputc_sync>
    800068d0:	02000513          	li	a0,32
    800068d4:	00001097          	auipc	ra,0x1
    800068d8:	9cc080e7          	jalr	-1588(ra) # 800072a0 <uartputc_sync>
    800068dc:	00013403          	ld	s0,0(sp)
    800068e0:	00813083          	ld	ra,8(sp)
    800068e4:	00800513          	li	a0,8
    800068e8:	01010113          	addi	sp,sp,16
    800068ec:	00001317          	auipc	t1,0x1
    800068f0:	9b430067          	jr	-1612(t1) # 800072a0 <uartputc_sync>

00000000800068f4 <consoleintr>:
    800068f4:	fe010113          	addi	sp,sp,-32
    800068f8:	00813823          	sd	s0,16(sp)
    800068fc:	00913423          	sd	s1,8(sp)
    80006900:	01213023          	sd	s2,0(sp)
    80006904:	00113c23          	sd	ra,24(sp)
    80006908:	02010413          	addi	s0,sp,32
    8000690c:	00005917          	auipc	s2,0x5
    80006910:	f4c90913          	addi	s2,s2,-180 # 8000b858 <cons>
    80006914:	00050493          	mv	s1,a0
    80006918:	00090513          	mv	a0,s2
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	e40080e7          	jalr	-448(ra) # 8000775c <acquire>
    80006924:	02048c63          	beqz	s1,8000695c <consoleintr+0x68>
    80006928:	0a092783          	lw	a5,160(s2)
    8000692c:	09892703          	lw	a4,152(s2)
    80006930:	07f00693          	li	a3,127
    80006934:	40e7873b          	subw	a4,a5,a4
    80006938:	02e6e263          	bltu	a3,a4,8000695c <consoleintr+0x68>
    8000693c:	00d00713          	li	a4,13
    80006940:	04e48063          	beq	s1,a4,80006980 <consoleintr+0x8c>
    80006944:	07f7f713          	andi	a4,a5,127
    80006948:	00e90733          	add	a4,s2,a4
    8000694c:	0017879b          	addiw	a5,a5,1
    80006950:	0af92023          	sw	a5,160(s2)
    80006954:	00970c23          	sb	s1,24(a4)
    80006958:	08f92e23          	sw	a5,156(s2)
    8000695c:	01013403          	ld	s0,16(sp)
    80006960:	01813083          	ld	ra,24(sp)
    80006964:	00813483          	ld	s1,8(sp)
    80006968:	00013903          	ld	s2,0(sp)
    8000696c:	00005517          	auipc	a0,0x5
    80006970:	eec50513          	addi	a0,a0,-276 # 8000b858 <cons>
    80006974:	02010113          	addi	sp,sp,32
    80006978:	00001317          	auipc	t1,0x1
    8000697c:	eb030067          	jr	-336(t1) # 80007828 <release>
    80006980:	00a00493          	li	s1,10
    80006984:	fc1ff06f          	j	80006944 <consoleintr+0x50>

0000000080006988 <consoleinit>:
    80006988:	fe010113          	addi	sp,sp,-32
    8000698c:	00113c23          	sd	ra,24(sp)
    80006990:	00813823          	sd	s0,16(sp)
    80006994:	00913423          	sd	s1,8(sp)
    80006998:	02010413          	addi	s0,sp,32
    8000699c:	00005497          	auipc	s1,0x5
    800069a0:	ebc48493          	addi	s1,s1,-324 # 8000b858 <cons>
    800069a4:	00048513          	mv	a0,s1
    800069a8:	00002597          	auipc	a1,0x2
    800069ac:	c9058593          	addi	a1,a1,-880 # 80008638 <CONSOLE_STATUS+0x628>
    800069b0:	00001097          	auipc	ra,0x1
    800069b4:	d88080e7          	jalr	-632(ra) # 80007738 <initlock>
    800069b8:	00000097          	auipc	ra,0x0
    800069bc:	7ac080e7          	jalr	1964(ra) # 80007164 <uartinit>
    800069c0:	01813083          	ld	ra,24(sp)
    800069c4:	01013403          	ld	s0,16(sp)
    800069c8:	00000797          	auipc	a5,0x0
    800069cc:	d9c78793          	addi	a5,a5,-612 # 80006764 <consoleread>
    800069d0:	0af4bc23          	sd	a5,184(s1)
    800069d4:	00000797          	auipc	a5,0x0
    800069d8:	cec78793          	addi	a5,a5,-788 # 800066c0 <consolewrite>
    800069dc:	0cf4b023          	sd	a5,192(s1)
    800069e0:	00813483          	ld	s1,8(sp)
    800069e4:	02010113          	addi	sp,sp,32
    800069e8:	00008067          	ret

00000000800069ec <console_read>:
    800069ec:	ff010113          	addi	sp,sp,-16
    800069f0:	00813423          	sd	s0,8(sp)
    800069f4:	01010413          	addi	s0,sp,16
    800069f8:	00813403          	ld	s0,8(sp)
    800069fc:	00005317          	auipc	t1,0x5
    80006a00:	f1433303          	ld	t1,-236(t1) # 8000b910 <devsw+0x10>
    80006a04:	01010113          	addi	sp,sp,16
    80006a08:	00030067          	jr	t1

0000000080006a0c <console_write>:
    80006a0c:	ff010113          	addi	sp,sp,-16
    80006a10:	00813423          	sd	s0,8(sp)
    80006a14:	01010413          	addi	s0,sp,16
    80006a18:	00813403          	ld	s0,8(sp)
    80006a1c:	00005317          	auipc	t1,0x5
    80006a20:	efc33303          	ld	t1,-260(t1) # 8000b918 <devsw+0x18>
    80006a24:	01010113          	addi	sp,sp,16
    80006a28:	00030067          	jr	t1

0000000080006a2c <panic>:
    80006a2c:	fe010113          	addi	sp,sp,-32
    80006a30:	00113c23          	sd	ra,24(sp)
    80006a34:	00813823          	sd	s0,16(sp)
    80006a38:	00913423          	sd	s1,8(sp)
    80006a3c:	02010413          	addi	s0,sp,32
    80006a40:	00050493          	mv	s1,a0
    80006a44:	00002517          	auipc	a0,0x2
    80006a48:	bfc50513          	addi	a0,a0,-1028 # 80008640 <CONSOLE_STATUS+0x630>
    80006a4c:	00005797          	auipc	a5,0x5
    80006a50:	f607a623          	sw	zero,-148(a5) # 8000b9b8 <pr+0x18>
    80006a54:	00000097          	auipc	ra,0x0
    80006a58:	034080e7          	jalr	52(ra) # 80006a88 <__printf>
    80006a5c:	00048513          	mv	a0,s1
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	028080e7          	jalr	40(ra) # 80006a88 <__printf>
    80006a68:	00002517          	auipc	a0,0x2
    80006a6c:	9d050513          	addi	a0,a0,-1584 # 80008438 <CONSOLE_STATUS+0x428>
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	018080e7          	jalr	24(ra) # 80006a88 <__printf>
    80006a78:	00100793          	li	a5,1
    80006a7c:	00004717          	auipc	a4,0x4
    80006a80:	c4f72e23          	sw	a5,-932(a4) # 8000a6d8 <panicked>
    80006a84:	0000006f          	j	80006a84 <panic+0x58>

0000000080006a88 <__printf>:
    80006a88:	f3010113          	addi	sp,sp,-208
    80006a8c:	08813023          	sd	s0,128(sp)
    80006a90:	07313423          	sd	s3,104(sp)
    80006a94:	09010413          	addi	s0,sp,144
    80006a98:	05813023          	sd	s8,64(sp)
    80006a9c:	08113423          	sd	ra,136(sp)
    80006aa0:	06913c23          	sd	s1,120(sp)
    80006aa4:	07213823          	sd	s2,112(sp)
    80006aa8:	07413023          	sd	s4,96(sp)
    80006aac:	05513c23          	sd	s5,88(sp)
    80006ab0:	05613823          	sd	s6,80(sp)
    80006ab4:	05713423          	sd	s7,72(sp)
    80006ab8:	03913c23          	sd	s9,56(sp)
    80006abc:	03a13823          	sd	s10,48(sp)
    80006ac0:	03b13423          	sd	s11,40(sp)
    80006ac4:	00005317          	auipc	t1,0x5
    80006ac8:	edc30313          	addi	t1,t1,-292 # 8000b9a0 <pr>
    80006acc:	01832c03          	lw	s8,24(t1)
    80006ad0:	00b43423          	sd	a1,8(s0)
    80006ad4:	00c43823          	sd	a2,16(s0)
    80006ad8:	00d43c23          	sd	a3,24(s0)
    80006adc:	02e43023          	sd	a4,32(s0)
    80006ae0:	02f43423          	sd	a5,40(s0)
    80006ae4:	03043823          	sd	a6,48(s0)
    80006ae8:	03143c23          	sd	a7,56(s0)
    80006aec:	00050993          	mv	s3,a0
    80006af0:	4a0c1663          	bnez	s8,80006f9c <__printf+0x514>
    80006af4:	60098c63          	beqz	s3,8000710c <__printf+0x684>
    80006af8:	0009c503          	lbu	a0,0(s3)
    80006afc:	00840793          	addi	a5,s0,8
    80006b00:	f6f43c23          	sd	a5,-136(s0)
    80006b04:	00000493          	li	s1,0
    80006b08:	22050063          	beqz	a0,80006d28 <__printf+0x2a0>
    80006b0c:	00002a37          	lui	s4,0x2
    80006b10:	00018ab7          	lui	s5,0x18
    80006b14:	000f4b37          	lui	s6,0xf4
    80006b18:	00989bb7          	lui	s7,0x989
    80006b1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006b20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006b24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006b28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006b2c:	00148c9b          	addiw	s9,s1,1
    80006b30:	02500793          	li	a5,37
    80006b34:	01998933          	add	s2,s3,s9
    80006b38:	38f51263          	bne	a0,a5,80006ebc <__printf+0x434>
    80006b3c:	00094783          	lbu	a5,0(s2)
    80006b40:	00078c9b          	sext.w	s9,a5
    80006b44:	1e078263          	beqz	a5,80006d28 <__printf+0x2a0>
    80006b48:	0024849b          	addiw	s1,s1,2
    80006b4c:	07000713          	li	a4,112
    80006b50:	00998933          	add	s2,s3,s1
    80006b54:	38e78a63          	beq	a5,a4,80006ee8 <__printf+0x460>
    80006b58:	20f76863          	bltu	a4,a5,80006d68 <__printf+0x2e0>
    80006b5c:	42a78863          	beq	a5,a0,80006f8c <__printf+0x504>
    80006b60:	06400713          	li	a4,100
    80006b64:	40e79663          	bne	a5,a4,80006f70 <__printf+0x4e8>
    80006b68:	f7843783          	ld	a5,-136(s0)
    80006b6c:	0007a603          	lw	a2,0(a5)
    80006b70:	00878793          	addi	a5,a5,8
    80006b74:	f6f43c23          	sd	a5,-136(s0)
    80006b78:	42064a63          	bltz	a2,80006fac <__printf+0x524>
    80006b7c:	00a00713          	li	a4,10
    80006b80:	02e677bb          	remuw	a5,a2,a4
    80006b84:	00002d97          	auipc	s11,0x2
    80006b88:	ae4d8d93          	addi	s11,s11,-1308 # 80008668 <digits>
    80006b8c:	00900593          	li	a1,9
    80006b90:	0006051b          	sext.w	a0,a2
    80006b94:	00000c93          	li	s9,0
    80006b98:	02079793          	slli	a5,a5,0x20
    80006b9c:	0207d793          	srli	a5,a5,0x20
    80006ba0:	00fd87b3          	add	a5,s11,a5
    80006ba4:	0007c783          	lbu	a5,0(a5)
    80006ba8:	02e656bb          	divuw	a3,a2,a4
    80006bac:	f8f40023          	sb	a5,-128(s0)
    80006bb0:	14c5d863          	bge	a1,a2,80006d00 <__printf+0x278>
    80006bb4:	06300593          	li	a1,99
    80006bb8:	00100c93          	li	s9,1
    80006bbc:	02e6f7bb          	remuw	a5,a3,a4
    80006bc0:	02079793          	slli	a5,a5,0x20
    80006bc4:	0207d793          	srli	a5,a5,0x20
    80006bc8:	00fd87b3          	add	a5,s11,a5
    80006bcc:	0007c783          	lbu	a5,0(a5)
    80006bd0:	02e6d73b          	divuw	a4,a3,a4
    80006bd4:	f8f400a3          	sb	a5,-127(s0)
    80006bd8:	12a5f463          	bgeu	a1,a0,80006d00 <__printf+0x278>
    80006bdc:	00a00693          	li	a3,10
    80006be0:	00900593          	li	a1,9
    80006be4:	02d777bb          	remuw	a5,a4,a3
    80006be8:	02079793          	slli	a5,a5,0x20
    80006bec:	0207d793          	srli	a5,a5,0x20
    80006bf0:	00fd87b3          	add	a5,s11,a5
    80006bf4:	0007c503          	lbu	a0,0(a5)
    80006bf8:	02d757bb          	divuw	a5,a4,a3
    80006bfc:	f8a40123          	sb	a0,-126(s0)
    80006c00:	48e5f263          	bgeu	a1,a4,80007084 <__printf+0x5fc>
    80006c04:	06300513          	li	a0,99
    80006c08:	02d7f5bb          	remuw	a1,a5,a3
    80006c0c:	02059593          	slli	a1,a1,0x20
    80006c10:	0205d593          	srli	a1,a1,0x20
    80006c14:	00bd85b3          	add	a1,s11,a1
    80006c18:	0005c583          	lbu	a1,0(a1)
    80006c1c:	02d7d7bb          	divuw	a5,a5,a3
    80006c20:	f8b401a3          	sb	a1,-125(s0)
    80006c24:	48e57263          	bgeu	a0,a4,800070a8 <__printf+0x620>
    80006c28:	3e700513          	li	a0,999
    80006c2c:	02d7f5bb          	remuw	a1,a5,a3
    80006c30:	02059593          	slli	a1,a1,0x20
    80006c34:	0205d593          	srli	a1,a1,0x20
    80006c38:	00bd85b3          	add	a1,s11,a1
    80006c3c:	0005c583          	lbu	a1,0(a1)
    80006c40:	02d7d7bb          	divuw	a5,a5,a3
    80006c44:	f8b40223          	sb	a1,-124(s0)
    80006c48:	46e57663          	bgeu	a0,a4,800070b4 <__printf+0x62c>
    80006c4c:	02d7f5bb          	remuw	a1,a5,a3
    80006c50:	02059593          	slli	a1,a1,0x20
    80006c54:	0205d593          	srli	a1,a1,0x20
    80006c58:	00bd85b3          	add	a1,s11,a1
    80006c5c:	0005c583          	lbu	a1,0(a1)
    80006c60:	02d7d7bb          	divuw	a5,a5,a3
    80006c64:	f8b402a3          	sb	a1,-123(s0)
    80006c68:	46ea7863          	bgeu	s4,a4,800070d8 <__printf+0x650>
    80006c6c:	02d7f5bb          	remuw	a1,a5,a3
    80006c70:	02059593          	slli	a1,a1,0x20
    80006c74:	0205d593          	srli	a1,a1,0x20
    80006c78:	00bd85b3          	add	a1,s11,a1
    80006c7c:	0005c583          	lbu	a1,0(a1)
    80006c80:	02d7d7bb          	divuw	a5,a5,a3
    80006c84:	f8b40323          	sb	a1,-122(s0)
    80006c88:	3eeaf863          	bgeu	s5,a4,80007078 <__printf+0x5f0>
    80006c8c:	02d7f5bb          	remuw	a1,a5,a3
    80006c90:	02059593          	slli	a1,a1,0x20
    80006c94:	0205d593          	srli	a1,a1,0x20
    80006c98:	00bd85b3          	add	a1,s11,a1
    80006c9c:	0005c583          	lbu	a1,0(a1)
    80006ca0:	02d7d7bb          	divuw	a5,a5,a3
    80006ca4:	f8b403a3          	sb	a1,-121(s0)
    80006ca8:	42eb7e63          	bgeu	s6,a4,800070e4 <__printf+0x65c>
    80006cac:	02d7f5bb          	remuw	a1,a5,a3
    80006cb0:	02059593          	slli	a1,a1,0x20
    80006cb4:	0205d593          	srli	a1,a1,0x20
    80006cb8:	00bd85b3          	add	a1,s11,a1
    80006cbc:	0005c583          	lbu	a1,0(a1)
    80006cc0:	02d7d7bb          	divuw	a5,a5,a3
    80006cc4:	f8b40423          	sb	a1,-120(s0)
    80006cc8:	42ebfc63          	bgeu	s7,a4,80007100 <__printf+0x678>
    80006ccc:	02079793          	slli	a5,a5,0x20
    80006cd0:	0207d793          	srli	a5,a5,0x20
    80006cd4:	00fd8db3          	add	s11,s11,a5
    80006cd8:	000dc703          	lbu	a4,0(s11)
    80006cdc:	00a00793          	li	a5,10
    80006ce0:	00900c93          	li	s9,9
    80006ce4:	f8e404a3          	sb	a4,-119(s0)
    80006ce8:	00065c63          	bgez	a2,80006d00 <__printf+0x278>
    80006cec:	f9040713          	addi	a4,s0,-112
    80006cf0:	00f70733          	add	a4,a4,a5
    80006cf4:	02d00693          	li	a3,45
    80006cf8:	fed70823          	sb	a3,-16(a4)
    80006cfc:	00078c93          	mv	s9,a5
    80006d00:	f8040793          	addi	a5,s0,-128
    80006d04:	01978cb3          	add	s9,a5,s9
    80006d08:	f7f40d13          	addi	s10,s0,-129
    80006d0c:	000cc503          	lbu	a0,0(s9)
    80006d10:	fffc8c93          	addi	s9,s9,-1
    80006d14:	00000097          	auipc	ra,0x0
    80006d18:	b90080e7          	jalr	-1136(ra) # 800068a4 <consputc>
    80006d1c:	ffac98e3          	bne	s9,s10,80006d0c <__printf+0x284>
    80006d20:	00094503          	lbu	a0,0(s2)
    80006d24:	e00514e3          	bnez	a0,80006b2c <__printf+0xa4>
    80006d28:	1a0c1663          	bnez	s8,80006ed4 <__printf+0x44c>
    80006d2c:	08813083          	ld	ra,136(sp)
    80006d30:	08013403          	ld	s0,128(sp)
    80006d34:	07813483          	ld	s1,120(sp)
    80006d38:	07013903          	ld	s2,112(sp)
    80006d3c:	06813983          	ld	s3,104(sp)
    80006d40:	06013a03          	ld	s4,96(sp)
    80006d44:	05813a83          	ld	s5,88(sp)
    80006d48:	05013b03          	ld	s6,80(sp)
    80006d4c:	04813b83          	ld	s7,72(sp)
    80006d50:	04013c03          	ld	s8,64(sp)
    80006d54:	03813c83          	ld	s9,56(sp)
    80006d58:	03013d03          	ld	s10,48(sp)
    80006d5c:	02813d83          	ld	s11,40(sp)
    80006d60:	0d010113          	addi	sp,sp,208
    80006d64:	00008067          	ret
    80006d68:	07300713          	li	a4,115
    80006d6c:	1ce78a63          	beq	a5,a4,80006f40 <__printf+0x4b8>
    80006d70:	07800713          	li	a4,120
    80006d74:	1ee79e63          	bne	a5,a4,80006f70 <__printf+0x4e8>
    80006d78:	f7843783          	ld	a5,-136(s0)
    80006d7c:	0007a703          	lw	a4,0(a5)
    80006d80:	00878793          	addi	a5,a5,8
    80006d84:	f6f43c23          	sd	a5,-136(s0)
    80006d88:	28074263          	bltz	a4,8000700c <__printf+0x584>
    80006d8c:	00002d97          	auipc	s11,0x2
    80006d90:	8dcd8d93          	addi	s11,s11,-1828 # 80008668 <digits>
    80006d94:	00f77793          	andi	a5,a4,15
    80006d98:	00fd87b3          	add	a5,s11,a5
    80006d9c:	0007c683          	lbu	a3,0(a5)
    80006da0:	00f00613          	li	a2,15
    80006da4:	0007079b          	sext.w	a5,a4
    80006da8:	f8d40023          	sb	a3,-128(s0)
    80006dac:	0047559b          	srliw	a1,a4,0x4
    80006db0:	0047569b          	srliw	a3,a4,0x4
    80006db4:	00000c93          	li	s9,0
    80006db8:	0ee65063          	bge	a2,a4,80006e98 <__printf+0x410>
    80006dbc:	00f6f693          	andi	a3,a3,15
    80006dc0:	00dd86b3          	add	a3,s11,a3
    80006dc4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006dc8:	0087d79b          	srliw	a5,a5,0x8
    80006dcc:	00100c93          	li	s9,1
    80006dd0:	f8d400a3          	sb	a3,-127(s0)
    80006dd4:	0cb67263          	bgeu	a2,a1,80006e98 <__printf+0x410>
    80006dd8:	00f7f693          	andi	a3,a5,15
    80006ddc:	00dd86b3          	add	a3,s11,a3
    80006de0:	0006c583          	lbu	a1,0(a3)
    80006de4:	00f00613          	li	a2,15
    80006de8:	0047d69b          	srliw	a3,a5,0x4
    80006dec:	f8b40123          	sb	a1,-126(s0)
    80006df0:	0047d593          	srli	a1,a5,0x4
    80006df4:	28f67e63          	bgeu	a2,a5,80007090 <__printf+0x608>
    80006df8:	00f6f693          	andi	a3,a3,15
    80006dfc:	00dd86b3          	add	a3,s11,a3
    80006e00:	0006c503          	lbu	a0,0(a3)
    80006e04:	0087d813          	srli	a6,a5,0x8
    80006e08:	0087d69b          	srliw	a3,a5,0x8
    80006e0c:	f8a401a3          	sb	a0,-125(s0)
    80006e10:	28b67663          	bgeu	a2,a1,8000709c <__printf+0x614>
    80006e14:	00f6f693          	andi	a3,a3,15
    80006e18:	00dd86b3          	add	a3,s11,a3
    80006e1c:	0006c583          	lbu	a1,0(a3)
    80006e20:	00c7d513          	srli	a0,a5,0xc
    80006e24:	00c7d69b          	srliw	a3,a5,0xc
    80006e28:	f8b40223          	sb	a1,-124(s0)
    80006e2c:	29067a63          	bgeu	a2,a6,800070c0 <__printf+0x638>
    80006e30:	00f6f693          	andi	a3,a3,15
    80006e34:	00dd86b3          	add	a3,s11,a3
    80006e38:	0006c583          	lbu	a1,0(a3)
    80006e3c:	0107d813          	srli	a6,a5,0x10
    80006e40:	0107d69b          	srliw	a3,a5,0x10
    80006e44:	f8b402a3          	sb	a1,-123(s0)
    80006e48:	28a67263          	bgeu	a2,a0,800070cc <__printf+0x644>
    80006e4c:	00f6f693          	andi	a3,a3,15
    80006e50:	00dd86b3          	add	a3,s11,a3
    80006e54:	0006c683          	lbu	a3,0(a3)
    80006e58:	0147d79b          	srliw	a5,a5,0x14
    80006e5c:	f8d40323          	sb	a3,-122(s0)
    80006e60:	21067663          	bgeu	a2,a6,8000706c <__printf+0x5e4>
    80006e64:	02079793          	slli	a5,a5,0x20
    80006e68:	0207d793          	srli	a5,a5,0x20
    80006e6c:	00fd8db3          	add	s11,s11,a5
    80006e70:	000dc683          	lbu	a3,0(s11)
    80006e74:	00800793          	li	a5,8
    80006e78:	00700c93          	li	s9,7
    80006e7c:	f8d403a3          	sb	a3,-121(s0)
    80006e80:	00075c63          	bgez	a4,80006e98 <__printf+0x410>
    80006e84:	f9040713          	addi	a4,s0,-112
    80006e88:	00f70733          	add	a4,a4,a5
    80006e8c:	02d00693          	li	a3,45
    80006e90:	fed70823          	sb	a3,-16(a4)
    80006e94:	00078c93          	mv	s9,a5
    80006e98:	f8040793          	addi	a5,s0,-128
    80006e9c:	01978cb3          	add	s9,a5,s9
    80006ea0:	f7f40d13          	addi	s10,s0,-129
    80006ea4:	000cc503          	lbu	a0,0(s9)
    80006ea8:	fffc8c93          	addi	s9,s9,-1
    80006eac:	00000097          	auipc	ra,0x0
    80006eb0:	9f8080e7          	jalr	-1544(ra) # 800068a4 <consputc>
    80006eb4:	ff9d18e3          	bne	s10,s9,80006ea4 <__printf+0x41c>
    80006eb8:	0100006f          	j	80006ec8 <__printf+0x440>
    80006ebc:	00000097          	auipc	ra,0x0
    80006ec0:	9e8080e7          	jalr	-1560(ra) # 800068a4 <consputc>
    80006ec4:	000c8493          	mv	s1,s9
    80006ec8:	00094503          	lbu	a0,0(s2)
    80006ecc:	c60510e3          	bnez	a0,80006b2c <__printf+0xa4>
    80006ed0:	e40c0ee3          	beqz	s8,80006d2c <__printf+0x2a4>
    80006ed4:	00005517          	auipc	a0,0x5
    80006ed8:	acc50513          	addi	a0,a0,-1332 # 8000b9a0 <pr>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	94c080e7          	jalr	-1716(ra) # 80007828 <release>
    80006ee4:	e49ff06f          	j	80006d2c <__printf+0x2a4>
    80006ee8:	f7843783          	ld	a5,-136(s0)
    80006eec:	03000513          	li	a0,48
    80006ef0:	01000d13          	li	s10,16
    80006ef4:	00878713          	addi	a4,a5,8
    80006ef8:	0007bc83          	ld	s9,0(a5)
    80006efc:	f6e43c23          	sd	a4,-136(s0)
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	9a4080e7          	jalr	-1628(ra) # 800068a4 <consputc>
    80006f08:	07800513          	li	a0,120
    80006f0c:	00000097          	auipc	ra,0x0
    80006f10:	998080e7          	jalr	-1640(ra) # 800068a4 <consputc>
    80006f14:	00001d97          	auipc	s11,0x1
    80006f18:	754d8d93          	addi	s11,s11,1876 # 80008668 <digits>
    80006f1c:	03ccd793          	srli	a5,s9,0x3c
    80006f20:	00fd87b3          	add	a5,s11,a5
    80006f24:	0007c503          	lbu	a0,0(a5)
    80006f28:	fffd0d1b          	addiw	s10,s10,-1
    80006f2c:	004c9c93          	slli	s9,s9,0x4
    80006f30:	00000097          	auipc	ra,0x0
    80006f34:	974080e7          	jalr	-1676(ra) # 800068a4 <consputc>
    80006f38:	fe0d12e3          	bnez	s10,80006f1c <__printf+0x494>
    80006f3c:	f8dff06f          	j	80006ec8 <__printf+0x440>
    80006f40:	f7843783          	ld	a5,-136(s0)
    80006f44:	0007bc83          	ld	s9,0(a5)
    80006f48:	00878793          	addi	a5,a5,8
    80006f4c:	f6f43c23          	sd	a5,-136(s0)
    80006f50:	000c9a63          	bnez	s9,80006f64 <__printf+0x4dc>
    80006f54:	1080006f          	j	8000705c <__printf+0x5d4>
    80006f58:	001c8c93          	addi	s9,s9,1
    80006f5c:	00000097          	auipc	ra,0x0
    80006f60:	948080e7          	jalr	-1720(ra) # 800068a4 <consputc>
    80006f64:	000cc503          	lbu	a0,0(s9)
    80006f68:	fe0518e3          	bnez	a0,80006f58 <__printf+0x4d0>
    80006f6c:	f5dff06f          	j	80006ec8 <__printf+0x440>
    80006f70:	02500513          	li	a0,37
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	930080e7          	jalr	-1744(ra) # 800068a4 <consputc>
    80006f7c:	000c8513          	mv	a0,s9
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	924080e7          	jalr	-1756(ra) # 800068a4 <consputc>
    80006f88:	f41ff06f          	j	80006ec8 <__printf+0x440>
    80006f8c:	02500513          	li	a0,37
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	914080e7          	jalr	-1772(ra) # 800068a4 <consputc>
    80006f98:	f31ff06f          	j	80006ec8 <__printf+0x440>
    80006f9c:	00030513          	mv	a0,t1
    80006fa0:	00000097          	auipc	ra,0x0
    80006fa4:	7bc080e7          	jalr	1980(ra) # 8000775c <acquire>
    80006fa8:	b4dff06f          	j	80006af4 <__printf+0x6c>
    80006fac:	40c0053b          	negw	a0,a2
    80006fb0:	00a00713          	li	a4,10
    80006fb4:	02e576bb          	remuw	a3,a0,a4
    80006fb8:	00001d97          	auipc	s11,0x1
    80006fbc:	6b0d8d93          	addi	s11,s11,1712 # 80008668 <digits>
    80006fc0:	ff700593          	li	a1,-9
    80006fc4:	02069693          	slli	a3,a3,0x20
    80006fc8:	0206d693          	srli	a3,a3,0x20
    80006fcc:	00dd86b3          	add	a3,s11,a3
    80006fd0:	0006c683          	lbu	a3,0(a3)
    80006fd4:	02e557bb          	divuw	a5,a0,a4
    80006fd8:	f8d40023          	sb	a3,-128(s0)
    80006fdc:	10b65e63          	bge	a2,a1,800070f8 <__printf+0x670>
    80006fe0:	06300593          	li	a1,99
    80006fe4:	02e7f6bb          	remuw	a3,a5,a4
    80006fe8:	02069693          	slli	a3,a3,0x20
    80006fec:	0206d693          	srli	a3,a3,0x20
    80006ff0:	00dd86b3          	add	a3,s11,a3
    80006ff4:	0006c683          	lbu	a3,0(a3)
    80006ff8:	02e7d73b          	divuw	a4,a5,a4
    80006ffc:	00200793          	li	a5,2
    80007000:	f8d400a3          	sb	a3,-127(s0)
    80007004:	bca5ece3          	bltu	a1,a0,80006bdc <__printf+0x154>
    80007008:	ce5ff06f          	j	80006cec <__printf+0x264>
    8000700c:	40e007bb          	negw	a5,a4
    80007010:	00001d97          	auipc	s11,0x1
    80007014:	658d8d93          	addi	s11,s11,1624 # 80008668 <digits>
    80007018:	00f7f693          	andi	a3,a5,15
    8000701c:	00dd86b3          	add	a3,s11,a3
    80007020:	0006c583          	lbu	a1,0(a3)
    80007024:	ff100613          	li	a2,-15
    80007028:	0047d69b          	srliw	a3,a5,0x4
    8000702c:	f8b40023          	sb	a1,-128(s0)
    80007030:	0047d59b          	srliw	a1,a5,0x4
    80007034:	0ac75e63          	bge	a4,a2,800070f0 <__printf+0x668>
    80007038:	00f6f693          	andi	a3,a3,15
    8000703c:	00dd86b3          	add	a3,s11,a3
    80007040:	0006c603          	lbu	a2,0(a3)
    80007044:	00f00693          	li	a3,15
    80007048:	0087d79b          	srliw	a5,a5,0x8
    8000704c:	f8c400a3          	sb	a2,-127(s0)
    80007050:	d8b6e4e3          	bltu	a3,a1,80006dd8 <__printf+0x350>
    80007054:	00200793          	li	a5,2
    80007058:	e2dff06f          	j	80006e84 <__printf+0x3fc>
    8000705c:	00001c97          	auipc	s9,0x1
    80007060:	5ecc8c93          	addi	s9,s9,1516 # 80008648 <CONSOLE_STATUS+0x638>
    80007064:	02800513          	li	a0,40
    80007068:	ef1ff06f          	j	80006f58 <__printf+0x4d0>
    8000706c:	00700793          	li	a5,7
    80007070:	00600c93          	li	s9,6
    80007074:	e0dff06f          	j	80006e80 <__printf+0x3f8>
    80007078:	00700793          	li	a5,7
    8000707c:	00600c93          	li	s9,6
    80007080:	c69ff06f          	j	80006ce8 <__printf+0x260>
    80007084:	00300793          	li	a5,3
    80007088:	00200c93          	li	s9,2
    8000708c:	c5dff06f          	j	80006ce8 <__printf+0x260>
    80007090:	00300793          	li	a5,3
    80007094:	00200c93          	li	s9,2
    80007098:	de9ff06f          	j	80006e80 <__printf+0x3f8>
    8000709c:	00400793          	li	a5,4
    800070a0:	00300c93          	li	s9,3
    800070a4:	dddff06f          	j	80006e80 <__printf+0x3f8>
    800070a8:	00400793          	li	a5,4
    800070ac:	00300c93          	li	s9,3
    800070b0:	c39ff06f          	j	80006ce8 <__printf+0x260>
    800070b4:	00500793          	li	a5,5
    800070b8:	00400c93          	li	s9,4
    800070bc:	c2dff06f          	j	80006ce8 <__printf+0x260>
    800070c0:	00500793          	li	a5,5
    800070c4:	00400c93          	li	s9,4
    800070c8:	db9ff06f          	j	80006e80 <__printf+0x3f8>
    800070cc:	00600793          	li	a5,6
    800070d0:	00500c93          	li	s9,5
    800070d4:	dadff06f          	j	80006e80 <__printf+0x3f8>
    800070d8:	00600793          	li	a5,6
    800070dc:	00500c93          	li	s9,5
    800070e0:	c09ff06f          	j	80006ce8 <__printf+0x260>
    800070e4:	00800793          	li	a5,8
    800070e8:	00700c93          	li	s9,7
    800070ec:	bfdff06f          	j	80006ce8 <__printf+0x260>
    800070f0:	00100793          	li	a5,1
    800070f4:	d91ff06f          	j	80006e84 <__printf+0x3fc>
    800070f8:	00100793          	li	a5,1
    800070fc:	bf1ff06f          	j	80006cec <__printf+0x264>
    80007100:	00900793          	li	a5,9
    80007104:	00800c93          	li	s9,8
    80007108:	be1ff06f          	j	80006ce8 <__printf+0x260>
    8000710c:	00001517          	auipc	a0,0x1
    80007110:	54450513          	addi	a0,a0,1348 # 80008650 <CONSOLE_STATUS+0x640>
    80007114:	00000097          	auipc	ra,0x0
    80007118:	918080e7          	jalr	-1768(ra) # 80006a2c <panic>

000000008000711c <printfinit>:
    8000711c:	fe010113          	addi	sp,sp,-32
    80007120:	00813823          	sd	s0,16(sp)
    80007124:	00913423          	sd	s1,8(sp)
    80007128:	00113c23          	sd	ra,24(sp)
    8000712c:	02010413          	addi	s0,sp,32
    80007130:	00005497          	auipc	s1,0x5
    80007134:	87048493          	addi	s1,s1,-1936 # 8000b9a0 <pr>
    80007138:	00048513          	mv	a0,s1
    8000713c:	00001597          	auipc	a1,0x1
    80007140:	52458593          	addi	a1,a1,1316 # 80008660 <CONSOLE_STATUS+0x650>
    80007144:	00000097          	auipc	ra,0x0
    80007148:	5f4080e7          	jalr	1524(ra) # 80007738 <initlock>
    8000714c:	01813083          	ld	ra,24(sp)
    80007150:	01013403          	ld	s0,16(sp)
    80007154:	0004ac23          	sw	zero,24(s1)
    80007158:	00813483          	ld	s1,8(sp)
    8000715c:	02010113          	addi	sp,sp,32
    80007160:	00008067          	ret

0000000080007164 <uartinit>:
    80007164:	ff010113          	addi	sp,sp,-16
    80007168:	00813423          	sd	s0,8(sp)
    8000716c:	01010413          	addi	s0,sp,16
    80007170:	100007b7          	lui	a5,0x10000
    80007174:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007178:	f8000713          	li	a4,-128
    8000717c:	00e781a3          	sb	a4,3(a5)
    80007180:	00300713          	li	a4,3
    80007184:	00e78023          	sb	a4,0(a5)
    80007188:	000780a3          	sb	zero,1(a5)
    8000718c:	00e781a3          	sb	a4,3(a5)
    80007190:	00700693          	li	a3,7
    80007194:	00d78123          	sb	a3,2(a5)
    80007198:	00e780a3          	sb	a4,1(a5)
    8000719c:	00813403          	ld	s0,8(sp)
    800071a0:	01010113          	addi	sp,sp,16
    800071a4:	00008067          	ret

00000000800071a8 <uartputc>:
    800071a8:	00003797          	auipc	a5,0x3
    800071ac:	5307a783          	lw	a5,1328(a5) # 8000a6d8 <panicked>
    800071b0:	00078463          	beqz	a5,800071b8 <uartputc+0x10>
    800071b4:	0000006f          	j	800071b4 <uartputc+0xc>
    800071b8:	fd010113          	addi	sp,sp,-48
    800071bc:	02813023          	sd	s0,32(sp)
    800071c0:	00913c23          	sd	s1,24(sp)
    800071c4:	01213823          	sd	s2,16(sp)
    800071c8:	01313423          	sd	s3,8(sp)
    800071cc:	02113423          	sd	ra,40(sp)
    800071d0:	03010413          	addi	s0,sp,48
    800071d4:	00003917          	auipc	s2,0x3
    800071d8:	50c90913          	addi	s2,s2,1292 # 8000a6e0 <uart_tx_r>
    800071dc:	00093783          	ld	a5,0(s2)
    800071e0:	00003497          	auipc	s1,0x3
    800071e4:	50848493          	addi	s1,s1,1288 # 8000a6e8 <uart_tx_w>
    800071e8:	0004b703          	ld	a4,0(s1)
    800071ec:	02078693          	addi	a3,a5,32
    800071f0:	00050993          	mv	s3,a0
    800071f4:	02e69c63          	bne	a3,a4,8000722c <uartputc+0x84>
    800071f8:	00001097          	auipc	ra,0x1
    800071fc:	834080e7          	jalr	-1996(ra) # 80007a2c <push_on>
    80007200:	00093783          	ld	a5,0(s2)
    80007204:	0004b703          	ld	a4,0(s1)
    80007208:	02078793          	addi	a5,a5,32
    8000720c:	00e79463          	bne	a5,a4,80007214 <uartputc+0x6c>
    80007210:	0000006f          	j	80007210 <uartputc+0x68>
    80007214:	00001097          	auipc	ra,0x1
    80007218:	88c080e7          	jalr	-1908(ra) # 80007aa0 <pop_on>
    8000721c:	00093783          	ld	a5,0(s2)
    80007220:	0004b703          	ld	a4,0(s1)
    80007224:	02078693          	addi	a3,a5,32
    80007228:	fce688e3          	beq	a3,a4,800071f8 <uartputc+0x50>
    8000722c:	01f77693          	andi	a3,a4,31
    80007230:	00004597          	auipc	a1,0x4
    80007234:	79058593          	addi	a1,a1,1936 # 8000b9c0 <uart_tx_buf>
    80007238:	00d586b3          	add	a3,a1,a3
    8000723c:	00170713          	addi	a4,a4,1
    80007240:	01368023          	sb	s3,0(a3)
    80007244:	00e4b023          	sd	a4,0(s1)
    80007248:	10000637          	lui	a2,0x10000
    8000724c:	02f71063          	bne	a4,a5,8000726c <uartputc+0xc4>
    80007250:	0340006f          	j	80007284 <uartputc+0xdc>
    80007254:	00074703          	lbu	a4,0(a4)
    80007258:	00f93023          	sd	a5,0(s2)
    8000725c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007260:	00093783          	ld	a5,0(s2)
    80007264:	0004b703          	ld	a4,0(s1)
    80007268:	00f70e63          	beq	a4,a5,80007284 <uartputc+0xdc>
    8000726c:	00564683          	lbu	a3,5(a2)
    80007270:	01f7f713          	andi	a4,a5,31
    80007274:	00e58733          	add	a4,a1,a4
    80007278:	0206f693          	andi	a3,a3,32
    8000727c:	00178793          	addi	a5,a5,1
    80007280:	fc069ae3          	bnez	a3,80007254 <uartputc+0xac>
    80007284:	02813083          	ld	ra,40(sp)
    80007288:	02013403          	ld	s0,32(sp)
    8000728c:	01813483          	ld	s1,24(sp)
    80007290:	01013903          	ld	s2,16(sp)
    80007294:	00813983          	ld	s3,8(sp)
    80007298:	03010113          	addi	sp,sp,48
    8000729c:	00008067          	ret

00000000800072a0 <uartputc_sync>:
    800072a0:	ff010113          	addi	sp,sp,-16
    800072a4:	00813423          	sd	s0,8(sp)
    800072a8:	01010413          	addi	s0,sp,16
    800072ac:	00003717          	auipc	a4,0x3
    800072b0:	42c72703          	lw	a4,1068(a4) # 8000a6d8 <panicked>
    800072b4:	02071663          	bnez	a4,800072e0 <uartputc_sync+0x40>
    800072b8:	00050793          	mv	a5,a0
    800072bc:	100006b7          	lui	a3,0x10000
    800072c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800072c4:	02077713          	andi	a4,a4,32
    800072c8:	fe070ce3          	beqz	a4,800072c0 <uartputc_sync+0x20>
    800072cc:	0ff7f793          	andi	a5,a5,255
    800072d0:	00f68023          	sb	a5,0(a3)
    800072d4:	00813403          	ld	s0,8(sp)
    800072d8:	01010113          	addi	sp,sp,16
    800072dc:	00008067          	ret
    800072e0:	0000006f          	j	800072e0 <uartputc_sync+0x40>

00000000800072e4 <uartstart>:
    800072e4:	ff010113          	addi	sp,sp,-16
    800072e8:	00813423          	sd	s0,8(sp)
    800072ec:	01010413          	addi	s0,sp,16
    800072f0:	00003617          	auipc	a2,0x3
    800072f4:	3f060613          	addi	a2,a2,1008 # 8000a6e0 <uart_tx_r>
    800072f8:	00003517          	auipc	a0,0x3
    800072fc:	3f050513          	addi	a0,a0,1008 # 8000a6e8 <uart_tx_w>
    80007300:	00063783          	ld	a5,0(a2)
    80007304:	00053703          	ld	a4,0(a0)
    80007308:	04f70263          	beq	a4,a5,8000734c <uartstart+0x68>
    8000730c:	100005b7          	lui	a1,0x10000
    80007310:	00004817          	auipc	a6,0x4
    80007314:	6b080813          	addi	a6,a6,1712 # 8000b9c0 <uart_tx_buf>
    80007318:	01c0006f          	j	80007334 <uartstart+0x50>
    8000731c:	0006c703          	lbu	a4,0(a3)
    80007320:	00f63023          	sd	a5,0(a2)
    80007324:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007328:	00063783          	ld	a5,0(a2)
    8000732c:	00053703          	ld	a4,0(a0)
    80007330:	00f70e63          	beq	a4,a5,8000734c <uartstart+0x68>
    80007334:	01f7f713          	andi	a4,a5,31
    80007338:	00e806b3          	add	a3,a6,a4
    8000733c:	0055c703          	lbu	a4,5(a1)
    80007340:	00178793          	addi	a5,a5,1
    80007344:	02077713          	andi	a4,a4,32
    80007348:	fc071ae3          	bnez	a4,8000731c <uartstart+0x38>
    8000734c:	00813403          	ld	s0,8(sp)
    80007350:	01010113          	addi	sp,sp,16
    80007354:	00008067          	ret

0000000080007358 <uartgetc>:
    80007358:	ff010113          	addi	sp,sp,-16
    8000735c:	00813423          	sd	s0,8(sp)
    80007360:	01010413          	addi	s0,sp,16
    80007364:	10000737          	lui	a4,0x10000
    80007368:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000736c:	0017f793          	andi	a5,a5,1
    80007370:	00078c63          	beqz	a5,80007388 <uartgetc+0x30>
    80007374:	00074503          	lbu	a0,0(a4)
    80007378:	0ff57513          	andi	a0,a0,255
    8000737c:	00813403          	ld	s0,8(sp)
    80007380:	01010113          	addi	sp,sp,16
    80007384:	00008067          	ret
    80007388:	fff00513          	li	a0,-1
    8000738c:	ff1ff06f          	j	8000737c <uartgetc+0x24>

0000000080007390 <uartintr>:
    80007390:	100007b7          	lui	a5,0x10000
    80007394:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007398:	0017f793          	andi	a5,a5,1
    8000739c:	0a078463          	beqz	a5,80007444 <uartintr+0xb4>
    800073a0:	fe010113          	addi	sp,sp,-32
    800073a4:	00813823          	sd	s0,16(sp)
    800073a8:	00913423          	sd	s1,8(sp)
    800073ac:	00113c23          	sd	ra,24(sp)
    800073b0:	02010413          	addi	s0,sp,32
    800073b4:	100004b7          	lui	s1,0x10000
    800073b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800073bc:	0ff57513          	andi	a0,a0,255
    800073c0:	fffff097          	auipc	ra,0xfffff
    800073c4:	534080e7          	jalr	1332(ra) # 800068f4 <consoleintr>
    800073c8:	0054c783          	lbu	a5,5(s1)
    800073cc:	0017f793          	andi	a5,a5,1
    800073d0:	fe0794e3          	bnez	a5,800073b8 <uartintr+0x28>
    800073d4:	00003617          	auipc	a2,0x3
    800073d8:	30c60613          	addi	a2,a2,780 # 8000a6e0 <uart_tx_r>
    800073dc:	00003517          	auipc	a0,0x3
    800073e0:	30c50513          	addi	a0,a0,780 # 8000a6e8 <uart_tx_w>
    800073e4:	00063783          	ld	a5,0(a2)
    800073e8:	00053703          	ld	a4,0(a0)
    800073ec:	04f70263          	beq	a4,a5,80007430 <uartintr+0xa0>
    800073f0:	100005b7          	lui	a1,0x10000
    800073f4:	00004817          	auipc	a6,0x4
    800073f8:	5cc80813          	addi	a6,a6,1484 # 8000b9c0 <uart_tx_buf>
    800073fc:	01c0006f          	j	80007418 <uartintr+0x88>
    80007400:	0006c703          	lbu	a4,0(a3)
    80007404:	00f63023          	sd	a5,0(a2)
    80007408:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000740c:	00063783          	ld	a5,0(a2)
    80007410:	00053703          	ld	a4,0(a0)
    80007414:	00f70e63          	beq	a4,a5,80007430 <uartintr+0xa0>
    80007418:	01f7f713          	andi	a4,a5,31
    8000741c:	00e806b3          	add	a3,a6,a4
    80007420:	0055c703          	lbu	a4,5(a1)
    80007424:	00178793          	addi	a5,a5,1
    80007428:	02077713          	andi	a4,a4,32
    8000742c:	fc071ae3          	bnez	a4,80007400 <uartintr+0x70>
    80007430:	01813083          	ld	ra,24(sp)
    80007434:	01013403          	ld	s0,16(sp)
    80007438:	00813483          	ld	s1,8(sp)
    8000743c:	02010113          	addi	sp,sp,32
    80007440:	00008067          	ret
    80007444:	00003617          	auipc	a2,0x3
    80007448:	29c60613          	addi	a2,a2,668 # 8000a6e0 <uart_tx_r>
    8000744c:	00003517          	auipc	a0,0x3
    80007450:	29c50513          	addi	a0,a0,668 # 8000a6e8 <uart_tx_w>
    80007454:	00063783          	ld	a5,0(a2)
    80007458:	00053703          	ld	a4,0(a0)
    8000745c:	04f70263          	beq	a4,a5,800074a0 <uartintr+0x110>
    80007460:	100005b7          	lui	a1,0x10000
    80007464:	00004817          	auipc	a6,0x4
    80007468:	55c80813          	addi	a6,a6,1372 # 8000b9c0 <uart_tx_buf>
    8000746c:	01c0006f          	j	80007488 <uartintr+0xf8>
    80007470:	0006c703          	lbu	a4,0(a3)
    80007474:	00f63023          	sd	a5,0(a2)
    80007478:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000747c:	00063783          	ld	a5,0(a2)
    80007480:	00053703          	ld	a4,0(a0)
    80007484:	02f70063          	beq	a4,a5,800074a4 <uartintr+0x114>
    80007488:	01f7f713          	andi	a4,a5,31
    8000748c:	00e806b3          	add	a3,a6,a4
    80007490:	0055c703          	lbu	a4,5(a1)
    80007494:	00178793          	addi	a5,a5,1
    80007498:	02077713          	andi	a4,a4,32
    8000749c:	fc071ae3          	bnez	a4,80007470 <uartintr+0xe0>
    800074a0:	00008067          	ret
    800074a4:	00008067          	ret

00000000800074a8 <kinit>:
    800074a8:	fc010113          	addi	sp,sp,-64
    800074ac:	02913423          	sd	s1,40(sp)
    800074b0:	fffff7b7          	lui	a5,0xfffff
    800074b4:	00005497          	auipc	s1,0x5
    800074b8:	52b48493          	addi	s1,s1,1323 # 8000c9df <end+0xfff>
    800074bc:	02813823          	sd	s0,48(sp)
    800074c0:	01313c23          	sd	s3,24(sp)
    800074c4:	00f4f4b3          	and	s1,s1,a5
    800074c8:	02113c23          	sd	ra,56(sp)
    800074cc:	03213023          	sd	s2,32(sp)
    800074d0:	01413823          	sd	s4,16(sp)
    800074d4:	01513423          	sd	s5,8(sp)
    800074d8:	04010413          	addi	s0,sp,64
    800074dc:	000017b7          	lui	a5,0x1
    800074e0:	01100993          	li	s3,17
    800074e4:	00f487b3          	add	a5,s1,a5
    800074e8:	01b99993          	slli	s3,s3,0x1b
    800074ec:	06f9e063          	bltu	s3,a5,8000754c <kinit+0xa4>
    800074f0:	00004a97          	auipc	s5,0x4
    800074f4:	4f0a8a93          	addi	s5,s5,1264 # 8000b9e0 <end>
    800074f8:	0754ec63          	bltu	s1,s5,80007570 <kinit+0xc8>
    800074fc:	0734fa63          	bgeu	s1,s3,80007570 <kinit+0xc8>
    80007500:	00088a37          	lui	s4,0x88
    80007504:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007508:	00003917          	auipc	s2,0x3
    8000750c:	1e890913          	addi	s2,s2,488 # 8000a6f0 <kmem>
    80007510:	00ca1a13          	slli	s4,s4,0xc
    80007514:	0140006f          	j	80007528 <kinit+0x80>
    80007518:	000017b7          	lui	a5,0x1
    8000751c:	00f484b3          	add	s1,s1,a5
    80007520:	0554e863          	bltu	s1,s5,80007570 <kinit+0xc8>
    80007524:	0534f663          	bgeu	s1,s3,80007570 <kinit+0xc8>
    80007528:	00001637          	lui	a2,0x1
    8000752c:	00100593          	li	a1,1
    80007530:	00048513          	mv	a0,s1
    80007534:	00000097          	auipc	ra,0x0
    80007538:	5e4080e7          	jalr	1508(ra) # 80007b18 <__memset>
    8000753c:	00093783          	ld	a5,0(s2)
    80007540:	00f4b023          	sd	a5,0(s1)
    80007544:	00993023          	sd	s1,0(s2)
    80007548:	fd4498e3          	bne	s1,s4,80007518 <kinit+0x70>
    8000754c:	03813083          	ld	ra,56(sp)
    80007550:	03013403          	ld	s0,48(sp)
    80007554:	02813483          	ld	s1,40(sp)
    80007558:	02013903          	ld	s2,32(sp)
    8000755c:	01813983          	ld	s3,24(sp)
    80007560:	01013a03          	ld	s4,16(sp)
    80007564:	00813a83          	ld	s5,8(sp)
    80007568:	04010113          	addi	sp,sp,64
    8000756c:	00008067          	ret
    80007570:	00001517          	auipc	a0,0x1
    80007574:	11050513          	addi	a0,a0,272 # 80008680 <digits+0x18>
    80007578:	fffff097          	auipc	ra,0xfffff
    8000757c:	4b4080e7          	jalr	1204(ra) # 80006a2c <panic>

0000000080007580 <freerange>:
    80007580:	fc010113          	addi	sp,sp,-64
    80007584:	000017b7          	lui	a5,0x1
    80007588:	02913423          	sd	s1,40(sp)
    8000758c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007590:	009504b3          	add	s1,a0,s1
    80007594:	fffff537          	lui	a0,0xfffff
    80007598:	02813823          	sd	s0,48(sp)
    8000759c:	02113c23          	sd	ra,56(sp)
    800075a0:	03213023          	sd	s2,32(sp)
    800075a4:	01313c23          	sd	s3,24(sp)
    800075a8:	01413823          	sd	s4,16(sp)
    800075ac:	01513423          	sd	s5,8(sp)
    800075b0:	01613023          	sd	s6,0(sp)
    800075b4:	04010413          	addi	s0,sp,64
    800075b8:	00a4f4b3          	and	s1,s1,a0
    800075bc:	00f487b3          	add	a5,s1,a5
    800075c0:	06f5e463          	bltu	a1,a5,80007628 <freerange+0xa8>
    800075c4:	00004a97          	auipc	s5,0x4
    800075c8:	41ca8a93          	addi	s5,s5,1052 # 8000b9e0 <end>
    800075cc:	0954e263          	bltu	s1,s5,80007650 <freerange+0xd0>
    800075d0:	01100993          	li	s3,17
    800075d4:	01b99993          	slli	s3,s3,0x1b
    800075d8:	0734fc63          	bgeu	s1,s3,80007650 <freerange+0xd0>
    800075dc:	00058a13          	mv	s4,a1
    800075e0:	00003917          	auipc	s2,0x3
    800075e4:	11090913          	addi	s2,s2,272 # 8000a6f0 <kmem>
    800075e8:	00002b37          	lui	s6,0x2
    800075ec:	0140006f          	j	80007600 <freerange+0x80>
    800075f0:	000017b7          	lui	a5,0x1
    800075f4:	00f484b3          	add	s1,s1,a5
    800075f8:	0554ec63          	bltu	s1,s5,80007650 <freerange+0xd0>
    800075fc:	0534fa63          	bgeu	s1,s3,80007650 <freerange+0xd0>
    80007600:	00001637          	lui	a2,0x1
    80007604:	00100593          	li	a1,1
    80007608:	00048513          	mv	a0,s1
    8000760c:	00000097          	auipc	ra,0x0
    80007610:	50c080e7          	jalr	1292(ra) # 80007b18 <__memset>
    80007614:	00093703          	ld	a4,0(s2)
    80007618:	016487b3          	add	a5,s1,s6
    8000761c:	00e4b023          	sd	a4,0(s1)
    80007620:	00993023          	sd	s1,0(s2)
    80007624:	fcfa76e3          	bgeu	s4,a5,800075f0 <freerange+0x70>
    80007628:	03813083          	ld	ra,56(sp)
    8000762c:	03013403          	ld	s0,48(sp)
    80007630:	02813483          	ld	s1,40(sp)
    80007634:	02013903          	ld	s2,32(sp)
    80007638:	01813983          	ld	s3,24(sp)
    8000763c:	01013a03          	ld	s4,16(sp)
    80007640:	00813a83          	ld	s5,8(sp)
    80007644:	00013b03          	ld	s6,0(sp)
    80007648:	04010113          	addi	sp,sp,64
    8000764c:	00008067          	ret
    80007650:	00001517          	auipc	a0,0x1
    80007654:	03050513          	addi	a0,a0,48 # 80008680 <digits+0x18>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	3d4080e7          	jalr	980(ra) # 80006a2c <panic>

0000000080007660 <kfree>:
    80007660:	fe010113          	addi	sp,sp,-32
    80007664:	00813823          	sd	s0,16(sp)
    80007668:	00113c23          	sd	ra,24(sp)
    8000766c:	00913423          	sd	s1,8(sp)
    80007670:	02010413          	addi	s0,sp,32
    80007674:	03451793          	slli	a5,a0,0x34
    80007678:	04079c63          	bnez	a5,800076d0 <kfree+0x70>
    8000767c:	00004797          	auipc	a5,0x4
    80007680:	36478793          	addi	a5,a5,868 # 8000b9e0 <end>
    80007684:	00050493          	mv	s1,a0
    80007688:	04f56463          	bltu	a0,a5,800076d0 <kfree+0x70>
    8000768c:	01100793          	li	a5,17
    80007690:	01b79793          	slli	a5,a5,0x1b
    80007694:	02f57e63          	bgeu	a0,a5,800076d0 <kfree+0x70>
    80007698:	00001637          	lui	a2,0x1
    8000769c:	00100593          	li	a1,1
    800076a0:	00000097          	auipc	ra,0x0
    800076a4:	478080e7          	jalr	1144(ra) # 80007b18 <__memset>
    800076a8:	00003797          	auipc	a5,0x3
    800076ac:	04878793          	addi	a5,a5,72 # 8000a6f0 <kmem>
    800076b0:	0007b703          	ld	a4,0(a5)
    800076b4:	01813083          	ld	ra,24(sp)
    800076b8:	01013403          	ld	s0,16(sp)
    800076bc:	00e4b023          	sd	a4,0(s1)
    800076c0:	0097b023          	sd	s1,0(a5)
    800076c4:	00813483          	ld	s1,8(sp)
    800076c8:	02010113          	addi	sp,sp,32
    800076cc:	00008067          	ret
    800076d0:	00001517          	auipc	a0,0x1
    800076d4:	fb050513          	addi	a0,a0,-80 # 80008680 <digits+0x18>
    800076d8:	fffff097          	auipc	ra,0xfffff
    800076dc:	354080e7          	jalr	852(ra) # 80006a2c <panic>

00000000800076e0 <kalloc>:
    800076e0:	fe010113          	addi	sp,sp,-32
    800076e4:	00813823          	sd	s0,16(sp)
    800076e8:	00913423          	sd	s1,8(sp)
    800076ec:	00113c23          	sd	ra,24(sp)
    800076f0:	02010413          	addi	s0,sp,32
    800076f4:	00003797          	auipc	a5,0x3
    800076f8:	ffc78793          	addi	a5,a5,-4 # 8000a6f0 <kmem>
    800076fc:	0007b483          	ld	s1,0(a5)
    80007700:	02048063          	beqz	s1,80007720 <kalloc+0x40>
    80007704:	0004b703          	ld	a4,0(s1)
    80007708:	00001637          	lui	a2,0x1
    8000770c:	00500593          	li	a1,5
    80007710:	00048513          	mv	a0,s1
    80007714:	00e7b023          	sd	a4,0(a5)
    80007718:	00000097          	auipc	ra,0x0
    8000771c:	400080e7          	jalr	1024(ra) # 80007b18 <__memset>
    80007720:	01813083          	ld	ra,24(sp)
    80007724:	01013403          	ld	s0,16(sp)
    80007728:	00048513          	mv	a0,s1
    8000772c:	00813483          	ld	s1,8(sp)
    80007730:	02010113          	addi	sp,sp,32
    80007734:	00008067          	ret

0000000080007738 <initlock>:
    80007738:	ff010113          	addi	sp,sp,-16
    8000773c:	00813423          	sd	s0,8(sp)
    80007740:	01010413          	addi	s0,sp,16
    80007744:	00813403          	ld	s0,8(sp)
    80007748:	00b53423          	sd	a1,8(a0)
    8000774c:	00052023          	sw	zero,0(a0)
    80007750:	00053823          	sd	zero,16(a0)
    80007754:	01010113          	addi	sp,sp,16
    80007758:	00008067          	ret

000000008000775c <acquire>:
    8000775c:	fe010113          	addi	sp,sp,-32
    80007760:	00813823          	sd	s0,16(sp)
    80007764:	00913423          	sd	s1,8(sp)
    80007768:	00113c23          	sd	ra,24(sp)
    8000776c:	01213023          	sd	s2,0(sp)
    80007770:	02010413          	addi	s0,sp,32
    80007774:	00050493          	mv	s1,a0
    80007778:	10002973          	csrr	s2,sstatus
    8000777c:	100027f3          	csrr	a5,sstatus
    80007780:	ffd7f793          	andi	a5,a5,-3
    80007784:	10079073          	csrw	sstatus,a5
    80007788:	fffff097          	auipc	ra,0xfffff
    8000778c:	8e4080e7          	jalr	-1820(ra) # 8000606c <mycpu>
    80007790:	07852783          	lw	a5,120(a0)
    80007794:	06078e63          	beqz	a5,80007810 <acquire+0xb4>
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	8d4080e7          	jalr	-1836(ra) # 8000606c <mycpu>
    800077a0:	07852783          	lw	a5,120(a0)
    800077a4:	0004a703          	lw	a4,0(s1)
    800077a8:	0017879b          	addiw	a5,a5,1
    800077ac:	06f52c23          	sw	a5,120(a0)
    800077b0:	04071063          	bnez	a4,800077f0 <acquire+0x94>
    800077b4:	00100713          	li	a4,1
    800077b8:	00070793          	mv	a5,a4
    800077bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800077c0:	0007879b          	sext.w	a5,a5
    800077c4:	fe079ae3          	bnez	a5,800077b8 <acquire+0x5c>
    800077c8:	0ff0000f          	fence
    800077cc:	fffff097          	auipc	ra,0xfffff
    800077d0:	8a0080e7          	jalr	-1888(ra) # 8000606c <mycpu>
    800077d4:	01813083          	ld	ra,24(sp)
    800077d8:	01013403          	ld	s0,16(sp)
    800077dc:	00a4b823          	sd	a0,16(s1)
    800077e0:	00013903          	ld	s2,0(sp)
    800077e4:	00813483          	ld	s1,8(sp)
    800077e8:	02010113          	addi	sp,sp,32
    800077ec:	00008067          	ret
    800077f0:	0104b903          	ld	s2,16(s1)
    800077f4:	fffff097          	auipc	ra,0xfffff
    800077f8:	878080e7          	jalr	-1928(ra) # 8000606c <mycpu>
    800077fc:	faa91ce3          	bne	s2,a0,800077b4 <acquire+0x58>
    80007800:	00001517          	auipc	a0,0x1
    80007804:	e8850513          	addi	a0,a0,-376 # 80008688 <digits+0x20>
    80007808:	fffff097          	auipc	ra,0xfffff
    8000780c:	224080e7          	jalr	548(ra) # 80006a2c <panic>
    80007810:	00195913          	srli	s2,s2,0x1
    80007814:	fffff097          	auipc	ra,0xfffff
    80007818:	858080e7          	jalr	-1960(ra) # 8000606c <mycpu>
    8000781c:	00197913          	andi	s2,s2,1
    80007820:	07252e23          	sw	s2,124(a0)
    80007824:	f75ff06f          	j	80007798 <acquire+0x3c>

0000000080007828 <release>:
    80007828:	fe010113          	addi	sp,sp,-32
    8000782c:	00813823          	sd	s0,16(sp)
    80007830:	00113c23          	sd	ra,24(sp)
    80007834:	00913423          	sd	s1,8(sp)
    80007838:	01213023          	sd	s2,0(sp)
    8000783c:	02010413          	addi	s0,sp,32
    80007840:	00052783          	lw	a5,0(a0)
    80007844:	00079a63          	bnez	a5,80007858 <release+0x30>
    80007848:	00001517          	auipc	a0,0x1
    8000784c:	e4850513          	addi	a0,a0,-440 # 80008690 <digits+0x28>
    80007850:	fffff097          	auipc	ra,0xfffff
    80007854:	1dc080e7          	jalr	476(ra) # 80006a2c <panic>
    80007858:	01053903          	ld	s2,16(a0)
    8000785c:	00050493          	mv	s1,a0
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	80c080e7          	jalr	-2036(ra) # 8000606c <mycpu>
    80007868:	fea910e3          	bne	s2,a0,80007848 <release+0x20>
    8000786c:	0004b823          	sd	zero,16(s1)
    80007870:	0ff0000f          	fence
    80007874:	0f50000f          	fence	iorw,ow
    80007878:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000787c:	ffffe097          	auipc	ra,0xffffe
    80007880:	7f0080e7          	jalr	2032(ra) # 8000606c <mycpu>
    80007884:	100027f3          	csrr	a5,sstatus
    80007888:	0027f793          	andi	a5,a5,2
    8000788c:	04079a63          	bnez	a5,800078e0 <release+0xb8>
    80007890:	07852783          	lw	a5,120(a0)
    80007894:	02f05e63          	blez	a5,800078d0 <release+0xa8>
    80007898:	fff7871b          	addiw	a4,a5,-1
    8000789c:	06e52c23          	sw	a4,120(a0)
    800078a0:	00071c63          	bnez	a4,800078b8 <release+0x90>
    800078a4:	07c52783          	lw	a5,124(a0)
    800078a8:	00078863          	beqz	a5,800078b8 <release+0x90>
    800078ac:	100027f3          	csrr	a5,sstatus
    800078b0:	0027e793          	ori	a5,a5,2
    800078b4:	10079073          	csrw	sstatus,a5
    800078b8:	01813083          	ld	ra,24(sp)
    800078bc:	01013403          	ld	s0,16(sp)
    800078c0:	00813483          	ld	s1,8(sp)
    800078c4:	00013903          	ld	s2,0(sp)
    800078c8:	02010113          	addi	sp,sp,32
    800078cc:	00008067          	ret
    800078d0:	00001517          	auipc	a0,0x1
    800078d4:	de050513          	addi	a0,a0,-544 # 800086b0 <digits+0x48>
    800078d8:	fffff097          	auipc	ra,0xfffff
    800078dc:	154080e7          	jalr	340(ra) # 80006a2c <panic>
    800078e0:	00001517          	auipc	a0,0x1
    800078e4:	db850513          	addi	a0,a0,-584 # 80008698 <digits+0x30>
    800078e8:	fffff097          	auipc	ra,0xfffff
    800078ec:	144080e7          	jalr	324(ra) # 80006a2c <panic>

00000000800078f0 <holding>:
    800078f0:	00052783          	lw	a5,0(a0)
    800078f4:	00079663          	bnez	a5,80007900 <holding+0x10>
    800078f8:	00000513          	li	a0,0
    800078fc:	00008067          	ret
    80007900:	fe010113          	addi	sp,sp,-32
    80007904:	00813823          	sd	s0,16(sp)
    80007908:	00913423          	sd	s1,8(sp)
    8000790c:	00113c23          	sd	ra,24(sp)
    80007910:	02010413          	addi	s0,sp,32
    80007914:	01053483          	ld	s1,16(a0)
    80007918:	ffffe097          	auipc	ra,0xffffe
    8000791c:	754080e7          	jalr	1876(ra) # 8000606c <mycpu>
    80007920:	01813083          	ld	ra,24(sp)
    80007924:	01013403          	ld	s0,16(sp)
    80007928:	40a48533          	sub	a0,s1,a0
    8000792c:	00153513          	seqz	a0,a0
    80007930:	00813483          	ld	s1,8(sp)
    80007934:	02010113          	addi	sp,sp,32
    80007938:	00008067          	ret

000000008000793c <push_off>:
    8000793c:	fe010113          	addi	sp,sp,-32
    80007940:	00813823          	sd	s0,16(sp)
    80007944:	00113c23          	sd	ra,24(sp)
    80007948:	00913423          	sd	s1,8(sp)
    8000794c:	02010413          	addi	s0,sp,32
    80007950:	100024f3          	csrr	s1,sstatus
    80007954:	100027f3          	csrr	a5,sstatus
    80007958:	ffd7f793          	andi	a5,a5,-3
    8000795c:	10079073          	csrw	sstatus,a5
    80007960:	ffffe097          	auipc	ra,0xffffe
    80007964:	70c080e7          	jalr	1804(ra) # 8000606c <mycpu>
    80007968:	07852783          	lw	a5,120(a0)
    8000796c:	02078663          	beqz	a5,80007998 <push_off+0x5c>
    80007970:	ffffe097          	auipc	ra,0xffffe
    80007974:	6fc080e7          	jalr	1788(ra) # 8000606c <mycpu>
    80007978:	07852783          	lw	a5,120(a0)
    8000797c:	01813083          	ld	ra,24(sp)
    80007980:	01013403          	ld	s0,16(sp)
    80007984:	0017879b          	addiw	a5,a5,1
    80007988:	06f52c23          	sw	a5,120(a0)
    8000798c:	00813483          	ld	s1,8(sp)
    80007990:	02010113          	addi	sp,sp,32
    80007994:	00008067          	ret
    80007998:	0014d493          	srli	s1,s1,0x1
    8000799c:	ffffe097          	auipc	ra,0xffffe
    800079a0:	6d0080e7          	jalr	1744(ra) # 8000606c <mycpu>
    800079a4:	0014f493          	andi	s1,s1,1
    800079a8:	06952e23          	sw	s1,124(a0)
    800079ac:	fc5ff06f          	j	80007970 <push_off+0x34>

00000000800079b0 <pop_off>:
    800079b0:	ff010113          	addi	sp,sp,-16
    800079b4:	00813023          	sd	s0,0(sp)
    800079b8:	00113423          	sd	ra,8(sp)
    800079bc:	01010413          	addi	s0,sp,16
    800079c0:	ffffe097          	auipc	ra,0xffffe
    800079c4:	6ac080e7          	jalr	1708(ra) # 8000606c <mycpu>
    800079c8:	100027f3          	csrr	a5,sstatus
    800079cc:	0027f793          	andi	a5,a5,2
    800079d0:	04079663          	bnez	a5,80007a1c <pop_off+0x6c>
    800079d4:	07852783          	lw	a5,120(a0)
    800079d8:	02f05a63          	blez	a5,80007a0c <pop_off+0x5c>
    800079dc:	fff7871b          	addiw	a4,a5,-1
    800079e0:	06e52c23          	sw	a4,120(a0)
    800079e4:	00071c63          	bnez	a4,800079fc <pop_off+0x4c>
    800079e8:	07c52783          	lw	a5,124(a0)
    800079ec:	00078863          	beqz	a5,800079fc <pop_off+0x4c>
    800079f0:	100027f3          	csrr	a5,sstatus
    800079f4:	0027e793          	ori	a5,a5,2
    800079f8:	10079073          	csrw	sstatus,a5
    800079fc:	00813083          	ld	ra,8(sp)
    80007a00:	00013403          	ld	s0,0(sp)
    80007a04:	01010113          	addi	sp,sp,16
    80007a08:	00008067          	ret
    80007a0c:	00001517          	auipc	a0,0x1
    80007a10:	ca450513          	addi	a0,a0,-860 # 800086b0 <digits+0x48>
    80007a14:	fffff097          	auipc	ra,0xfffff
    80007a18:	018080e7          	jalr	24(ra) # 80006a2c <panic>
    80007a1c:	00001517          	auipc	a0,0x1
    80007a20:	c7c50513          	addi	a0,a0,-900 # 80008698 <digits+0x30>
    80007a24:	fffff097          	auipc	ra,0xfffff
    80007a28:	008080e7          	jalr	8(ra) # 80006a2c <panic>

0000000080007a2c <push_on>:
    80007a2c:	fe010113          	addi	sp,sp,-32
    80007a30:	00813823          	sd	s0,16(sp)
    80007a34:	00113c23          	sd	ra,24(sp)
    80007a38:	00913423          	sd	s1,8(sp)
    80007a3c:	02010413          	addi	s0,sp,32
    80007a40:	100024f3          	csrr	s1,sstatus
    80007a44:	100027f3          	csrr	a5,sstatus
    80007a48:	0027e793          	ori	a5,a5,2
    80007a4c:	10079073          	csrw	sstatus,a5
    80007a50:	ffffe097          	auipc	ra,0xffffe
    80007a54:	61c080e7          	jalr	1564(ra) # 8000606c <mycpu>
    80007a58:	07852783          	lw	a5,120(a0)
    80007a5c:	02078663          	beqz	a5,80007a88 <push_on+0x5c>
    80007a60:	ffffe097          	auipc	ra,0xffffe
    80007a64:	60c080e7          	jalr	1548(ra) # 8000606c <mycpu>
    80007a68:	07852783          	lw	a5,120(a0)
    80007a6c:	01813083          	ld	ra,24(sp)
    80007a70:	01013403          	ld	s0,16(sp)
    80007a74:	0017879b          	addiw	a5,a5,1
    80007a78:	06f52c23          	sw	a5,120(a0)
    80007a7c:	00813483          	ld	s1,8(sp)
    80007a80:	02010113          	addi	sp,sp,32
    80007a84:	00008067          	ret
    80007a88:	0014d493          	srli	s1,s1,0x1
    80007a8c:	ffffe097          	auipc	ra,0xffffe
    80007a90:	5e0080e7          	jalr	1504(ra) # 8000606c <mycpu>
    80007a94:	0014f493          	andi	s1,s1,1
    80007a98:	06952e23          	sw	s1,124(a0)
    80007a9c:	fc5ff06f          	j	80007a60 <push_on+0x34>

0000000080007aa0 <pop_on>:
    80007aa0:	ff010113          	addi	sp,sp,-16
    80007aa4:	00813023          	sd	s0,0(sp)
    80007aa8:	00113423          	sd	ra,8(sp)
    80007aac:	01010413          	addi	s0,sp,16
    80007ab0:	ffffe097          	auipc	ra,0xffffe
    80007ab4:	5bc080e7          	jalr	1468(ra) # 8000606c <mycpu>
    80007ab8:	100027f3          	csrr	a5,sstatus
    80007abc:	0027f793          	andi	a5,a5,2
    80007ac0:	04078463          	beqz	a5,80007b08 <pop_on+0x68>
    80007ac4:	07852783          	lw	a5,120(a0)
    80007ac8:	02f05863          	blez	a5,80007af8 <pop_on+0x58>
    80007acc:	fff7879b          	addiw	a5,a5,-1
    80007ad0:	06f52c23          	sw	a5,120(a0)
    80007ad4:	07853783          	ld	a5,120(a0)
    80007ad8:	00079863          	bnez	a5,80007ae8 <pop_on+0x48>
    80007adc:	100027f3          	csrr	a5,sstatus
    80007ae0:	ffd7f793          	andi	a5,a5,-3
    80007ae4:	10079073          	csrw	sstatus,a5
    80007ae8:	00813083          	ld	ra,8(sp)
    80007aec:	00013403          	ld	s0,0(sp)
    80007af0:	01010113          	addi	sp,sp,16
    80007af4:	00008067          	ret
    80007af8:	00001517          	auipc	a0,0x1
    80007afc:	be050513          	addi	a0,a0,-1056 # 800086d8 <digits+0x70>
    80007b00:	fffff097          	auipc	ra,0xfffff
    80007b04:	f2c080e7          	jalr	-212(ra) # 80006a2c <panic>
    80007b08:	00001517          	auipc	a0,0x1
    80007b0c:	bb050513          	addi	a0,a0,-1104 # 800086b8 <digits+0x50>
    80007b10:	fffff097          	auipc	ra,0xfffff
    80007b14:	f1c080e7          	jalr	-228(ra) # 80006a2c <panic>

0000000080007b18 <__memset>:
    80007b18:	ff010113          	addi	sp,sp,-16
    80007b1c:	00813423          	sd	s0,8(sp)
    80007b20:	01010413          	addi	s0,sp,16
    80007b24:	1a060e63          	beqz	a2,80007ce0 <__memset+0x1c8>
    80007b28:	40a007b3          	neg	a5,a0
    80007b2c:	0077f793          	andi	a5,a5,7
    80007b30:	00778693          	addi	a3,a5,7
    80007b34:	00b00813          	li	a6,11
    80007b38:	0ff5f593          	andi	a1,a1,255
    80007b3c:	fff6071b          	addiw	a4,a2,-1
    80007b40:	1b06e663          	bltu	a3,a6,80007cec <__memset+0x1d4>
    80007b44:	1cd76463          	bltu	a4,a3,80007d0c <__memset+0x1f4>
    80007b48:	1a078e63          	beqz	a5,80007d04 <__memset+0x1ec>
    80007b4c:	00b50023          	sb	a1,0(a0)
    80007b50:	00100713          	li	a4,1
    80007b54:	1ae78463          	beq	a5,a4,80007cfc <__memset+0x1e4>
    80007b58:	00b500a3          	sb	a1,1(a0)
    80007b5c:	00200713          	li	a4,2
    80007b60:	1ae78a63          	beq	a5,a4,80007d14 <__memset+0x1fc>
    80007b64:	00b50123          	sb	a1,2(a0)
    80007b68:	00300713          	li	a4,3
    80007b6c:	18e78463          	beq	a5,a4,80007cf4 <__memset+0x1dc>
    80007b70:	00b501a3          	sb	a1,3(a0)
    80007b74:	00400713          	li	a4,4
    80007b78:	1ae78263          	beq	a5,a4,80007d1c <__memset+0x204>
    80007b7c:	00b50223          	sb	a1,4(a0)
    80007b80:	00500713          	li	a4,5
    80007b84:	1ae78063          	beq	a5,a4,80007d24 <__memset+0x20c>
    80007b88:	00b502a3          	sb	a1,5(a0)
    80007b8c:	00700713          	li	a4,7
    80007b90:	18e79e63          	bne	a5,a4,80007d2c <__memset+0x214>
    80007b94:	00b50323          	sb	a1,6(a0)
    80007b98:	00700e93          	li	t4,7
    80007b9c:	00859713          	slli	a4,a1,0x8
    80007ba0:	00e5e733          	or	a4,a1,a4
    80007ba4:	01059e13          	slli	t3,a1,0x10
    80007ba8:	01c76e33          	or	t3,a4,t3
    80007bac:	01859313          	slli	t1,a1,0x18
    80007bb0:	006e6333          	or	t1,t3,t1
    80007bb4:	02059893          	slli	a7,a1,0x20
    80007bb8:	40f60e3b          	subw	t3,a2,a5
    80007bbc:	011368b3          	or	a7,t1,a7
    80007bc0:	02859813          	slli	a6,a1,0x28
    80007bc4:	0108e833          	or	a6,a7,a6
    80007bc8:	03059693          	slli	a3,a1,0x30
    80007bcc:	003e589b          	srliw	a7,t3,0x3
    80007bd0:	00d866b3          	or	a3,a6,a3
    80007bd4:	03859713          	slli	a4,a1,0x38
    80007bd8:	00389813          	slli	a6,a7,0x3
    80007bdc:	00f507b3          	add	a5,a0,a5
    80007be0:	00e6e733          	or	a4,a3,a4
    80007be4:	000e089b          	sext.w	a7,t3
    80007be8:	00f806b3          	add	a3,a6,a5
    80007bec:	00e7b023          	sd	a4,0(a5)
    80007bf0:	00878793          	addi	a5,a5,8
    80007bf4:	fed79ce3          	bne	a5,a3,80007bec <__memset+0xd4>
    80007bf8:	ff8e7793          	andi	a5,t3,-8
    80007bfc:	0007871b          	sext.w	a4,a5
    80007c00:	01d787bb          	addw	a5,a5,t4
    80007c04:	0ce88e63          	beq	a7,a4,80007ce0 <__memset+0x1c8>
    80007c08:	00f50733          	add	a4,a0,a5
    80007c0c:	00b70023          	sb	a1,0(a4)
    80007c10:	0017871b          	addiw	a4,a5,1
    80007c14:	0cc77663          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c18:	00e50733          	add	a4,a0,a4
    80007c1c:	00b70023          	sb	a1,0(a4)
    80007c20:	0027871b          	addiw	a4,a5,2
    80007c24:	0ac77e63          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c28:	00e50733          	add	a4,a0,a4
    80007c2c:	00b70023          	sb	a1,0(a4)
    80007c30:	0037871b          	addiw	a4,a5,3
    80007c34:	0ac77663          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c38:	00e50733          	add	a4,a0,a4
    80007c3c:	00b70023          	sb	a1,0(a4)
    80007c40:	0047871b          	addiw	a4,a5,4
    80007c44:	08c77e63          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c48:	00e50733          	add	a4,a0,a4
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0057871b          	addiw	a4,a5,5
    80007c54:	08c77663          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0067871b          	addiw	a4,a5,6
    80007c64:	06c77e63          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	0077871b          	addiw	a4,a5,7
    80007c74:	06c77663          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	0087871b          	addiw	a4,a5,8
    80007c84:	04c77e63          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0097871b          	addiw	a4,a5,9
    80007c94:	04c77663          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	00a7871b          	addiw	a4,a5,10
    80007ca4:	02c77e63          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	00b7871b          	addiw	a4,a5,11
    80007cb4:	02c77663          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	00c7871b          	addiw	a4,a5,12
    80007cc4:	00c77e63          	bgeu	a4,a2,80007ce0 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	00d7879b          	addiw	a5,a5,13
    80007cd4:	00c7f663          	bgeu	a5,a2,80007ce0 <__memset+0x1c8>
    80007cd8:	00f507b3          	add	a5,a0,a5
    80007cdc:	00b78023          	sb	a1,0(a5)
    80007ce0:	00813403          	ld	s0,8(sp)
    80007ce4:	01010113          	addi	sp,sp,16
    80007ce8:	00008067          	ret
    80007cec:	00b00693          	li	a3,11
    80007cf0:	e55ff06f          	j	80007b44 <__memset+0x2c>
    80007cf4:	00300e93          	li	t4,3
    80007cf8:	ea5ff06f          	j	80007b9c <__memset+0x84>
    80007cfc:	00100e93          	li	t4,1
    80007d00:	e9dff06f          	j	80007b9c <__memset+0x84>
    80007d04:	00000e93          	li	t4,0
    80007d08:	e95ff06f          	j	80007b9c <__memset+0x84>
    80007d0c:	00000793          	li	a5,0
    80007d10:	ef9ff06f          	j	80007c08 <__memset+0xf0>
    80007d14:	00200e93          	li	t4,2
    80007d18:	e85ff06f          	j	80007b9c <__memset+0x84>
    80007d1c:	00400e93          	li	t4,4
    80007d20:	e7dff06f          	j	80007b9c <__memset+0x84>
    80007d24:	00500e93          	li	t4,5
    80007d28:	e75ff06f          	j	80007b9c <__memset+0x84>
    80007d2c:	00600e93          	li	t4,6
    80007d30:	e6dff06f          	j	80007b9c <__memset+0x84>

0000000080007d34 <__memmove>:
    80007d34:	ff010113          	addi	sp,sp,-16
    80007d38:	00813423          	sd	s0,8(sp)
    80007d3c:	01010413          	addi	s0,sp,16
    80007d40:	0e060863          	beqz	a2,80007e30 <__memmove+0xfc>
    80007d44:	fff6069b          	addiw	a3,a2,-1
    80007d48:	0006881b          	sext.w	a6,a3
    80007d4c:	0ea5e863          	bltu	a1,a0,80007e3c <__memmove+0x108>
    80007d50:	00758713          	addi	a4,a1,7
    80007d54:	00a5e7b3          	or	a5,a1,a0
    80007d58:	40a70733          	sub	a4,a4,a0
    80007d5c:	0077f793          	andi	a5,a5,7
    80007d60:	00f73713          	sltiu	a4,a4,15
    80007d64:	00174713          	xori	a4,a4,1
    80007d68:	0017b793          	seqz	a5,a5
    80007d6c:	00e7f7b3          	and	a5,a5,a4
    80007d70:	10078863          	beqz	a5,80007e80 <__memmove+0x14c>
    80007d74:	00900793          	li	a5,9
    80007d78:	1107f463          	bgeu	a5,a6,80007e80 <__memmove+0x14c>
    80007d7c:	0036581b          	srliw	a6,a2,0x3
    80007d80:	fff8081b          	addiw	a6,a6,-1
    80007d84:	02081813          	slli	a6,a6,0x20
    80007d88:	01d85893          	srli	a7,a6,0x1d
    80007d8c:	00858813          	addi	a6,a1,8
    80007d90:	00058793          	mv	a5,a1
    80007d94:	00050713          	mv	a4,a0
    80007d98:	01088833          	add	a6,a7,a6
    80007d9c:	0007b883          	ld	a7,0(a5)
    80007da0:	00878793          	addi	a5,a5,8
    80007da4:	00870713          	addi	a4,a4,8
    80007da8:	ff173c23          	sd	a7,-8(a4)
    80007dac:	ff0798e3          	bne	a5,a6,80007d9c <__memmove+0x68>
    80007db0:	ff867713          	andi	a4,a2,-8
    80007db4:	02071793          	slli	a5,a4,0x20
    80007db8:	0207d793          	srli	a5,a5,0x20
    80007dbc:	00f585b3          	add	a1,a1,a5
    80007dc0:	40e686bb          	subw	a3,a3,a4
    80007dc4:	00f507b3          	add	a5,a0,a5
    80007dc8:	06e60463          	beq	a2,a4,80007e30 <__memmove+0xfc>
    80007dcc:	0005c703          	lbu	a4,0(a1)
    80007dd0:	00e78023          	sb	a4,0(a5)
    80007dd4:	04068e63          	beqz	a3,80007e30 <__memmove+0xfc>
    80007dd8:	0015c603          	lbu	a2,1(a1)
    80007ddc:	00100713          	li	a4,1
    80007de0:	00c780a3          	sb	a2,1(a5)
    80007de4:	04e68663          	beq	a3,a4,80007e30 <__memmove+0xfc>
    80007de8:	0025c603          	lbu	a2,2(a1)
    80007dec:	00200713          	li	a4,2
    80007df0:	00c78123          	sb	a2,2(a5)
    80007df4:	02e68e63          	beq	a3,a4,80007e30 <__memmove+0xfc>
    80007df8:	0035c603          	lbu	a2,3(a1)
    80007dfc:	00300713          	li	a4,3
    80007e00:	00c781a3          	sb	a2,3(a5)
    80007e04:	02e68663          	beq	a3,a4,80007e30 <__memmove+0xfc>
    80007e08:	0045c603          	lbu	a2,4(a1)
    80007e0c:	00400713          	li	a4,4
    80007e10:	00c78223          	sb	a2,4(a5)
    80007e14:	00e68e63          	beq	a3,a4,80007e30 <__memmove+0xfc>
    80007e18:	0055c603          	lbu	a2,5(a1)
    80007e1c:	00500713          	li	a4,5
    80007e20:	00c782a3          	sb	a2,5(a5)
    80007e24:	00e68663          	beq	a3,a4,80007e30 <__memmove+0xfc>
    80007e28:	0065c703          	lbu	a4,6(a1)
    80007e2c:	00e78323          	sb	a4,6(a5)
    80007e30:	00813403          	ld	s0,8(sp)
    80007e34:	01010113          	addi	sp,sp,16
    80007e38:	00008067          	ret
    80007e3c:	02061713          	slli	a4,a2,0x20
    80007e40:	02075713          	srli	a4,a4,0x20
    80007e44:	00e587b3          	add	a5,a1,a4
    80007e48:	f0f574e3          	bgeu	a0,a5,80007d50 <__memmove+0x1c>
    80007e4c:	02069613          	slli	a2,a3,0x20
    80007e50:	02065613          	srli	a2,a2,0x20
    80007e54:	fff64613          	not	a2,a2
    80007e58:	00e50733          	add	a4,a0,a4
    80007e5c:	00c78633          	add	a2,a5,a2
    80007e60:	fff7c683          	lbu	a3,-1(a5)
    80007e64:	fff78793          	addi	a5,a5,-1
    80007e68:	fff70713          	addi	a4,a4,-1
    80007e6c:	00d70023          	sb	a3,0(a4)
    80007e70:	fec798e3          	bne	a5,a2,80007e60 <__memmove+0x12c>
    80007e74:	00813403          	ld	s0,8(sp)
    80007e78:	01010113          	addi	sp,sp,16
    80007e7c:	00008067          	ret
    80007e80:	02069713          	slli	a4,a3,0x20
    80007e84:	02075713          	srli	a4,a4,0x20
    80007e88:	00170713          	addi	a4,a4,1
    80007e8c:	00e50733          	add	a4,a0,a4
    80007e90:	00050793          	mv	a5,a0
    80007e94:	0005c683          	lbu	a3,0(a1)
    80007e98:	00178793          	addi	a5,a5,1
    80007e9c:	00158593          	addi	a1,a1,1
    80007ea0:	fed78fa3          	sb	a3,-1(a5)
    80007ea4:	fee798e3          	bne	a5,a4,80007e94 <__memmove+0x160>
    80007ea8:	f89ff06f          	j	80007e30 <__memmove+0xfc>

0000000080007eac <__putc>:
    80007eac:	fe010113          	addi	sp,sp,-32
    80007eb0:	00813823          	sd	s0,16(sp)
    80007eb4:	00113c23          	sd	ra,24(sp)
    80007eb8:	02010413          	addi	s0,sp,32
    80007ebc:	00050793          	mv	a5,a0
    80007ec0:	fef40593          	addi	a1,s0,-17
    80007ec4:	00100613          	li	a2,1
    80007ec8:	00000513          	li	a0,0
    80007ecc:	fef407a3          	sb	a5,-17(s0)
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	b3c080e7          	jalr	-1220(ra) # 80006a0c <console_write>
    80007ed8:	01813083          	ld	ra,24(sp)
    80007edc:	01013403          	ld	s0,16(sp)
    80007ee0:	02010113          	addi	sp,sp,32
    80007ee4:	00008067          	ret

0000000080007ee8 <__getc>:
    80007ee8:	fe010113          	addi	sp,sp,-32
    80007eec:	00813823          	sd	s0,16(sp)
    80007ef0:	00113c23          	sd	ra,24(sp)
    80007ef4:	02010413          	addi	s0,sp,32
    80007ef8:	fe840593          	addi	a1,s0,-24
    80007efc:	00100613          	li	a2,1
    80007f00:	00000513          	li	a0,0
    80007f04:	fffff097          	auipc	ra,0xfffff
    80007f08:	ae8080e7          	jalr	-1304(ra) # 800069ec <console_read>
    80007f0c:	fe844503          	lbu	a0,-24(s0)
    80007f10:	01813083          	ld	ra,24(sp)
    80007f14:	01013403          	ld	s0,16(sp)
    80007f18:	02010113          	addi	sp,sp,32
    80007f1c:	00008067          	ret

0000000080007f20 <console_handler>:
    80007f20:	fe010113          	addi	sp,sp,-32
    80007f24:	00813823          	sd	s0,16(sp)
    80007f28:	00113c23          	sd	ra,24(sp)
    80007f2c:	00913423          	sd	s1,8(sp)
    80007f30:	02010413          	addi	s0,sp,32
    80007f34:	14202773          	csrr	a4,scause
    80007f38:	100027f3          	csrr	a5,sstatus
    80007f3c:	0027f793          	andi	a5,a5,2
    80007f40:	06079e63          	bnez	a5,80007fbc <console_handler+0x9c>
    80007f44:	00074c63          	bltz	a4,80007f5c <console_handler+0x3c>
    80007f48:	01813083          	ld	ra,24(sp)
    80007f4c:	01013403          	ld	s0,16(sp)
    80007f50:	00813483          	ld	s1,8(sp)
    80007f54:	02010113          	addi	sp,sp,32
    80007f58:	00008067          	ret
    80007f5c:	0ff77713          	andi	a4,a4,255
    80007f60:	00900793          	li	a5,9
    80007f64:	fef712e3          	bne	a4,a5,80007f48 <console_handler+0x28>
    80007f68:	ffffe097          	auipc	ra,0xffffe
    80007f6c:	6dc080e7          	jalr	1756(ra) # 80006644 <plic_claim>
    80007f70:	00a00793          	li	a5,10
    80007f74:	00050493          	mv	s1,a0
    80007f78:	02f50c63          	beq	a0,a5,80007fb0 <console_handler+0x90>
    80007f7c:	fc0506e3          	beqz	a0,80007f48 <console_handler+0x28>
    80007f80:	00050593          	mv	a1,a0
    80007f84:	00000517          	auipc	a0,0x0
    80007f88:	65c50513          	addi	a0,a0,1628 # 800085e0 <CONSOLE_STATUS+0x5d0>
    80007f8c:	fffff097          	auipc	ra,0xfffff
    80007f90:	afc080e7          	jalr	-1284(ra) # 80006a88 <__printf>
    80007f94:	01013403          	ld	s0,16(sp)
    80007f98:	01813083          	ld	ra,24(sp)
    80007f9c:	00048513          	mv	a0,s1
    80007fa0:	00813483          	ld	s1,8(sp)
    80007fa4:	02010113          	addi	sp,sp,32
    80007fa8:	ffffe317          	auipc	t1,0xffffe
    80007fac:	6d430067          	jr	1748(t1) # 8000667c <plic_complete>
    80007fb0:	fffff097          	auipc	ra,0xfffff
    80007fb4:	3e0080e7          	jalr	992(ra) # 80007390 <uartintr>
    80007fb8:	fddff06f          	j	80007f94 <console_handler+0x74>
    80007fbc:	00000517          	auipc	a0,0x0
    80007fc0:	72450513          	addi	a0,a0,1828 # 800086e0 <digits+0x78>
    80007fc4:	fffff097          	auipc	ra,0xfffff
    80007fc8:	a68080e7          	jalr	-1432(ra) # 80006a2c <panic>
	...
