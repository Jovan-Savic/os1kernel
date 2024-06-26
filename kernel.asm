
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	68813103          	ld	sp,1672(sp) # 8000a688 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	601050ef          	jal	ra,80005e1c <start>

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
    80001184:	7bd000ef          	jal	ra,80002140 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001460:	abc080e7          	jalr	-1348(ra) # 80007f18 <__getc>
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
    80001488:	a58080e7          	jalr	-1448(ra) # 80007edc <__putc>
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
    800014e8:	04c080e7          	jalr	76(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001510:	024080e7          	jalr	36(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001538:	150080e7          	jalr	336(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>
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
    80001560:	128080e7          	jalr	296(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>
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
    80001634:	0607b783          	ld	a5,96(a5) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001638:	0007b903          	ld	s2,0(a5)
                elem->next=0;
                head= elem;
                if(!tail) tail = head;
            }
            void addLast (T* data){
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    8000163c:	01000513          	li	a0,16
    80001640:	00001097          	auipc	ra,0x1
    80001644:	ef0080e7          	jalr	-272(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001668:	02c7b783          	ld	a5,44(a5) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000166c:	0007b503          	ld	a0,0(a5)
    80001670:	00000097          	auipc	ra,0x0
    80001674:	598080e7          	jalr	1432(ra) # 80001c08 <_ZN3TCB10setBlockedEb>

    TCB::timeSliceCounter=0;
    80001678:	00009797          	auipc	a5,0x9
    8000167c:	0087b783          	ld	a5,8(a5) # 8000a680 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001680:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001684:	00000097          	auipc	ra,0x0
    80001688:	328080e7          	jalr	808(ra) # 800019ac <_ZN3TCB8dispatchEv>
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
    8000173c:	f4c080e7          	jalr	-180(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
    80001740:	02048063          	beqz	s1,80001760 <_ZN9semaphore7unblockEv+0x58>
        thread->setBlocked(false);
    80001744:	00000593          	li	a1,0
    80001748:	00048513          	mv	a0,s1
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	4bc080e7          	jalr	1212(ra) # 80001c08 <_ZN3TCB10setBlockedEb>
        Scheduler::put(thread);
    80001754:	00048513          	mv	a0,s1
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	d38080e7          	jalr	-712(ra) # 80002490 <_ZN9Scheduler3putEP3TCB>
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
#include "../test/printing.hpp"


extern void userMain();

void functionHelper(void* thr){ //omotac korisnicke funkcije
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00113423          	sd	ra,8(sp)
    80001850:	00813023          	sd	s0,0(sp)
    80001854:	01010413          	addi	s0,sp,16
    //Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    userMain();
    80001858:	00004097          	auipc	ra,0x4
    8000185c:	a48080e7          	jalr	-1464(ra) # 800052a0 <_Z8userMainv>
}
    80001860:	00813083          	ld	ra,8(sp)
    80001864:	00013403          	ld	s0,0(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret

0000000080001870 <main>:

int main(){
    80001870:	fe010113          	addi	sp,sp,-32
    80001874:	00113c23          	sd	ra,24(sp)
    80001878:	00813823          	sd	s0,16(sp)
    8000187c:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrw stvec, %[trap]" : : [trap] "r" (&Riscv::supervisorTrap)); //pripremanje osnovnih stvari u sis.r
    80001880:	00009797          	auipc	a5,0x9
    80001884:	df87b783          	ld	a5,-520(a5) # 8000a678 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001888:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	d60080e7          	jalr	-672(ra) # 800025ec <_ZN15MemoryAllocator4initEv>

    TCB* threads[2];

    thread_create(&threads[0], nullptr, nullptr);
    80001894:	00000613          	li	a2,0
    80001898:	00000593          	li	a1,0
    8000189c:	fe040513          	addi	a0,s0,-32
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	a50080e7          	jalr	-1456(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800018a8:	fe043703          	ld	a4,-32(s0)
    800018ac:	00009797          	auipc	a5,0x9
    800018b0:	de47b783          	ld	a5,-540(a5) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018b4:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1],functionHelper, nullptr);
    800018b8:	00000613          	li	a2,0
    800018bc:	00000597          	auipc	a1,0x0
    800018c0:	f8c58593          	addi	a1,a1,-116 # 80001848 <_Z14functionHelperPv>
    800018c4:	fe840513          	addi	a0,s0,-24
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	a28080e7          	jalr	-1496(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    while(!(threads[1]->isFinished())){
    800018d0:	fe843783          	ld	a5,-24(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){ delete stack;}
    bool isFinished() const {return finished;}
    800018d4:	0307c783          	lbu	a5,48(a5)
    800018d8:	02079063          	bnez	a5,800018f8 <main+0x88>


        thread_dispatch();
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	9cc080e7          	jalr	-1588(ra) # 800012a8 <_Z15thread_dispatchv>
        printString("print\n");
    800018e4:	00006517          	auipc	a0,0x6
    800018e8:	73c50513          	addi	a0,a0,1852 # 80008020 <CONSOLE_STATUS+0x10>
    800018ec:	00003097          	auipc	ra,0x3
    800018f0:	2ec080e7          	jalr	748(ra) # 80004bd8 <_Z11printStringPKc>
    800018f4:	fddff06f          	j	800018d0 <main+0x60>
    }

    return 0;
}
    800018f8:	00000513          	li	a0,0
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	02010113          	addi	sp,sp,32
    80001908:	00008067          	ret

000000008000190c <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    8000190c:	ff010113          	addi	sp,sp,-16
    80001910:	00113423          	sd	ra,8(sp)
    80001914:	00813023          	sd	s0,0(sp)
    80001918:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	c14080e7          	jalr	-1004(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	00813023          	sd	s0,0(sp)
    80001940:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001944:	00001097          	auipc	ra,0x1
    80001948:	bec080e7          	jalr	-1044(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000194c:	00813083          	ld	ra,8(sp)
    80001950:	00013403          	ld	s0,0(sp)
    80001954:	01010113          	addi	sp,sp,16
    80001958:	00008067          	ret

000000008000195c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    8000195c:	ff010113          	addi	sp,sp,-16
    80001960:	00113423          	sd	ra,8(sp)
    80001964:	00813023          	sd	s0,0(sp)
    80001968:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	d18080e7          	jalr	-744(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001974:	00813083          	ld	ra,8(sp)
    80001978:	00013403          	ld	s0,0(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret

0000000080001984 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    80001984:	ff010113          	addi	sp,sp,-16
    80001988:	00113423          	sd	ra,8(sp)
    8000198c:	00813023          	sd	s0,0(sp)
    80001990:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001994:	00001097          	auipc	ra,0x1
    80001998:	cf0080e7          	jalr	-784(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    8000199c:	00813083          	ld	ra,8(sp)
    800019a0:	00013403          	ld	s0,0(sp)
    800019a4:	01010113          	addi	sp,sp,16
    800019a8:	00008067          	ret

00000000800019ac <_ZN3TCB8dispatchEv>:
    //__asm__ volatile("ecall");
    TCB::timeSliceCounter=0;
    TCB::dispatch();
}
*/
void TCB::dispatch(){
    800019ac:	fd010113          	addi	sp,sp,-48
    800019b0:	02113423          	sd	ra,40(sp)
    800019b4:	02813023          	sd	s0,32(sp)
    800019b8:	00913c23          	sd	s1,24(sp)
    800019bc:	03010413          	addi	s0,sp,48

    if(TCB::running->body != nullptr || Riscv::r_scause()) Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    800019c0:	00009797          	auipc	a5,0x9
    800019c4:	d307b783          	ld	a5,-720(a5) # 8000a6f0 <_ZN3TCB7runningE>
    800019c8:	0007b783          	ld	a5,0(a5)
    800019cc:	04078c63          	beqz	a5,80001a24 <_ZN3TCB8dispatchEv+0x78>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800019d0:	10000793          	li	a5,256
    800019d4:	1007b073          	csrc	sstatus,a5
    TCB* old= running;
    800019d8:	00009497          	auipc	s1,0x9
    800019dc:	d184b483          	ld	s1,-744(s1) # 8000a6f0 <_ZN3TCB7runningE>
    800019e0:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->blocked){
    800019e4:	00079663          	bnez	a5,800019f0 <_ZN3TCB8dispatchEv+0x44>
    800019e8:	0314c783          	lbu	a5,49(s1)
    800019ec:	04078663          	beqz	a5,80001a38 <_ZN3TCB8dispatchEv+0x8c>
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	a38080e7          	jalr	-1480(ra) # 80002428 <_ZN9Scheduler3getEv>
    800019f8:	00009797          	auipc	a5,0x9
    800019fc:	cea7bc23          	sd	a0,-776(a5) # 8000a6f0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a00:	01850593          	addi	a1,a0,24
    80001a04:	01848513          	addi	a0,s1,24
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	808080e7          	jalr	-2040(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a10:	02813083          	ld	ra,40(sp)
    80001a14:	02013403          	ld	s0,32(sp)
    80001a18:	01813483          	ld	s1,24(sp)
    80001a1c:	03010113          	addi	sp,sp,48
    80001a20:	00008067          	ret
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a24:	142027f3          	csrr	a5,scause
    80001a28:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001a2c:	fd843783          	ld	a5,-40(s0)
    if(TCB::running->body != nullptr || Riscv::r_scause()) Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    80001a30:	fa0784e3          	beqz	a5,800019d8 <_ZN3TCB8dispatchEv+0x2c>
    80001a34:	f9dff06f          	j	800019d0 <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	a54080e7          	jalr	-1452(ra) # 80002490 <_ZN9Scheduler3putEP3TCB>
    80001a44:	fadff06f          	j	800019f0 <_ZN3TCB8dispatchEv+0x44>

0000000080001a48 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    80001a48:	fe010113          	addi	sp,sp,-32
    80001a4c:	00113c23          	sd	ra,24(sp)
    80001a50:	00813823          	sd	s0,16(sp)
    80001a54:	00913423          	sd	s1,8(sp)
    80001a58:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	6c4080e7          	jalr	1732(ra) # 80002120 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001a64:	00009497          	auipc	s1,0x9
    80001a68:	c8c48493          	addi	s1,s1,-884 # 8000a6f0 <_ZN3TCB7runningE>
    80001a6c:	0004b783          	ld	a5,0(s1)
    80001a70:	0007b703          	ld	a4,0(a5)
    80001a74:	0087b503          	ld	a0,8(a5)
    80001a78:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a7c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { finished = f;}
    80001a80:	00100713          	li	a4,1
    80001a84:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	f24080e7          	jalr	-220(ra) # 800019ac <_ZN3TCB8dispatchEv>
}
    80001a90:	01813083          	ld	ra,24(sp)
    80001a94:	01013403          	ld	s0,16(sp)
    80001a98:	00813483          	ld	s1,8(sp)
    80001a9c:	02010113          	addi	sp,sp,32
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001aa4:	fd010113          	addi	sp,sp,-48
    80001aa8:	02113423          	sd	ra,40(sp)
    80001aac:	02813023          	sd	s0,32(sp)
    80001ab0:	00913c23          	sd	s1,24(sp)
    80001ab4:	01213823          	sd	s2,16(sp)
    80001ab8:	01313423          	sd	s3,8(sp)
    80001abc:	01413023          	sd	s4,0(sp)
    80001ac0:	03010413          	addi	s0,sp,48
    80001ac4:	00050993          	mv	s3,a0
    80001ac8:	00058a13          	mv	s4,a1
    80001acc:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001ad0:	03800513          	li	a0,56
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	e38080e7          	jalr	-456(ra) # 8000190c <_ZN3TCBnwEm>
    80001adc:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001ae0:	01353023          	sd	s3,0(a0)
    80001ae4:	01453423          	sd	s4,8(a0)
    explicit TCB(Body body, uint64 timeSlice, void* arg, void* stek): body(body), argument(arg), stack((uint8*)stek + 8 * DEFAULT_STACK_SIZE),
    80001ae8:	000087b7          	lui	a5,0x8
    80001aec:	00f907b3          	add	a5,s2,a5
                blocked(false)
    80001af0:	00f53823          	sd	a5,16(a0)
    80001af4:	00000717          	auipc	a4,0x0
    80001af8:	f5470713          	addi	a4,a4,-172 # 80001a48 <_ZN3TCB13threadWrapperEv>
    80001afc:	00e53c23          	sd	a4,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b00:	02078a63          	beqz	a5,80001b34 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x90>
    80001b04:	00009637          	lui	a2,0x9
    80001b08:	00c90933          	add	s2,s2,a2
                blocked(false)
    80001b0c:	0324b023          	sd	s2,32(s1)
    80001b10:	00200793          	li	a5,2
    80001b14:	02f4b423          	sd	a5,40(s1)
    80001b18:	02048823          	sb	zero,48(s1)
    80001b1c:	020488a3          	sb	zero,49(s1)
    {
        if(body!= nullptr) {
    80001b20:	02098c63          	beqz	s3,80001b58 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
            Scheduler::put(this);
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	968080e7          	jalr	-1688(ra) # 80002490 <_ZN9Scheduler3putEP3TCB>
    80001b30:	0280006f          	j	80001b58 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b34:	00000913          	li	s2,0
    80001b38:	fd5ff06f          	j	80001b0c <_ZN3TCB12createThreadEPFvPvES0_S0_+0x68>
    80001b3c:	00050913          	mv	s2,a0
    80001b40:	00048513          	mv	a0,s1
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	e18080e7          	jalr	-488(ra) # 8000195c <_ZN3TCBdlEPv>
    80001b4c:	00090513          	mv	a0,s2
    80001b50:	0000a097          	auipc	ra,0xa
    80001b54:	ce8080e7          	jalr	-792(ra) # 8000b838 <_Unwind_Resume>
}
    80001b58:	00048513          	mv	a0,s1
    80001b5c:	02813083          	ld	ra,40(sp)
    80001b60:	02013403          	ld	s0,32(sp)
    80001b64:	01813483          	ld	s1,24(sp)
    80001b68:	01013903          	ld	s2,16(sp)
    80001b6c:	00813983          	ld	s3,8(sp)
    80001b70:	00013a03          	ld	s4,0(sp)
    80001b74:	03010113          	addi	sp,sp,48
    80001b78:	00008067          	ret

0000000080001b7c <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001b7c:	04050663          	beqz	a0,80001bc8 <_ZN3TCB12deleteThreadEPS_+0x4c>
void TCB::deleteThread(TCB* thread){
    80001b80:	fe010113          	addi	sp,sp,-32
    80001b84:	00113c23          	sd	ra,24(sp)
    80001b88:	00813823          	sd	s0,16(sp)
    80001b8c:	00913423          	sd	s1,8(sp)
    80001b90:	02010413          	addi	s0,sp,32
    80001b94:	00050493          	mv	s1,a0
    ~TCB(){ delete stack;}
    80001b98:	01053503          	ld	a0,16(a0)
    80001b9c:	00050663          	beqz	a0,80001ba8 <_ZN3TCB12deleteThreadEPS_+0x2c>
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	0d4080e7          	jalr	212(ra) # 80001c74 <_ZdlPv>
    delete thread;
    80001ba8:	00048513          	mv	a0,s1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	db0080e7          	jalr	-592(ra) # 8000195c <_ZN3TCBdlEPv>
}
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00113423          	sd	ra,8(sp)
    80001bd4:	00813023          	sd	s0,0(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { finished = f;}
    80001bdc:	00009797          	auipc	a5,0x9
    80001be0:	b147b783          	ld	a5,-1260(a5) # 8000a6f0 <_ZN3TCB7runningE>
    80001be4:	00100713          	li	a4,1
    80001be8:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	dc0080e7          	jalr	-576(ra) # 800019ac <_ZN3TCB8dispatchEv>
}
    80001bf4:	00000513          	li	a0,0
    80001bf8:	00813083          	ld	ra,8(sp)
    80001bfc:	00013403          	ld	s0,0(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN3TCB10setBlockedEb>:

void TCB::setBlocked(bool b) {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00813423          	sd	s0,8(sp)
    80001c10:	01010413          	addi	s0,sp,16
    this->blocked = b;
    80001c14:	02b508a3          	sb	a1,49(a0)
}
    80001c18:	00813403          	ld	s0,8(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00113423          	sd	ra,8(sp)
    80001c2c:	00813023          	sd	s0,0(sp)
    80001c30:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	610080e7          	jalr	1552(ra) # 80001244 <_Z9mem_allocm>
}
    80001c3c:	00813083          	ld	ra,8(sp)
    80001c40:	00013403          	ld	s0,0(sp)
    80001c44:	01010113          	addi	sp,sp,16
    80001c48:	00008067          	ret

0000000080001c4c <_Znam>:

void *operator new[](size_t n)
{
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00113423          	sd	ra,8(sp)
    80001c54:	00813023          	sd	s0,0(sp)
    80001c58:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c5c:	fffff097          	auipc	ra,0xfffff
    80001c60:	5e8080e7          	jalr	1512(ra) # 80001244 <_Z9mem_allocm>
}
    80001c64:	00813083          	ld	ra,8(sp)
    80001c68:	00013403          	ld	s0,0(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret

0000000080001c74 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	5f8080e7          	jalr	1528(ra) # 8000127c <_Z8mem_freePv>
}
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	5d0080e7          	jalr	1488(ra) # 8000127c <_Z8mem_freePv>
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN6Thread13threadWrapperEPv>:
Thread::Thread() {
    this->body = Thread::threadWrapper;
    this->arg = this;
}

void Thread::threadWrapper(void *thread) {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001cd4:	00053783          	ld	a5,0(a0)
    80001cd8:	0107b783          	ld	a5,16(a5)
    80001cdc:	000780e7          	jalr	a5
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00113423          	sd	ra,8(sp)
    80001cf8:	00813023          	sd	s0,0(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    80001d00:	00008797          	auipc	a5,0x8
    80001d04:	78878793          	addi	a5,a5,1928 # 8000a488 <_ZTV6Thread+0x10>
    80001d08:	00f53023          	sd	a5,0(a0)
    operator delete(myHandle);
    80001d0c:	00853503          	ld	a0,8(a0)
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	f64080e7          	jalr	-156(ra) # 80001c74 <_ZdlPv>
}
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001d28:	fe010113          	addi	sp,sp,-32
    80001d2c:	00113c23          	sd	ra,24(sp)
    80001d30:	00813823          	sd	s0,16(sp)
    80001d34:	00913423          	sd	s1,8(sp)
    80001d38:	02010413          	addi	s0,sp,32
    80001d3c:	00050493          	mv	s1,a0
}
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	fb0080e7          	jalr	-80(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80001d48:	00048513          	mv	a0,s1
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	f28080e7          	jalr	-216(ra) # 80001c74 <_ZdlPv>
    80001d54:	01813083          	ld	ra,24(sp)
    80001d58:	01013403          	ld	s0,16(sp)
    80001d5c:	00813483          	ld	s1,8(sp)
    80001d60:	02010113          	addi	sp,sp,32
    80001d64:	00008067          	ret

0000000080001d68 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00113423          	sd	ra,8(sp)
    80001d70:	00813023          	sd	s0,0(sp)
    80001d74:	01010413          	addi	s0,sp,16
    80001d78:	00008797          	auipc	a5,0x8
    80001d7c:	73878793          	addi	a5,a5,1848 # 8000a4b0 <_ZTV9Semaphore+0x10>
    80001d80:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d84:	00853503          	ld	a0,8(a0)
    80001d88:	fffff097          	auipc	ra,0xfffff
    80001d8c:	614080e7          	jalr	1556(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001da0:	fe010113          	addi	sp,sp,-32
    80001da4:	00113c23          	sd	ra,24(sp)
    80001da8:	00813823          	sd	s0,16(sp)
    80001dac:	00913423          	sd	s1,8(sp)
    80001db0:	02010413          	addi	s0,sp,32
    80001db4:	00050493          	mv	s1,a0
}
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	fb0080e7          	jalr	-80(ra) # 80001d68 <_ZN9SemaphoreD1Ev>
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	eb0080e7          	jalr	-336(ra) # 80001c74 <_ZdlPv>
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00813483          	ld	s1,8(sp)
    80001dd8:	02010113          	addi	sp,sp,32
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
    80001df0:	00008797          	auipc	a5,0x8
    80001df4:	69878793          	addi	a5,a5,1688 # 8000a488 <_ZTV6Thread+0x10>
    80001df8:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001dfc:	00850513          	addi	a0,a0,8
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	4f0080e7          	jalr	1264(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}//prvo mem alloc!!!
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN6Thread5startEv>:
int Thread::start() {
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00113423          	sd	ra,8(sp)
    80001e20:	00813023          	sd	s0,0(sp)
    80001e24:	01010413          	addi	s0,sp,16
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    80001e28:	00050613          	mv	a2,a0
    80001e2c:	00000597          	auipc	a1,0x0
    80001e30:	e9858593          	addi	a1,a1,-360 # 80001cc4 <_ZN6Thread13threadWrapperEPv>
    80001e34:	00850513          	addi	a0,a0,8
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	4b8080e7          	jalr	1208(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001e40:	00000513          	li	a0,0
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e64:	fffff097          	auipc	ra,0xfffff
    80001e68:	444080e7          	jalr	1092(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80001e6c:	00813083          	ld	ra,8(sp)
    80001e70:	00013403          	ld	s0,0(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret

0000000080001e7c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16
    time_sleep(t);
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	62c080e7          	jalr	1580(ra) # 800014b8 <_Z10time_sleepm>
}
    80001e94:	00000513          	li	a0,0
    80001e98:	00813083          	ld	ra,8(sp)
    80001e9c:	00013403          	ld	s0,0(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813423          	sd	s0,8(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    80001eb4:	00008797          	auipc	a5,0x8
    80001eb8:	5d478793          	addi	a5,a5,1492 # 8000a488 <_ZTV6Thread+0x10>
    80001ebc:	00f53023          	sd	a5,0(a0)
    this->body = Thread::threadWrapper;
    80001ec0:	00000797          	auipc	a5,0x0
    80001ec4:	e0478793          	addi	a5,a5,-508 # 80001cc4 <_ZN6Thread13threadWrapperEPv>
    80001ec8:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    80001ecc:	00a53c23          	sd	a0,24(a0)
}
    80001ed0:	00813403          	ld	s0,8(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	00813023          	sd	s0,0(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    80001eec:	00008797          	auipc	a5,0x8
    80001ef0:	5c478793          	addi	a5,a5,1476 # 8000a4b0 <_ZTV9Semaphore+0x10>
    80001ef4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001ef8:	00850513          	addi	a0,a0,8
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	470080e7          	jalr	1136(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001f24:	00853503          	ld	a0,8(a0)
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	4a0080e7          	jalr	1184(ra) # 800013c8 <_Z8sem_waitP3sem>
}
    80001f30:	00813083          	ld	ra,8(sp)
    80001f34:	00013403          	ld	s0,0(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00113423          	sd	ra,8(sp)
    80001f48:	00813023          	sd	s0,0(sp)
    80001f4c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001f50:	00853503          	ld	a0,8(a0)
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	4a0080e7          	jalr	1184(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00113423          	sd	ra,8(sp)
    80001f74:	00813023          	sd	s0,0(sp)
    80001f78:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001f7c:	00853503          	ld	a0,8(a0)
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	4a0080e7          	jalr	1184(ra) # 80001420 <_Z11sem_trywaitP3sem>
}
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN9Semaphore9timedWaitEm>:



int Semaphore::timedWait(time_t t) {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    sem_timedwait(myHandle,t);
    80001fa8:	00853503          	ld	a0,8(a0)
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	4f0080e7          	jalr	1264(ra) # 8000149c <_Z13sem_timedwaitP3semm>
    return 0;
}
    80001fb4:	00000513          	li	a0,0
    80001fb8:	00813083          	ld	ra,8(sp)
    80001fbc:	00013403          	ld	s0,0(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00813423          	sd	s0,8(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    //terminate();
}
    80001fd4:	00813403          	ld	s0,8(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00050493          	mv	s1,a0
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	eb0080e7          	jalr	-336(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    80002000:	00008797          	auipc	a5,0x8
    80002004:	45878793          	addi	a5,a5,1112 # 8000a458 <_ZTV14PeriodicThread+0x10>
    80002008:	00f4b023          	sd	a5,0(s1)

}
    8000200c:	01813083          	ld	ra,24(sp)
    80002010:	01013403          	ld	s0,16(sp)
    80002014:	00813483          	ld	s1,8(sp)
    80002018:	02010113          	addi	sp,sp,32
    8000201c:	00008067          	ret

0000000080002020 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	444080e7          	jalr	1092(ra) # 80001474 <_Z4putcc>
}
    80002038:	00813083          	ld	ra,8(sp)
    8000203c:	00013403          	ld	s0,0(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN7Console4getcEv>:
char Console::getc() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	00813023          	sd	s0,0(sp)
    80002054:	01010413          	addi	s0,sp,16
   return ::getc();
    80002058:	fffff097          	auipc	ra,0xfffff
    8000205c:	3f4080e7          	jalr	1012(ra) # 8000144c <_Z4getcv>
}
    80002060:	00813083          	ld	ra,8(sp)
    80002064:	00013403          	ld	s0,0(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_ZN6Thread3runEv>:
    int start ();//
    static void dispatch ();//
    static int sleep (time_t);
protected:
    Thread ();//
    virtual void run () {}//
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	00813403          	ld	s0,8(sp)
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret

0000000080002088 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
        public:
        void terminate ();
        protected:
        PeriodicThread (time_t period);
        virtual void periodicActivation () {}
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00813423          	sd	s0,8(sp)
    80002090:	01010413          	addi	s0,sp,16
    80002094:	00813403          	ld	s0,8(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00113423          	sd	ra,8(sp)
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	01010413          	addi	s0,sp,16
    800020b0:	00008797          	auipc	a5,0x8
    800020b4:	3a878793          	addi	a5,a5,936 # 8000a458 <_ZTV14PeriodicThread+0x10>
    800020b8:	00f53023          	sd	a5,0(a0)
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	c34080e7          	jalr	-972(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    800020c4:	00813083          	ld	ra,8(sp)
    800020c8:	00013403          	ld	s0,0(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <_ZN14PeriodicThreadD0Ev>:
    800020d4:	fe010113          	addi	sp,sp,-32
    800020d8:	00113c23          	sd	ra,24(sp)
    800020dc:	00813823          	sd	s0,16(sp)
    800020e0:	00913423          	sd	s1,8(sp)
    800020e4:	02010413          	addi	s0,sp,32
    800020e8:	00050493          	mv	s1,a0
    800020ec:	00008797          	auipc	a5,0x8
    800020f0:	36c78793          	addi	a5,a5,876 # 8000a458 <_ZTV14PeriodicThread+0x10>
    800020f4:	00f53023          	sd	a5,0(a0)
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	bf8080e7          	jalr	-1032(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80002100:	00048513          	mv	a0,s1
    80002104:	00000097          	auipc	ra,0x0
    80002108:	b70080e7          	jalr	-1168(ra) # 80001c74 <_ZdlPv>
    8000210c:	01813083          	ld	ra,24(sp)
    80002110:	01013403          	ld	s0,16(sp)
    80002114:	00813483          	ld	s1,8(sp)
    80002118:	02010113          	addi	sp,sp,32
    8000211c:	00008067          	ret

0000000080002120 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/print.hpp"

void Riscv::popSppSpie() {
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00813423          	sd	s0,8(sp)
    80002128:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000212c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002130:	10200073          	sret
}
    80002134:	00813403          	ld	s0,8(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002140:	f9010113          	addi	sp,sp,-112
    80002144:	06113423          	sd	ra,104(sp)
    80002148:	06813023          	sd	s0,96(sp)
    8000214c:	04913c23          	sd	s1,88(sp)
    80002150:	07010413          	addi	s0,sp,112

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002154:	00050793          	mv	a5,a0
    80002158:	faf43c23          	sd	a5,-72(s0)
    return a0;
    8000215c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002160:	14202773          	csrr	a4,scause
    80002164:	fae43823          	sd	a4,-80(s0)
    return scause;
    80002168:	fb043703          	ld	a4,-80(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    8000216c:	ff870613          	addi	a2,a4,-8
    80002170:	00100693          	li	a3,1
    80002174:	04c6f863          	bgeu	a3,a2,800021c4 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80002178:	fff00793          	li	a5,-1
    8000217c:	03f79793          	slli	a5,a5,0x3f
    80002180:	00178793          	addi	a5,a5,1
    80002184:	1cf70e63          	beq	a4,a5,80002360 <_ZN5Riscv20handleSupervisorTrapEv+0x220>

        w_sstatus(sstatus);
        w_sepc(sepc);


    }else if(scause == 0x8000000000000009UL){
    80002188:	fff00793          	li	a5,-1
    8000218c:	03f79793          	slli	a5,a5,0x3f
    80002190:	00978793          	addi	a5,a5,9
    80002194:	24f70463          	beq	a4,a5,800023dc <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
        // supervisor external interrupt; console

        console_handler();
    }else if(scause == 0x0000000000000002UL){
    80002198:	00200793          	li	a5,2
    8000219c:	08f71a63          	bne	a4,a5,80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        //unexpected interrupt;
        //printInteger(scause);
        //printInteger(r_sepc());
        //printInteger(r_stval());
        printString("greska\n");
    800021a0:	00006517          	auipc	a0,0x6
    800021a4:	e8850513          	addi	a0,a0,-376 # 80008028 <CONSOLE_STATUS+0x18>
    800021a8:	00003097          	auipc	ra,0x3
    800021ac:	a30080e7          	jalr	-1488(ra) # 80004bd8 <_Z11printStringPKc>

        __asm__ volatile("li t0, 0x5555");
    800021b0:	000052b7          	lui	t0,0x5
    800021b4:	5552829b          	addiw	t0,t0,1365
        __asm__ volatile("li t1, 0x100000");
    800021b8:	00100337          	lui	t1,0x100
        __asm__ volatile("sw t0, 0(t1)");
    800021bc:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    }
    800021c0:	0700006f          	j	80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021c4:	14102773          	csrr	a4,sepc
    800021c8:	fce43423          	sd	a4,-56(s0)
    return sepc;
    800021cc:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() +4;
    800021d0:	00470713          	addi	a4,a4,4
    800021d4:	f8e43823          	sd	a4,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021d8:	10002773          	csrr	a4,sstatus
    800021dc:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    800021e0:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    800021e4:	f8e43c23          	sd	a4,-104(s0)
        switch (ra) {
    800021e8:	02600713          	li	a4,38
    800021ec:	02f76a63          	bltu	a4,a5,80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    800021f0:	00279793          	slli	a5,a5,0x2
    800021f4:	00006717          	auipc	a4,0x6
    800021f8:	e3c70713          	addi	a4,a4,-452 # 80008030 <CONSOLE_STATUS+0x20>
    800021fc:	00e787b3          	add	a5,a5,a4
    80002200:	0007a783          	lw	a5,0(a5)
    80002204:	00e787b3          	add	a5,a5,a4
    80002208:	00078067          	jr	a5
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
    8000220c:	05843503          	ld	a0,88(s0)
                mallocr = MemoryAllocator::mem_alloc(size);
    80002210:	00000097          	auipc	ra,0x0
    80002214:	320080e7          	jalr	800(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80002218:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    8000221c:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    80002220:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002224:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002228:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000222c:	14179073          	csrw	sepc,a5
    80002230:	06813083          	ld	ra,104(sp)
    80002234:	06013403          	ld	s0,96(sp)
    80002238:	05813483          	ld	s1,88(sp)
    8000223c:	07010113          	addi	sp,sp,112
    80002240:	00008067          	ret
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
    80002244:	05843503          	ld	a0,88(s0)
                greska = MemoryAllocator::mem_free(freep);
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	43c080e7          	jalr	1084(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    80002250:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002254:	04543823          	sd	t0,80(s0)
                break;
    80002258:	fc9ff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
    8000225c:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    80002260:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    80002264:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    80002268:	07043603          	ld	a2,112(s0)
                *thandle = TCB::createThread(start_routine,arg, stek);
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	838080e7          	jalr	-1992(ra) # 80001aa4 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80002274:	00a4b023          	sd	a0,0(s1)
                if(*thandle != nullptr) ret =0;
    80002278:	00050a63          	beqz	a0,8000228c <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
    8000227c:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002280:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    80002284:	04543823          	sd	t0,80(s0)
                break;
    80002288:	f99ff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                else ret = -1;
    8000228c:	fff00793          	li	a5,-1
    80002290:	ff1ff06f          	j	80002280 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                ret = TCB::exitThread();
    80002294:	00000097          	auipc	ra,0x0
    80002298:	938080e7          	jalr	-1736(ra) # 80001bcc <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000229c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022a0:	04542823          	sw	t0,80(s0)
                break;
    800022a4:	f7dff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                TCB::timeSliceCounter=0;
    800022a8:	00008797          	auipc	a5,0x8
    800022ac:	3d87b783          	ld	a5,984(a5) # 8000a680 <_GLOBAL_OFFSET_TABLE_+0x18>
    800022b0:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	6f8080e7          	jalr	1784(ra) # 800019ac <_ZN3TCB8dispatchEv>
                break;
    800022bc:	f65ff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
    800022c0:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
    800022c4:	06043503          	ld	a0,96(s0)
                *shandle = semaphore::openSemaphore(val);
    800022c8:	0005051b          	sext.w	a0,a0
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	2a8080e7          	jalr	680(ra) # 80001574 <_ZN9semaphore13openSemaphoreEi>
    800022d4:	00a4b023          	sd	a0,0(s1)
                if(*shandle != nullptr) ret =0;
    800022d8:	00050a63          	beqz	a0,800022ec <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
    800022dc:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022e0:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    800022e4:	04542823          	sw	t0,80(s0)
                break;
    800022e8:	f39ff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                else ret = -1;
    800022ec:	fff00793          	li	a5,-1
    800022f0:	ff1ff06f          	j	800022e0 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    800022f4:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::closeSemaphore();
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	488080e7          	jalr	1160(ra) # 80001780 <_ZN9semaphore14closeSemaphoreEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002300:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002304:	04542823          	sw	t0,80(s0)
                break;
    80002308:	f19ff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    8000230c:	05843503          	ld	a0,88(s0)
                if(id != nullptr) ret = id->semaphore::wait();
    80002310:	00050c63          	beqz	a0,80002328 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
    80002314:	fffff097          	auipc	ra,0xfffff
    80002318:	39c080e7          	jalr	924(ra) # 800016b0 <_ZN9semaphore4waitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000231c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002320:	04542823          	sw	t0,80(s0)
                break;
    80002324:	efdff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                else ret = -1;
    80002328:	fff00513          	li	a0,-1
    8000232c:	ff1ff06f          	j	8000231c <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002330:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::signal();
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	4bc080e7          	jalr	1212(ra) # 800017f0 <_ZN9semaphore6signalEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000233c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002340:	04542823          	sw	t0,80(s0)
                break;
    80002344:	eddff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002348:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::trywait();
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	270080e7          	jalr	624(ra) # 800015bc <_ZN9semaphore7trywaitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002354:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002358:	04542823          	sw	t0,80(s0)
                break;
    8000235c:	ec5ff06f          	j	80002220 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002360:	00200793          	li	a5,2
    80002364:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002368:	141027f3          	csrr	a5,sepc
    8000236c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002370:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    80002374:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002378:	100027f3          	csrr	a5,sstatus
    8000237c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002380:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002384:	faf43423          	sd	a5,-88(s0)
        TCB::timeSliceCounter++;
    80002388:	00008717          	auipc	a4,0x8
    8000238c:	2f873703          	ld	a4,760(a4) # 8000a680 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002390:	00073783          	ld	a5,0(a4)
    80002394:	00178793          	addi	a5,a5,1
    80002398:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    8000239c:	00008717          	auipc	a4,0x8
    800023a0:	2f473703          	ld	a4,756(a4) # 8000a690 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023a4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800023a8:	02873703          	ld	a4,40(a4)
    800023ac:	00e7fc63          	bgeu	a5,a4,800023c4 <_ZN5Riscv20handleSupervisorTrapEv+0x284>
        w_sstatus(sstatus);
    800023b0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023b4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800023b8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023bc:	14179073          	csrw	sepc,a5
}
    800023c0:	e71ff06f          	j	80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            TCB::timeSliceCounter=0;
    800023c4:	00008797          	auipc	a5,0x8
    800023c8:	2bc7b783          	ld	a5,700(a5) # 8000a680 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023cc:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	5dc080e7          	jalr	1500(ra) # 800019ac <_ZN3TCB8dispatchEv>
    800023d8:	fd9ff06f          	j	800023b0 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
        console_handler();
    800023dc:	00006097          	auipc	ra,0x6
    800023e0:	b74080e7          	jalr	-1164(ra) # 80007f50 <console_handler>
    800023e4:	e4dff06f          	j	80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

00000000800023e8 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00813423          	sd	s0,8(sp)
    800023f0:	01010413          	addi	s0,sp,16
    800023f4:	00100793          	li	a5,1
    800023f8:	00f50863          	beq	a0,a5,80002408 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023fc:	00813403          	ld	s0,8(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret
    80002408:	000107b7          	lui	a5,0x10
    8000240c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002410:	fef596e3          	bne	a1,a5,800023fc <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    80002414:	00008797          	auipc	a5,0x8
    80002418:	2ec78793          	addi	a5,a5,748 # 8000a700 <_ZN9Scheduler16readyThreadQueueE>
    8000241c:	0007b023          	sd	zero,0(a5)
    80002420:	0007b423          	sd	zero,8(a5)
    80002424:	fd9ff06f          	j	800023fc <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002428 <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    80002428:	fe010113          	addi	sp,sp,-32
    8000242c:	00113c23          	sd	ra,24(sp)
    80002430:	00813823          	sd	s0,16(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    8000243c:	00008517          	auipc	a0,0x8
    80002440:	2c453503          	ld	a0,708(a0) # 8000a700 <_ZN9Scheduler16readyThreadQueueE>
    80002444:	04050263          	beqz	a0,80002488 <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    80002448:	00853783          	ld	a5,8(a0)
    8000244c:	00008717          	auipc	a4,0x8
    80002450:	2af73a23          	sd	a5,692(a4) # 8000a700 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80002454:	02078463          	beqz	a5,8000247c <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    80002458:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	228080e7          	jalr	552(ra) # 80002684 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80002464:	00048513          	mv	a0,s1
    80002468:	01813083          	ld	ra,24(sp)
    8000246c:	01013403          	ld	s0,16(sp)
    80002470:	00813483          	ld	s1,8(sp)
    80002474:	02010113          	addi	sp,sp,32
    80002478:	00008067          	ret
                if(!head) tail = 0;
    8000247c:	00008797          	auipc	a5,0x8
    80002480:	2807b623          	sd	zero,652(a5) # 8000a708 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002484:	fd5ff06f          	j	80002458 <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80002488:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000248c:	fd9ff06f          	j	80002464 <_ZN9Scheduler3getEv+0x3c>

0000000080002490 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    80002490:	fe010113          	addi	sp,sp,-32
    80002494:	00113c23          	sd	ra,24(sp)
    80002498:	00813823          	sd	s0,16(sp)
    8000249c:	00913423          	sd	s1,8(sp)
    800024a0:	02010413          	addi	s0,sp,32
    800024a4:	00050493          	mv	s1,a0
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    800024a8:	01000513          	li	a0,16
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	084080e7          	jalr	132(ra) # 80002530 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    800024b4:	00953023          	sd	s1,0(a0)
                elem->next=0;
    800024b8:	00053423          	sd	zero,8(a0)
                if(tail){
    800024bc:	00008797          	auipc	a5,0x8
    800024c0:	24c7b783          	ld	a5,588(a5) # 8000a708 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024c4:	02078263          	beqz	a5,800024e8 <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    800024c8:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    800024cc:	00008797          	auipc	a5,0x8
    800024d0:	22a7be23          	sd	a0,572(a5) # 8000a708 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024d4:	01813083          	ld	ra,24(sp)
    800024d8:	01013403          	ld	s0,16(sp)
    800024dc:	00813483          	ld	s1,8(sp)
    800024e0:	02010113          	addi	sp,sp,32
    800024e4:	00008067          	ret
                    head= tail = elem;
    800024e8:	00008797          	auipc	a5,0x8
    800024ec:	21878793          	addi	a5,a5,536 # 8000a700 <_ZN9Scheduler16readyThreadQueueE>
    800024f0:	00a7b423          	sd	a0,8(a5)
    800024f4:	00a7b023          	sd	a0,0(a5)
    800024f8:	fddff06f          	j	800024d4 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800024fc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	000105b7          	lui	a1,0x10
    80002510:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002514:	00100513          	li	a0,1
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	ed0080e7          	jalr	-304(ra) # 800023e8 <_Z41__static_initialization_and_destruction_0ii>
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00013403          	ld	s0,0(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    80002540:	00008517          	auipc	a0,0x8
    80002544:	1d053503          	ld	a0,464(a0) # 8000a710 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    80002548:	03f7f713          	andi	a4,a5,63
    8000254c:	00070663          	beqz	a4,80002558 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002550:	fc07f793          	andi	a5,a5,-64
    80002554:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    80002558:	02050863          	beqz	a0,80002588 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    8000255c:	00853703          	ld	a4,8(a0)
    80002560:	02f77863          	bgeu	a4,a5,80002590 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    80002564:	00050693          	mv	a3,a0
        tek = tek->sled;
    80002568:	00053503          	ld	a0,0(a0)
    8000256c:	00c0006f          	j	80002578 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    80002570:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    80002574:	00053503          	ld	a0,0(a0)
    80002578:	00050e63          	beqz	a0,80002594 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    8000257c:	00853703          	ld	a4,8(a0)
    80002580:	fef768e3          	bltu	a4,a5,80002570 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80002584:	0100006f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    80002588:	00050693          	mv	a3,a0
    8000258c:	0080006f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002590:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    80002594:	02050c63          	beqz	a0,800025cc <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    80002598:	00853703          	ld	a4,8(a0)
    8000259c:	02e7fe63          	bgeu	a5,a4,800025d8 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    800025a0:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    800025a4:	00f505b3          	add	a1,a0,a5
    800025a8:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    800025ac:	40f707b3          	sub	a5,a4,a5
    800025b0:	ff078793          	addi	a5,a5,-16
    800025b4:	00f63423          	sd	a5,8(a2) # 9008 <_entry-0x7fff6ff8>
        sledeci->sled = tek->sled;
    800025b8:	00053783          	ld	a5,0(a0)
    800025bc:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    800025c0:	02068063          	beqz	a3,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800025c4:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    800025c8:	01050513          	addi	a0,a0,16
}
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    800025d8:	00053603          	ld	a2,0(a0)
    800025dc:	fe5ff06f          	j	800025c0 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    800025e0:	00008797          	auipc	a5,0x8
    800025e4:	12c7b823          	sd	a2,304(a5) # 8000a710 <_ZN15MemoryAllocator11freememheadE>
    800025e8:	fe1ff06f          	j	800025c8 <_ZN15MemoryAllocator9mem_allocEm+0x98>

00000000800025ec <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    800025ec:	ff010113          	addi	sp,sp,-16
    800025f0:	00813423          	sd	s0,8(sp)
    800025f4:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    800025f8:	00008797          	auipc	a5,0x8
    800025fc:	0787b783          	ld	a5,120(a5) # 8000a670 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002600:	0007b703          	ld	a4,0(a5)
    80002604:	00008797          	auipc	a5,0x8
    80002608:	10e7b623          	sd	a4,268(a5) # 8000a710 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    8000260c:	00008797          	auipc	a5,0x8
    80002610:	08c7b783          	ld	a5,140(a5) # 8000a698 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002614:	0007b783          	ld	a5,0(a5)
    80002618:	40e787b3          	sub	a5,a5,a4
    8000261c:	ff078793          	addi	a5,a5,-16
    80002620:	00073023          	sd	zero,0(a4)
    80002624:	00f73423          	sd	a5,8(a4)
};
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002640:	00053783          	ld	a5,0(a0)
    80002644:	00078a63          	beqz	a5,80002658 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    80002648:	00853683          	ld	a3,8(a0)
    8000264c:	00d50733          	add	a4,a0,a3
    80002650:	01070713          	addi	a4,a4,16
    80002654:	00f70a63          	beq	a4,a5,80002668 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    80002658:	00000513          	li	a0,0
    8000265c:	00813403          	ld	s0,8(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    80002668:	0087b703          	ld	a4,8(a5)
    8000266c:	00e686b3          	add	a3,a3,a4
    80002670:	01068693          	addi	a3,a3,16
    80002674:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    80002678:	0007b783          	ld	a5,0(a5)
    8000267c:	00f53023          	sd	a5,0(a0)
    80002680:	fd9ff06f          	j	80002658 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

0000000080002684 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002684:	0c050263          	beqz	a0,80002748 <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    80002688:	00050713          	mv	a4,a0
    8000268c:	00008797          	auipc	a5,0x8
    80002690:	fe47b783          	ld	a5,-28(a5) # 8000a670 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002694:	0007b783          	ld	a5,0(a5)
    80002698:	0af56c63          	bltu	a0,a5,80002750 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    8000269c:	00008797          	auipc	a5,0x8
    800026a0:	ffc7b783          	ld	a5,-4(a5) # 8000a698 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026a4:	0007b783          	ld	a5,0(a5)
    800026a8:	0af57863          	bgeu	a0,a5,80002758 <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    800026ac:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    800026b0:	00008797          	auipc	a5,0x8
    800026b4:	0607b783          	ld	a5,96(a5) # 8000a710 <_ZN15MemoryAllocator11freememheadE>
    800026b8:	06078063          	beqz	a5,80002718 <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    800026bc:	fe010113          	addi	sp,sp,-32
    800026c0:	00113c23          	sd	ra,24(sp)
    800026c4:	00813823          	sd	s0,16(sp)
    800026c8:	00913423          	sd	s1,8(sp)
    800026cc:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    800026d0:	04f56e63          	bltu	a0,a5,8000272c <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    800026d4:	00078493          	mv	s1,a5
    800026d8:	0007b783          	ld	a5,0(a5)
    800026dc:	00078463          	beqz	a5,800026e4 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    800026e0:	fea7eae3          	bltu	a5,a0,800026d4 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    800026e4:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    800026e8:	00a4b023          	sd	a0,0(s1)
        join(tek);
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	f48080e7          	jalr	-184(ra) # 80002634 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    800026f4:	00048513          	mv	a0,s1
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	f3c080e7          	jalr	-196(ra) # 80002634 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002700:	00000513          	li	a0,0
}
    80002704:	01813083          	ld	ra,24(sp)
    80002708:	01013403          	ld	s0,16(sp)
    8000270c:	00813483          	ld	s1,8(sp)
    80002710:	02010113          	addi	sp,sp,32
    80002714:	00008067          	ret
        freememhead = tek;
    80002718:	00008797          	auipc	a5,0x8
    8000271c:	fea7bc23          	sd	a0,-8(a5) # 8000a710 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002720:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002724:	00000513          	li	a0,0
    80002728:	00008067          	ret
        tek->sled = freememhead;
    8000272c:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002730:	00008797          	auipc	a5,0x8
    80002734:	fea7b023          	sd	a0,-32(a5) # 8000a710 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	efc080e7          	jalr	-260(ra) # 80002634 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002740:	00000513          	li	a0,0
    80002744:	fc1ff06f          	j	80002704 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002748:	fff00513          	li	a0,-1
    8000274c:	00008067          	ret
    80002750:	fff00513          	li	a0,-1
    80002754:	00008067          	ret
    80002758:	fff00513          	li	a0,-1
}
    8000275c:	00008067          	ret

0000000080002760 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002760:	fe010113          	addi	sp,sp,-32
    80002764:	00113c23          	sd	ra,24(sp)
    80002768:	00813823          	sd	s0,16(sp)
    8000276c:	00913423          	sd	s1,8(sp)
    80002770:	01213023          	sd	s2,0(sp)
    80002774:	02010413          	addi	s0,sp,32
    80002778:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000277c:	00000913          	li	s2,0
    80002780:	00c0006f          	j	8000278c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	b24080e7          	jalr	-1244(ra) # 800012a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	cc0080e7          	jalr	-832(ra) # 8000144c <_Z4getcv>
    80002794:	0005059b          	sext.w	a1,a0
    80002798:	01b00793          	li	a5,27
    8000279c:	02f58a63          	beq	a1,a5,800027d0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800027a0:	0084b503          	ld	a0,8(s1)
    800027a4:	00003097          	auipc	ra,0x3
    800027a8:	3f4080e7          	jalr	1012(ra) # 80005b98 <_ZN6Buffer3putEi>
        i++;
    800027ac:	0019071b          	addiw	a4,s2,1
    800027b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800027b4:	0004a683          	lw	a3,0(s1)
    800027b8:	0026979b          	slliw	a5,a3,0x2
    800027bc:	00d787bb          	addw	a5,a5,a3
    800027c0:	0017979b          	slliw	a5,a5,0x1
    800027c4:	02f767bb          	remw	a5,a4,a5
    800027c8:	fc0792e3          	bnez	a5,8000278c <_ZL16producerKeyboardPv+0x2c>
    800027cc:	fb9ff06f          	j	80002784 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800027d0:	00100793          	li	a5,1
    800027d4:	00008717          	auipc	a4,0x8
    800027d8:	f4f72223          	sw	a5,-188(a4) # 8000a718 <_ZL9threadEnd>
    data->buffer->put('!');
    800027dc:	02100593          	li	a1,33
    800027e0:	0084b503          	ld	a0,8(s1)
    800027e4:	00003097          	auipc	ra,0x3
    800027e8:	3b4080e7          	jalr	948(ra) # 80005b98 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800027ec:	0104b503          	ld	a0,16(s1)
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	c04080e7          	jalr	-1020(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    800027f8:	01813083          	ld	ra,24(sp)
    800027fc:	01013403          	ld	s0,16(sp)
    80002800:	00813483          	ld	s1,8(sp)
    80002804:	00013903          	ld	s2,0(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret

0000000080002810 <_ZL8producerPv>:

static void producer(void *arg) {
    80002810:	fe010113          	addi	sp,sp,-32
    80002814:	00113c23          	sd	ra,24(sp)
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	01213023          	sd	s2,0(sp)
    80002824:	02010413          	addi	s0,sp,32
    80002828:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000282c:	00000913          	li	s2,0
    80002830:	00c0006f          	j	8000283c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	a74080e7          	jalr	-1420(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000283c:	00008797          	auipc	a5,0x8
    80002840:	edc7a783          	lw	a5,-292(a5) # 8000a718 <_ZL9threadEnd>
    80002844:	02079e63          	bnez	a5,80002880 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002848:	0004a583          	lw	a1,0(s1)
    8000284c:	0305859b          	addiw	a1,a1,48
    80002850:	0084b503          	ld	a0,8(s1)
    80002854:	00003097          	auipc	ra,0x3
    80002858:	344080e7          	jalr	836(ra) # 80005b98 <_ZN6Buffer3putEi>
        i++;
    8000285c:	0019071b          	addiw	a4,s2,1
    80002860:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002864:	0004a683          	lw	a3,0(s1)
    80002868:	0026979b          	slliw	a5,a3,0x2
    8000286c:	00d787bb          	addw	a5,a5,a3
    80002870:	0017979b          	slliw	a5,a5,0x1
    80002874:	02f767bb          	remw	a5,a4,a5
    80002878:	fc0792e3          	bnez	a5,8000283c <_ZL8producerPv+0x2c>
    8000287c:	fb9ff06f          	j	80002834 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002880:	0104b503          	ld	a0,16(s1)
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	b70080e7          	jalr	-1168(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    8000288c:	01813083          	ld	ra,24(sp)
    80002890:	01013403          	ld	s0,16(sp)
    80002894:	00813483          	ld	s1,8(sp)
    80002898:	00013903          	ld	s2,0(sp)
    8000289c:	02010113          	addi	sp,sp,32
    800028a0:	00008067          	ret

00000000800028a4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800028a4:	fd010113          	addi	sp,sp,-48
    800028a8:	02113423          	sd	ra,40(sp)
    800028ac:	02813023          	sd	s0,32(sp)
    800028b0:	00913c23          	sd	s1,24(sp)
    800028b4:	01213823          	sd	s2,16(sp)
    800028b8:	01313423          	sd	s3,8(sp)
    800028bc:	03010413          	addi	s0,sp,48
    800028c0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800028c4:	00000993          	li	s3,0
    800028c8:	01c0006f          	j	800028e4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	9dc080e7          	jalr	-1572(ra) # 800012a8 <_Z15thread_dispatchv>
    800028d4:	0500006f          	j	80002924 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800028d8:	00a00513          	li	a0,10
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	b98080e7          	jalr	-1128(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    800028e4:	00008797          	auipc	a5,0x8
    800028e8:	e347a783          	lw	a5,-460(a5) # 8000a718 <_ZL9threadEnd>
    800028ec:	06079063          	bnez	a5,8000294c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800028f0:	00893503          	ld	a0,8(s2)
    800028f4:	00003097          	auipc	ra,0x3
    800028f8:	334080e7          	jalr	820(ra) # 80005c28 <_ZN6Buffer3getEv>
        i++;
    800028fc:	0019849b          	addiw	s1,s3,1
    80002900:	0004899b          	sext.w	s3,s1
        putc(key);
    80002904:	0ff57513          	andi	a0,a0,255
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	b6c080e7          	jalr	-1172(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002910:	00092703          	lw	a4,0(s2)
    80002914:	0027179b          	slliw	a5,a4,0x2
    80002918:	00e787bb          	addw	a5,a5,a4
    8000291c:	02f4e7bb          	remw	a5,s1,a5
    80002920:	fa0786e3          	beqz	a5,800028cc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002924:	05000793          	li	a5,80
    80002928:	02f4e4bb          	remw	s1,s1,a5
    8000292c:	fa049ce3          	bnez	s1,800028e4 <_ZL8consumerPv+0x40>
    80002930:	fa9ff06f          	j	800028d8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002934:	00893503          	ld	a0,8(s2)
    80002938:	00003097          	auipc	ra,0x3
    8000293c:	2f0080e7          	jalr	752(ra) # 80005c28 <_ZN6Buffer3getEv>
        putc(key);
    80002940:	0ff57513          	andi	a0,a0,255
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	b30080e7          	jalr	-1232(ra) # 80001474 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000294c:	00893503          	ld	a0,8(s2)
    80002950:	00003097          	auipc	ra,0x3
    80002954:	364080e7          	jalr	868(ra) # 80005cb4 <_ZN6Buffer6getCntEv>
    80002958:	fca04ee3          	bgtz	a0,80002934 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000295c:	01093503          	ld	a0,16(s2)
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	a94080e7          	jalr	-1388(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80002968:	02813083          	ld	ra,40(sp)
    8000296c:	02013403          	ld	s0,32(sp)
    80002970:	01813483          	ld	s1,24(sp)
    80002974:	01013903          	ld	s2,16(sp)
    80002978:	00813983          	ld	s3,8(sp)
    8000297c:	03010113          	addi	sp,sp,48
    80002980:	00008067          	ret

0000000080002984 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002984:	f9010113          	addi	sp,sp,-112
    80002988:	06113423          	sd	ra,104(sp)
    8000298c:	06813023          	sd	s0,96(sp)
    80002990:	04913c23          	sd	s1,88(sp)
    80002994:	05213823          	sd	s2,80(sp)
    80002998:	05313423          	sd	s3,72(sp)
    8000299c:	05413023          	sd	s4,64(sp)
    800029a0:	03513c23          	sd	s5,56(sp)
    800029a4:	03613823          	sd	s6,48(sp)
    800029a8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800029ac:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800029b0:	00005517          	auipc	a0,0x5
    800029b4:	72050513          	addi	a0,a0,1824 # 800080d0 <CONSOLE_STATUS+0xc0>
    800029b8:	00002097          	auipc	ra,0x2
    800029bc:	220080e7          	jalr	544(ra) # 80004bd8 <_Z11printStringPKc>
    getString(input, 30);
    800029c0:	01e00593          	li	a1,30
    800029c4:	fa040493          	addi	s1,s0,-96
    800029c8:	00048513          	mv	a0,s1
    800029cc:	00002097          	auipc	ra,0x2
    800029d0:	294080e7          	jalr	660(ra) # 80004c60 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800029d4:	00048513          	mv	a0,s1
    800029d8:	00002097          	auipc	ra,0x2
    800029dc:	360080e7          	jalr	864(ra) # 80004d38 <_Z11stringToIntPKc>
    800029e0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800029e4:	00005517          	auipc	a0,0x5
    800029e8:	70c50513          	addi	a0,a0,1804 # 800080f0 <CONSOLE_STATUS+0xe0>
    800029ec:	00002097          	auipc	ra,0x2
    800029f0:	1ec080e7          	jalr	492(ra) # 80004bd8 <_Z11printStringPKc>
    getString(input, 30);
    800029f4:	01e00593          	li	a1,30
    800029f8:	00048513          	mv	a0,s1
    800029fc:	00002097          	auipc	ra,0x2
    80002a00:	264080e7          	jalr	612(ra) # 80004c60 <_Z9getStringPci>
    n = stringToInt(input);
    80002a04:	00048513          	mv	a0,s1
    80002a08:	00002097          	auipc	ra,0x2
    80002a0c:	330080e7          	jalr	816(ra) # 80004d38 <_Z11stringToIntPKc>
    80002a10:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002a14:	00005517          	auipc	a0,0x5
    80002a18:	6fc50513          	addi	a0,a0,1788 # 80008110 <CONSOLE_STATUS+0x100>
    80002a1c:	00002097          	auipc	ra,0x2
    80002a20:	1bc080e7          	jalr	444(ra) # 80004bd8 <_Z11printStringPKc>
    80002a24:	00000613          	li	a2,0
    80002a28:	00a00593          	li	a1,10
    80002a2c:	00090513          	mv	a0,s2
    80002a30:	00002097          	auipc	ra,0x2
    80002a34:	358080e7          	jalr	856(ra) # 80004d88 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002a38:	00005517          	auipc	a0,0x5
    80002a3c:	6f050513          	addi	a0,a0,1776 # 80008128 <CONSOLE_STATUS+0x118>
    80002a40:	00002097          	auipc	ra,0x2
    80002a44:	198080e7          	jalr	408(ra) # 80004bd8 <_Z11printStringPKc>
    80002a48:	00000613          	li	a2,0
    80002a4c:	00a00593          	li	a1,10
    80002a50:	00048513          	mv	a0,s1
    80002a54:	00002097          	auipc	ra,0x2
    80002a58:	334080e7          	jalr	820(ra) # 80004d88 <_Z8printIntiii>
    printString(".\n");
    80002a5c:	00005517          	auipc	a0,0x5
    80002a60:	6e450513          	addi	a0,a0,1764 # 80008140 <CONSOLE_STATUS+0x130>
    80002a64:	00002097          	auipc	ra,0x2
    80002a68:	174080e7          	jalr	372(ra) # 80004bd8 <_Z11printStringPKc>
    if(threadNum > n) {
    80002a6c:	0324c463          	blt	s1,s2,80002a94 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002a70:	03205c63          	blez	s2,80002aa8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002a74:	03800513          	li	a0,56
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	1ac080e7          	jalr	428(ra) # 80001c24 <_Znwm>
    80002a80:	00050a13          	mv	s4,a0
    80002a84:	00048593          	mv	a1,s1
    80002a88:	00003097          	auipc	ra,0x3
    80002a8c:	074080e7          	jalr	116(ra) # 80005afc <_ZN6BufferC1Ei>
    80002a90:	0300006f          	j	80002ac0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002a94:	00005517          	auipc	a0,0x5
    80002a98:	6b450513          	addi	a0,a0,1716 # 80008148 <CONSOLE_STATUS+0x138>
    80002a9c:	00002097          	auipc	ra,0x2
    80002aa0:	13c080e7          	jalr	316(ra) # 80004bd8 <_Z11printStringPKc>
        return;
    80002aa4:	0140006f          	j	80002ab8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002aa8:	00005517          	auipc	a0,0x5
    80002aac:	6e050513          	addi	a0,a0,1760 # 80008188 <CONSOLE_STATUS+0x178>
    80002ab0:	00002097          	auipc	ra,0x2
    80002ab4:	128080e7          	jalr	296(ra) # 80004bd8 <_Z11printStringPKc>
        return;
    80002ab8:	000b0113          	mv	sp,s6
    80002abc:	1500006f          	j	80002c0c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002ac0:	00000593          	li	a1,0
    80002ac4:	00008517          	auipc	a0,0x8
    80002ac8:	c5c50513          	addi	a0,a0,-932 # 8000a720 <_ZL10waitForAll>
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	8a0080e7          	jalr	-1888(ra) # 8000136c <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80002ad4:	00391793          	slli	a5,s2,0x3
    80002ad8:	00f78793          	addi	a5,a5,15
    80002adc:	ff07f793          	andi	a5,a5,-16
    80002ae0:	40f10133          	sub	sp,sp,a5
    80002ae4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002ae8:	0019071b          	addiw	a4,s2,1
    80002aec:	00171793          	slli	a5,a4,0x1
    80002af0:	00e787b3          	add	a5,a5,a4
    80002af4:	00379793          	slli	a5,a5,0x3
    80002af8:	00f78793          	addi	a5,a5,15
    80002afc:	ff07f793          	andi	a5,a5,-16
    80002b00:	40f10133          	sub	sp,sp,a5
    80002b04:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002b08:	00191613          	slli	a2,s2,0x1
    80002b0c:	012607b3          	add	a5,a2,s2
    80002b10:	00379793          	slli	a5,a5,0x3
    80002b14:	00f987b3          	add	a5,s3,a5
    80002b18:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002b1c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002b20:	00008717          	auipc	a4,0x8
    80002b24:	c0073703          	ld	a4,-1024(a4) # 8000a720 <_ZL10waitForAll>
    80002b28:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002b2c:	00078613          	mv	a2,a5
    80002b30:	00000597          	auipc	a1,0x0
    80002b34:	d7458593          	addi	a1,a1,-652 # 800028a4 <_ZL8consumerPv>
    80002b38:	f9840513          	addi	a0,s0,-104
    80002b3c:	ffffe097          	auipc	ra,0xffffe
    80002b40:	7b4080e7          	jalr	1972(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002b44:	00000493          	li	s1,0
    80002b48:	0280006f          	j	80002b70 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002b4c:	00000597          	auipc	a1,0x0
    80002b50:	c1458593          	addi	a1,a1,-1004 # 80002760 <_ZL16producerKeyboardPv>
                      data + i);
    80002b54:	00179613          	slli	a2,a5,0x1
    80002b58:	00f60633          	add	a2,a2,a5
    80002b5c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002b60:	00c98633          	add	a2,s3,a2
    80002b64:	ffffe097          	auipc	ra,0xffffe
    80002b68:	78c080e7          	jalr	1932(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002b6c:	0014849b          	addiw	s1,s1,1
    80002b70:	0524d263          	bge	s1,s2,80002bb4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002b74:	00149793          	slli	a5,s1,0x1
    80002b78:	009787b3          	add	a5,a5,s1
    80002b7c:	00379793          	slli	a5,a5,0x3
    80002b80:	00f987b3          	add	a5,s3,a5
    80002b84:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002b88:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002b8c:	00008717          	auipc	a4,0x8
    80002b90:	b9473703          	ld	a4,-1132(a4) # 8000a720 <_ZL10waitForAll>
    80002b94:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002b98:	00048793          	mv	a5,s1
    80002b9c:	00349513          	slli	a0,s1,0x3
    80002ba0:	00aa8533          	add	a0,s5,a0
    80002ba4:	fa9054e3          	blez	s1,80002b4c <_Z22producerConsumer_C_APIv+0x1c8>
    80002ba8:	00000597          	auipc	a1,0x0
    80002bac:	c6858593          	addi	a1,a1,-920 # 80002810 <_ZL8producerPv>
    80002bb0:	fa5ff06f          	j	80002b54 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002bb4:	ffffe097          	auipc	ra,0xffffe
    80002bb8:	6f4080e7          	jalr	1780(ra) # 800012a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002bbc:	00000493          	li	s1,0
    80002bc0:	00994e63          	blt	s2,s1,80002bdc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002bc4:	00008517          	auipc	a0,0x8
    80002bc8:	b5c53503          	ld	a0,-1188(a0) # 8000a720 <_ZL10waitForAll>
    80002bcc:	ffffe097          	auipc	ra,0xffffe
    80002bd0:	7fc080e7          	jalr	2044(ra) # 800013c8 <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80002bd4:	0014849b          	addiw	s1,s1,1
    80002bd8:	fe9ff06f          	j	80002bc0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002bdc:	00008517          	auipc	a0,0x8
    80002be0:	b4453503          	ld	a0,-1212(a0) # 8000a720 <_ZL10waitForAll>
    80002be4:	ffffe097          	auipc	ra,0xffffe
    80002be8:	7b8080e7          	jalr	1976(ra) # 8000139c <_Z9sem_closeP3sem>
    delete buffer;
    80002bec:	000a0e63          	beqz	s4,80002c08 <_Z22producerConsumer_C_APIv+0x284>
    80002bf0:	000a0513          	mv	a0,s4
    80002bf4:	00003097          	auipc	ra,0x3
    80002bf8:	148080e7          	jalr	328(ra) # 80005d3c <_ZN6BufferD1Ev>
    80002bfc:	000a0513          	mv	a0,s4
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	074080e7          	jalr	116(ra) # 80001c74 <_ZdlPv>
    80002c08:	000b0113          	mv	sp,s6

}
    80002c0c:	f9040113          	addi	sp,s0,-112
    80002c10:	06813083          	ld	ra,104(sp)
    80002c14:	06013403          	ld	s0,96(sp)
    80002c18:	05813483          	ld	s1,88(sp)
    80002c1c:	05013903          	ld	s2,80(sp)
    80002c20:	04813983          	ld	s3,72(sp)
    80002c24:	04013a03          	ld	s4,64(sp)
    80002c28:	03813a83          	ld	s5,56(sp)
    80002c2c:	03013b03          	ld	s6,48(sp)
    80002c30:	07010113          	addi	sp,sp,112
    80002c34:	00008067          	ret
    80002c38:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002c3c:	000a0513          	mv	a0,s4
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	034080e7          	jalr	52(ra) # 80001c74 <_ZdlPv>
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	00009097          	auipc	ra,0x9
    80002c50:	bec080e7          	jalr	-1044(ra) # 8000b838 <_Unwind_Resume>

0000000080002c54 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002c54:	fe010113          	addi	sp,sp,-32
    80002c58:	00113c23          	sd	ra,24(sp)
    80002c5c:	00813823          	sd	s0,16(sp)
    80002c60:	00913423          	sd	s1,8(sp)
    80002c64:	01213023          	sd	s2,0(sp)
    80002c68:	02010413          	addi	s0,sp,32
    80002c6c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002c70:	00100793          	li	a5,1
    80002c74:	02a7f863          	bgeu	a5,a0,80002ca4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002c78:	00a00793          	li	a5,10
    80002c7c:	02f577b3          	remu	a5,a0,a5
    80002c80:	02078e63          	beqz	a5,80002cbc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002c84:	fff48513          	addi	a0,s1,-1
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	fcc080e7          	jalr	-52(ra) # 80002c54 <_ZL9fibonaccim>
    80002c90:	00050913          	mv	s2,a0
    80002c94:	ffe48513          	addi	a0,s1,-2
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	fbc080e7          	jalr	-68(ra) # 80002c54 <_ZL9fibonaccim>
    80002ca0:	00a90533          	add	a0,s2,a0
}
    80002ca4:	01813083          	ld	ra,24(sp)
    80002ca8:	01013403          	ld	s0,16(sp)
    80002cac:	00813483          	ld	s1,8(sp)
    80002cb0:	00013903          	ld	s2,0(sp)
    80002cb4:	02010113          	addi	sp,sp,32
    80002cb8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002cbc:	ffffe097          	auipc	ra,0xffffe
    80002cc0:	5ec080e7          	jalr	1516(ra) # 800012a8 <_Z15thread_dispatchv>
    80002cc4:	fc1ff06f          	j	80002c84 <_ZL9fibonaccim+0x30>

0000000080002cc8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002cc8:	fe010113          	addi	sp,sp,-32
    80002ccc:	00113c23          	sd	ra,24(sp)
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	01213023          	sd	s2,0(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002ce0:	00000913          	li	s2,0
    80002ce4:	0380006f          	j	80002d1c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ce8:	ffffe097          	auipc	ra,0xffffe
    80002cec:	5c0080e7          	jalr	1472(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002cf0:	00148493          	addi	s1,s1,1
    80002cf4:	000027b7          	lui	a5,0x2
    80002cf8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cfc:	0097ee63          	bltu	a5,s1,80002d18 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d00:	00000713          	li	a4,0
    80002d04:	000077b7          	lui	a5,0x7
    80002d08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d0c:	fce7eee3          	bltu	a5,a4,80002ce8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002d10:	00170713          	addi	a4,a4,1
    80002d14:	ff1ff06f          	j	80002d04 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d18:	00190913          	addi	s2,s2,1
    80002d1c:	00900793          	li	a5,9
    80002d20:	0527e063          	bltu	a5,s2,80002d60 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d24:	00005517          	auipc	a0,0x5
    80002d28:	49450513          	addi	a0,a0,1172 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002d2c:	00002097          	auipc	ra,0x2
    80002d30:	eac080e7          	jalr	-340(ra) # 80004bd8 <_Z11printStringPKc>
    80002d34:	00000613          	li	a2,0
    80002d38:	00a00593          	li	a1,10
    80002d3c:	0009051b          	sext.w	a0,s2
    80002d40:	00002097          	auipc	ra,0x2
    80002d44:	048080e7          	jalr	72(ra) # 80004d88 <_Z8printIntiii>
    80002d48:	00005517          	auipc	a0,0x5
    80002d4c:	70050513          	addi	a0,a0,1792 # 80008448 <CONSOLE_STATUS+0x438>
    80002d50:	00002097          	auipc	ra,0x2
    80002d54:	e88080e7          	jalr	-376(ra) # 80004bd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d58:	00000493          	li	s1,0
    80002d5c:	f99ff06f          	j	80002cf4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002d60:	00005517          	auipc	a0,0x5
    80002d64:	46050513          	addi	a0,a0,1120 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80002d68:	00002097          	auipc	ra,0x2
    80002d6c:	e70080e7          	jalr	-400(ra) # 80004bd8 <_Z11printStringPKc>
    finishedA = true;
    80002d70:	00100793          	li	a5,1
    80002d74:	00008717          	auipc	a4,0x8
    80002d78:	9af70a23          	sb	a5,-1612(a4) # 8000a728 <_ZL9finishedA>
}
    80002d7c:	01813083          	ld	ra,24(sp)
    80002d80:	01013403          	ld	s0,16(sp)
    80002d84:	00813483          	ld	s1,8(sp)
    80002d88:	00013903          	ld	s2,0(sp)
    80002d8c:	02010113          	addi	sp,sp,32
    80002d90:	00008067          	ret

0000000080002d94 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002d94:	fe010113          	addi	sp,sp,-32
    80002d98:	00113c23          	sd	ra,24(sp)
    80002d9c:	00813823          	sd	s0,16(sp)
    80002da0:	00913423          	sd	s1,8(sp)
    80002da4:	01213023          	sd	s2,0(sp)
    80002da8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002dac:	00000913          	li	s2,0
    80002db0:	0380006f          	j	80002de8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002db4:	ffffe097          	auipc	ra,0xffffe
    80002db8:	4f4080e7          	jalr	1268(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002dbc:	00148493          	addi	s1,s1,1
    80002dc0:	000027b7          	lui	a5,0x2
    80002dc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002dc8:	0097ee63          	bltu	a5,s1,80002de4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002dcc:	00000713          	li	a4,0
    80002dd0:	000077b7          	lui	a5,0x7
    80002dd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002dd8:	fce7eee3          	bltu	a5,a4,80002db4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002ddc:	00170713          	addi	a4,a4,1
    80002de0:	ff1ff06f          	j	80002dd0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002de4:	00190913          	addi	s2,s2,1
    80002de8:	00f00793          	li	a5,15
    80002dec:	0527e063          	bltu	a5,s2,80002e2c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002df0:	00005517          	auipc	a0,0x5
    80002df4:	3e050513          	addi	a0,a0,992 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	de0080e7          	jalr	-544(ra) # 80004bd8 <_Z11printStringPKc>
    80002e00:	00000613          	li	a2,0
    80002e04:	00a00593          	li	a1,10
    80002e08:	0009051b          	sext.w	a0,s2
    80002e0c:	00002097          	auipc	ra,0x2
    80002e10:	f7c080e7          	jalr	-132(ra) # 80004d88 <_Z8printIntiii>
    80002e14:	00005517          	auipc	a0,0x5
    80002e18:	63450513          	addi	a0,a0,1588 # 80008448 <CONSOLE_STATUS+0x438>
    80002e1c:	00002097          	auipc	ra,0x2
    80002e20:	dbc080e7          	jalr	-580(ra) # 80004bd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e24:	00000493          	li	s1,0
    80002e28:	f99ff06f          	j	80002dc0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002e2c:	00005517          	auipc	a0,0x5
    80002e30:	3ac50513          	addi	a0,a0,940 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80002e34:	00002097          	auipc	ra,0x2
    80002e38:	da4080e7          	jalr	-604(ra) # 80004bd8 <_Z11printStringPKc>
    finishedB = true;
    80002e3c:	00100793          	li	a5,1
    80002e40:	00008717          	auipc	a4,0x8
    80002e44:	8ef704a3          	sb	a5,-1815(a4) # 8000a729 <_ZL9finishedB>
    thread_dispatch();
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	460080e7          	jalr	1120(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002e50:	01813083          	ld	ra,24(sp)
    80002e54:	01013403          	ld	s0,16(sp)
    80002e58:	00813483          	ld	s1,8(sp)
    80002e5c:	00013903          	ld	s2,0(sp)
    80002e60:	02010113          	addi	sp,sp,32
    80002e64:	00008067          	ret

0000000080002e68 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002e68:	fe010113          	addi	sp,sp,-32
    80002e6c:	00113c23          	sd	ra,24(sp)
    80002e70:	00813823          	sd	s0,16(sp)
    80002e74:	00913423          	sd	s1,8(sp)
    80002e78:	01213023          	sd	s2,0(sp)
    80002e7c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002e80:	00000493          	li	s1,0
    80002e84:	0400006f          	j	80002ec4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002e88:	00005517          	auipc	a0,0x5
    80002e8c:	36050513          	addi	a0,a0,864 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002e90:	00002097          	auipc	ra,0x2
    80002e94:	d48080e7          	jalr	-696(ra) # 80004bd8 <_Z11printStringPKc>
    80002e98:	00000613          	li	a2,0
    80002e9c:	00a00593          	li	a1,10
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	00002097          	auipc	ra,0x2
    80002ea8:	ee4080e7          	jalr	-284(ra) # 80004d88 <_Z8printIntiii>
    80002eac:	00005517          	auipc	a0,0x5
    80002eb0:	59c50513          	addi	a0,a0,1436 # 80008448 <CONSOLE_STATUS+0x438>
    80002eb4:	00002097          	auipc	ra,0x2
    80002eb8:	d24080e7          	jalr	-732(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002ebc:	0014849b          	addiw	s1,s1,1
    80002ec0:	0ff4f493          	andi	s1,s1,255
    80002ec4:	00200793          	li	a5,2
    80002ec8:	fc97f0e3          	bgeu	a5,s1,80002e88 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002ecc:	00005517          	auipc	a0,0x5
    80002ed0:	32450513          	addi	a0,a0,804 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80002ed4:	00002097          	auipc	ra,0x2
    80002ed8:	d04080e7          	jalr	-764(ra) # 80004bd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002edc:	00700313          	li	t1,7
    thread_dispatch();
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	3c8080e7          	jalr	968(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ee8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002eec:	00005517          	auipc	a0,0x5
    80002ef0:	31450513          	addi	a0,a0,788 # 80008200 <CONSOLE_STATUS+0x1f0>
    80002ef4:	00002097          	auipc	ra,0x2
    80002ef8:	ce4080e7          	jalr	-796(ra) # 80004bd8 <_Z11printStringPKc>
    80002efc:	00000613          	li	a2,0
    80002f00:	00a00593          	li	a1,10
    80002f04:	0009051b          	sext.w	a0,s2
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	e80080e7          	jalr	-384(ra) # 80004d88 <_Z8printIntiii>
    80002f10:	00005517          	auipc	a0,0x5
    80002f14:	53850513          	addi	a0,a0,1336 # 80008448 <CONSOLE_STATUS+0x438>
    80002f18:	00002097          	auipc	ra,0x2
    80002f1c:	cc0080e7          	jalr	-832(ra) # 80004bd8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002f20:	00c00513          	li	a0,12
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	d30080e7          	jalr	-720(ra) # 80002c54 <_ZL9fibonaccim>
    80002f2c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002f30:	00005517          	auipc	a0,0x5
    80002f34:	2d850513          	addi	a0,a0,728 # 80008208 <CONSOLE_STATUS+0x1f8>
    80002f38:	00002097          	auipc	ra,0x2
    80002f3c:	ca0080e7          	jalr	-864(ra) # 80004bd8 <_Z11printStringPKc>
    80002f40:	00000613          	li	a2,0
    80002f44:	00a00593          	li	a1,10
    80002f48:	0009051b          	sext.w	a0,s2
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	e3c080e7          	jalr	-452(ra) # 80004d88 <_Z8printIntiii>
    80002f54:	00005517          	auipc	a0,0x5
    80002f58:	4f450513          	addi	a0,a0,1268 # 80008448 <CONSOLE_STATUS+0x438>
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	c7c080e7          	jalr	-900(ra) # 80004bd8 <_Z11printStringPKc>
    80002f64:	0400006f          	j	80002fa4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002f68:	00005517          	auipc	a0,0x5
    80002f6c:	28050513          	addi	a0,a0,640 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002f70:	00002097          	auipc	ra,0x2
    80002f74:	c68080e7          	jalr	-920(ra) # 80004bd8 <_Z11printStringPKc>
    80002f78:	00000613          	li	a2,0
    80002f7c:	00a00593          	li	a1,10
    80002f80:	00048513          	mv	a0,s1
    80002f84:	00002097          	auipc	ra,0x2
    80002f88:	e04080e7          	jalr	-508(ra) # 80004d88 <_Z8printIntiii>
    80002f8c:	00005517          	auipc	a0,0x5
    80002f90:	4bc50513          	addi	a0,a0,1212 # 80008448 <CONSOLE_STATUS+0x438>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	c44080e7          	jalr	-956(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002f9c:	0014849b          	addiw	s1,s1,1
    80002fa0:	0ff4f493          	andi	s1,s1,255
    80002fa4:	00500793          	li	a5,5
    80002fa8:	fc97f0e3          	bgeu	a5,s1,80002f68 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80002fac:	00005517          	auipc	a0,0x5
    80002fb0:	26c50513          	addi	a0,a0,620 # 80008218 <CONSOLE_STATUS+0x208>
    80002fb4:	00002097          	auipc	ra,0x2
    80002fb8:	c24080e7          	jalr	-988(ra) # 80004bd8 <_Z11printStringPKc>
    finishedC = true;
    80002fbc:	00100793          	li	a5,1
    80002fc0:	00007717          	auipc	a4,0x7
    80002fc4:	76f70523          	sb	a5,1898(a4) # 8000a72a <_ZL9finishedC>
    thread_dispatch();
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	2e0080e7          	jalr	736(ra) # 800012a8 <_Z15thread_dispatchv>

}
    80002fd0:	01813083          	ld	ra,24(sp)
    80002fd4:	01013403          	ld	s0,16(sp)
    80002fd8:	00813483          	ld	s1,8(sp)
    80002fdc:	00013903          	ld	s2,0(sp)
    80002fe0:	02010113          	addi	sp,sp,32
    80002fe4:	00008067          	ret

0000000080002fe8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002fe8:	fe010113          	addi	sp,sp,-32
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	01213023          	sd	s2,0(sp)
    80002ffc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003000:	00a00493          	li	s1,10
    80003004:	0400006f          	j	80003044 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003008:	00005517          	auipc	a0,0x5
    8000300c:	22050513          	addi	a0,a0,544 # 80008228 <CONSOLE_STATUS+0x218>
    80003010:	00002097          	auipc	ra,0x2
    80003014:	bc8080e7          	jalr	-1080(ra) # 80004bd8 <_Z11printStringPKc>
    80003018:	00000613          	li	a2,0
    8000301c:	00a00593          	li	a1,10
    80003020:	00048513          	mv	a0,s1
    80003024:	00002097          	auipc	ra,0x2
    80003028:	d64080e7          	jalr	-668(ra) # 80004d88 <_Z8printIntiii>
    8000302c:	00005517          	auipc	a0,0x5
    80003030:	41c50513          	addi	a0,a0,1052 # 80008448 <CONSOLE_STATUS+0x438>
    80003034:	00002097          	auipc	ra,0x2
    80003038:	ba4080e7          	jalr	-1116(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000303c:	0014849b          	addiw	s1,s1,1
    80003040:	0ff4f493          	andi	s1,s1,255
    80003044:	00c00793          	li	a5,12
    80003048:	fc97f0e3          	bgeu	a5,s1,80003008 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000304c:	00005517          	auipc	a0,0x5
    80003050:	1e450513          	addi	a0,a0,484 # 80008230 <CONSOLE_STATUS+0x220>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	b84080e7          	jalr	-1148(ra) # 80004bd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000305c:	00500313          	li	t1,5
    thread_dispatch();
    80003060:	ffffe097          	auipc	ra,0xffffe
    80003064:	248080e7          	jalr	584(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003068:	01000513          	li	a0,16
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	be8080e7          	jalr	-1048(ra) # 80002c54 <_ZL9fibonaccim>
    80003074:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003078:	00005517          	auipc	a0,0x5
    8000307c:	1c850513          	addi	a0,a0,456 # 80008240 <CONSOLE_STATUS+0x230>
    80003080:	00002097          	auipc	ra,0x2
    80003084:	b58080e7          	jalr	-1192(ra) # 80004bd8 <_Z11printStringPKc>
    80003088:	00000613          	li	a2,0
    8000308c:	00a00593          	li	a1,10
    80003090:	0009051b          	sext.w	a0,s2
    80003094:	00002097          	auipc	ra,0x2
    80003098:	cf4080e7          	jalr	-780(ra) # 80004d88 <_Z8printIntiii>
    8000309c:	00005517          	auipc	a0,0x5
    800030a0:	3ac50513          	addi	a0,a0,940 # 80008448 <CONSOLE_STATUS+0x438>
    800030a4:	00002097          	auipc	ra,0x2
    800030a8:	b34080e7          	jalr	-1228(ra) # 80004bd8 <_Z11printStringPKc>
    800030ac:	0400006f          	j	800030ec <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800030b0:	00005517          	auipc	a0,0x5
    800030b4:	17850513          	addi	a0,a0,376 # 80008228 <CONSOLE_STATUS+0x218>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	b20080e7          	jalr	-1248(ra) # 80004bd8 <_Z11printStringPKc>
    800030c0:	00000613          	li	a2,0
    800030c4:	00a00593          	li	a1,10
    800030c8:	00048513          	mv	a0,s1
    800030cc:	00002097          	auipc	ra,0x2
    800030d0:	cbc080e7          	jalr	-836(ra) # 80004d88 <_Z8printIntiii>
    800030d4:	00005517          	auipc	a0,0x5
    800030d8:	37450513          	addi	a0,a0,884 # 80008448 <CONSOLE_STATUS+0x438>
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	afc080e7          	jalr	-1284(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800030e4:	0014849b          	addiw	s1,s1,1
    800030e8:	0ff4f493          	andi	s1,s1,255
    800030ec:	00f00793          	li	a5,15
    800030f0:	fc97f0e3          	bgeu	a5,s1,800030b0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800030f4:	00005517          	auipc	a0,0x5
    800030f8:	15c50513          	addi	a0,a0,348 # 80008250 <CONSOLE_STATUS+0x240>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	adc080e7          	jalr	-1316(ra) # 80004bd8 <_Z11printStringPKc>
    finishedD = true;
    80003104:	00100793          	li	a5,1
    80003108:	00007717          	auipc	a4,0x7
    8000310c:	62f701a3          	sb	a5,1571(a4) # 8000a72b <_ZL9finishedD>
    thread_dispatch();
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	198080e7          	jalr	408(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003118:	01813083          	ld	ra,24(sp)
    8000311c:	01013403          	ld	s0,16(sp)
    80003120:	00813483          	ld	s1,8(sp)
    80003124:	00013903          	ld	s2,0(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret

0000000080003130 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003130:	fc010113          	addi	sp,sp,-64
    80003134:	02113c23          	sd	ra,56(sp)
    80003138:	02813823          	sd	s0,48(sp)
    8000313c:	02913423          	sd	s1,40(sp)
    80003140:	03213023          	sd	s2,32(sp)
    80003144:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003148:	02000513          	li	a0,32
    8000314c:	fffff097          	auipc	ra,0xfffff
    80003150:	ad8080e7          	jalr	-1320(ra) # 80001c24 <_Znwm>
    80003154:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	d50080e7          	jalr	-688(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    80003160:	00007797          	auipc	a5,0x7
    80003164:	37078793          	addi	a5,a5,880 # 8000a4d0 <_ZTV7WorkerA+0x10>
    80003168:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000316c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003170:	00005517          	auipc	a0,0x5
    80003174:	0f050513          	addi	a0,a0,240 # 80008260 <CONSOLE_STATUS+0x250>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	a60080e7          	jalr	-1440(ra) # 80004bd8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003180:	02000513          	li	a0,32
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	aa0080e7          	jalr	-1376(ra) # 80001c24 <_Znwm>
    8000318c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	d18080e7          	jalr	-744(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    80003198:	00007797          	auipc	a5,0x7
    8000319c:	36078793          	addi	a5,a5,864 # 8000a4f8 <_ZTV7WorkerB+0x10>
    800031a0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800031a4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800031a8:	00005517          	auipc	a0,0x5
    800031ac:	0d050513          	addi	a0,a0,208 # 80008278 <CONSOLE_STATUS+0x268>
    800031b0:	00002097          	auipc	ra,0x2
    800031b4:	a28080e7          	jalr	-1496(ra) # 80004bd8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800031b8:	02000513          	li	a0,32
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	a68080e7          	jalr	-1432(ra) # 80001c24 <_Znwm>
    800031c4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	ce0080e7          	jalr	-800(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    800031d0:	00007797          	auipc	a5,0x7
    800031d4:	35078793          	addi	a5,a5,848 # 8000a520 <_ZTV7WorkerC+0x10>
    800031d8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800031dc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800031e0:	00005517          	auipc	a0,0x5
    800031e4:	0b050513          	addi	a0,a0,176 # 80008290 <CONSOLE_STATUS+0x280>
    800031e8:	00002097          	auipc	ra,0x2
    800031ec:	9f0080e7          	jalr	-1552(ra) # 80004bd8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800031f0:	02000513          	li	a0,32
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	a30080e7          	jalr	-1488(ra) # 80001c24 <_Znwm>
    800031fc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	ca8080e7          	jalr	-856(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    80003208:	00007797          	auipc	a5,0x7
    8000320c:	34078793          	addi	a5,a5,832 # 8000a548 <_ZTV7WorkerD+0x10>
    80003210:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003214:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003218:	00005517          	auipc	a0,0x5
    8000321c:	09050513          	addi	a0,a0,144 # 800082a8 <CONSOLE_STATUS+0x298>
    80003220:	00002097          	auipc	ra,0x2
    80003224:	9b8080e7          	jalr	-1608(ra) # 80004bd8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003228:	00000493          	li	s1,0
    8000322c:	00300793          	li	a5,3
    80003230:	0297c663          	blt	a5,s1,8000325c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003234:	00349793          	slli	a5,s1,0x3
    80003238:	fe040713          	addi	a4,s0,-32
    8000323c:	00f707b3          	add	a5,a4,a5
    80003240:	fe07b503          	ld	a0,-32(a5)
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	bd4080e7          	jalr	-1068(ra) # 80001e18 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000324c:	0014849b          	addiw	s1,s1,1
    80003250:	fddff06f          	j	8000322c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	c00080e7          	jalr	-1024(ra) # 80001e54 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000325c:	00007797          	auipc	a5,0x7
    80003260:	4cc7c783          	lbu	a5,1228(a5) # 8000a728 <_ZL9finishedA>
    80003264:	fe0788e3          	beqz	a5,80003254 <_Z20Threads_CPP_API_testv+0x124>
    80003268:	00007797          	auipc	a5,0x7
    8000326c:	4c17c783          	lbu	a5,1217(a5) # 8000a729 <_ZL9finishedB>
    80003270:	fe0782e3          	beqz	a5,80003254 <_Z20Threads_CPP_API_testv+0x124>
    80003274:	00007797          	auipc	a5,0x7
    80003278:	4b67c783          	lbu	a5,1206(a5) # 8000a72a <_ZL9finishedC>
    8000327c:	fc078ce3          	beqz	a5,80003254 <_Z20Threads_CPP_API_testv+0x124>
    80003280:	00007797          	auipc	a5,0x7
    80003284:	4ab7c783          	lbu	a5,1195(a5) # 8000a72b <_ZL9finishedD>
    80003288:	fc0786e3          	beqz	a5,80003254 <_Z20Threads_CPP_API_testv+0x124>
    8000328c:	fc040493          	addi	s1,s0,-64
    80003290:	0080006f          	j	80003298 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003294:	00848493          	addi	s1,s1,8
    80003298:	fe040793          	addi	a5,s0,-32
    8000329c:	08f48663          	beq	s1,a5,80003328 <_Z20Threads_CPP_API_testv+0x1f8>
    800032a0:	0004b503          	ld	a0,0(s1)
    800032a4:	fe0508e3          	beqz	a0,80003294 <_Z20Threads_CPP_API_testv+0x164>
    800032a8:	00053783          	ld	a5,0(a0)
    800032ac:	0087b783          	ld	a5,8(a5)
    800032b0:	000780e7          	jalr	a5
    800032b4:	fe1ff06f          	j	80003294 <_Z20Threads_CPP_API_testv+0x164>
    800032b8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800032bc:	00048513          	mv	a0,s1
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	9b4080e7          	jalr	-1612(ra) # 80001c74 <_ZdlPv>
    800032c8:	00090513          	mv	a0,s2
    800032cc:	00008097          	auipc	ra,0x8
    800032d0:	56c080e7          	jalr	1388(ra) # 8000b838 <_Unwind_Resume>
    800032d4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800032d8:	00048513          	mv	a0,s1
    800032dc:	fffff097          	auipc	ra,0xfffff
    800032e0:	998080e7          	jalr	-1640(ra) # 80001c74 <_ZdlPv>
    800032e4:	00090513          	mv	a0,s2
    800032e8:	00008097          	auipc	ra,0x8
    800032ec:	550080e7          	jalr	1360(ra) # 8000b838 <_Unwind_Resume>
    800032f0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800032f4:	00048513          	mv	a0,s1
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	97c080e7          	jalr	-1668(ra) # 80001c74 <_ZdlPv>
    80003300:	00090513          	mv	a0,s2
    80003304:	00008097          	auipc	ra,0x8
    80003308:	534080e7          	jalr	1332(ra) # 8000b838 <_Unwind_Resume>
    8000330c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003310:	00048513          	mv	a0,s1
    80003314:	fffff097          	auipc	ra,0xfffff
    80003318:	960080e7          	jalr	-1696(ra) # 80001c74 <_ZdlPv>
    8000331c:	00090513          	mv	a0,s2
    80003320:	00008097          	auipc	ra,0x8
    80003324:	518080e7          	jalr	1304(ra) # 8000b838 <_Unwind_Resume>
}
    80003328:	03813083          	ld	ra,56(sp)
    8000332c:	03013403          	ld	s0,48(sp)
    80003330:	02813483          	ld	s1,40(sp)
    80003334:	02013903          	ld	s2,32(sp)
    80003338:	04010113          	addi	sp,sp,64
    8000333c:	00008067          	ret

0000000080003340 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00113423          	sd	ra,8(sp)
    80003348:	00813023          	sd	s0,0(sp)
    8000334c:	01010413          	addi	s0,sp,16
    80003350:	00007797          	auipc	a5,0x7
    80003354:	18078793          	addi	a5,a5,384 # 8000a4d0 <_ZTV7WorkerA+0x10>
    80003358:	00f53023          	sd	a5,0(a0)
    8000335c:	fffff097          	auipc	ra,0xfffff
    80003360:	994080e7          	jalr	-1644(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003364:	00813083          	ld	ra,8(sp)
    80003368:	00013403          	ld	s0,0(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN7WorkerAD0Ev>:
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	02010413          	addi	s0,sp,32
    80003388:	00050493          	mv	s1,a0
    8000338c:	00007797          	auipc	a5,0x7
    80003390:	14478793          	addi	a5,a5,324 # 8000a4d0 <_ZTV7WorkerA+0x10>
    80003394:	00f53023          	sd	a5,0(a0)
    80003398:	fffff097          	auipc	ra,0xfffff
    8000339c:	958080e7          	jalr	-1704(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    800033a0:	00048513          	mv	a0,s1
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	8d0080e7          	jalr	-1840(ra) # 80001c74 <_ZdlPv>
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	02010113          	addi	sp,sp,32
    800033bc:	00008067          	ret

00000000800033c0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00113423          	sd	ra,8(sp)
    800033c8:	00813023          	sd	s0,0(sp)
    800033cc:	01010413          	addi	s0,sp,16
    800033d0:	00007797          	auipc	a5,0x7
    800033d4:	12878793          	addi	a5,a5,296 # 8000a4f8 <_ZTV7WorkerB+0x10>
    800033d8:	00f53023          	sd	a5,0(a0)
    800033dc:	fffff097          	auipc	ra,0xfffff
    800033e0:	914080e7          	jalr	-1772(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN7WorkerBD0Ev>:
    800033f4:	fe010113          	addi	sp,sp,-32
    800033f8:	00113c23          	sd	ra,24(sp)
    800033fc:	00813823          	sd	s0,16(sp)
    80003400:	00913423          	sd	s1,8(sp)
    80003404:	02010413          	addi	s0,sp,32
    80003408:	00050493          	mv	s1,a0
    8000340c:	00007797          	auipc	a5,0x7
    80003410:	0ec78793          	addi	a5,a5,236 # 8000a4f8 <_ZTV7WorkerB+0x10>
    80003414:	00f53023          	sd	a5,0(a0)
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	8d8080e7          	jalr	-1832(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003420:	00048513          	mv	a0,s1
    80003424:	fffff097          	auipc	ra,0xfffff
    80003428:	850080e7          	jalr	-1968(ra) # 80001c74 <_ZdlPv>
    8000342c:	01813083          	ld	ra,24(sp)
    80003430:	01013403          	ld	s0,16(sp)
    80003434:	00813483          	ld	s1,8(sp)
    80003438:	02010113          	addi	sp,sp,32
    8000343c:	00008067          	ret

0000000080003440 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003440:	ff010113          	addi	sp,sp,-16
    80003444:	00113423          	sd	ra,8(sp)
    80003448:	00813023          	sd	s0,0(sp)
    8000344c:	01010413          	addi	s0,sp,16
    80003450:	00007797          	auipc	a5,0x7
    80003454:	0d078793          	addi	a5,a5,208 # 8000a520 <_ZTV7WorkerC+0x10>
    80003458:	00f53023          	sd	a5,0(a0)
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	894080e7          	jalr	-1900(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003464:	00813083          	ld	ra,8(sp)
    80003468:	00013403          	ld	s0,0(sp)
    8000346c:	01010113          	addi	sp,sp,16
    80003470:	00008067          	ret

0000000080003474 <_ZN7WorkerCD0Ev>:
    80003474:	fe010113          	addi	sp,sp,-32
    80003478:	00113c23          	sd	ra,24(sp)
    8000347c:	00813823          	sd	s0,16(sp)
    80003480:	00913423          	sd	s1,8(sp)
    80003484:	02010413          	addi	s0,sp,32
    80003488:	00050493          	mv	s1,a0
    8000348c:	00007797          	auipc	a5,0x7
    80003490:	09478793          	addi	a5,a5,148 # 8000a520 <_ZTV7WorkerC+0x10>
    80003494:	00f53023          	sd	a5,0(a0)
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	858080e7          	jalr	-1960(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    800034a0:	00048513          	mv	a0,s1
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	7d0080e7          	jalr	2000(ra) # 80001c74 <_ZdlPv>
    800034ac:	01813083          	ld	ra,24(sp)
    800034b0:	01013403          	ld	s0,16(sp)
    800034b4:	00813483          	ld	s1,8(sp)
    800034b8:	02010113          	addi	sp,sp,32
    800034bc:	00008067          	ret

00000000800034c0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00113423          	sd	ra,8(sp)
    800034c8:	00813023          	sd	s0,0(sp)
    800034cc:	01010413          	addi	s0,sp,16
    800034d0:	00007797          	auipc	a5,0x7
    800034d4:	07878793          	addi	a5,a5,120 # 8000a548 <_ZTV7WorkerD+0x10>
    800034d8:	00f53023          	sd	a5,0(a0)
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	814080e7          	jalr	-2028(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    800034e4:	00813083          	ld	ra,8(sp)
    800034e8:	00013403          	ld	s0,0(sp)
    800034ec:	01010113          	addi	sp,sp,16
    800034f0:	00008067          	ret

00000000800034f4 <_ZN7WorkerDD0Ev>:
    800034f4:	fe010113          	addi	sp,sp,-32
    800034f8:	00113c23          	sd	ra,24(sp)
    800034fc:	00813823          	sd	s0,16(sp)
    80003500:	00913423          	sd	s1,8(sp)
    80003504:	02010413          	addi	s0,sp,32
    80003508:	00050493          	mv	s1,a0
    8000350c:	00007797          	auipc	a5,0x7
    80003510:	03c78793          	addi	a5,a5,60 # 8000a548 <_ZTV7WorkerD+0x10>
    80003514:	00f53023          	sd	a5,0(a0)
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	7d8080e7          	jalr	2008(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003520:	00048513          	mv	a0,s1
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	750080e7          	jalr	1872(ra) # 80001c74 <_ZdlPv>
    8000352c:	01813083          	ld	ra,24(sp)
    80003530:	01013403          	ld	s0,16(sp)
    80003534:	00813483          	ld	s1,8(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret

0000000080003540 <_ZN7WorkerA3runEv>:
    void run() override {
    80003540:	ff010113          	addi	sp,sp,-16
    80003544:	00113423          	sd	ra,8(sp)
    80003548:	00813023          	sd	s0,0(sp)
    8000354c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003550:	00000593          	li	a1,0
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	774080e7          	jalr	1908(ra) # 80002cc8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000355c:	00813083          	ld	ra,8(sp)
    80003560:	00013403          	ld	s0,0(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret

000000008000356c <_ZN7WorkerB3runEv>:
    void run() override {
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00113423          	sd	ra,8(sp)
    80003574:	00813023          	sd	s0,0(sp)
    80003578:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000357c:	00000593          	li	a1,0
    80003580:	00000097          	auipc	ra,0x0
    80003584:	814080e7          	jalr	-2028(ra) # 80002d94 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003588:	00813083          	ld	ra,8(sp)
    8000358c:	00013403          	ld	s0,0(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <_ZN7WorkerC3runEv>:
    void run() override {
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00113423          	sd	ra,8(sp)
    800035a0:	00813023          	sd	s0,0(sp)
    800035a4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800035a8:	00000593          	li	a1,0
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	8bc080e7          	jalr	-1860(ra) # 80002e68 <_ZN7WorkerC11workerBodyCEPv>
    }
    800035b4:	00813083          	ld	ra,8(sp)
    800035b8:	00013403          	ld	s0,0(sp)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <_ZN7WorkerD3runEv>:
    void run() override {
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	00813023          	sd	s0,0(sp)
    800035d0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800035d4:	00000593          	li	a1,0
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	a10080e7          	jalr	-1520(ra) # 80002fe8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800035e0:	00813083          	ld	ra,8(sp)
    800035e4:	00013403          	ld	s0,0(sp)
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00008067          	ret

00000000800035f0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800035f0:	f8010113          	addi	sp,sp,-128
    800035f4:	06113c23          	sd	ra,120(sp)
    800035f8:	06813823          	sd	s0,112(sp)
    800035fc:	06913423          	sd	s1,104(sp)
    80003600:	07213023          	sd	s2,96(sp)
    80003604:	05313c23          	sd	s3,88(sp)
    80003608:	05413823          	sd	s4,80(sp)
    8000360c:	05513423          	sd	s5,72(sp)
    80003610:	05613023          	sd	s6,64(sp)
    80003614:	03713c23          	sd	s7,56(sp)
    80003618:	03813823          	sd	s8,48(sp)
    8000361c:	03913423          	sd	s9,40(sp)
    80003620:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003624:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003628:	00005517          	auipc	a0,0x5
    8000362c:	aa850513          	addi	a0,a0,-1368 # 800080d0 <CONSOLE_STATUS+0xc0>
    80003630:	00001097          	auipc	ra,0x1
    80003634:	5a8080e7          	jalr	1448(ra) # 80004bd8 <_Z11printStringPKc>
    getString(input, 30);
    80003638:	01e00593          	li	a1,30
    8000363c:	f8040493          	addi	s1,s0,-128
    80003640:	00048513          	mv	a0,s1
    80003644:	00001097          	auipc	ra,0x1
    80003648:	61c080e7          	jalr	1564(ra) # 80004c60 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000364c:	00048513          	mv	a0,s1
    80003650:	00001097          	auipc	ra,0x1
    80003654:	6e8080e7          	jalr	1768(ra) # 80004d38 <_Z11stringToIntPKc>
    80003658:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000365c:	00005517          	auipc	a0,0x5
    80003660:	a9450513          	addi	a0,a0,-1388 # 800080f0 <CONSOLE_STATUS+0xe0>
    80003664:	00001097          	auipc	ra,0x1
    80003668:	574080e7          	jalr	1396(ra) # 80004bd8 <_Z11printStringPKc>
    getString(input, 30);
    8000366c:	01e00593          	li	a1,30
    80003670:	00048513          	mv	a0,s1
    80003674:	00001097          	auipc	ra,0x1
    80003678:	5ec080e7          	jalr	1516(ra) # 80004c60 <_Z9getStringPci>
    n = stringToInt(input);
    8000367c:	00048513          	mv	a0,s1
    80003680:	00001097          	auipc	ra,0x1
    80003684:	6b8080e7          	jalr	1720(ra) # 80004d38 <_Z11stringToIntPKc>
    80003688:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000368c:	00005517          	auipc	a0,0x5
    80003690:	a8450513          	addi	a0,a0,-1404 # 80008110 <CONSOLE_STATUS+0x100>
    80003694:	00001097          	auipc	ra,0x1
    80003698:	544080e7          	jalr	1348(ra) # 80004bd8 <_Z11printStringPKc>
    printInt(threadNum);
    8000369c:	00000613          	li	a2,0
    800036a0:	00a00593          	li	a1,10
    800036a4:	00098513          	mv	a0,s3
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	6e0080e7          	jalr	1760(ra) # 80004d88 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800036b0:	00005517          	auipc	a0,0x5
    800036b4:	a7850513          	addi	a0,a0,-1416 # 80008128 <CONSOLE_STATUS+0x118>
    800036b8:	00001097          	auipc	ra,0x1
    800036bc:	520080e7          	jalr	1312(ra) # 80004bd8 <_Z11printStringPKc>
    printInt(n);
    800036c0:	00000613          	li	a2,0
    800036c4:	00a00593          	li	a1,10
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00001097          	auipc	ra,0x1
    800036d0:	6bc080e7          	jalr	1724(ra) # 80004d88 <_Z8printIntiii>
    printString(".\n");
    800036d4:	00005517          	auipc	a0,0x5
    800036d8:	a6c50513          	addi	a0,a0,-1428 # 80008140 <CONSOLE_STATUS+0x130>
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	4fc080e7          	jalr	1276(ra) # 80004bd8 <_Z11printStringPKc>
    if (threadNum > n) {
    800036e4:	0334c463          	blt	s1,s3,8000370c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800036e8:	03305c63          	blez	s3,80003720 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800036ec:	03800513          	li	a0,56
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	534080e7          	jalr	1332(ra) # 80001c24 <_Znwm>
    800036f8:	00050a93          	mv	s5,a0
    800036fc:	00048593          	mv	a1,s1
    80003700:	00001097          	auipc	ra,0x1
    80003704:	7a8080e7          	jalr	1960(ra) # 80004ea8 <_ZN9BufferCPPC1Ei>
    80003708:	0300006f          	j	80003738 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000370c:	00005517          	auipc	a0,0x5
    80003710:	a3c50513          	addi	a0,a0,-1476 # 80008148 <CONSOLE_STATUS+0x138>
    80003714:	00001097          	auipc	ra,0x1
    80003718:	4c4080e7          	jalr	1220(ra) # 80004bd8 <_Z11printStringPKc>
        return;
    8000371c:	0140006f          	j	80003730 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003720:	00005517          	auipc	a0,0x5
    80003724:	a6850513          	addi	a0,a0,-1432 # 80008188 <CONSOLE_STATUS+0x178>
    80003728:	00001097          	auipc	ra,0x1
    8000372c:	4b0080e7          	jalr	1200(ra) # 80004bd8 <_Z11printStringPKc>
        return;
    80003730:	000c0113          	mv	sp,s8
    80003734:	2140006f          	j	80003948 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003738:	01000513          	li	a0,16
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	4e8080e7          	jalr	1256(ra) # 80001c24 <_Znwm>
    80003744:	00050913          	mv	s2,a0
    80003748:	00000593          	li	a1,0
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	790080e7          	jalr	1936(ra) # 80001edc <_ZN9SemaphoreC1Ej>
    80003754:	00007797          	auipc	a5,0x7
    80003758:	ff27b223          	sd	s2,-28(a5) # 8000a738 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000375c:	00399793          	slli	a5,s3,0x3
    80003760:	00f78793          	addi	a5,a5,15
    80003764:	ff07f793          	andi	a5,a5,-16
    80003768:	40f10133          	sub	sp,sp,a5
    8000376c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003770:	0019871b          	addiw	a4,s3,1
    80003774:	00171793          	slli	a5,a4,0x1
    80003778:	00e787b3          	add	a5,a5,a4
    8000377c:	00379793          	slli	a5,a5,0x3
    80003780:	00f78793          	addi	a5,a5,15
    80003784:	ff07f793          	andi	a5,a5,-16
    80003788:	40f10133          	sub	sp,sp,a5
    8000378c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003790:	00199493          	slli	s1,s3,0x1
    80003794:	013484b3          	add	s1,s1,s3
    80003798:	00349493          	slli	s1,s1,0x3
    8000379c:	009b04b3          	add	s1,s6,s1
    800037a0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800037a4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800037a8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800037ac:	02800513          	li	a0,40
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	474080e7          	jalr	1140(ra) # 80001c24 <_Znwm>
    800037b8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	6ec080e7          	jalr	1772(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    800037c4:	00007797          	auipc	a5,0x7
    800037c8:	dfc78793          	addi	a5,a5,-516 # 8000a5c0 <_ZTV8Consumer+0x10>
    800037cc:	00fbb023          	sd	a5,0(s7)
    800037d0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800037d4:	000b8513          	mv	a0,s7
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	640080e7          	jalr	1600(ra) # 80001e18 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800037e0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800037e4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800037e8:	00007797          	auipc	a5,0x7
    800037ec:	f507b783          	ld	a5,-176(a5) # 8000a738 <_ZL10waitForAll>
    800037f0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800037f4:	02800513          	li	a0,40
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	42c080e7          	jalr	1068(ra) # 80001c24 <_Znwm>
    80003800:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	6a4080e7          	jalr	1700(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    8000380c:	00007797          	auipc	a5,0x7
    80003810:	d6478793          	addi	a5,a5,-668 # 8000a570 <_ZTV16ProducerKeyborad+0x10>
    80003814:	00f4b023          	sd	a5,0(s1)
    80003818:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000381c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003820:	00048513          	mv	a0,s1
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	5f4080e7          	jalr	1524(ra) # 80001e18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000382c:	00100913          	li	s2,1
    80003830:	0300006f          	j	80003860 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003834:	00007797          	auipc	a5,0x7
    80003838:	d6478793          	addi	a5,a5,-668 # 8000a598 <_ZTV8Producer+0x10>
    8000383c:	00fcb023          	sd	a5,0(s9)
    80003840:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003844:	00391793          	slli	a5,s2,0x3
    80003848:	00fa07b3          	add	a5,s4,a5
    8000384c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003850:	000c8513          	mv	a0,s9
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	5c4080e7          	jalr	1476(ra) # 80001e18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000385c:	0019091b          	addiw	s2,s2,1
    80003860:	05395263          	bge	s2,s3,800038a4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003864:	00191493          	slli	s1,s2,0x1
    80003868:	012484b3          	add	s1,s1,s2
    8000386c:	00349493          	slli	s1,s1,0x3
    80003870:	009b04b3          	add	s1,s6,s1
    80003874:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003878:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000387c:	00007797          	auipc	a5,0x7
    80003880:	ebc7b783          	ld	a5,-324(a5) # 8000a738 <_ZL10waitForAll>
    80003884:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003888:	02800513          	li	a0,40
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	398080e7          	jalr	920(ra) # 80001c24 <_Znwm>
    80003894:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	610080e7          	jalr	1552(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    800038a0:	f95ff06f          	j	80003834 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	5b0080e7          	jalr	1456(ra) # 80001e54 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800038ac:	00000493          	li	s1,0
    800038b0:	0099ce63          	blt	s3,s1,800038cc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800038b4:	00007517          	auipc	a0,0x7
    800038b8:	e8453503          	ld	a0,-380(a0) # 8000a738 <_ZL10waitForAll>
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	658080e7          	jalr	1624(ra) # 80001f14 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800038c4:	0014849b          	addiw	s1,s1,1
    800038c8:	fe9ff06f          	j	800038b0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800038cc:	00007517          	auipc	a0,0x7
    800038d0:	e6c53503          	ld	a0,-404(a0) # 8000a738 <_ZL10waitForAll>
    800038d4:	00050863          	beqz	a0,800038e4 <_Z20testConsumerProducerv+0x2f4>
    800038d8:	00053783          	ld	a5,0(a0)
    800038dc:	0087b783          	ld	a5,8(a5)
    800038e0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800038e4:	00000493          	li	s1,0
    800038e8:	0080006f          	j	800038f0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800038ec:	0014849b          	addiw	s1,s1,1
    800038f0:	0334d263          	bge	s1,s3,80003914 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800038f4:	00349793          	slli	a5,s1,0x3
    800038f8:	00fa07b3          	add	a5,s4,a5
    800038fc:	0007b503          	ld	a0,0(a5)
    80003900:	fe0506e3          	beqz	a0,800038ec <_Z20testConsumerProducerv+0x2fc>
    80003904:	00053783          	ld	a5,0(a0)
    80003908:	0087b783          	ld	a5,8(a5)
    8000390c:	000780e7          	jalr	a5
    80003910:	fddff06f          	j	800038ec <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003914:	000b8a63          	beqz	s7,80003928 <_Z20testConsumerProducerv+0x338>
    80003918:	000bb783          	ld	a5,0(s7)
    8000391c:	0087b783          	ld	a5,8(a5)
    80003920:	000b8513          	mv	a0,s7
    80003924:	000780e7          	jalr	a5
    delete buffer;
    80003928:	000a8e63          	beqz	s5,80003944 <_Z20testConsumerProducerv+0x354>
    8000392c:	000a8513          	mv	a0,s5
    80003930:	00002097          	auipc	ra,0x2
    80003934:	870080e7          	jalr	-1936(ra) # 800051a0 <_ZN9BufferCPPD1Ev>
    80003938:	000a8513          	mv	a0,s5
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	338080e7          	jalr	824(ra) # 80001c74 <_ZdlPv>
    80003944:	000c0113          	mv	sp,s8
}
    80003948:	f8040113          	addi	sp,s0,-128
    8000394c:	07813083          	ld	ra,120(sp)
    80003950:	07013403          	ld	s0,112(sp)
    80003954:	06813483          	ld	s1,104(sp)
    80003958:	06013903          	ld	s2,96(sp)
    8000395c:	05813983          	ld	s3,88(sp)
    80003960:	05013a03          	ld	s4,80(sp)
    80003964:	04813a83          	ld	s5,72(sp)
    80003968:	04013b03          	ld	s6,64(sp)
    8000396c:	03813b83          	ld	s7,56(sp)
    80003970:	03013c03          	ld	s8,48(sp)
    80003974:	02813c83          	ld	s9,40(sp)
    80003978:	08010113          	addi	sp,sp,128
    8000397c:	00008067          	ret
    80003980:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003984:	000a8513          	mv	a0,s5
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	2ec080e7          	jalr	748(ra) # 80001c74 <_ZdlPv>
    80003990:	00048513          	mv	a0,s1
    80003994:	00008097          	auipc	ra,0x8
    80003998:	ea4080e7          	jalr	-348(ra) # 8000b838 <_Unwind_Resume>
    8000399c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800039a0:	00090513          	mv	a0,s2
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	2d0080e7          	jalr	720(ra) # 80001c74 <_ZdlPv>
    800039ac:	00048513          	mv	a0,s1
    800039b0:	00008097          	auipc	ra,0x8
    800039b4:	e88080e7          	jalr	-376(ra) # 8000b838 <_Unwind_Resume>
    800039b8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800039bc:	000b8513          	mv	a0,s7
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	2b4080e7          	jalr	692(ra) # 80001c74 <_ZdlPv>
    800039c8:	00048513          	mv	a0,s1
    800039cc:	00008097          	auipc	ra,0x8
    800039d0:	e6c080e7          	jalr	-404(ra) # 8000b838 <_Unwind_Resume>
    800039d4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039d8:	00048513          	mv	a0,s1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	298080e7          	jalr	664(ra) # 80001c74 <_ZdlPv>
    800039e4:	00090513          	mv	a0,s2
    800039e8:	00008097          	auipc	ra,0x8
    800039ec:	e50080e7          	jalr	-432(ra) # 8000b838 <_Unwind_Resume>
    800039f0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800039f4:	000c8513          	mv	a0,s9
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	27c080e7          	jalr	636(ra) # 80001c74 <_ZdlPv>
    80003a00:	00048513          	mv	a0,s1
    80003a04:	00008097          	auipc	ra,0x8
    80003a08:	e34080e7          	jalr	-460(ra) # 8000b838 <_Unwind_Resume>

0000000080003a0c <_ZN8Consumer3runEv>:
    void run() override {
    80003a0c:	fd010113          	addi	sp,sp,-48
    80003a10:	02113423          	sd	ra,40(sp)
    80003a14:	02813023          	sd	s0,32(sp)
    80003a18:	00913c23          	sd	s1,24(sp)
    80003a1c:	01213823          	sd	s2,16(sp)
    80003a20:	01313423          	sd	s3,8(sp)
    80003a24:	03010413          	addi	s0,sp,48
    80003a28:	00050913          	mv	s2,a0
        int i = 0;
    80003a2c:	00000993          	li	s3,0
    80003a30:	0100006f          	j	80003a40 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003a34:	00a00513          	li	a0,10
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	5e8080e7          	jalr	1512(ra) # 80002020 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003a40:	00007797          	auipc	a5,0x7
    80003a44:	cf07a783          	lw	a5,-784(a5) # 8000a730 <_ZL9threadEnd>
    80003a48:	04079a63          	bnez	a5,80003a9c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003a4c:	02093783          	ld	a5,32(s2)
    80003a50:	0087b503          	ld	a0,8(a5)
    80003a54:	00001097          	auipc	ra,0x1
    80003a58:	638080e7          	jalr	1592(ra) # 8000508c <_ZN9BufferCPP3getEv>
            i++;
    80003a5c:	0019849b          	addiw	s1,s3,1
    80003a60:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003a64:	0ff57513          	andi	a0,a0,255
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	5b8080e7          	jalr	1464(ra) # 80002020 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003a70:	05000793          	li	a5,80
    80003a74:	02f4e4bb          	remw	s1,s1,a5
    80003a78:	fc0494e3          	bnez	s1,80003a40 <_ZN8Consumer3runEv+0x34>
    80003a7c:	fb9ff06f          	j	80003a34 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003a80:	02093783          	ld	a5,32(s2)
    80003a84:	0087b503          	ld	a0,8(a5)
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	604080e7          	jalr	1540(ra) # 8000508c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003a90:	0ff57513          	andi	a0,a0,255
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	58c080e7          	jalr	1420(ra) # 80002020 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003a9c:	02093783          	ld	a5,32(s2)
    80003aa0:	0087b503          	ld	a0,8(a5)
    80003aa4:	00001097          	auipc	ra,0x1
    80003aa8:	674080e7          	jalr	1652(ra) # 80005118 <_ZN9BufferCPP6getCntEv>
    80003aac:	fca04ae3          	bgtz	a0,80003a80 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003ab0:	02093783          	ld	a5,32(s2)
    80003ab4:	0107b503          	ld	a0,16(a5)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	488080e7          	jalr	1160(ra) # 80001f40 <_ZN9Semaphore6signalEv>
    }
    80003ac0:	02813083          	ld	ra,40(sp)
    80003ac4:	02013403          	ld	s0,32(sp)
    80003ac8:	01813483          	ld	s1,24(sp)
    80003acc:	01013903          	ld	s2,16(sp)
    80003ad0:	00813983          	ld	s3,8(sp)
    80003ad4:	03010113          	addi	sp,sp,48
    80003ad8:	00008067          	ret

0000000080003adc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003adc:	ff010113          	addi	sp,sp,-16
    80003ae0:	00113423          	sd	ra,8(sp)
    80003ae4:	00813023          	sd	s0,0(sp)
    80003ae8:	01010413          	addi	s0,sp,16
    80003aec:	00007797          	auipc	a5,0x7
    80003af0:	ad478793          	addi	a5,a5,-1324 # 8000a5c0 <_ZTV8Consumer+0x10>
    80003af4:	00f53023          	sd	a5,0(a0)
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	1f8080e7          	jalr	504(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003b00:	00813083          	ld	ra,8(sp)
    80003b04:	00013403          	ld	s0,0(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <_ZN8ConsumerD0Ev>:
    80003b10:	fe010113          	addi	sp,sp,-32
    80003b14:	00113c23          	sd	ra,24(sp)
    80003b18:	00813823          	sd	s0,16(sp)
    80003b1c:	00913423          	sd	s1,8(sp)
    80003b20:	02010413          	addi	s0,sp,32
    80003b24:	00050493          	mv	s1,a0
    80003b28:	00007797          	auipc	a5,0x7
    80003b2c:	a9878793          	addi	a5,a5,-1384 # 8000a5c0 <_ZTV8Consumer+0x10>
    80003b30:	00f53023          	sd	a5,0(a0)
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	1bc080e7          	jalr	444(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	134080e7          	jalr	308(ra) # 80001c74 <_ZdlPv>
    80003b48:	01813083          	ld	ra,24(sp)
    80003b4c:	01013403          	ld	s0,16(sp)
    80003b50:	00813483          	ld	s1,8(sp)
    80003b54:	02010113          	addi	sp,sp,32
    80003b58:	00008067          	ret

0000000080003b5c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00113423          	sd	ra,8(sp)
    80003b64:	00813023          	sd	s0,0(sp)
    80003b68:	01010413          	addi	s0,sp,16
    80003b6c:	00007797          	auipc	a5,0x7
    80003b70:	a0478793          	addi	a5,a5,-1532 # 8000a570 <_ZTV16ProducerKeyborad+0x10>
    80003b74:	00f53023          	sd	a5,0(a0)
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	178080e7          	jalr	376(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003b80:	00813083          	ld	ra,8(sp)
    80003b84:	00013403          	ld	s0,0(sp)
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret

0000000080003b90 <_ZN16ProducerKeyboradD0Ev>:
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	00813823          	sd	s0,16(sp)
    80003b9c:	00913423          	sd	s1,8(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	00050493          	mv	s1,a0
    80003ba8:	00007797          	auipc	a5,0x7
    80003bac:	9c878793          	addi	a5,a5,-1592 # 8000a570 <_ZTV16ProducerKeyborad+0x10>
    80003bb0:	00f53023          	sd	a5,0(a0)
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	13c080e7          	jalr	316(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	0b4080e7          	jalr	180(ra) # 80001c74 <_ZdlPv>
    80003bc8:	01813083          	ld	ra,24(sp)
    80003bcc:	01013403          	ld	s0,16(sp)
    80003bd0:	00813483          	ld	s1,8(sp)
    80003bd4:	02010113          	addi	sp,sp,32
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003bdc:	ff010113          	addi	sp,sp,-16
    80003be0:	00113423          	sd	ra,8(sp)
    80003be4:	00813023          	sd	s0,0(sp)
    80003be8:	01010413          	addi	s0,sp,16
    80003bec:	00007797          	auipc	a5,0x7
    80003bf0:	9ac78793          	addi	a5,a5,-1620 # 8000a598 <_ZTV8Producer+0x10>
    80003bf4:	00f53023          	sd	a5,0(a0)
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	0f8080e7          	jalr	248(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003c00:	00813083          	ld	ra,8(sp)
    80003c04:	00013403          	ld	s0,0(sp)
    80003c08:	01010113          	addi	sp,sp,16
    80003c0c:	00008067          	ret

0000000080003c10 <_ZN8ProducerD0Ev>:
    80003c10:	fe010113          	addi	sp,sp,-32
    80003c14:	00113c23          	sd	ra,24(sp)
    80003c18:	00813823          	sd	s0,16(sp)
    80003c1c:	00913423          	sd	s1,8(sp)
    80003c20:	02010413          	addi	s0,sp,32
    80003c24:	00050493          	mv	s1,a0
    80003c28:	00007797          	auipc	a5,0x7
    80003c2c:	97078793          	addi	a5,a5,-1680 # 8000a598 <_ZTV8Producer+0x10>
    80003c30:	00f53023          	sd	a5,0(a0)
    80003c34:	ffffe097          	auipc	ra,0xffffe
    80003c38:	0bc080e7          	jalr	188(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80003c3c:	00048513          	mv	a0,s1
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	034080e7          	jalr	52(ra) # 80001c74 <_ZdlPv>
    80003c48:	01813083          	ld	ra,24(sp)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	00813483          	ld	s1,8(sp)
    80003c54:	02010113          	addi	sp,sp,32
    80003c58:	00008067          	ret

0000000080003c5c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003c5c:	fe010113          	addi	sp,sp,-32
    80003c60:	00113c23          	sd	ra,24(sp)
    80003c64:	00813823          	sd	s0,16(sp)
    80003c68:	00913423          	sd	s1,8(sp)
    80003c6c:	02010413          	addi	s0,sp,32
    80003c70:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003c74:	ffffd097          	auipc	ra,0xffffd
    80003c78:	7d8080e7          	jalr	2008(ra) # 8000144c <_Z4getcv>
    80003c7c:	0005059b          	sext.w	a1,a0
    80003c80:	01b00793          	li	a5,27
    80003c84:	00f58c63          	beq	a1,a5,80003c9c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003c88:	0204b783          	ld	a5,32(s1)
    80003c8c:	0087b503          	ld	a0,8(a5)
    80003c90:	00001097          	auipc	ra,0x1
    80003c94:	36c080e7          	jalr	876(ra) # 80004ffc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003c98:	fddff06f          	j	80003c74 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003c9c:	00100793          	li	a5,1
    80003ca0:	00007717          	auipc	a4,0x7
    80003ca4:	a8f72823          	sw	a5,-1392(a4) # 8000a730 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ca8:	0204b783          	ld	a5,32(s1)
    80003cac:	02100593          	li	a1,33
    80003cb0:	0087b503          	ld	a0,8(a5)
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	348080e7          	jalr	840(ra) # 80004ffc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003cbc:	0204b783          	ld	a5,32(s1)
    80003cc0:	0107b503          	ld	a0,16(a5)
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	27c080e7          	jalr	636(ra) # 80001f40 <_ZN9Semaphore6signalEv>
    }
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret

0000000080003ce0 <_ZN8Producer3runEv>:
    void run() override {
    80003ce0:	fe010113          	addi	sp,sp,-32
    80003ce4:	00113c23          	sd	ra,24(sp)
    80003ce8:	00813823          	sd	s0,16(sp)
    80003cec:	00913423          	sd	s1,8(sp)
    80003cf0:	01213023          	sd	s2,0(sp)
    80003cf4:	02010413          	addi	s0,sp,32
    80003cf8:	00050493          	mv	s1,a0
        int i = 0;
    80003cfc:	00000913          	li	s2,0
        while (!threadEnd) {
    80003d00:	00007797          	auipc	a5,0x7
    80003d04:	a307a783          	lw	a5,-1488(a5) # 8000a730 <_ZL9threadEnd>
    80003d08:	04079263          	bnez	a5,80003d4c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003d0c:	0204b783          	ld	a5,32(s1)
    80003d10:	0007a583          	lw	a1,0(a5)
    80003d14:	0305859b          	addiw	a1,a1,48
    80003d18:	0087b503          	ld	a0,8(a5)
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	2e0080e7          	jalr	736(ra) # 80004ffc <_ZN9BufferCPP3putEi>
            i++;
    80003d24:	0019071b          	addiw	a4,s2,1
    80003d28:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003d2c:	0204b783          	ld	a5,32(s1)
    80003d30:	0007a783          	lw	a5,0(a5)
    80003d34:	00e787bb          	addw	a5,a5,a4
    80003d38:	00500513          	li	a0,5
    80003d3c:	02a7e53b          	remw	a0,a5,a0
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	13c080e7          	jalr	316(ra) # 80001e7c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003d48:	fb9ff06f          	j	80003d00 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003d4c:	0204b783          	ld	a5,32(s1)
    80003d50:	0107b503          	ld	a0,16(a5)
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	1ec080e7          	jalr	492(ra) # 80001f40 <_ZN9Semaphore6signalEv>
    }
    80003d5c:	01813083          	ld	ra,24(sp)
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	00013903          	ld	s2,0(sp)
    80003d6c:	02010113          	addi	sp,sp,32
    80003d70:	00008067          	ret

0000000080003d74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d74:	fe010113          	addi	sp,sp,-32
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00813823          	sd	s0,16(sp)
    80003d80:	00913423          	sd	s1,8(sp)
    80003d84:	01213023          	sd	s2,0(sp)
    80003d88:	02010413          	addi	s0,sp,32
    80003d8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d90:	00100793          	li	a5,1
    80003d94:	02a7f863          	bgeu	a5,a0,80003dc4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d98:	00a00793          	li	a5,10
    80003d9c:	02f577b3          	remu	a5,a0,a5
    80003da0:	02078e63          	beqz	a5,80003ddc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003da4:	fff48513          	addi	a0,s1,-1
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	fcc080e7          	jalr	-52(ra) # 80003d74 <_ZL9fibonaccim>
    80003db0:	00050913          	mv	s2,a0
    80003db4:	ffe48513          	addi	a0,s1,-2
    80003db8:	00000097          	auipc	ra,0x0
    80003dbc:	fbc080e7          	jalr	-68(ra) # 80003d74 <_ZL9fibonaccim>
    80003dc0:	00a90533          	add	a0,s2,a0
}
    80003dc4:	01813083          	ld	ra,24(sp)
    80003dc8:	01013403          	ld	s0,16(sp)
    80003dcc:	00813483          	ld	s1,8(sp)
    80003dd0:	00013903          	ld	s2,0(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ddc:	ffffd097          	auipc	ra,0xffffd
    80003de0:	4cc080e7          	jalr	1228(ra) # 800012a8 <_Z15thread_dispatchv>
    80003de4:	fc1ff06f          	j	80003da4 <_ZL9fibonaccim+0x30>

0000000080003de8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003de8:	fe010113          	addi	sp,sp,-32
    80003dec:	00113c23          	sd	ra,24(sp)
    80003df0:	00813823          	sd	s0,16(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	01213023          	sd	s2,0(sp)
    80003dfc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e00:	00a00493          	li	s1,10
    80003e04:	0400006f          	j	80003e44 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e08:	00004517          	auipc	a0,0x4
    80003e0c:	42050513          	addi	a0,a0,1056 # 80008228 <CONSOLE_STATUS+0x218>
    80003e10:	00001097          	auipc	ra,0x1
    80003e14:	dc8080e7          	jalr	-568(ra) # 80004bd8 <_Z11printStringPKc>
    80003e18:	00000613          	li	a2,0
    80003e1c:	00a00593          	li	a1,10
    80003e20:	00048513          	mv	a0,s1
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	f64080e7          	jalr	-156(ra) # 80004d88 <_Z8printIntiii>
    80003e2c:	00004517          	auipc	a0,0x4
    80003e30:	61c50513          	addi	a0,a0,1564 # 80008448 <CONSOLE_STATUS+0x438>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	da4080e7          	jalr	-604(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e3c:	0014849b          	addiw	s1,s1,1
    80003e40:	0ff4f493          	andi	s1,s1,255
    80003e44:	00c00793          	li	a5,12
    80003e48:	fc97f0e3          	bgeu	a5,s1,80003e08 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003e4c:	00004517          	auipc	a0,0x4
    80003e50:	3e450513          	addi	a0,a0,996 # 80008230 <CONSOLE_STATUS+0x220>
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	d84080e7          	jalr	-636(ra) # 80004bd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e5c:	00500313          	li	t1,5
    thread_dispatch();
    80003e60:	ffffd097          	auipc	ra,0xffffd
    80003e64:	448080e7          	jalr	1096(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e68:	01000513          	li	a0,16
    80003e6c:	00000097          	auipc	ra,0x0
    80003e70:	f08080e7          	jalr	-248(ra) # 80003d74 <_ZL9fibonaccim>
    80003e74:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e78:	00004517          	auipc	a0,0x4
    80003e7c:	3c850513          	addi	a0,a0,968 # 80008240 <CONSOLE_STATUS+0x230>
    80003e80:	00001097          	auipc	ra,0x1
    80003e84:	d58080e7          	jalr	-680(ra) # 80004bd8 <_Z11printStringPKc>
    80003e88:	00000613          	li	a2,0
    80003e8c:	00a00593          	li	a1,10
    80003e90:	0009051b          	sext.w	a0,s2
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	ef4080e7          	jalr	-268(ra) # 80004d88 <_Z8printIntiii>
    80003e9c:	00004517          	auipc	a0,0x4
    80003ea0:	5ac50513          	addi	a0,a0,1452 # 80008448 <CONSOLE_STATUS+0x438>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	d34080e7          	jalr	-716(ra) # 80004bd8 <_Z11printStringPKc>
    80003eac:	0400006f          	j	80003eec <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003eb0:	00004517          	auipc	a0,0x4
    80003eb4:	37850513          	addi	a0,a0,888 # 80008228 <CONSOLE_STATUS+0x218>
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	d20080e7          	jalr	-736(ra) # 80004bd8 <_Z11printStringPKc>
    80003ec0:	00000613          	li	a2,0
    80003ec4:	00a00593          	li	a1,10
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	00001097          	auipc	ra,0x1
    80003ed0:	ebc080e7          	jalr	-324(ra) # 80004d88 <_Z8printIntiii>
    80003ed4:	00004517          	auipc	a0,0x4
    80003ed8:	57450513          	addi	a0,a0,1396 # 80008448 <CONSOLE_STATUS+0x438>
    80003edc:	00001097          	auipc	ra,0x1
    80003ee0:	cfc080e7          	jalr	-772(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ee4:	0014849b          	addiw	s1,s1,1
    80003ee8:	0ff4f493          	andi	s1,s1,255
    80003eec:	00f00793          	li	a5,15
    80003ef0:	fc97f0e3          	bgeu	a5,s1,80003eb0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003ef4:	00004517          	auipc	a0,0x4
    80003ef8:	35c50513          	addi	a0,a0,860 # 80008250 <CONSOLE_STATUS+0x240>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	cdc080e7          	jalr	-804(ra) # 80004bd8 <_Z11printStringPKc>
    finishedD = true;
    80003f04:	00100793          	li	a5,1
    80003f08:	00007717          	auipc	a4,0x7
    80003f0c:	82f70c23          	sb	a5,-1992(a4) # 8000a740 <_ZL9finishedD>
    thread_dispatch();
    80003f10:	ffffd097          	auipc	ra,0xffffd
    80003f14:	398080e7          	jalr	920(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	01013403          	ld	s0,16(sp)
    80003f20:	00813483          	ld	s1,8(sp)
    80003f24:	00013903          	ld	s2,0(sp)
    80003f28:	02010113          	addi	sp,sp,32
    80003f2c:	00008067          	ret

0000000080003f30 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003f30:	fe010113          	addi	sp,sp,-32
    80003f34:	00113c23          	sd	ra,24(sp)
    80003f38:	00813823          	sd	s0,16(sp)
    80003f3c:	00913423          	sd	s1,8(sp)
    80003f40:	01213023          	sd	s2,0(sp)
    80003f44:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f48:	00000493          	li	s1,0
    80003f4c:	0400006f          	j	80003f8c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003f50:	00004517          	auipc	a0,0x4
    80003f54:	29850513          	addi	a0,a0,664 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	c80080e7          	jalr	-896(ra) # 80004bd8 <_Z11printStringPKc>
    80003f60:	00000613          	li	a2,0
    80003f64:	00a00593          	li	a1,10
    80003f68:	00048513          	mv	a0,s1
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	e1c080e7          	jalr	-484(ra) # 80004d88 <_Z8printIntiii>
    80003f74:	00004517          	auipc	a0,0x4
    80003f78:	4d450513          	addi	a0,a0,1236 # 80008448 <CONSOLE_STATUS+0x438>
    80003f7c:	00001097          	auipc	ra,0x1
    80003f80:	c5c080e7          	jalr	-932(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f84:	0014849b          	addiw	s1,s1,1
    80003f88:	0ff4f493          	andi	s1,s1,255
    80003f8c:	00200793          	li	a5,2
    80003f90:	fc97f0e3          	bgeu	a5,s1,80003f50 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003f94:	00004517          	auipc	a0,0x4
    80003f98:	25c50513          	addi	a0,a0,604 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	c3c080e7          	jalr	-964(ra) # 80004bd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fa4:	00700313          	li	t1,7
    thread_dispatch();
    80003fa8:	ffffd097          	auipc	ra,0xffffd
    80003fac:	300080e7          	jalr	768(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003fb0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003fb4:	00004517          	auipc	a0,0x4
    80003fb8:	24c50513          	addi	a0,a0,588 # 80008200 <CONSOLE_STATUS+0x1f0>
    80003fbc:	00001097          	auipc	ra,0x1
    80003fc0:	c1c080e7          	jalr	-996(ra) # 80004bd8 <_Z11printStringPKc>
    80003fc4:	00000613          	li	a2,0
    80003fc8:	00a00593          	li	a1,10
    80003fcc:	0009051b          	sext.w	a0,s2
    80003fd0:	00001097          	auipc	ra,0x1
    80003fd4:	db8080e7          	jalr	-584(ra) # 80004d88 <_Z8printIntiii>
    80003fd8:	00004517          	auipc	a0,0x4
    80003fdc:	47050513          	addi	a0,a0,1136 # 80008448 <CONSOLE_STATUS+0x438>
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	bf8080e7          	jalr	-1032(ra) # 80004bd8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003fe8:	00c00513          	li	a0,12
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	d88080e7          	jalr	-632(ra) # 80003d74 <_ZL9fibonaccim>
    80003ff4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ff8:	00004517          	auipc	a0,0x4
    80003ffc:	21050513          	addi	a0,a0,528 # 80008208 <CONSOLE_STATUS+0x1f8>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	bd8080e7          	jalr	-1064(ra) # 80004bd8 <_Z11printStringPKc>
    80004008:	00000613          	li	a2,0
    8000400c:	00a00593          	li	a1,10
    80004010:	0009051b          	sext.w	a0,s2
    80004014:	00001097          	auipc	ra,0x1
    80004018:	d74080e7          	jalr	-652(ra) # 80004d88 <_Z8printIntiii>
    8000401c:	00004517          	auipc	a0,0x4
    80004020:	42c50513          	addi	a0,a0,1068 # 80008448 <CONSOLE_STATUS+0x438>
    80004024:	00001097          	auipc	ra,0x1
    80004028:	bb4080e7          	jalr	-1100(ra) # 80004bd8 <_Z11printStringPKc>
    8000402c:	0400006f          	j	8000406c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004030:	00004517          	auipc	a0,0x4
    80004034:	1b850513          	addi	a0,a0,440 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	ba0080e7          	jalr	-1120(ra) # 80004bd8 <_Z11printStringPKc>
    80004040:	00000613          	li	a2,0
    80004044:	00a00593          	li	a1,10
    80004048:	00048513          	mv	a0,s1
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	d3c080e7          	jalr	-708(ra) # 80004d88 <_Z8printIntiii>
    80004054:	00004517          	auipc	a0,0x4
    80004058:	3f450513          	addi	a0,a0,1012 # 80008448 <CONSOLE_STATUS+0x438>
    8000405c:	00001097          	auipc	ra,0x1
    80004060:	b7c080e7          	jalr	-1156(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004064:	0014849b          	addiw	s1,s1,1
    80004068:	0ff4f493          	andi	s1,s1,255
    8000406c:	00500793          	li	a5,5
    80004070:	fc97f0e3          	bgeu	a5,s1,80004030 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004074:	00004517          	auipc	a0,0x4
    80004078:	14c50513          	addi	a0,a0,332 # 800081c0 <CONSOLE_STATUS+0x1b0>
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	b5c080e7          	jalr	-1188(ra) # 80004bd8 <_Z11printStringPKc>
    finishedC = true;
    80004084:	00100793          	li	a5,1
    80004088:	00006717          	auipc	a4,0x6
    8000408c:	6af70ca3          	sb	a5,1721(a4) # 8000a741 <_ZL9finishedC>
    thread_dispatch();
    80004090:	ffffd097          	auipc	ra,0xffffd
    80004094:	218080e7          	jalr	536(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80004098:	01813083          	ld	ra,24(sp)
    8000409c:	01013403          	ld	s0,16(sp)
    800040a0:	00813483          	ld	s1,8(sp)
    800040a4:	00013903          	ld	s2,0(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret

00000000800040b0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800040b0:	fe010113          	addi	sp,sp,-32
    800040b4:	00113c23          	sd	ra,24(sp)
    800040b8:	00813823          	sd	s0,16(sp)
    800040bc:	00913423          	sd	s1,8(sp)
    800040c0:	01213023          	sd	s2,0(sp)
    800040c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800040c8:	00000913          	li	s2,0
    800040cc:	0380006f          	j	80004104 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800040d0:	ffffd097          	auipc	ra,0xffffd
    800040d4:	1d8080e7          	jalr	472(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800040d8:	00148493          	addi	s1,s1,1
    800040dc:	000027b7          	lui	a5,0x2
    800040e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040e4:	0097ee63          	bltu	a5,s1,80004100 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040e8:	00000713          	li	a4,0
    800040ec:	000077b7          	lui	a5,0x7
    800040f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040f4:	fce7eee3          	bltu	a5,a4,800040d0 <_ZL11workerBodyBPv+0x20>
    800040f8:	00170713          	addi	a4,a4,1
    800040fc:	ff1ff06f          	j	800040ec <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004100:	00190913          	addi	s2,s2,1
    80004104:	00f00793          	li	a5,15
    80004108:	0527e063          	bltu	a5,s2,80004148 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000410c:	00004517          	auipc	a0,0x4
    80004110:	0c450513          	addi	a0,a0,196 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80004114:	00001097          	auipc	ra,0x1
    80004118:	ac4080e7          	jalr	-1340(ra) # 80004bd8 <_Z11printStringPKc>
    8000411c:	00000613          	li	a2,0
    80004120:	00a00593          	li	a1,10
    80004124:	0009051b          	sext.w	a0,s2
    80004128:	00001097          	auipc	ra,0x1
    8000412c:	c60080e7          	jalr	-928(ra) # 80004d88 <_Z8printIntiii>
    80004130:	00004517          	auipc	a0,0x4
    80004134:	31850513          	addi	a0,a0,792 # 80008448 <CONSOLE_STATUS+0x438>
    80004138:	00001097          	auipc	ra,0x1
    8000413c:	aa0080e7          	jalr	-1376(ra) # 80004bd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004140:	00000493          	li	s1,0
    80004144:	f99ff06f          	j	800040dc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004148:	00004517          	auipc	a0,0x4
    8000414c:	09050513          	addi	a0,a0,144 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80004150:	00001097          	auipc	ra,0x1
    80004154:	a88080e7          	jalr	-1400(ra) # 80004bd8 <_Z11printStringPKc>
    finishedB = true;
    80004158:	00100793          	li	a5,1
    8000415c:	00006717          	auipc	a4,0x6
    80004160:	5ef70323          	sb	a5,1510(a4) # 8000a742 <_ZL9finishedB>
    thread_dispatch();
    80004164:	ffffd097          	auipc	ra,0xffffd
    80004168:	144080e7          	jalr	324(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	01013403          	ld	s0,16(sp)
    80004174:	00813483          	ld	s1,8(sp)
    80004178:	00013903          	ld	s2,0(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret

0000000080004184 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004184:	fe010113          	addi	sp,sp,-32
    80004188:	00113c23          	sd	ra,24(sp)
    8000418c:	00813823          	sd	s0,16(sp)
    80004190:	00913423          	sd	s1,8(sp)
    80004194:	01213023          	sd	s2,0(sp)
    80004198:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000419c:	00000913          	li	s2,0
    800041a0:	0380006f          	j	800041d8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800041a4:	ffffd097          	auipc	ra,0xffffd
    800041a8:	104080e7          	jalr	260(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800041ac:	00148493          	addi	s1,s1,1
    800041b0:	000027b7          	lui	a5,0x2
    800041b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800041b8:	0097ee63          	bltu	a5,s1,800041d4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800041bc:	00000713          	li	a4,0
    800041c0:	000077b7          	lui	a5,0x7
    800041c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800041c8:	fce7eee3          	bltu	a5,a4,800041a4 <_ZL11workerBodyAPv+0x20>
    800041cc:	00170713          	addi	a4,a4,1
    800041d0:	ff1ff06f          	j	800041c0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800041d4:	00190913          	addi	s2,s2,1
    800041d8:	00900793          	li	a5,9
    800041dc:	0527e063          	bltu	a5,s2,8000421c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800041e0:	00004517          	auipc	a0,0x4
    800041e4:	fd850513          	addi	a0,a0,-40 # 800081b8 <CONSOLE_STATUS+0x1a8>
    800041e8:	00001097          	auipc	ra,0x1
    800041ec:	9f0080e7          	jalr	-1552(ra) # 80004bd8 <_Z11printStringPKc>
    800041f0:	00000613          	li	a2,0
    800041f4:	00a00593          	li	a1,10
    800041f8:	0009051b          	sext.w	a0,s2
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	b8c080e7          	jalr	-1140(ra) # 80004d88 <_Z8printIntiii>
    80004204:	00004517          	auipc	a0,0x4
    80004208:	24450513          	addi	a0,a0,580 # 80008448 <CONSOLE_STATUS+0x438>
    8000420c:	00001097          	auipc	ra,0x1
    80004210:	9cc080e7          	jalr	-1588(ra) # 80004bd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004214:	00000493          	li	s1,0
    80004218:	f99ff06f          	j	800041b0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000421c:	00004517          	auipc	a0,0x4
    80004220:	fa450513          	addi	a0,a0,-92 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80004224:	00001097          	auipc	ra,0x1
    80004228:	9b4080e7          	jalr	-1612(ra) # 80004bd8 <_Z11printStringPKc>
    finishedA = true;
    8000422c:	00100793          	li	a5,1
    80004230:	00006717          	auipc	a4,0x6
    80004234:	50f709a3          	sb	a5,1299(a4) # 8000a743 <_ZL9finishedA>
}
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	00013903          	ld	s2,0(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret

0000000080004250 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004250:	fd010113          	addi	sp,sp,-48
    80004254:	02113423          	sd	ra,40(sp)
    80004258:	02813023          	sd	s0,32(sp)
    8000425c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004260:	00000613          	li	a2,0
    80004264:	00000597          	auipc	a1,0x0
    80004268:	f2058593          	addi	a1,a1,-224 # 80004184 <_ZL11workerBodyAPv>
    8000426c:	fd040513          	addi	a0,s0,-48
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	080080e7          	jalr	128(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004278:	00004517          	auipc	a0,0x4
    8000427c:	fe850513          	addi	a0,a0,-24 # 80008260 <CONSOLE_STATUS+0x250>
    80004280:	00001097          	auipc	ra,0x1
    80004284:	958080e7          	jalr	-1704(ra) # 80004bd8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004288:	00000613          	li	a2,0
    8000428c:	00000597          	auipc	a1,0x0
    80004290:	e2458593          	addi	a1,a1,-476 # 800040b0 <_ZL11workerBodyBPv>
    80004294:	fd840513          	addi	a0,s0,-40
    80004298:	ffffd097          	auipc	ra,0xffffd
    8000429c:	058080e7          	jalr	88(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800042a0:	00004517          	auipc	a0,0x4
    800042a4:	fd850513          	addi	a0,a0,-40 # 80008278 <CONSOLE_STATUS+0x268>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	930080e7          	jalr	-1744(ra) # 80004bd8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800042b0:	00000613          	li	a2,0
    800042b4:	00000597          	auipc	a1,0x0
    800042b8:	c7c58593          	addi	a1,a1,-900 # 80003f30 <_ZL11workerBodyCPv>
    800042bc:	fe040513          	addi	a0,s0,-32
    800042c0:	ffffd097          	auipc	ra,0xffffd
    800042c4:	030080e7          	jalr	48(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800042c8:	00004517          	auipc	a0,0x4
    800042cc:	fc850513          	addi	a0,a0,-56 # 80008290 <CONSOLE_STATUS+0x280>
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	908080e7          	jalr	-1784(ra) # 80004bd8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800042d8:	00000613          	li	a2,0
    800042dc:	00000597          	auipc	a1,0x0
    800042e0:	b0c58593          	addi	a1,a1,-1268 # 80003de8 <_ZL11workerBodyDPv>
    800042e4:	fe840513          	addi	a0,s0,-24
    800042e8:	ffffd097          	auipc	ra,0xffffd
    800042ec:	008080e7          	jalr	8(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800042f0:	00004517          	auipc	a0,0x4
    800042f4:	fb850513          	addi	a0,a0,-72 # 800082a8 <CONSOLE_STATUS+0x298>
    800042f8:	00001097          	auipc	ra,0x1
    800042fc:	8e0080e7          	jalr	-1824(ra) # 80004bd8 <_Z11printStringPKc>
    80004300:	00c0006f          	j	8000430c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004304:	ffffd097          	auipc	ra,0xffffd
    80004308:	fa4080e7          	jalr	-92(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000430c:	00006797          	auipc	a5,0x6
    80004310:	4377c783          	lbu	a5,1079(a5) # 8000a743 <_ZL9finishedA>
    80004314:	fe0788e3          	beqz	a5,80004304 <_Z18Threads_C_API_testv+0xb4>
    80004318:	00006797          	auipc	a5,0x6
    8000431c:	42a7c783          	lbu	a5,1066(a5) # 8000a742 <_ZL9finishedB>
    80004320:	fe0782e3          	beqz	a5,80004304 <_Z18Threads_C_API_testv+0xb4>
    80004324:	00006797          	auipc	a5,0x6
    80004328:	41d7c783          	lbu	a5,1053(a5) # 8000a741 <_ZL9finishedC>
    8000432c:	fc078ce3          	beqz	a5,80004304 <_Z18Threads_C_API_testv+0xb4>
    80004330:	00006797          	auipc	a5,0x6
    80004334:	4107c783          	lbu	a5,1040(a5) # 8000a740 <_ZL9finishedD>
    80004338:	fc0786e3          	beqz	a5,80004304 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000433c:	02813083          	ld	ra,40(sp)
    80004340:	02013403          	ld	s0,32(sp)
    80004344:	03010113          	addi	sp,sp,48
    80004348:	00008067          	ret

000000008000434c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000434c:	fd010113          	addi	sp,sp,-48
    80004350:	02113423          	sd	ra,40(sp)
    80004354:	02813023          	sd	s0,32(sp)
    80004358:	00913c23          	sd	s1,24(sp)
    8000435c:	01213823          	sd	s2,16(sp)
    80004360:	01313423          	sd	s3,8(sp)
    80004364:	03010413          	addi	s0,sp,48
    80004368:	00050993          	mv	s3,a0
    8000436c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004370:	00000913          	li	s2,0
    80004374:	00c0006f          	j	80004380 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	adc080e7          	jalr	-1316(ra) # 80001e54 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004380:	ffffd097          	auipc	ra,0xffffd
    80004384:	0cc080e7          	jalr	204(ra) # 8000144c <_Z4getcv>
    80004388:	0005059b          	sext.w	a1,a0
    8000438c:	01b00793          	li	a5,27
    80004390:	02f58a63          	beq	a1,a5,800043c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004394:	0084b503          	ld	a0,8(s1)
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	c64080e7          	jalr	-924(ra) # 80004ffc <_ZN9BufferCPP3putEi>
        i++;
    800043a0:	0019071b          	addiw	a4,s2,1
    800043a4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800043a8:	0004a683          	lw	a3,0(s1)
    800043ac:	0026979b          	slliw	a5,a3,0x2
    800043b0:	00d787bb          	addw	a5,a5,a3
    800043b4:	0017979b          	slliw	a5,a5,0x1
    800043b8:	02f767bb          	remw	a5,a4,a5
    800043bc:	fc0792e3          	bnez	a5,80004380 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800043c0:	fb9ff06f          	j	80004378 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800043c4:	00100793          	li	a5,1
    800043c8:	00006717          	auipc	a4,0x6
    800043cc:	38f72023          	sw	a5,896(a4) # 8000a748 <_ZL9threadEnd>
    td->buffer->put('!');
    800043d0:	0209b783          	ld	a5,32(s3)
    800043d4:	02100593          	li	a1,33
    800043d8:	0087b503          	ld	a0,8(a5)
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	c20080e7          	jalr	-992(ra) # 80004ffc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800043e4:	0104b503          	ld	a0,16(s1)
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	b58080e7          	jalr	-1192(ra) # 80001f40 <_ZN9Semaphore6signalEv>
}
    800043f0:	02813083          	ld	ra,40(sp)
    800043f4:	02013403          	ld	s0,32(sp)
    800043f8:	01813483          	ld	s1,24(sp)
    800043fc:	01013903          	ld	s2,16(sp)
    80004400:	00813983          	ld	s3,8(sp)
    80004404:	03010113          	addi	sp,sp,48
    80004408:	00008067          	ret

000000008000440c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00113c23          	sd	ra,24(sp)
    80004414:	00813823          	sd	s0,16(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	01213023          	sd	s2,0(sp)
    80004420:	02010413          	addi	s0,sp,32
    80004424:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004428:	00000913          	li	s2,0
    8000442c:	00c0006f          	j	80004438 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	a24080e7          	jalr	-1500(ra) # 80001e54 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004438:	00006797          	auipc	a5,0x6
    8000443c:	3107a783          	lw	a5,784(a5) # 8000a748 <_ZL9threadEnd>
    80004440:	02079e63          	bnez	a5,8000447c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004444:	0004a583          	lw	a1,0(s1)
    80004448:	0305859b          	addiw	a1,a1,48
    8000444c:	0084b503          	ld	a0,8(s1)
    80004450:	00001097          	auipc	ra,0x1
    80004454:	bac080e7          	jalr	-1108(ra) # 80004ffc <_ZN9BufferCPP3putEi>
        i++;
    80004458:	0019071b          	addiw	a4,s2,1
    8000445c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004460:	0004a683          	lw	a3,0(s1)
    80004464:	0026979b          	slliw	a5,a3,0x2
    80004468:	00d787bb          	addw	a5,a5,a3
    8000446c:	0017979b          	slliw	a5,a5,0x1
    80004470:	02f767bb          	remw	a5,a4,a5
    80004474:	fc0792e3          	bnez	a5,80004438 <_ZN12ProducerSync8producerEPv+0x2c>
    80004478:	fb9ff06f          	j	80004430 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000447c:	0104b503          	ld	a0,16(s1)
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	ac0080e7          	jalr	-1344(ra) # 80001f40 <_ZN9Semaphore6signalEv>
}
    80004488:	01813083          	ld	ra,24(sp)
    8000448c:	01013403          	ld	s0,16(sp)
    80004490:	00813483          	ld	s1,8(sp)
    80004494:	00013903          	ld	s2,0(sp)
    80004498:	02010113          	addi	sp,sp,32
    8000449c:	00008067          	ret

00000000800044a0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800044a0:	fd010113          	addi	sp,sp,-48
    800044a4:	02113423          	sd	ra,40(sp)
    800044a8:	02813023          	sd	s0,32(sp)
    800044ac:	00913c23          	sd	s1,24(sp)
    800044b0:	01213823          	sd	s2,16(sp)
    800044b4:	01313423          	sd	s3,8(sp)
    800044b8:	01413023          	sd	s4,0(sp)
    800044bc:	03010413          	addi	s0,sp,48
    800044c0:	00050993          	mv	s3,a0
    800044c4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800044c8:	00000a13          	li	s4,0
    800044cc:	01c0006f          	j	800044e8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	984080e7          	jalr	-1660(ra) # 80001e54 <_ZN6Thread8dispatchEv>
    800044d8:	0500006f          	j	80004528 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800044dc:	00a00513          	li	a0,10
    800044e0:	ffffd097          	auipc	ra,0xffffd
    800044e4:	f94080e7          	jalr	-108(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    800044e8:	00006797          	auipc	a5,0x6
    800044ec:	2607a783          	lw	a5,608(a5) # 8000a748 <_ZL9threadEnd>
    800044f0:	06079263          	bnez	a5,80004554 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800044f4:	00893503          	ld	a0,8(s2)
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	b94080e7          	jalr	-1132(ra) # 8000508c <_ZN9BufferCPP3getEv>
        i++;
    80004500:	001a049b          	addiw	s1,s4,1
    80004504:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004508:	0ff57513          	andi	a0,a0,255
    8000450c:	ffffd097          	auipc	ra,0xffffd
    80004510:	f68080e7          	jalr	-152(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004514:	00092703          	lw	a4,0(s2)
    80004518:	0027179b          	slliw	a5,a4,0x2
    8000451c:	00e787bb          	addw	a5,a5,a4
    80004520:	02f4e7bb          	remw	a5,s1,a5
    80004524:	fa0786e3          	beqz	a5,800044d0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004528:	05000793          	li	a5,80
    8000452c:	02f4e4bb          	remw	s1,s1,a5
    80004530:	fa049ce3          	bnez	s1,800044e8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004534:	fa9ff06f          	j	800044dc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004538:	0209b783          	ld	a5,32(s3)
    8000453c:	0087b503          	ld	a0,8(a5)
    80004540:	00001097          	auipc	ra,0x1
    80004544:	b4c080e7          	jalr	-1204(ra) # 8000508c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004548:	0ff57513          	andi	a0,a0,255
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	ad4080e7          	jalr	-1324(ra) # 80002020 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004554:	0209b783          	ld	a5,32(s3)
    80004558:	0087b503          	ld	a0,8(a5)
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	bbc080e7          	jalr	-1092(ra) # 80005118 <_ZN9BufferCPP6getCntEv>
    80004564:	fca04ae3          	bgtz	a0,80004538 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004568:	01093503          	ld	a0,16(s2)
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	9d4080e7          	jalr	-1580(ra) # 80001f40 <_ZN9Semaphore6signalEv>
}
    80004574:	02813083          	ld	ra,40(sp)
    80004578:	02013403          	ld	s0,32(sp)
    8000457c:	01813483          	ld	s1,24(sp)
    80004580:	01013903          	ld	s2,16(sp)
    80004584:	00813983          	ld	s3,8(sp)
    80004588:	00013a03          	ld	s4,0(sp)
    8000458c:	03010113          	addi	sp,sp,48
    80004590:	00008067          	ret

0000000080004594 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004594:	f8010113          	addi	sp,sp,-128
    80004598:	06113c23          	sd	ra,120(sp)
    8000459c:	06813823          	sd	s0,112(sp)
    800045a0:	06913423          	sd	s1,104(sp)
    800045a4:	07213023          	sd	s2,96(sp)
    800045a8:	05313c23          	sd	s3,88(sp)
    800045ac:	05413823          	sd	s4,80(sp)
    800045b0:	05513423          	sd	s5,72(sp)
    800045b4:	05613023          	sd	s6,64(sp)
    800045b8:	03713c23          	sd	s7,56(sp)
    800045bc:	03813823          	sd	s8,48(sp)
    800045c0:	03913423          	sd	s9,40(sp)
    800045c4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800045c8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800045cc:	00004517          	auipc	a0,0x4
    800045d0:	b0450513          	addi	a0,a0,-1276 # 800080d0 <CONSOLE_STATUS+0xc0>
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	604080e7          	jalr	1540(ra) # 80004bd8 <_Z11printStringPKc>
    getString(input, 30);
    800045dc:	01e00593          	li	a1,30
    800045e0:	f8040493          	addi	s1,s0,-128
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	678080e7          	jalr	1656(ra) # 80004c60 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	744080e7          	jalr	1860(ra) # 80004d38 <_Z11stringToIntPKc>
    800045fc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004600:	00004517          	auipc	a0,0x4
    80004604:	af050513          	addi	a0,a0,-1296 # 800080f0 <CONSOLE_STATUS+0xe0>
    80004608:	00000097          	auipc	ra,0x0
    8000460c:	5d0080e7          	jalr	1488(ra) # 80004bd8 <_Z11printStringPKc>
    getString(input, 30);
    80004610:	01e00593          	li	a1,30
    80004614:	00048513          	mv	a0,s1
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	648080e7          	jalr	1608(ra) # 80004c60 <_Z9getStringPci>
    n = stringToInt(input);
    80004620:	00048513          	mv	a0,s1
    80004624:	00000097          	auipc	ra,0x0
    80004628:	714080e7          	jalr	1812(ra) # 80004d38 <_Z11stringToIntPKc>
    8000462c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004630:	00004517          	auipc	a0,0x4
    80004634:	ae050513          	addi	a0,a0,-1312 # 80008110 <CONSOLE_STATUS+0x100>
    80004638:	00000097          	auipc	ra,0x0
    8000463c:	5a0080e7          	jalr	1440(ra) # 80004bd8 <_Z11printStringPKc>
    80004640:	00000613          	li	a2,0
    80004644:	00a00593          	li	a1,10
    80004648:	00090513          	mv	a0,s2
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	73c080e7          	jalr	1852(ra) # 80004d88 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004654:	00004517          	auipc	a0,0x4
    80004658:	ad450513          	addi	a0,a0,-1324 # 80008128 <CONSOLE_STATUS+0x118>
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	57c080e7          	jalr	1404(ra) # 80004bd8 <_Z11printStringPKc>
    80004664:	00000613          	li	a2,0
    80004668:	00a00593          	li	a1,10
    8000466c:	00048513          	mv	a0,s1
    80004670:	00000097          	auipc	ra,0x0
    80004674:	718080e7          	jalr	1816(ra) # 80004d88 <_Z8printIntiii>
    printString(".\n");
    80004678:	00004517          	auipc	a0,0x4
    8000467c:	ac850513          	addi	a0,a0,-1336 # 80008140 <CONSOLE_STATUS+0x130>
    80004680:	00000097          	auipc	ra,0x0
    80004684:	558080e7          	jalr	1368(ra) # 80004bd8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004688:	0324c463          	blt	s1,s2,800046b0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000468c:	03205c63          	blez	s2,800046c4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004690:	03800513          	li	a0,56
    80004694:	ffffd097          	auipc	ra,0xffffd
    80004698:	590080e7          	jalr	1424(ra) # 80001c24 <_Znwm>
    8000469c:	00050a93          	mv	s5,a0
    800046a0:	00048593          	mv	a1,s1
    800046a4:	00001097          	auipc	ra,0x1
    800046a8:	804080e7          	jalr	-2044(ra) # 80004ea8 <_ZN9BufferCPPC1Ei>
    800046ac:	0300006f          	j	800046dc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800046b0:	00004517          	auipc	a0,0x4
    800046b4:	a9850513          	addi	a0,a0,-1384 # 80008148 <CONSOLE_STATUS+0x138>
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	520080e7          	jalr	1312(ra) # 80004bd8 <_Z11printStringPKc>
        return;
    800046c0:	0140006f          	j	800046d4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800046c4:	00004517          	auipc	a0,0x4
    800046c8:	ac450513          	addi	a0,a0,-1340 # 80008188 <CONSOLE_STATUS+0x178>
    800046cc:	00000097          	auipc	ra,0x0
    800046d0:	50c080e7          	jalr	1292(ra) # 80004bd8 <_Z11printStringPKc>
        return;
    800046d4:	000b8113          	mv	sp,s7
    800046d8:	2380006f          	j	80004910 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800046dc:	01000513          	li	a0,16
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	544080e7          	jalr	1348(ra) # 80001c24 <_Znwm>
    800046e8:	00050493          	mv	s1,a0
    800046ec:	00000593          	li	a1,0
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	7ec080e7          	jalr	2028(ra) # 80001edc <_ZN9SemaphoreC1Ej>
    800046f8:	00006797          	auipc	a5,0x6
    800046fc:	0497bc23          	sd	s1,88(a5) # 8000a750 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004700:	00391793          	slli	a5,s2,0x3
    80004704:	00f78793          	addi	a5,a5,15
    80004708:	ff07f793          	andi	a5,a5,-16
    8000470c:	40f10133          	sub	sp,sp,a5
    80004710:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004714:	0019071b          	addiw	a4,s2,1
    80004718:	00171793          	slli	a5,a4,0x1
    8000471c:	00e787b3          	add	a5,a5,a4
    80004720:	00379793          	slli	a5,a5,0x3
    80004724:	00f78793          	addi	a5,a5,15
    80004728:	ff07f793          	andi	a5,a5,-16
    8000472c:	40f10133          	sub	sp,sp,a5
    80004730:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004734:	00191c13          	slli	s8,s2,0x1
    80004738:	012c07b3          	add	a5,s8,s2
    8000473c:	00379793          	slli	a5,a5,0x3
    80004740:	00fa07b3          	add	a5,s4,a5
    80004744:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004748:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000474c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004750:	02800513          	li	a0,40
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	4d0080e7          	jalr	1232(ra) # 80001c24 <_Znwm>
    8000475c:	00050b13          	mv	s6,a0
    80004760:	012c0c33          	add	s8,s8,s2
    80004764:	003c1c13          	slli	s8,s8,0x3
    80004768:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	73c080e7          	jalr	1852(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    80004774:	00006797          	auipc	a5,0x6
    80004778:	ec478793          	addi	a5,a5,-316 # 8000a638 <_ZTV12ConsumerSync+0x10>
    8000477c:	00fb3023          	sd	a5,0(s6)
    80004780:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004784:	000b0513          	mv	a0,s6
    80004788:	ffffd097          	auipc	ra,0xffffd
    8000478c:	690080e7          	jalr	1680(ra) # 80001e18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004790:	00000493          	li	s1,0
    80004794:	0380006f          	j	800047cc <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004798:	00006797          	auipc	a5,0x6
    8000479c:	e7878793          	addi	a5,a5,-392 # 8000a610 <_ZTV12ProducerSync+0x10>
    800047a0:	00fcb023          	sd	a5,0(s9)
    800047a4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800047a8:	00349793          	slli	a5,s1,0x3
    800047ac:	00f987b3          	add	a5,s3,a5
    800047b0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800047b4:	00349793          	slli	a5,s1,0x3
    800047b8:	00f987b3          	add	a5,s3,a5
    800047bc:	0007b503          	ld	a0,0(a5)
    800047c0:	ffffd097          	auipc	ra,0xffffd
    800047c4:	658080e7          	jalr	1624(ra) # 80001e18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800047c8:	0014849b          	addiw	s1,s1,1
    800047cc:	0b24d063          	bge	s1,s2,8000486c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800047d0:	00149793          	slli	a5,s1,0x1
    800047d4:	009787b3          	add	a5,a5,s1
    800047d8:	00379793          	slli	a5,a5,0x3
    800047dc:	00fa07b3          	add	a5,s4,a5
    800047e0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800047e4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800047e8:	00006717          	auipc	a4,0x6
    800047ec:	f6873703          	ld	a4,-152(a4) # 8000a750 <_ZL10waitForAll>
    800047f0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800047f4:	02905863          	blez	s1,80004824 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800047f8:	02800513          	li	a0,40
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	428080e7          	jalr	1064(ra) # 80001c24 <_Znwm>
    80004804:	00050c93          	mv	s9,a0
    80004808:	00149c13          	slli	s8,s1,0x1
    8000480c:	009c0c33          	add	s8,s8,s1
    80004810:	003c1c13          	slli	s8,s8,0x3
    80004814:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	690080e7          	jalr	1680(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    80004820:	f79ff06f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004824:	02800513          	li	a0,40
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	3fc080e7          	jalr	1020(ra) # 80001c24 <_Znwm>
    80004830:	00050c93          	mv	s9,a0
    80004834:	00149c13          	slli	s8,s1,0x1
    80004838:	009c0c33          	add	s8,s8,s1
    8000483c:	003c1c13          	slli	s8,s8,0x3
    80004840:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	664080e7          	jalr	1636(ra) # 80001ea8 <_ZN6ThreadC1Ev>
    8000484c:	00006797          	auipc	a5,0x6
    80004850:	d9c78793          	addi	a5,a5,-612 # 8000a5e8 <_ZTV16ProducerKeyboard+0x10>
    80004854:	00fcb023          	sd	a5,0(s9)
    80004858:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000485c:	00349793          	slli	a5,s1,0x3
    80004860:	00f987b3          	add	a5,s3,a5
    80004864:	0197b023          	sd	s9,0(a5)
    80004868:	f4dff06f          	j	800047b4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	5e8080e7          	jalr	1512(ra) # 80001e54 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004874:	00000493          	li	s1,0
    80004878:	00994e63          	blt	s2,s1,80004894 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000487c:	00006517          	auipc	a0,0x6
    80004880:	ed453503          	ld	a0,-300(a0) # 8000a750 <_ZL10waitForAll>
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	690080e7          	jalr	1680(ra) # 80001f14 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000488c:	0014849b          	addiw	s1,s1,1
    80004890:	fe9ff06f          	j	80004878 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004894:	00000493          	li	s1,0
    80004898:	0080006f          	j	800048a0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000489c:	0014849b          	addiw	s1,s1,1
    800048a0:	0324d263          	bge	s1,s2,800048c4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800048a4:	00349793          	slli	a5,s1,0x3
    800048a8:	00f987b3          	add	a5,s3,a5
    800048ac:	0007b503          	ld	a0,0(a5)
    800048b0:	fe0506e3          	beqz	a0,8000489c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800048b4:	00053783          	ld	a5,0(a0)
    800048b8:	0087b783          	ld	a5,8(a5)
    800048bc:	000780e7          	jalr	a5
    800048c0:	fddff06f          	j	8000489c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800048c4:	000b0a63          	beqz	s6,800048d8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800048c8:	000b3783          	ld	a5,0(s6)
    800048cc:	0087b783          	ld	a5,8(a5)
    800048d0:	000b0513          	mv	a0,s6
    800048d4:	000780e7          	jalr	a5
    delete waitForAll;
    800048d8:	00006517          	auipc	a0,0x6
    800048dc:	e7853503          	ld	a0,-392(a0) # 8000a750 <_ZL10waitForAll>
    800048e0:	00050863          	beqz	a0,800048f0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800048e4:	00053783          	ld	a5,0(a0)
    800048e8:	0087b783          	ld	a5,8(a5)
    800048ec:	000780e7          	jalr	a5
    delete buffer;
    800048f0:	000a8e63          	beqz	s5,8000490c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800048f4:	000a8513          	mv	a0,s5
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	8a8080e7          	jalr	-1880(ra) # 800051a0 <_ZN9BufferCPPD1Ev>
    80004900:	000a8513          	mv	a0,s5
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	370080e7          	jalr	880(ra) # 80001c74 <_ZdlPv>
    8000490c:	000b8113          	mv	sp,s7

}
    80004910:	f8040113          	addi	sp,s0,-128
    80004914:	07813083          	ld	ra,120(sp)
    80004918:	07013403          	ld	s0,112(sp)
    8000491c:	06813483          	ld	s1,104(sp)
    80004920:	06013903          	ld	s2,96(sp)
    80004924:	05813983          	ld	s3,88(sp)
    80004928:	05013a03          	ld	s4,80(sp)
    8000492c:	04813a83          	ld	s5,72(sp)
    80004930:	04013b03          	ld	s6,64(sp)
    80004934:	03813b83          	ld	s7,56(sp)
    80004938:	03013c03          	ld	s8,48(sp)
    8000493c:	02813c83          	ld	s9,40(sp)
    80004940:	08010113          	addi	sp,sp,128
    80004944:	00008067          	ret
    80004948:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000494c:	000a8513          	mv	a0,s5
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	324080e7          	jalr	804(ra) # 80001c74 <_ZdlPv>
    80004958:	00048513          	mv	a0,s1
    8000495c:	00007097          	auipc	ra,0x7
    80004960:	edc080e7          	jalr	-292(ra) # 8000b838 <_Unwind_Resume>
    80004964:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004968:	00048513          	mv	a0,s1
    8000496c:	ffffd097          	auipc	ra,0xffffd
    80004970:	308080e7          	jalr	776(ra) # 80001c74 <_ZdlPv>
    80004974:	00090513          	mv	a0,s2
    80004978:	00007097          	auipc	ra,0x7
    8000497c:	ec0080e7          	jalr	-320(ra) # 8000b838 <_Unwind_Resume>
    80004980:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004984:	000b0513          	mv	a0,s6
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	2ec080e7          	jalr	748(ra) # 80001c74 <_ZdlPv>
    80004990:	00048513          	mv	a0,s1
    80004994:	00007097          	auipc	ra,0x7
    80004998:	ea4080e7          	jalr	-348(ra) # 8000b838 <_Unwind_Resume>
    8000499c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800049a0:	000c8513          	mv	a0,s9
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	2d0080e7          	jalr	720(ra) # 80001c74 <_ZdlPv>
    800049ac:	00048513          	mv	a0,s1
    800049b0:	00007097          	auipc	ra,0x7
    800049b4:	e88080e7          	jalr	-376(ra) # 8000b838 <_Unwind_Resume>
    800049b8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800049bc:	000c8513          	mv	a0,s9
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	2b4080e7          	jalr	692(ra) # 80001c74 <_ZdlPv>
    800049c8:	00048513          	mv	a0,s1
    800049cc:	00007097          	auipc	ra,0x7
    800049d0:	e6c080e7          	jalr	-404(ra) # 8000b838 <_Unwind_Resume>

00000000800049d4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800049d4:	ff010113          	addi	sp,sp,-16
    800049d8:	00113423          	sd	ra,8(sp)
    800049dc:	00813023          	sd	s0,0(sp)
    800049e0:	01010413          	addi	s0,sp,16
    800049e4:	00006797          	auipc	a5,0x6
    800049e8:	c5478793          	addi	a5,a5,-940 # 8000a638 <_ZTV12ConsumerSync+0x10>
    800049ec:	00f53023          	sd	a5,0(a0)
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	300080e7          	jalr	768(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    800049f8:	00813083          	ld	ra,8(sp)
    800049fc:	00013403          	ld	s0,0(sp)
    80004a00:	01010113          	addi	sp,sp,16
    80004a04:	00008067          	ret

0000000080004a08 <_ZN12ConsumerSyncD0Ev>:
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	02010413          	addi	s0,sp,32
    80004a1c:	00050493          	mv	s1,a0
    80004a20:	00006797          	auipc	a5,0x6
    80004a24:	c1878793          	addi	a5,a5,-1000 # 8000a638 <_ZTV12ConsumerSync+0x10>
    80004a28:	00f53023          	sd	a5,0(a0)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	2c4080e7          	jalr	708(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80004a34:	00048513          	mv	a0,s1
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	23c080e7          	jalr	572(ra) # 80001c74 <_ZdlPv>
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00813483          	ld	s1,8(sp)
    80004a4c:	02010113          	addi	sp,sp,32
    80004a50:	00008067          	ret

0000000080004a54 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004a54:	ff010113          	addi	sp,sp,-16
    80004a58:	00113423          	sd	ra,8(sp)
    80004a5c:	00813023          	sd	s0,0(sp)
    80004a60:	01010413          	addi	s0,sp,16
    80004a64:	00006797          	auipc	a5,0x6
    80004a68:	bac78793          	addi	a5,a5,-1108 # 8000a610 <_ZTV12ProducerSync+0x10>
    80004a6c:	00f53023          	sd	a5,0(a0)
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	280080e7          	jalr	640(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80004a78:	00813083          	ld	ra,8(sp)
    80004a7c:	00013403          	ld	s0,0(sp)
    80004a80:	01010113          	addi	sp,sp,16
    80004a84:	00008067          	ret

0000000080004a88 <_ZN12ProducerSyncD0Ev>:
    80004a88:	fe010113          	addi	sp,sp,-32
    80004a8c:	00113c23          	sd	ra,24(sp)
    80004a90:	00813823          	sd	s0,16(sp)
    80004a94:	00913423          	sd	s1,8(sp)
    80004a98:	02010413          	addi	s0,sp,32
    80004a9c:	00050493          	mv	s1,a0
    80004aa0:	00006797          	auipc	a5,0x6
    80004aa4:	b7078793          	addi	a5,a5,-1168 # 8000a610 <_ZTV12ProducerSync+0x10>
    80004aa8:	00f53023          	sd	a5,0(a0)
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	244080e7          	jalr	580(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80004ab4:	00048513          	mv	a0,s1
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	1bc080e7          	jalr	444(ra) # 80001c74 <_ZdlPv>
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret

0000000080004ad4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00113423          	sd	ra,8(sp)
    80004adc:	00813023          	sd	s0,0(sp)
    80004ae0:	01010413          	addi	s0,sp,16
    80004ae4:	00006797          	auipc	a5,0x6
    80004ae8:	b0478793          	addi	a5,a5,-1276 # 8000a5e8 <_ZTV16ProducerKeyboard+0x10>
    80004aec:	00f53023          	sd	a5,0(a0)
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	200080e7          	jalr	512(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80004af8:	00813083          	ld	ra,8(sp)
    80004afc:	00013403          	ld	s0,0(sp)
    80004b00:	01010113          	addi	sp,sp,16
    80004b04:	00008067          	ret

0000000080004b08 <_ZN16ProducerKeyboardD0Ev>:
    80004b08:	fe010113          	addi	sp,sp,-32
    80004b0c:	00113c23          	sd	ra,24(sp)
    80004b10:	00813823          	sd	s0,16(sp)
    80004b14:	00913423          	sd	s1,8(sp)
    80004b18:	02010413          	addi	s0,sp,32
    80004b1c:	00050493          	mv	s1,a0
    80004b20:	00006797          	auipc	a5,0x6
    80004b24:	ac878793          	addi	a5,a5,-1336 # 8000a5e8 <_ZTV16ProducerKeyboard+0x10>
    80004b28:	00f53023          	sd	a5,0(a0)
    80004b2c:	ffffd097          	auipc	ra,0xffffd
    80004b30:	1c4080e7          	jalr	452(ra) # 80001cf0 <_ZN6ThreadD1Ev>
    80004b34:	00048513          	mv	a0,s1
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	13c080e7          	jalr	316(ra) # 80001c74 <_ZdlPv>
    80004b40:	01813083          	ld	ra,24(sp)
    80004b44:	01013403          	ld	s0,16(sp)
    80004b48:	00813483          	ld	s1,8(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004b54:	ff010113          	addi	sp,sp,-16
    80004b58:	00113423          	sd	ra,8(sp)
    80004b5c:	00813023          	sd	s0,0(sp)
    80004b60:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004b64:	02053583          	ld	a1,32(a0)
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	7e4080e7          	jalr	2020(ra) # 8000434c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004b70:	00813083          	ld	ra,8(sp)
    80004b74:	00013403          	ld	s0,0(sp)
    80004b78:	01010113          	addi	sp,sp,16
    80004b7c:	00008067          	ret

0000000080004b80 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004b80:	ff010113          	addi	sp,sp,-16
    80004b84:	00113423          	sd	ra,8(sp)
    80004b88:	00813023          	sd	s0,0(sp)
    80004b8c:	01010413          	addi	s0,sp,16
        producer(td);
    80004b90:	02053583          	ld	a1,32(a0)
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	878080e7          	jalr	-1928(ra) # 8000440c <_ZN12ProducerSync8producerEPv>
    }
    80004b9c:	00813083          	ld	ra,8(sp)
    80004ba0:	00013403          	ld	s0,0(sp)
    80004ba4:	01010113          	addi	sp,sp,16
    80004ba8:	00008067          	ret

0000000080004bac <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004bac:	ff010113          	addi	sp,sp,-16
    80004bb0:	00113423          	sd	ra,8(sp)
    80004bb4:	00813023          	sd	s0,0(sp)
    80004bb8:	01010413          	addi	s0,sp,16
        consumer(td);
    80004bbc:	02053583          	ld	a1,32(a0)
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	8e0080e7          	jalr	-1824(ra) # 800044a0 <_ZN12ConsumerSync8consumerEPv>
    }
    80004bc8:	00813083          	ld	ra,8(sp)
    80004bcc:	00013403          	ld	s0,0(sp)
    80004bd0:	01010113          	addi	sp,sp,16
    80004bd4:	00008067          	ret

0000000080004bd8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00113c23          	sd	ra,24(sp)
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	02010413          	addi	s0,sp,32
    80004bec:	00050493          	mv	s1,a0
    LOCK();
    80004bf0:	00100613          	li	a2,1
    80004bf4:	00000593          	li	a1,0
    80004bf8:	00006517          	auipc	a0,0x6
    80004bfc:	b6050513          	addi	a0,a0,-1184 # 8000a758 <lockPrint>
    80004c00:	ffffc097          	auipc	ra,0xffffc
    80004c04:	624080e7          	jalr	1572(ra) # 80001224 <copy_and_swap>
    80004c08:	00050863          	beqz	a0,80004c18 <_Z11printStringPKc+0x40>
    80004c0c:	ffffc097          	auipc	ra,0xffffc
    80004c10:	69c080e7          	jalr	1692(ra) # 800012a8 <_Z15thread_dispatchv>
    80004c14:	fddff06f          	j	80004bf0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004c18:	0004c503          	lbu	a0,0(s1)
    80004c1c:	00050a63          	beqz	a0,80004c30 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004c20:	ffffd097          	auipc	ra,0xffffd
    80004c24:	854080e7          	jalr	-1964(ra) # 80001474 <_Z4putcc>
        string++;
    80004c28:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004c2c:	fedff06f          	j	80004c18 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004c30:	00000613          	li	a2,0
    80004c34:	00100593          	li	a1,1
    80004c38:	00006517          	auipc	a0,0x6
    80004c3c:	b2050513          	addi	a0,a0,-1248 # 8000a758 <lockPrint>
    80004c40:	ffffc097          	auipc	ra,0xffffc
    80004c44:	5e4080e7          	jalr	1508(ra) # 80001224 <copy_and_swap>
    80004c48:	fe0514e3          	bnez	a0,80004c30 <_Z11printStringPKc+0x58>
}
    80004c4c:	01813083          	ld	ra,24(sp)
    80004c50:	01013403          	ld	s0,16(sp)
    80004c54:	00813483          	ld	s1,8(sp)
    80004c58:	02010113          	addi	sp,sp,32
    80004c5c:	00008067          	ret

0000000080004c60 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004c60:	fd010113          	addi	sp,sp,-48
    80004c64:	02113423          	sd	ra,40(sp)
    80004c68:	02813023          	sd	s0,32(sp)
    80004c6c:	00913c23          	sd	s1,24(sp)
    80004c70:	01213823          	sd	s2,16(sp)
    80004c74:	01313423          	sd	s3,8(sp)
    80004c78:	01413023          	sd	s4,0(sp)
    80004c7c:	03010413          	addi	s0,sp,48
    80004c80:	00050993          	mv	s3,a0
    80004c84:	00058a13          	mv	s4,a1
    LOCK();
    80004c88:	00100613          	li	a2,1
    80004c8c:	00000593          	li	a1,0
    80004c90:	00006517          	auipc	a0,0x6
    80004c94:	ac850513          	addi	a0,a0,-1336 # 8000a758 <lockPrint>
    80004c98:	ffffc097          	auipc	ra,0xffffc
    80004c9c:	58c080e7          	jalr	1420(ra) # 80001224 <copy_and_swap>
    80004ca0:	00050863          	beqz	a0,80004cb0 <_Z9getStringPci+0x50>
    80004ca4:	ffffc097          	auipc	ra,0xffffc
    80004ca8:	604080e7          	jalr	1540(ra) # 800012a8 <_Z15thread_dispatchv>
    80004cac:	fddff06f          	j	80004c88 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004cb0:	00000913          	li	s2,0
    80004cb4:	00090493          	mv	s1,s2
    80004cb8:	0019091b          	addiw	s2,s2,1
    80004cbc:	03495a63          	bge	s2,s4,80004cf0 <_Z9getStringPci+0x90>
        cc = getc();
    80004cc0:	ffffc097          	auipc	ra,0xffffc
    80004cc4:	78c080e7          	jalr	1932(ra) # 8000144c <_Z4getcv>
        if(cc < 1)
    80004cc8:	02050463          	beqz	a0,80004cf0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004ccc:	009984b3          	add	s1,s3,s1
    80004cd0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004cd4:	00a00793          	li	a5,10
    80004cd8:	00f50a63          	beq	a0,a5,80004cec <_Z9getStringPci+0x8c>
    80004cdc:	00d00793          	li	a5,13
    80004ce0:	fcf51ae3          	bne	a0,a5,80004cb4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004ce4:	00090493          	mv	s1,s2
    80004ce8:	0080006f          	j	80004cf0 <_Z9getStringPci+0x90>
    80004cec:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004cf0:	009984b3          	add	s1,s3,s1
    80004cf4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004cf8:	00000613          	li	a2,0
    80004cfc:	00100593          	li	a1,1
    80004d00:	00006517          	auipc	a0,0x6
    80004d04:	a5850513          	addi	a0,a0,-1448 # 8000a758 <lockPrint>
    80004d08:	ffffc097          	auipc	ra,0xffffc
    80004d0c:	51c080e7          	jalr	1308(ra) # 80001224 <copy_and_swap>
    80004d10:	fe0514e3          	bnez	a0,80004cf8 <_Z9getStringPci+0x98>
    return buf;
}
    80004d14:	00098513          	mv	a0,s3
    80004d18:	02813083          	ld	ra,40(sp)
    80004d1c:	02013403          	ld	s0,32(sp)
    80004d20:	01813483          	ld	s1,24(sp)
    80004d24:	01013903          	ld	s2,16(sp)
    80004d28:	00813983          	ld	s3,8(sp)
    80004d2c:	00013a03          	ld	s4,0(sp)
    80004d30:	03010113          	addi	sp,sp,48
    80004d34:	00008067          	ret

0000000080004d38 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004d38:	ff010113          	addi	sp,sp,-16
    80004d3c:	00813423          	sd	s0,8(sp)
    80004d40:	01010413          	addi	s0,sp,16
    80004d44:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004d48:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004d4c:	0006c603          	lbu	a2,0(a3)
    80004d50:	fd06071b          	addiw	a4,a2,-48
    80004d54:	0ff77713          	andi	a4,a4,255
    80004d58:	00900793          	li	a5,9
    80004d5c:	02e7e063          	bltu	a5,a4,80004d7c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004d60:	0025179b          	slliw	a5,a0,0x2
    80004d64:	00a787bb          	addw	a5,a5,a0
    80004d68:	0017979b          	slliw	a5,a5,0x1
    80004d6c:	00168693          	addi	a3,a3,1
    80004d70:	00c787bb          	addw	a5,a5,a2
    80004d74:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004d78:	fd5ff06f          	j	80004d4c <_Z11stringToIntPKc+0x14>
    return n;
}
    80004d7c:	00813403          	ld	s0,8(sp)
    80004d80:	01010113          	addi	sp,sp,16
    80004d84:	00008067          	ret

0000000080004d88 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004d88:	fc010113          	addi	sp,sp,-64
    80004d8c:	02113c23          	sd	ra,56(sp)
    80004d90:	02813823          	sd	s0,48(sp)
    80004d94:	02913423          	sd	s1,40(sp)
    80004d98:	03213023          	sd	s2,32(sp)
    80004d9c:	01313c23          	sd	s3,24(sp)
    80004da0:	04010413          	addi	s0,sp,64
    80004da4:	00050493          	mv	s1,a0
    80004da8:	00058913          	mv	s2,a1
    80004dac:	00060993          	mv	s3,a2
    LOCK();
    80004db0:	00100613          	li	a2,1
    80004db4:	00000593          	li	a1,0
    80004db8:	00006517          	auipc	a0,0x6
    80004dbc:	9a050513          	addi	a0,a0,-1632 # 8000a758 <lockPrint>
    80004dc0:	ffffc097          	auipc	ra,0xffffc
    80004dc4:	464080e7          	jalr	1124(ra) # 80001224 <copy_and_swap>
    80004dc8:	00050863          	beqz	a0,80004dd8 <_Z8printIntiii+0x50>
    80004dcc:	ffffc097          	auipc	ra,0xffffc
    80004dd0:	4dc080e7          	jalr	1244(ra) # 800012a8 <_Z15thread_dispatchv>
    80004dd4:	fddff06f          	j	80004db0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004dd8:	00098463          	beqz	s3,80004de0 <_Z8printIntiii+0x58>
    80004ddc:	0804c463          	bltz	s1,80004e64 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004de0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004de4:	00000593          	li	a1,0
    }

    i = 0;
    80004de8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004dec:	0009079b          	sext.w	a5,s2
    80004df0:	0325773b          	remuw	a4,a0,s2
    80004df4:	00048613          	mv	a2,s1
    80004df8:	0014849b          	addiw	s1,s1,1
    80004dfc:	02071693          	slli	a3,a4,0x20
    80004e00:	0206d693          	srli	a3,a3,0x20
    80004e04:	00006717          	auipc	a4,0x6
    80004e08:	84c70713          	addi	a4,a4,-1972 # 8000a650 <digits>
    80004e0c:	00d70733          	add	a4,a4,a3
    80004e10:	00074683          	lbu	a3,0(a4)
    80004e14:	fd040713          	addi	a4,s0,-48
    80004e18:	00c70733          	add	a4,a4,a2
    80004e1c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004e20:	0005071b          	sext.w	a4,a0
    80004e24:	0325553b          	divuw	a0,a0,s2
    80004e28:	fcf772e3          	bgeu	a4,a5,80004dec <_Z8printIntiii+0x64>
    if(neg)
    80004e2c:	00058c63          	beqz	a1,80004e44 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004e30:	fd040793          	addi	a5,s0,-48
    80004e34:	009784b3          	add	s1,a5,s1
    80004e38:	02d00793          	li	a5,45
    80004e3c:	fef48823          	sb	a5,-16(s1)
    80004e40:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004e44:	fff4849b          	addiw	s1,s1,-1
    80004e48:	0204c463          	bltz	s1,80004e70 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004e4c:	fd040793          	addi	a5,s0,-48
    80004e50:	009787b3          	add	a5,a5,s1
    80004e54:	ff07c503          	lbu	a0,-16(a5)
    80004e58:	ffffc097          	auipc	ra,0xffffc
    80004e5c:	61c080e7          	jalr	1564(ra) # 80001474 <_Z4putcc>
    80004e60:	fe5ff06f          	j	80004e44 <_Z8printIntiii+0xbc>
        x = -xx;
    80004e64:	4090053b          	negw	a0,s1
        neg = 1;
    80004e68:	00100593          	li	a1,1
        x = -xx;
    80004e6c:	f7dff06f          	j	80004de8 <_Z8printIntiii+0x60>

    UNLOCK();
    80004e70:	00000613          	li	a2,0
    80004e74:	00100593          	li	a1,1
    80004e78:	00006517          	auipc	a0,0x6
    80004e7c:	8e050513          	addi	a0,a0,-1824 # 8000a758 <lockPrint>
    80004e80:	ffffc097          	auipc	ra,0xffffc
    80004e84:	3a4080e7          	jalr	932(ra) # 80001224 <copy_and_swap>
    80004e88:	fe0514e3          	bnez	a0,80004e70 <_Z8printIntiii+0xe8>
    80004e8c:	03813083          	ld	ra,56(sp)
    80004e90:	03013403          	ld	s0,48(sp)
    80004e94:	02813483          	ld	s1,40(sp)
    80004e98:	02013903          	ld	s2,32(sp)
    80004e9c:	01813983          	ld	s3,24(sp)
    80004ea0:	04010113          	addi	sp,sp,64
    80004ea4:	00008067          	ret

0000000080004ea8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004ea8:	fd010113          	addi	sp,sp,-48
    80004eac:	02113423          	sd	ra,40(sp)
    80004eb0:	02813023          	sd	s0,32(sp)
    80004eb4:	00913c23          	sd	s1,24(sp)
    80004eb8:	01213823          	sd	s2,16(sp)
    80004ebc:	01313423          	sd	s3,8(sp)
    80004ec0:	03010413          	addi	s0,sp,48
    80004ec4:	00050493          	mv	s1,a0
    80004ec8:	00058913          	mv	s2,a1
    80004ecc:	0015879b          	addiw	a5,a1,1
    80004ed0:	0007851b          	sext.w	a0,a5
    80004ed4:	00f4a023          	sw	a5,0(s1)
    80004ed8:	0004a823          	sw	zero,16(s1)
    80004edc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004ee0:	00251513          	slli	a0,a0,0x2
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	360080e7          	jalr	864(ra) # 80001244 <_Z9mem_allocm>
    80004eec:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004ef0:	01000513          	li	a0,16
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	d30080e7          	jalr	-720(ra) # 80001c24 <_Znwm>
    80004efc:	00050993          	mv	s3,a0
    80004f00:	00000593          	li	a1,0
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	fd8080e7          	jalr	-40(ra) # 80001edc <_ZN9SemaphoreC1Ej>
    80004f0c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004f10:	01000513          	li	a0,16
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	d10080e7          	jalr	-752(ra) # 80001c24 <_Znwm>
    80004f1c:	00050993          	mv	s3,a0
    80004f20:	00090593          	mv	a1,s2
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	fb8080e7          	jalr	-72(ra) # 80001edc <_ZN9SemaphoreC1Ej>
    80004f2c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004f30:	01000513          	li	a0,16
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	cf0080e7          	jalr	-784(ra) # 80001c24 <_Znwm>
    80004f3c:	00050913          	mv	s2,a0
    80004f40:	00100593          	li	a1,1
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	f98080e7          	jalr	-104(ra) # 80001edc <_ZN9SemaphoreC1Ej>
    80004f4c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004f50:	01000513          	li	a0,16
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	cd0080e7          	jalr	-816(ra) # 80001c24 <_Znwm>
    80004f5c:	00050913          	mv	s2,a0
    80004f60:	00100593          	li	a1,1
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	f78080e7          	jalr	-136(ra) # 80001edc <_ZN9SemaphoreC1Ej>
    80004f6c:	0324b823          	sd	s2,48(s1)
}
    80004f70:	02813083          	ld	ra,40(sp)
    80004f74:	02013403          	ld	s0,32(sp)
    80004f78:	01813483          	ld	s1,24(sp)
    80004f7c:	01013903          	ld	s2,16(sp)
    80004f80:	00813983          	ld	s3,8(sp)
    80004f84:	03010113          	addi	sp,sp,48
    80004f88:	00008067          	ret
    80004f8c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004f90:	00098513          	mv	a0,s3
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	ce0080e7          	jalr	-800(ra) # 80001c74 <_ZdlPv>
    80004f9c:	00048513          	mv	a0,s1
    80004fa0:	00007097          	auipc	ra,0x7
    80004fa4:	898080e7          	jalr	-1896(ra) # 8000b838 <_Unwind_Resume>
    80004fa8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004fac:	00098513          	mv	a0,s3
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	cc4080e7          	jalr	-828(ra) # 80001c74 <_ZdlPv>
    80004fb8:	00048513          	mv	a0,s1
    80004fbc:	00007097          	auipc	ra,0x7
    80004fc0:	87c080e7          	jalr	-1924(ra) # 8000b838 <_Unwind_Resume>
    80004fc4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004fc8:	00090513          	mv	a0,s2
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	ca8080e7          	jalr	-856(ra) # 80001c74 <_ZdlPv>
    80004fd4:	00048513          	mv	a0,s1
    80004fd8:	00007097          	auipc	ra,0x7
    80004fdc:	860080e7          	jalr	-1952(ra) # 8000b838 <_Unwind_Resume>
    80004fe0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004fe4:	00090513          	mv	a0,s2
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	c8c080e7          	jalr	-884(ra) # 80001c74 <_ZdlPv>
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00007097          	auipc	ra,0x7
    80004ff8:	844080e7          	jalr	-1980(ra) # 8000b838 <_Unwind_Resume>

0000000080004ffc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004ffc:	fe010113          	addi	sp,sp,-32
    80005000:	00113c23          	sd	ra,24(sp)
    80005004:	00813823          	sd	s0,16(sp)
    80005008:	00913423          	sd	s1,8(sp)
    8000500c:	01213023          	sd	s2,0(sp)
    80005010:	02010413          	addi	s0,sp,32
    80005014:	00050493          	mv	s1,a0
    80005018:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000501c:	01853503          	ld	a0,24(a0)
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	ef4080e7          	jalr	-268(ra) # 80001f14 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005028:	0304b503          	ld	a0,48(s1)
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	ee8080e7          	jalr	-280(ra) # 80001f14 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005034:	0084b783          	ld	a5,8(s1)
    80005038:	0144a703          	lw	a4,20(s1)
    8000503c:	00271713          	slli	a4,a4,0x2
    80005040:	00e787b3          	add	a5,a5,a4
    80005044:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005048:	0144a783          	lw	a5,20(s1)
    8000504c:	0017879b          	addiw	a5,a5,1
    80005050:	0004a703          	lw	a4,0(s1)
    80005054:	02e7e7bb          	remw	a5,a5,a4
    80005058:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000505c:	0304b503          	ld	a0,48(s1)
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	ee0080e7          	jalr	-288(ra) # 80001f40 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005068:	0204b503          	ld	a0,32(s1)
    8000506c:	ffffd097          	auipc	ra,0xffffd
    80005070:	ed4080e7          	jalr	-300(ra) # 80001f40 <_ZN9Semaphore6signalEv>

}
    80005074:	01813083          	ld	ra,24(sp)
    80005078:	01013403          	ld	s0,16(sp)
    8000507c:	00813483          	ld	s1,8(sp)
    80005080:	00013903          	ld	s2,0(sp)
    80005084:	02010113          	addi	sp,sp,32
    80005088:	00008067          	ret

000000008000508c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000508c:	fe010113          	addi	sp,sp,-32
    80005090:	00113c23          	sd	ra,24(sp)
    80005094:	00813823          	sd	s0,16(sp)
    80005098:	00913423          	sd	s1,8(sp)
    8000509c:	01213023          	sd	s2,0(sp)
    800050a0:	02010413          	addi	s0,sp,32
    800050a4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800050a8:	02053503          	ld	a0,32(a0)
    800050ac:	ffffd097          	auipc	ra,0xffffd
    800050b0:	e68080e7          	jalr	-408(ra) # 80001f14 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800050b4:	0284b503          	ld	a0,40(s1)
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	e5c080e7          	jalr	-420(ra) # 80001f14 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800050c0:	0084b703          	ld	a4,8(s1)
    800050c4:	0104a783          	lw	a5,16(s1)
    800050c8:	00279693          	slli	a3,a5,0x2
    800050cc:	00d70733          	add	a4,a4,a3
    800050d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800050d4:	0017879b          	addiw	a5,a5,1
    800050d8:	0004a703          	lw	a4,0(s1)
    800050dc:	02e7e7bb          	remw	a5,a5,a4
    800050e0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800050e4:	0284b503          	ld	a0,40(s1)
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	e58080e7          	jalr	-424(ra) # 80001f40 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800050f0:	0184b503          	ld	a0,24(s1)
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	e4c080e7          	jalr	-436(ra) # 80001f40 <_ZN9Semaphore6signalEv>

    return ret;
}
    800050fc:	00090513          	mv	a0,s2
    80005100:	01813083          	ld	ra,24(sp)
    80005104:	01013403          	ld	s0,16(sp)
    80005108:	00813483          	ld	s1,8(sp)
    8000510c:	00013903          	ld	s2,0(sp)
    80005110:	02010113          	addi	sp,sp,32
    80005114:	00008067          	ret

0000000080005118 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005118:	fe010113          	addi	sp,sp,-32
    8000511c:	00113c23          	sd	ra,24(sp)
    80005120:	00813823          	sd	s0,16(sp)
    80005124:	00913423          	sd	s1,8(sp)
    80005128:	01213023          	sd	s2,0(sp)
    8000512c:	02010413          	addi	s0,sp,32
    80005130:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005134:	02853503          	ld	a0,40(a0)
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	ddc080e7          	jalr	-548(ra) # 80001f14 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005140:	0304b503          	ld	a0,48(s1)
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	dd0080e7          	jalr	-560(ra) # 80001f14 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000514c:	0144a783          	lw	a5,20(s1)
    80005150:	0104a903          	lw	s2,16(s1)
    80005154:	0327ce63          	blt	a5,s2,80005190 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005158:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000515c:	0304b503          	ld	a0,48(s1)
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	de0080e7          	jalr	-544(ra) # 80001f40 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005168:	0284b503          	ld	a0,40(s1)
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	dd4080e7          	jalr	-556(ra) # 80001f40 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005174:	00090513          	mv	a0,s2
    80005178:	01813083          	ld	ra,24(sp)
    8000517c:	01013403          	ld	s0,16(sp)
    80005180:	00813483          	ld	s1,8(sp)
    80005184:	00013903          	ld	s2,0(sp)
    80005188:	02010113          	addi	sp,sp,32
    8000518c:	00008067          	ret
        ret = cap - head + tail;
    80005190:	0004a703          	lw	a4,0(s1)
    80005194:	4127093b          	subw	s2,a4,s2
    80005198:	00f9093b          	addw	s2,s2,a5
    8000519c:	fc1ff06f          	j	8000515c <_ZN9BufferCPP6getCntEv+0x44>

00000000800051a0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00113c23          	sd	ra,24(sp)
    800051a8:	00813823          	sd	s0,16(sp)
    800051ac:	00913423          	sd	s1,8(sp)
    800051b0:	02010413          	addi	s0,sp,32
    800051b4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800051b8:	00a00513          	li	a0,10
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	e64080e7          	jalr	-412(ra) # 80002020 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800051c4:	00003517          	auipc	a0,0x3
    800051c8:	0fc50513          	addi	a0,a0,252 # 800082c0 <CONSOLE_STATUS+0x2b0>
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	a0c080e7          	jalr	-1524(ra) # 80004bd8 <_Z11printStringPKc>
    while (getCnt()) {
    800051d4:	00048513          	mv	a0,s1
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	f40080e7          	jalr	-192(ra) # 80005118 <_ZN9BufferCPP6getCntEv>
    800051e0:	02050c63          	beqz	a0,80005218 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800051e4:	0084b783          	ld	a5,8(s1)
    800051e8:	0104a703          	lw	a4,16(s1)
    800051ec:	00271713          	slli	a4,a4,0x2
    800051f0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800051f4:	0007c503          	lbu	a0,0(a5)
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	e28080e7          	jalr	-472(ra) # 80002020 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005200:	0104a783          	lw	a5,16(s1)
    80005204:	0017879b          	addiw	a5,a5,1
    80005208:	0004a703          	lw	a4,0(s1)
    8000520c:	02e7e7bb          	remw	a5,a5,a4
    80005210:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005214:	fc1ff06f          	j	800051d4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005218:	02100513          	li	a0,33
    8000521c:	ffffd097          	auipc	ra,0xffffd
    80005220:	e04080e7          	jalr	-508(ra) # 80002020 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005224:	00a00513          	li	a0,10
    80005228:	ffffd097          	auipc	ra,0xffffd
    8000522c:	df8080e7          	jalr	-520(ra) # 80002020 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005230:	0084b503          	ld	a0,8(s1)
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	048080e7          	jalr	72(ra) # 8000127c <_Z8mem_freePv>
    delete itemAvailable;
    8000523c:	0204b503          	ld	a0,32(s1)
    80005240:	00050863          	beqz	a0,80005250 <_ZN9BufferCPPD1Ev+0xb0>
    80005244:	00053783          	ld	a5,0(a0)
    80005248:	0087b783          	ld	a5,8(a5)
    8000524c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005250:	0184b503          	ld	a0,24(s1)
    80005254:	00050863          	beqz	a0,80005264 <_ZN9BufferCPPD1Ev+0xc4>
    80005258:	00053783          	ld	a5,0(a0)
    8000525c:	0087b783          	ld	a5,8(a5)
    80005260:	000780e7          	jalr	a5
    delete mutexTail;
    80005264:	0304b503          	ld	a0,48(s1)
    80005268:	00050863          	beqz	a0,80005278 <_ZN9BufferCPPD1Ev+0xd8>
    8000526c:	00053783          	ld	a5,0(a0)
    80005270:	0087b783          	ld	a5,8(a5)
    80005274:	000780e7          	jalr	a5
    delete mutexHead;
    80005278:	0284b503          	ld	a0,40(s1)
    8000527c:	00050863          	beqz	a0,8000528c <_ZN9BufferCPPD1Ev+0xec>
    80005280:	00053783          	ld	a5,0(a0)
    80005284:	0087b783          	ld	a5,8(a5)
    80005288:	000780e7          	jalr	a5
}
    8000528c:	01813083          	ld	ra,24(sp)
    80005290:	01013403          	ld	s0,16(sp)
    80005294:	00813483          	ld	s1,8(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret

00000000800052a0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800052a0:	fe010113          	addi	sp,sp,-32
    800052a4:	00113c23          	sd	ra,24(sp)
    800052a8:	00813823          	sd	s0,16(sp)
    800052ac:	00913423          	sd	s1,8(sp)
    800052b0:	01213023          	sd	s2,0(sp)
    800052b4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800052b8:	00003517          	auipc	a0,0x3
    800052bc:	02050513          	addi	a0,a0,32 # 800082d8 <CONSOLE_STATUS+0x2c8>
    800052c0:	00000097          	auipc	ra,0x0
    800052c4:	918080e7          	jalr	-1768(ra) # 80004bd8 <_Z11printStringPKc>
    int test = getc() - '0';
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	184080e7          	jalr	388(ra) # 8000144c <_Z4getcv>
    800052d0:	00050913          	mv	s2,a0
    800052d4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	174080e7          	jalr	372(ra) # 8000144c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800052e0:	fcb9091b          	addiw	s2,s2,-53
    800052e4:	00100793          	li	a5,1
    800052e8:	0327f463          	bgeu	a5,s2,80005310 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800052ec:	00700793          	li	a5,7
    800052f0:	0e97e263          	bltu	a5,s1,800053d4 <_Z8userMainv+0x134>
    800052f4:	00249493          	slli	s1,s1,0x2
    800052f8:	00003717          	auipc	a4,0x3
    800052fc:	1f870713          	addi	a4,a4,504 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80005300:	00e484b3          	add	s1,s1,a4
    80005304:	0004a783          	lw	a5,0(s1)
    80005308:	00e787b3          	add	a5,a5,a4
    8000530c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005310:	00003517          	auipc	a0,0x3
    80005314:	fe850513          	addi	a0,a0,-24 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	8c0080e7          	jalr	-1856(ra) # 80004bd8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005320:	01813083          	ld	ra,24(sp)
    80005324:	01013403          	ld	s0,16(sp)
    80005328:	00813483          	ld	s1,8(sp)
    8000532c:	00013903          	ld	s2,0(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret
            Threads_C_API_test();
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	f18080e7          	jalr	-232(ra) # 80004250 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005340:	00003517          	auipc	a0,0x3
    80005344:	fe850513          	addi	a0,a0,-24 # 80008328 <CONSOLE_STATUS+0x318>
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	890080e7          	jalr	-1904(ra) # 80004bd8 <_Z11printStringPKc>
            break;
    80005350:	fd1ff06f          	j	80005320 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005354:	ffffe097          	auipc	ra,0xffffe
    80005358:	ddc080e7          	jalr	-548(ra) # 80003130 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000535c:	00003517          	auipc	a0,0x3
    80005360:	00c50513          	addi	a0,a0,12 # 80008368 <CONSOLE_STATUS+0x358>
    80005364:	00000097          	auipc	ra,0x0
    80005368:	874080e7          	jalr	-1932(ra) # 80004bd8 <_Z11printStringPKc>
            break;
    8000536c:	fb5ff06f          	j	80005320 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	614080e7          	jalr	1556(ra) # 80002984 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005378:	00003517          	auipc	a0,0x3
    8000537c:	03050513          	addi	a0,a0,48 # 800083a8 <CONSOLE_STATUS+0x398>
    80005380:	00000097          	auipc	ra,0x0
    80005384:	858080e7          	jalr	-1960(ra) # 80004bd8 <_Z11printStringPKc>
            break;
    80005388:	f99ff06f          	j	80005320 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000538c:	fffff097          	auipc	ra,0xfffff
    80005390:	208080e7          	jalr	520(ra) # 80004594 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005394:	00003517          	auipc	a0,0x3
    80005398:	06450513          	addi	a0,a0,100 # 800083f8 <CONSOLE_STATUS+0x3e8>
    8000539c:	00000097          	auipc	ra,0x0
    800053a0:	83c080e7          	jalr	-1988(ra) # 80004bd8 <_Z11printStringPKc>
            break;
    800053a4:	f7dff06f          	j	80005320 <_Z8userMainv+0x80>
            System_Mode_test();
    800053a8:	00000097          	auipc	ra,0x0
    800053ac:	658080e7          	jalr	1624(ra) # 80005a00 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800053b0:	00003517          	auipc	a0,0x3
    800053b4:	0a050513          	addi	a0,a0,160 # 80008450 <CONSOLE_STATUS+0x440>
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	820080e7          	jalr	-2016(ra) # 80004bd8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800053c0:	00003517          	auipc	a0,0x3
    800053c4:	0b050513          	addi	a0,a0,176 # 80008470 <CONSOLE_STATUS+0x460>
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	810080e7          	jalr	-2032(ra) # 80004bd8 <_Z11printStringPKc>
            break;
    800053d0:	f51ff06f          	j	80005320 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800053d4:	00003517          	auipc	a0,0x3
    800053d8:	0f450513          	addi	a0,a0,244 # 800084c8 <CONSOLE_STATUS+0x4b8>
    800053dc:	fffff097          	auipc	ra,0xfffff
    800053e0:	7fc080e7          	jalr	2044(ra) # 80004bd8 <_Z11printStringPKc>
    800053e4:	f3dff06f          	j	80005320 <_Z8userMainv+0x80>

00000000800053e8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800053e8:	fe010113          	addi	sp,sp,-32
    800053ec:	00113c23          	sd	ra,24(sp)
    800053f0:	00813823          	sd	s0,16(sp)
    800053f4:	00913423          	sd	s1,8(sp)
    800053f8:	01213023          	sd	s2,0(sp)
    800053fc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005400:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005404:	00600493          	li	s1,6
    while (--i > 0) {
    80005408:	fff4849b          	addiw	s1,s1,-1
    8000540c:	04905463          	blez	s1,80005454 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005410:	00003517          	auipc	a0,0x3
    80005414:	10050513          	addi	a0,a0,256 # 80008510 <CONSOLE_STATUS+0x500>
    80005418:	fffff097          	auipc	ra,0xfffff
    8000541c:	7c0080e7          	jalr	1984(ra) # 80004bd8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005420:	00000613          	li	a2,0
    80005424:	00a00593          	li	a1,10
    80005428:	0009051b          	sext.w	a0,s2
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	95c080e7          	jalr	-1700(ra) # 80004d88 <_Z8printIntiii>
        printString(" !\n");
    80005434:	00003517          	auipc	a0,0x3
    80005438:	0e450513          	addi	a0,a0,228 # 80008518 <CONSOLE_STATUS+0x508>
    8000543c:	fffff097          	auipc	ra,0xfffff
    80005440:	79c080e7          	jalr	1948(ra) # 80004bd8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005444:	00090513          	mv	a0,s2
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	070080e7          	jalr	112(ra) # 800014b8 <_Z10time_sleepm>
    while (--i > 0) {
    80005450:	fb9ff06f          	j	80005408 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005454:	00a00793          	li	a5,10
    80005458:	02f95933          	divu	s2,s2,a5
    8000545c:	fff90913          	addi	s2,s2,-1
    80005460:	00005797          	auipc	a5,0x5
    80005464:	30078793          	addi	a5,a5,768 # 8000a760 <_ZL8finished>
    80005468:	01278933          	add	s2,a5,s2
    8000546c:	00100793          	li	a5,1
    80005470:	00f90023          	sb	a5,0(s2)
}
    80005474:	01813083          	ld	ra,24(sp)
    80005478:	01013403          	ld	s0,16(sp)
    8000547c:	00813483          	ld	s1,8(sp)
    80005480:	00013903          	ld	s2,0(sp)
    80005484:	02010113          	addi	sp,sp,32
    80005488:	00008067          	ret

000000008000548c <_Z12testSleepingv>:

void testSleeping() {
    8000548c:	fc010113          	addi	sp,sp,-64
    80005490:	02113c23          	sd	ra,56(sp)
    80005494:	02813823          	sd	s0,48(sp)
    80005498:	02913423          	sd	s1,40(sp)
    8000549c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800054a0:	00a00793          	li	a5,10
    800054a4:	fcf43823          	sd	a5,-48(s0)
    800054a8:	01400793          	li	a5,20
    800054ac:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800054b0:	00000493          	li	s1,0
    800054b4:	02c0006f          	j	800054e0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800054b8:	00349793          	slli	a5,s1,0x3
    800054bc:	fd040613          	addi	a2,s0,-48
    800054c0:	00f60633          	add	a2,a2,a5
    800054c4:	00000597          	auipc	a1,0x0
    800054c8:	f2458593          	addi	a1,a1,-220 # 800053e8 <_ZL9sleepyRunPv>
    800054cc:	fc040513          	addi	a0,s0,-64
    800054d0:	00f50533          	add	a0,a0,a5
    800054d4:	ffffc097          	auipc	ra,0xffffc
    800054d8:	e1c080e7          	jalr	-484(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800054dc:	0014849b          	addiw	s1,s1,1
    800054e0:	00100793          	li	a5,1
    800054e4:	fc97dae3          	bge	a5,s1,800054b8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800054e8:	00005797          	auipc	a5,0x5
    800054ec:	2787c783          	lbu	a5,632(a5) # 8000a760 <_ZL8finished>
    800054f0:	fe078ce3          	beqz	a5,800054e8 <_Z12testSleepingv+0x5c>
    800054f4:	00005797          	auipc	a5,0x5
    800054f8:	26d7c783          	lbu	a5,621(a5) # 8000a761 <_ZL8finished+0x1>
    800054fc:	fe0786e3          	beqz	a5,800054e8 <_Z12testSleepingv+0x5c>
}
    80005500:	03813083          	ld	ra,56(sp)
    80005504:	03013403          	ld	s0,48(sp)
    80005508:	02813483          	ld	s1,40(sp)
    8000550c:	04010113          	addi	sp,sp,64
    80005510:	00008067          	ret

0000000080005514 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005514:	fe010113          	addi	sp,sp,-32
    80005518:	00113c23          	sd	ra,24(sp)
    8000551c:	00813823          	sd	s0,16(sp)
    80005520:	00913423          	sd	s1,8(sp)
    80005524:	01213023          	sd	s2,0(sp)
    80005528:	02010413          	addi	s0,sp,32
    8000552c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005530:	00100793          	li	a5,1
    80005534:	02a7f863          	bgeu	a5,a0,80005564 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005538:	00a00793          	li	a5,10
    8000553c:	02f577b3          	remu	a5,a0,a5
    80005540:	02078e63          	beqz	a5,8000557c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005544:	fff48513          	addi	a0,s1,-1
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	fcc080e7          	jalr	-52(ra) # 80005514 <_ZL9fibonaccim>
    80005550:	00050913          	mv	s2,a0
    80005554:	ffe48513          	addi	a0,s1,-2
    80005558:	00000097          	auipc	ra,0x0
    8000555c:	fbc080e7          	jalr	-68(ra) # 80005514 <_ZL9fibonaccim>
    80005560:	00a90533          	add	a0,s2,a0
}
    80005564:	01813083          	ld	ra,24(sp)
    80005568:	01013403          	ld	s0,16(sp)
    8000556c:	00813483          	ld	s1,8(sp)
    80005570:	00013903          	ld	s2,0(sp)
    80005574:	02010113          	addi	sp,sp,32
    80005578:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	d2c080e7          	jalr	-724(ra) # 800012a8 <_Z15thread_dispatchv>
    80005584:	fc1ff06f          	j	80005544 <_ZL9fibonaccim+0x30>

0000000080005588 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005588:	fe010113          	addi	sp,sp,-32
    8000558c:	00113c23          	sd	ra,24(sp)
    80005590:	00813823          	sd	s0,16(sp)
    80005594:	00913423          	sd	s1,8(sp)
    80005598:	01213023          	sd	s2,0(sp)
    8000559c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800055a0:	00a00493          	li	s1,10
    800055a4:	0400006f          	j	800055e4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055a8:	00003517          	auipc	a0,0x3
    800055ac:	c8050513          	addi	a0,a0,-896 # 80008228 <CONSOLE_STATUS+0x218>
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	628080e7          	jalr	1576(ra) # 80004bd8 <_Z11printStringPKc>
    800055b8:	00000613          	li	a2,0
    800055bc:	00a00593          	li	a1,10
    800055c0:	00048513          	mv	a0,s1
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	7c4080e7          	jalr	1988(ra) # 80004d88 <_Z8printIntiii>
    800055cc:	00003517          	auipc	a0,0x3
    800055d0:	e7c50513          	addi	a0,a0,-388 # 80008448 <CONSOLE_STATUS+0x438>
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	604080e7          	jalr	1540(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800055dc:	0014849b          	addiw	s1,s1,1
    800055e0:	0ff4f493          	andi	s1,s1,255
    800055e4:	00c00793          	li	a5,12
    800055e8:	fc97f0e3          	bgeu	a5,s1,800055a8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800055ec:	00003517          	auipc	a0,0x3
    800055f0:	c4450513          	addi	a0,a0,-956 # 80008230 <CONSOLE_STATUS+0x220>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	5e4080e7          	jalr	1508(ra) # 80004bd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800055fc:	00500313          	li	t1,5
    thread_dispatch();
    80005600:	ffffc097          	auipc	ra,0xffffc
    80005604:	ca8080e7          	jalr	-856(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005608:	01000513          	li	a0,16
    8000560c:	00000097          	auipc	ra,0x0
    80005610:	f08080e7          	jalr	-248(ra) # 80005514 <_ZL9fibonaccim>
    80005614:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005618:	00003517          	auipc	a0,0x3
    8000561c:	c2850513          	addi	a0,a0,-984 # 80008240 <CONSOLE_STATUS+0x230>
    80005620:	fffff097          	auipc	ra,0xfffff
    80005624:	5b8080e7          	jalr	1464(ra) # 80004bd8 <_Z11printStringPKc>
    80005628:	00000613          	li	a2,0
    8000562c:	00a00593          	li	a1,10
    80005630:	0009051b          	sext.w	a0,s2
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	754080e7          	jalr	1876(ra) # 80004d88 <_Z8printIntiii>
    8000563c:	00003517          	auipc	a0,0x3
    80005640:	e0c50513          	addi	a0,a0,-500 # 80008448 <CONSOLE_STATUS+0x438>
    80005644:	fffff097          	auipc	ra,0xfffff
    80005648:	594080e7          	jalr	1428(ra) # 80004bd8 <_Z11printStringPKc>
    8000564c:	0400006f          	j	8000568c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005650:	00003517          	auipc	a0,0x3
    80005654:	bd850513          	addi	a0,a0,-1064 # 80008228 <CONSOLE_STATUS+0x218>
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	580080e7          	jalr	1408(ra) # 80004bd8 <_Z11printStringPKc>
    80005660:	00000613          	li	a2,0
    80005664:	00a00593          	li	a1,10
    80005668:	00048513          	mv	a0,s1
    8000566c:	fffff097          	auipc	ra,0xfffff
    80005670:	71c080e7          	jalr	1820(ra) # 80004d88 <_Z8printIntiii>
    80005674:	00003517          	auipc	a0,0x3
    80005678:	dd450513          	addi	a0,a0,-556 # 80008448 <CONSOLE_STATUS+0x438>
    8000567c:	fffff097          	auipc	ra,0xfffff
    80005680:	55c080e7          	jalr	1372(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005684:	0014849b          	addiw	s1,s1,1
    80005688:	0ff4f493          	andi	s1,s1,255
    8000568c:	00f00793          	li	a5,15
    80005690:	fc97f0e3          	bgeu	a5,s1,80005650 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005694:	00003517          	auipc	a0,0x3
    80005698:	bbc50513          	addi	a0,a0,-1092 # 80008250 <CONSOLE_STATUS+0x240>
    8000569c:	fffff097          	auipc	ra,0xfffff
    800056a0:	53c080e7          	jalr	1340(ra) # 80004bd8 <_Z11printStringPKc>
    finishedD = true;
    800056a4:	00100793          	li	a5,1
    800056a8:	00005717          	auipc	a4,0x5
    800056ac:	0af70d23          	sb	a5,186(a4) # 8000a762 <_ZL9finishedD>
    thread_dispatch();
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	bf8080e7          	jalr	-1032(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800056b8:	01813083          	ld	ra,24(sp)
    800056bc:	01013403          	ld	s0,16(sp)
    800056c0:	00813483          	ld	s1,8(sp)
    800056c4:	00013903          	ld	s2,0(sp)
    800056c8:	02010113          	addi	sp,sp,32
    800056cc:	00008067          	ret

00000000800056d0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800056d0:	fe010113          	addi	sp,sp,-32
    800056d4:	00113c23          	sd	ra,24(sp)
    800056d8:	00813823          	sd	s0,16(sp)
    800056dc:	00913423          	sd	s1,8(sp)
    800056e0:	01213023          	sd	s2,0(sp)
    800056e4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800056e8:	00000493          	li	s1,0
    800056ec:	0400006f          	j	8000572c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800056f0:	00003517          	auipc	a0,0x3
    800056f4:	af850513          	addi	a0,a0,-1288 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800056f8:	fffff097          	auipc	ra,0xfffff
    800056fc:	4e0080e7          	jalr	1248(ra) # 80004bd8 <_Z11printStringPKc>
    80005700:	00000613          	li	a2,0
    80005704:	00a00593          	li	a1,10
    80005708:	00048513          	mv	a0,s1
    8000570c:	fffff097          	auipc	ra,0xfffff
    80005710:	67c080e7          	jalr	1660(ra) # 80004d88 <_Z8printIntiii>
    80005714:	00003517          	auipc	a0,0x3
    80005718:	d3450513          	addi	a0,a0,-716 # 80008448 <CONSOLE_STATUS+0x438>
    8000571c:	fffff097          	auipc	ra,0xfffff
    80005720:	4bc080e7          	jalr	1212(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005724:	0014849b          	addiw	s1,s1,1
    80005728:	0ff4f493          	andi	s1,s1,255
    8000572c:	00200793          	li	a5,2
    80005730:	fc97f0e3          	bgeu	a5,s1,800056f0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005734:	00003517          	auipc	a0,0x3
    80005738:	abc50513          	addi	a0,a0,-1348 # 800081f0 <CONSOLE_STATUS+0x1e0>
    8000573c:	fffff097          	auipc	ra,0xfffff
    80005740:	49c080e7          	jalr	1180(ra) # 80004bd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005744:	00700313          	li	t1,7
    thread_dispatch();
    80005748:	ffffc097          	auipc	ra,0xffffc
    8000574c:	b60080e7          	jalr	-1184(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005750:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005754:	00003517          	auipc	a0,0x3
    80005758:	aac50513          	addi	a0,a0,-1364 # 80008200 <CONSOLE_STATUS+0x1f0>
    8000575c:	fffff097          	auipc	ra,0xfffff
    80005760:	47c080e7          	jalr	1148(ra) # 80004bd8 <_Z11printStringPKc>
    80005764:	00000613          	li	a2,0
    80005768:	00a00593          	li	a1,10
    8000576c:	0009051b          	sext.w	a0,s2
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	618080e7          	jalr	1560(ra) # 80004d88 <_Z8printIntiii>
    80005778:	00003517          	auipc	a0,0x3
    8000577c:	cd050513          	addi	a0,a0,-816 # 80008448 <CONSOLE_STATUS+0x438>
    80005780:	fffff097          	auipc	ra,0xfffff
    80005784:	458080e7          	jalr	1112(ra) # 80004bd8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005788:	00c00513          	li	a0,12
    8000578c:	00000097          	auipc	ra,0x0
    80005790:	d88080e7          	jalr	-632(ra) # 80005514 <_ZL9fibonaccim>
    80005794:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005798:	00003517          	auipc	a0,0x3
    8000579c:	a7050513          	addi	a0,a0,-1424 # 80008208 <CONSOLE_STATUS+0x1f8>
    800057a0:	fffff097          	auipc	ra,0xfffff
    800057a4:	438080e7          	jalr	1080(ra) # 80004bd8 <_Z11printStringPKc>
    800057a8:	00000613          	li	a2,0
    800057ac:	00a00593          	li	a1,10
    800057b0:	0009051b          	sext.w	a0,s2
    800057b4:	fffff097          	auipc	ra,0xfffff
    800057b8:	5d4080e7          	jalr	1492(ra) # 80004d88 <_Z8printIntiii>
    800057bc:	00003517          	auipc	a0,0x3
    800057c0:	c8c50513          	addi	a0,a0,-884 # 80008448 <CONSOLE_STATUS+0x438>
    800057c4:	fffff097          	auipc	ra,0xfffff
    800057c8:	414080e7          	jalr	1044(ra) # 80004bd8 <_Z11printStringPKc>
    800057cc:	0400006f          	j	8000580c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800057d0:	00003517          	auipc	a0,0x3
    800057d4:	a1850513          	addi	a0,a0,-1512 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800057d8:	fffff097          	auipc	ra,0xfffff
    800057dc:	400080e7          	jalr	1024(ra) # 80004bd8 <_Z11printStringPKc>
    800057e0:	00000613          	li	a2,0
    800057e4:	00a00593          	li	a1,10
    800057e8:	00048513          	mv	a0,s1
    800057ec:	fffff097          	auipc	ra,0xfffff
    800057f0:	59c080e7          	jalr	1436(ra) # 80004d88 <_Z8printIntiii>
    800057f4:	00003517          	auipc	a0,0x3
    800057f8:	c5450513          	addi	a0,a0,-940 # 80008448 <CONSOLE_STATUS+0x438>
    800057fc:	fffff097          	auipc	ra,0xfffff
    80005800:	3dc080e7          	jalr	988(ra) # 80004bd8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005804:	0014849b          	addiw	s1,s1,1
    80005808:	0ff4f493          	andi	s1,s1,255
    8000580c:	00500793          	li	a5,5
    80005810:	fc97f0e3          	bgeu	a5,s1,800057d0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005814:	00003517          	auipc	a0,0x3
    80005818:	9ac50513          	addi	a0,a0,-1620 # 800081c0 <CONSOLE_STATUS+0x1b0>
    8000581c:	fffff097          	auipc	ra,0xfffff
    80005820:	3bc080e7          	jalr	956(ra) # 80004bd8 <_Z11printStringPKc>
    finishedC = true;
    80005824:	00100793          	li	a5,1
    80005828:	00005717          	auipc	a4,0x5
    8000582c:	f2f70da3          	sb	a5,-197(a4) # 8000a763 <_ZL9finishedC>
    thread_dispatch();
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	a78080e7          	jalr	-1416(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005838:	01813083          	ld	ra,24(sp)
    8000583c:	01013403          	ld	s0,16(sp)
    80005840:	00813483          	ld	s1,8(sp)
    80005844:	00013903          	ld	s2,0(sp)
    80005848:	02010113          	addi	sp,sp,32
    8000584c:	00008067          	ret

0000000080005850 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005850:	fe010113          	addi	sp,sp,-32
    80005854:	00113c23          	sd	ra,24(sp)
    80005858:	00813823          	sd	s0,16(sp)
    8000585c:	00913423          	sd	s1,8(sp)
    80005860:	01213023          	sd	s2,0(sp)
    80005864:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005868:	00000913          	li	s2,0
    8000586c:	0400006f          	j	800058ac <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	a38080e7          	jalr	-1480(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005878:	00148493          	addi	s1,s1,1
    8000587c:	000027b7          	lui	a5,0x2
    80005880:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005884:	0097ee63          	bltu	a5,s1,800058a0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005888:	00000713          	li	a4,0
    8000588c:	000077b7          	lui	a5,0x7
    80005890:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005894:	fce7eee3          	bltu	a5,a4,80005870 <_ZL11workerBodyBPv+0x20>
    80005898:	00170713          	addi	a4,a4,1
    8000589c:	ff1ff06f          	j	8000588c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800058a0:	00a00793          	li	a5,10
    800058a4:	04f90663          	beq	s2,a5,800058f0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800058a8:	00190913          	addi	s2,s2,1
    800058ac:	00f00793          	li	a5,15
    800058b0:	0527e463          	bltu	a5,s2,800058f8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800058b4:	00003517          	auipc	a0,0x3
    800058b8:	91c50513          	addi	a0,a0,-1764 # 800081d0 <CONSOLE_STATUS+0x1c0>
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	31c080e7          	jalr	796(ra) # 80004bd8 <_Z11printStringPKc>
    800058c4:	00000613          	li	a2,0
    800058c8:	00a00593          	li	a1,10
    800058cc:	0009051b          	sext.w	a0,s2
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	4b8080e7          	jalr	1208(ra) # 80004d88 <_Z8printIntiii>
    800058d8:	00003517          	auipc	a0,0x3
    800058dc:	b7050513          	addi	a0,a0,-1168 # 80008448 <CONSOLE_STATUS+0x438>
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	2f8080e7          	jalr	760(ra) # 80004bd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058e8:	00000493          	li	s1,0
    800058ec:	f91ff06f          	j	8000587c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800058f0:	14102ff3          	csrr	t6,sepc
    800058f4:	fb5ff06f          	j	800058a8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800058f8:	00003517          	auipc	a0,0x3
    800058fc:	8e050513          	addi	a0,a0,-1824 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80005900:	fffff097          	auipc	ra,0xfffff
    80005904:	2d8080e7          	jalr	728(ra) # 80004bd8 <_Z11printStringPKc>
    finishedB = true;
    80005908:	00100793          	li	a5,1
    8000590c:	00005717          	auipc	a4,0x5
    80005910:	e4f70c23          	sb	a5,-424(a4) # 8000a764 <_ZL9finishedB>
    thread_dispatch();
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	994080e7          	jalr	-1644(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000591c:	01813083          	ld	ra,24(sp)
    80005920:	01013403          	ld	s0,16(sp)
    80005924:	00813483          	ld	s1,8(sp)
    80005928:	00013903          	ld	s2,0(sp)
    8000592c:	02010113          	addi	sp,sp,32
    80005930:	00008067          	ret

0000000080005934 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005934:	fe010113          	addi	sp,sp,-32
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00913423          	sd	s1,8(sp)
    80005944:	01213023          	sd	s2,0(sp)
    80005948:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000594c:	00000913          	li	s2,0
    80005950:	0380006f          	j	80005988 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	954080e7          	jalr	-1708(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000595c:	00148493          	addi	s1,s1,1
    80005960:	000027b7          	lui	a5,0x2
    80005964:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005968:	0097ee63          	bltu	a5,s1,80005984 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000596c:	00000713          	li	a4,0
    80005970:	000077b7          	lui	a5,0x7
    80005974:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005978:	fce7eee3          	bltu	a5,a4,80005954 <_ZL11workerBodyAPv+0x20>
    8000597c:	00170713          	addi	a4,a4,1
    80005980:	ff1ff06f          	j	80005970 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005984:	00190913          	addi	s2,s2,1
    80005988:	00900793          	li	a5,9
    8000598c:	0527e063          	bltu	a5,s2,800059cc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005990:	00003517          	auipc	a0,0x3
    80005994:	82850513          	addi	a0,a0,-2008 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005998:	fffff097          	auipc	ra,0xfffff
    8000599c:	240080e7          	jalr	576(ra) # 80004bd8 <_Z11printStringPKc>
    800059a0:	00000613          	li	a2,0
    800059a4:	00a00593          	li	a1,10
    800059a8:	0009051b          	sext.w	a0,s2
    800059ac:	fffff097          	auipc	ra,0xfffff
    800059b0:	3dc080e7          	jalr	988(ra) # 80004d88 <_Z8printIntiii>
    800059b4:	00003517          	auipc	a0,0x3
    800059b8:	a9450513          	addi	a0,a0,-1388 # 80008448 <CONSOLE_STATUS+0x438>
    800059bc:	fffff097          	auipc	ra,0xfffff
    800059c0:	21c080e7          	jalr	540(ra) # 80004bd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800059c4:	00000493          	li	s1,0
    800059c8:	f99ff06f          	j	80005960 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800059cc:	00002517          	auipc	a0,0x2
    800059d0:	7f450513          	addi	a0,a0,2036 # 800081c0 <CONSOLE_STATUS+0x1b0>
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	204080e7          	jalr	516(ra) # 80004bd8 <_Z11printStringPKc>
    finishedA = true;
    800059dc:	00100793          	li	a5,1
    800059e0:	00005717          	auipc	a4,0x5
    800059e4:	d8f702a3          	sb	a5,-635(a4) # 8000a765 <_ZL9finishedA>
}
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	01013403          	ld	s0,16(sp)
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	00013903          	ld	s2,0(sp)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00008067          	ret

0000000080005a00 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005a00:	fd010113          	addi	sp,sp,-48
    80005a04:	02113423          	sd	ra,40(sp)
    80005a08:	02813023          	sd	s0,32(sp)
    80005a0c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a10:	00000613          	li	a2,0
    80005a14:	00000597          	auipc	a1,0x0
    80005a18:	f2058593          	addi	a1,a1,-224 # 80005934 <_ZL11workerBodyAPv>
    80005a1c:	fd040513          	addi	a0,s0,-48
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	8d0080e7          	jalr	-1840(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005a28:	00003517          	auipc	a0,0x3
    80005a2c:	83850513          	addi	a0,a0,-1992 # 80008260 <CONSOLE_STATUS+0x250>
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	1a8080e7          	jalr	424(ra) # 80004bd8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a38:	00000613          	li	a2,0
    80005a3c:	00000597          	auipc	a1,0x0
    80005a40:	e1458593          	addi	a1,a1,-492 # 80005850 <_ZL11workerBodyBPv>
    80005a44:	fd840513          	addi	a0,s0,-40
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	8a8080e7          	jalr	-1880(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005a50:	00003517          	auipc	a0,0x3
    80005a54:	82850513          	addi	a0,a0,-2008 # 80008278 <CONSOLE_STATUS+0x268>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	180080e7          	jalr	384(ra) # 80004bd8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a60:	00000613          	li	a2,0
    80005a64:	00000597          	auipc	a1,0x0
    80005a68:	c6c58593          	addi	a1,a1,-916 # 800056d0 <_ZL11workerBodyCPv>
    80005a6c:	fe040513          	addi	a0,s0,-32
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	880080e7          	jalr	-1920(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005a78:	00003517          	auipc	a0,0x3
    80005a7c:	81850513          	addi	a0,a0,-2024 # 80008290 <CONSOLE_STATUS+0x280>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	158080e7          	jalr	344(ra) # 80004bd8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a88:	00000613          	li	a2,0
    80005a8c:	00000597          	auipc	a1,0x0
    80005a90:	afc58593          	addi	a1,a1,-1284 # 80005588 <_ZL11workerBodyDPv>
    80005a94:	fe840513          	addi	a0,s0,-24
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	858080e7          	jalr	-1960(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005aa0:	00003517          	auipc	a0,0x3
    80005aa4:	80850513          	addi	a0,a0,-2040 # 800082a8 <CONSOLE_STATUS+0x298>
    80005aa8:	fffff097          	auipc	ra,0xfffff
    80005aac:	130080e7          	jalr	304(ra) # 80004bd8 <_Z11printStringPKc>
    80005ab0:	00c0006f          	j	80005abc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005ab4:	ffffb097          	auipc	ra,0xffffb
    80005ab8:	7f4080e7          	jalr	2036(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005abc:	00005797          	auipc	a5,0x5
    80005ac0:	ca97c783          	lbu	a5,-855(a5) # 8000a765 <_ZL9finishedA>
    80005ac4:	fe0788e3          	beqz	a5,80005ab4 <_Z16System_Mode_testv+0xb4>
    80005ac8:	00005797          	auipc	a5,0x5
    80005acc:	c9c7c783          	lbu	a5,-868(a5) # 8000a764 <_ZL9finishedB>
    80005ad0:	fe0782e3          	beqz	a5,80005ab4 <_Z16System_Mode_testv+0xb4>
    80005ad4:	00005797          	auipc	a5,0x5
    80005ad8:	c8f7c783          	lbu	a5,-881(a5) # 8000a763 <_ZL9finishedC>
    80005adc:	fc078ce3          	beqz	a5,80005ab4 <_Z16System_Mode_testv+0xb4>
    80005ae0:	00005797          	auipc	a5,0x5
    80005ae4:	c827c783          	lbu	a5,-894(a5) # 8000a762 <_ZL9finishedD>
    80005ae8:	fc0786e3          	beqz	a5,80005ab4 <_Z16System_Mode_testv+0xb4>
    }

}
    80005aec:	02813083          	ld	ra,40(sp)
    80005af0:	02013403          	ld	s0,32(sp)
    80005af4:	03010113          	addi	sp,sp,48
    80005af8:	00008067          	ret

0000000080005afc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005afc:	fe010113          	addi	sp,sp,-32
    80005b00:	00113c23          	sd	ra,24(sp)
    80005b04:	00813823          	sd	s0,16(sp)
    80005b08:	00913423          	sd	s1,8(sp)
    80005b0c:	01213023          	sd	s2,0(sp)
    80005b10:	02010413          	addi	s0,sp,32
    80005b14:	00050493          	mv	s1,a0
    80005b18:	00058913          	mv	s2,a1
    80005b1c:	0015879b          	addiw	a5,a1,1
    80005b20:	0007851b          	sext.w	a0,a5
    80005b24:	00f4a023          	sw	a5,0(s1)
    80005b28:	0004a823          	sw	zero,16(s1)
    80005b2c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b30:	00251513          	slli	a0,a0,0x2
    80005b34:	ffffb097          	auipc	ra,0xffffb
    80005b38:	710080e7          	jalr	1808(ra) # 80001244 <_Z9mem_allocm>
    80005b3c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b40:	00000593          	li	a1,0
    80005b44:	02048513          	addi	a0,s1,32
    80005b48:	ffffc097          	auipc	ra,0xffffc
    80005b4c:	824080e7          	jalr	-2012(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    80005b50:	00090593          	mv	a1,s2
    80005b54:	01848513          	addi	a0,s1,24
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	814080e7          	jalr	-2028(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    80005b60:	00100593          	li	a1,1
    80005b64:	02848513          	addi	a0,s1,40
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	804080e7          	jalr	-2044(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    80005b70:	00100593          	li	a1,1
    80005b74:	03048513          	addi	a0,s1,48
    80005b78:	ffffb097          	auipc	ra,0xffffb
    80005b7c:	7f4080e7          	jalr	2036(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80005b80:	01813083          	ld	ra,24(sp)
    80005b84:	01013403          	ld	s0,16(sp)
    80005b88:	00813483          	ld	s1,8(sp)
    80005b8c:	00013903          	ld	s2,0(sp)
    80005b90:	02010113          	addi	sp,sp,32
    80005b94:	00008067          	ret

0000000080005b98 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005b98:	fe010113          	addi	sp,sp,-32
    80005b9c:	00113c23          	sd	ra,24(sp)
    80005ba0:	00813823          	sd	s0,16(sp)
    80005ba4:	00913423          	sd	s1,8(sp)
    80005ba8:	01213023          	sd	s2,0(sp)
    80005bac:	02010413          	addi	s0,sp,32
    80005bb0:	00050493          	mv	s1,a0
    80005bb4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005bb8:	01853503          	ld	a0,24(a0)
    80005bbc:	ffffc097          	auipc	ra,0xffffc
    80005bc0:	80c080e7          	jalr	-2036(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    80005bc4:	0304b503          	ld	a0,48(s1)
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	800080e7          	jalr	-2048(ra) # 800013c8 <_Z8sem_waitP3sem>
    buffer[tail] = val;
    80005bd0:	0084b783          	ld	a5,8(s1)
    80005bd4:	0144a703          	lw	a4,20(s1)
    80005bd8:	00271713          	slli	a4,a4,0x2
    80005bdc:	00e787b3          	add	a5,a5,a4
    80005be0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005be4:	0144a783          	lw	a5,20(s1)
    80005be8:	0017879b          	addiw	a5,a5,1
    80005bec:	0004a703          	lw	a4,0(s1)
    80005bf0:	02e7e7bb          	remw	a5,a5,a4
    80005bf4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005bf8:	0304b503          	ld	a0,48(s1)
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	7f8080e7          	jalr	2040(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80005c04:	0204b503          	ld	a0,32(s1)
    80005c08:	ffffb097          	auipc	ra,0xffffb
    80005c0c:	7ec080e7          	jalr	2028(ra) # 800013f4 <_Z10sem_signalP3sem>

}
    80005c10:	01813083          	ld	ra,24(sp)
    80005c14:	01013403          	ld	s0,16(sp)
    80005c18:	00813483          	ld	s1,8(sp)
    80005c1c:	00013903          	ld	s2,0(sp)
    80005c20:	02010113          	addi	sp,sp,32
    80005c24:	00008067          	ret

0000000080005c28 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005c28:	fe010113          	addi	sp,sp,-32
    80005c2c:	00113c23          	sd	ra,24(sp)
    80005c30:	00813823          	sd	s0,16(sp)
    80005c34:	00913423          	sd	s1,8(sp)
    80005c38:	01213023          	sd	s2,0(sp)
    80005c3c:	02010413          	addi	s0,sp,32
    80005c40:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c44:	02053503          	ld	a0,32(a0)
    80005c48:	ffffb097          	auipc	ra,0xffffb
    80005c4c:	780080e7          	jalr	1920(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    80005c50:	0284b503          	ld	a0,40(s1)
    80005c54:	ffffb097          	auipc	ra,0xffffb
    80005c58:	774080e7          	jalr	1908(ra) # 800013c8 <_Z8sem_waitP3sem>

    int ret = buffer[head];
    80005c5c:	0084b703          	ld	a4,8(s1)
    80005c60:	0104a783          	lw	a5,16(s1)
    80005c64:	00279693          	slli	a3,a5,0x2
    80005c68:	00d70733          	add	a4,a4,a3
    80005c6c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c70:	0017879b          	addiw	a5,a5,1
    80005c74:	0004a703          	lw	a4,0(s1)
    80005c78:	02e7e7bb          	remw	a5,a5,a4
    80005c7c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c80:	0284b503          	ld	a0,40(s1)
    80005c84:	ffffb097          	auipc	ra,0xffffb
    80005c88:	770080e7          	jalr	1904(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    80005c8c:	0184b503          	ld	a0,24(s1)
    80005c90:	ffffb097          	auipc	ra,0xffffb
    80005c94:	764080e7          	jalr	1892(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005c98:	00090513          	mv	a0,s2
    80005c9c:	01813083          	ld	ra,24(sp)
    80005ca0:	01013403          	ld	s0,16(sp)
    80005ca4:	00813483          	ld	s1,8(sp)
    80005ca8:	00013903          	ld	s2,0(sp)
    80005cac:	02010113          	addi	sp,sp,32
    80005cb0:	00008067          	ret

0000000080005cb4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005cb4:	fe010113          	addi	sp,sp,-32
    80005cb8:	00113c23          	sd	ra,24(sp)
    80005cbc:	00813823          	sd	s0,16(sp)
    80005cc0:	00913423          	sd	s1,8(sp)
    80005cc4:	01213023          	sd	s2,0(sp)
    80005cc8:	02010413          	addi	s0,sp,32
    80005ccc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005cd0:	02853503          	ld	a0,40(a0)
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	6f4080e7          	jalr	1780(ra) # 800013c8 <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    80005cdc:	0304b503          	ld	a0,48(s1)
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	6e8080e7          	jalr	1768(ra) # 800013c8 <_Z8sem_waitP3sem>

    if (tail >= head) {
    80005ce8:	0144a783          	lw	a5,20(s1)
    80005cec:	0104a903          	lw	s2,16(s1)
    80005cf0:	0327ce63          	blt	a5,s2,80005d2c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005cf4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005cf8:	0304b503          	ld	a0,48(s1)
    80005cfc:	ffffb097          	auipc	ra,0xffffb
    80005d00:	6f8080e7          	jalr	1784(ra) # 800013f4 <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80005d04:	0284b503          	ld	a0,40(s1)
    80005d08:	ffffb097          	auipc	ra,0xffffb
    80005d0c:	6ec080e7          	jalr	1772(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005d10:	00090513          	mv	a0,s2
    80005d14:	01813083          	ld	ra,24(sp)
    80005d18:	01013403          	ld	s0,16(sp)
    80005d1c:	00813483          	ld	s1,8(sp)
    80005d20:	00013903          	ld	s2,0(sp)
    80005d24:	02010113          	addi	sp,sp,32
    80005d28:	00008067          	ret
        ret = cap - head + tail;
    80005d2c:	0004a703          	lw	a4,0(s1)
    80005d30:	4127093b          	subw	s2,a4,s2
    80005d34:	00f9093b          	addw	s2,s2,a5
    80005d38:	fc1ff06f          	j	80005cf8 <_ZN6Buffer6getCntEv+0x44>

0000000080005d3c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d3c:	fe010113          	addi	sp,sp,-32
    80005d40:	00113c23          	sd	ra,24(sp)
    80005d44:	00813823          	sd	s0,16(sp)
    80005d48:	00913423          	sd	s1,8(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    putc('\n');
    80005d54:	00a00513          	li	a0,10
    80005d58:	ffffb097          	auipc	ra,0xffffb
    80005d5c:	71c080e7          	jalr	1820(ra) # 80001474 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005d60:	00002517          	auipc	a0,0x2
    80005d64:	56050513          	addi	a0,a0,1376 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	e70080e7          	jalr	-400(ra) # 80004bd8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d70:	00048513          	mv	a0,s1
    80005d74:	00000097          	auipc	ra,0x0
    80005d78:	f40080e7          	jalr	-192(ra) # 80005cb4 <_ZN6Buffer6getCntEv>
    80005d7c:	02a05c63          	blez	a0,80005db4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d80:	0084b783          	ld	a5,8(s1)
    80005d84:	0104a703          	lw	a4,16(s1)
    80005d88:	00271713          	slli	a4,a4,0x2
    80005d8c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005d90:	0007c503          	lbu	a0,0(a5)
    80005d94:	ffffb097          	auipc	ra,0xffffb
    80005d98:	6e0080e7          	jalr	1760(ra) # 80001474 <_Z4putcc>
        head = (head + 1) % cap;
    80005d9c:	0104a783          	lw	a5,16(s1)
    80005da0:	0017879b          	addiw	a5,a5,1
    80005da4:	0004a703          	lw	a4,0(s1)
    80005da8:	02e7e7bb          	remw	a5,a5,a4
    80005dac:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005db0:	fc1ff06f          	j	80005d70 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005db4:	02100513          	li	a0,33
    80005db8:	ffffb097          	auipc	ra,0xffffb
    80005dbc:	6bc080e7          	jalr	1724(ra) # 80001474 <_Z4putcc>
    putc('\n');
    80005dc0:	00a00513          	li	a0,10
    80005dc4:	ffffb097          	auipc	ra,0xffffb
    80005dc8:	6b0080e7          	jalr	1712(ra) # 80001474 <_Z4putcc>
    mem_free(buffer);
    80005dcc:	0084b503          	ld	a0,8(s1)
    80005dd0:	ffffb097          	auipc	ra,0xffffb
    80005dd4:	4ac080e7          	jalr	1196(ra) # 8000127c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005dd8:	0204b503          	ld	a0,32(s1)
    80005ddc:	ffffb097          	auipc	ra,0xffffb
    80005de0:	5c0080e7          	jalr	1472(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80005de4:	0184b503          	ld	a0,24(s1)
    80005de8:	ffffb097          	auipc	ra,0xffffb
    80005dec:	5b4080e7          	jalr	1460(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80005df0:	0304b503          	ld	a0,48(s1)
    80005df4:	ffffb097          	auipc	ra,0xffffb
    80005df8:	5a8080e7          	jalr	1448(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    80005dfc:	0284b503          	ld	a0,40(s1)
    80005e00:	ffffb097          	auipc	ra,0xffffb
    80005e04:	59c080e7          	jalr	1436(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80005e08:	01813083          	ld	ra,24(sp)
    80005e0c:	01013403          	ld	s0,16(sp)
    80005e10:	00813483          	ld	s1,8(sp)
    80005e14:	02010113          	addi	sp,sp,32
    80005e18:	00008067          	ret

0000000080005e1c <start>:
    80005e1c:	ff010113          	addi	sp,sp,-16
    80005e20:	00813423          	sd	s0,8(sp)
    80005e24:	01010413          	addi	s0,sp,16
    80005e28:	300027f3          	csrr	a5,mstatus
    80005e2c:	ffffe737          	lui	a4,0xffffe
    80005e30:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2e2f>
    80005e34:	00e7f7b3          	and	a5,a5,a4
    80005e38:	00001737          	lui	a4,0x1
    80005e3c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e40:	00e7e7b3          	or	a5,a5,a4
    80005e44:	30079073          	csrw	mstatus,a5
    80005e48:	00000797          	auipc	a5,0x0
    80005e4c:	16078793          	addi	a5,a5,352 # 80005fa8 <system_main>
    80005e50:	34179073          	csrw	mepc,a5
    80005e54:	00000793          	li	a5,0
    80005e58:	18079073          	csrw	satp,a5
    80005e5c:	000107b7          	lui	a5,0x10
    80005e60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005e64:	30279073          	csrw	medeleg,a5
    80005e68:	30379073          	csrw	mideleg,a5
    80005e6c:	104027f3          	csrr	a5,sie
    80005e70:	2227e793          	ori	a5,a5,546
    80005e74:	10479073          	csrw	sie,a5
    80005e78:	fff00793          	li	a5,-1
    80005e7c:	00a7d793          	srli	a5,a5,0xa
    80005e80:	3b079073          	csrw	pmpaddr0,a5
    80005e84:	00f00793          	li	a5,15
    80005e88:	3a079073          	csrw	pmpcfg0,a5
    80005e8c:	f14027f3          	csrr	a5,mhartid
    80005e90:	0200c737          	lui	a4,0x200c
    80005e94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e98:	0007869b          	sext.w	a3,a5
    80005e9c:	00269713          	slli	a4,a3,0x2
    80005ea0:	000f4637          	lui	a2,0xf4
    80005ea4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005ea8:	00d70733          	add	a4,a4,a3
    80005eac:	0037979b          	slliw	a5,a5,0x3
    80005eb0:	020046b7          	lui	a3,0x2004
    80005eb4:	00d787b3          	add	a5,a5,a3
    80005eb8:	00c585b3          	add	a1,a1,a2
    80005ebc:	00371693          	slli	a3,a4,0x3
    80005ec0:	00005717          	auipc	a4,0x5
    80005ec4:	8b070713          	addi	a4,a4,-1872 # 8000a770 <timer_scratch>
    80005ec8:	00b7b023          	sd	a1,0(a5)
    80005ecc:	00d70733          	add	a4,a4,a3
    80005ed0:	00f73c23          	sd	a5,24(a4)
    80005ed4:	02c73023          	sd	a2,32(a4)
    80005ed8:	34071073          	csrw	mscratch,a4
    80005edc:	00000797          	auipc	a5,0x0
    80005ee0:	6e478793          	addi	a5,a5,1764 # 800065c0 <timervec>
    80005ee4:	30579073          	csrw	mtvec,a5
    80005ee8:	300027f3          	csrr	a5,mstatus
    80005eec:	0087e793          	ori	a5,a5,8
    80005ef0:	30079073          	csrw	mstatus,a5
    80005ef4:	304027f3          	csrr	a5,mie
    80005ef8:	0807e793          	ori	a5,a5,128
    80005efc:	30479073          	csrw	mie,a5
    80005f00:	f14027f3          	csrr	a5,mhartid
    80005f04:	0007879b          	sext.w	a5,a5
    80005f08:	00078213          	mv	tp,a5
    80005f0c:	30200073          	mret
    80005f10:	00813403          	ld	s0,8(sp)
    80005f14:	01010113          	addi	sp,sp,16
    80005f18:	00008067          	ret

0000000080005f1c <timerinit>:
    80005f1c:	ff010113          	addi	sp,sp,-16
    80005f20:	00813423          	sd	s0,8(sp)
    80005f24:	01010413          	addi	s0,sp,16
    80005f28:	f14027f3          	csrr	a5,mhartid
    80005f2c:	0200c737          	lui	a4,0x200c
    80005f30:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f34:	0007869b          	sext.w	a3,a5
    80005f38:	00269713          	slli	a4,a3,0x2
    80005f3c:	000f4637          	lui	a2,0xf4
    80005f40:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f44:	00d70733          	add	a4,a4,a3
    80005f48:	0037979b          	slliw	a5,a5,0x3
    80005f4c:	020046b7          	lui	a3,0x2004
    80005f50:	00d787b3          	add	a5,a5,a3
    80005f54:	00c585b3          	add	a1,a1,a2
    80005f58:	00371693          	slli	a3,a4,0x3
    80005f5c:	00005717          	auipc	a4,0x5
    80005f60:	81470713          	addi	a4,a4,-2028 # 8000a770 <timer_scratch>
    80005f64:	00b7b023          	sd	a1,0(a5)
    80005f68:	00d70733          	add	a4,a4,a3
    80005f6c:	00f73c23          	sd	a5,24(a4)
    80005f70:	02c73023          	sd	a2,32(a4)
    80005f74:	34071073          	csrw	mscratch,a4
    80005f78:	00000797          	auipc	a5,0x0
    80005f7c:	64878793          	addi	a5,a5,1608 # 800065c0 <timervec>
    80005f80:	30579073          	csrw	mtvec,a5
    80005f84:	300027f3          	csrr	a5,mstatus
    80005f88:	0087e793          	ori	a5,a5,8
    80005f8c:	30079073          	csrw	mstatus,a5
    80005f90:	304027f3          	csrr	a5,mie
    80005f94:	0807e793          	ori	a5,a5,128
    80005f98:	30479073          	csrw	mie,a5
    80005f9c:	00813403          	ld	s0,8(sp)
    80005fa0:	01010113          	addi	sp,sp,16
    80005fa4:	00008067          	ret

0000000080005fa8 <system_main>:
    80005fa8:	fe010113          	addi	sp,sp,-32
    80005fac:	00813823          	sd	s0,16(sp)
    80005fb0:	00913423          	sd	s1,8(sp)
    80005fb4:	00113c23          	sd	ra,24(sp)
    80005fb8:	02010413          	addi	s0,sp,32
    80005fbc:	00000097          	auipc	ra,0x0
    80005fc0:	0c4080e7          	jalr	196(ra) # 80006080 <cpuid>
    80005fc4:	00004497          	auipc	s1,0x4
    80005fc8:	6fc48493          	addi	s1,s1,1788 # 8000a6c0 <started>
    80005fcc:	02050263          	beqz	a0,80005ff0 <system_main+0x48>
    80005fd0:	0004a783          	lw	a5,0(s1)
    80005fd4:	0007879b          	sext.w	a5,a5
    80005fd8:	fe078ce3          	beqz	a5,80005fd0 <system_main+0x28>
    80005fdc:	0ff0000f          	fence
    80005fe0:	00002517          	auipc	a0,0x2
    80005fe4:	57050513          	addi	a0,a0,1392 # 80008550 <CONSOLE_STATUS+0x540>
    80005fe8:	00001097          	auipc	ra,0x1
    80005fec:	a74080e7          	jalr	-1420(ra) # 80006a5c <panic>
    80005ff0:	00001097          	auipc	ra,0x1
    80005ff4:	9c8080e7          	jalr	-1592(ra) # 800069b8 <consoleinit>
    80005ff8:	00001097          	auipc	ra,0x1
    80005ffc:	154080e7          	jalr	340(ra) # 8000714c <printfinit>
    80006000:	00002517          	auipc	a0,0x2
    80006004:	44850513          	addi	a0,a0,1096 # 80008448 <CONSOLE_STATUS+0x438>
    80006008:	00001097          	auipc	ra,0x1
    8000600c:	ab0080e7          	jalr	-1360(ra) # 80006ab8 <__printf>
    80006010:	00002517          	auipc	a0,0x2
    80006014:	51050513          	addi	a0,a0,1296 # 80008520 <CONSOLE_STATUS+0x510>
    80006018:	00001097          	auipc	ra,0x1
    8000601c:	aa0080e7          	jalr	-1376(ra) # 80006ab8 <__printf>
    80006020:	00002517          	auipc	a0,0x2
    80006024:	42850513          	addi	a0,a0,1064 # 80008448 <CONSOLE_STATUS+0x438>
    80006028:	00001097          	auipc	ra,0x1
    8000602c:	a90080e7          	jalr	-1392(ra) # 80006ab8 <__printf>
    80006030:	00001097          	auipc	ra,0x1
    80006034:	4a8080e7          	jalr	1192(ra) # 800074d8 <kinit>
    80006038:	00000097          	auipc	ra,0x0
    8000603c:	148080e7          	jalr	328(ra) # 80006180 <trapinit>
    80006040:	00000097          	auipc	ra,0x0
    80006044:	16c080e7          	jalr	364(ra) # 800061ac <trapinithart>
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	5b8080e7          	jalr	1464(ra) # 80006600 <plicinit>
    80006050:	00000097          	auipc	ra,0x0
    80006054:	5d8080e7          	jalr	1496(ra) # 80006628 <plicinithart>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	078080e7          	jalr	120(ra) # 800060d0 <userinit>
    80006060:	0ff0000f          	fence
    80006064:	00100793          	li	a5,1
    80006068:	00002517          	auipc	a0,0x2
    8000606c:	4d050513          	addi	a0,a0,1232 # 80008538 <CONSOLE_STATUS+0x528>
    80006070:	00f4a023          	sw	a5,0(s1)
    80006074:	00001097          	auipc	ra,0x1
    80006078:	a44080e7          	jalr	-1468(ra) # 80006ab8 <__printf>
    8000607c:	0000006f          	j	8000607c <system_main+0xd4>

0000000080006080 <cpuid>:
    80006080:	ff010113          	addi	sp,sp,-16
    80006084:	00813423          	sd	s0,8(sp)
    80006088:	01010413          	addi	s0,sp,16
    8000608c:	00020513          	mv	a0,tp
    80006090:	00813403          	ld	s0,8(sp)
    80006094:	0005051b          	sext.w	a0,a0
    80006098:	01010113          	addi	sp,sp,16
    8000609c:	00008067          	ret

00000000800060a0 <mycpu>:
    800060a0:	ff010113          	addi	sp,sp,-16
    800060a4:	00813423          	sd	s0,8(sp)
    800060a8:	01010413          	addi	s0,sp,16
    800060ac:	00020793          	mv	a5,tp
    800060b0:	00813403          	ld	s0,8(sp)
    800060b4:	0007879b          	sext.w	a5,a5
    800060b8:	00779793          	slli	a5,a5,0x7
    800060bc:	00005517          	auipc	a0,0x5
    800060c0:	6e450513          	addi	a0,a0,1764 # 8000b7a0 <cpus>
    800060c4:	00f50533          	add	a0,a0,a5
    800060c8:	01010113          	addi	sp,sp,16
    800060cc:	00008067          	ret

00000000800060d0 <userinit>:
    800060d0:	ff010113          	addi	sp,sp,-16
    800060d4:	00813423          	sd	s0,8(sp)
    800060d8:	01010413          	addi	s0,sp,16
    800060dc:	00813403          	ld	s0,8(sp)
    800060e0:	01010113          	addi	sp,sp,16
    800060e4:	ffffb317          	auipc	t1,0xffffb
    800060e8:	78c30067          	jr	1932(t1) # 80001870 <main>

00000000800060ec <either_copyout>:
    800060ec:	ff010113          	addi	sp,sp,-16
    800060f0:	00813023          	sd	s0,0(sp)
    800060f4:	00113423          	sd	ra,8(sp)
    800060f8:	01010413          	addi	s0,sp,16
    800060fc:	02051663          	bnez	a0,80006128 <either_copyout+0x3c>
    80006100:	00058513          	mv	a0,a1
    80006104:	00060593          	mv	a1,a2
    80006108:	0006861b          	sext.w	a2,a3
    8000610c:	00002097          	auipc	ra,0x2
    80006110:	c58080e7          	jalr	-936(ra) # 80007d64 <__memmove>
    80006114:	00813083          	ld	ra,8(sp)
    80006118:	00013403          	ld	s0,0(sp)
    8000611c:	00000513          	li	a0,0
    80006120:	01010113          	addi	sp,sp,16
    80006124:	00008067          	ret
    80006128:	00002517          	auipc	a0,0x2
    8000612c:	45050513          	addi	a0,a0,1104 # 80008578 <CONSOLE_STATUS+0x568>
    80006130:	00001097          	auipc	ra,0x1
    80006134:	92c080e7          	jalr	-1748(ra) # 80006a5c <panic>

0000000080006138 <either_copyin>:
    80006138:	ff010113          	addi	sp,sp,-16
    8000613c:	00813023          	sd	s0,0(sp)
    80006140:	00113423          	sd	ra,8(sp)
    80006144:	01010413          	addi	s0,sp,16
    80006148:	02059463          	bnez	a1,80006170 <either_copyin+0x38>
    8000614c:	00060593          	mv	a1,a2
    80006150:	0006861b          	sext.w	a2,a3
    80006154:	00002097          	auipc	ra,0x2
    80006158:	c10080e7          	jalr	-1008(ra) # 80007d64 <__memmove>
    8000615c:	00813083          	ld	ra,8(sp)
    80006160:	00013403          	ld	s0,0(sp)
    80006164:	00000513          	li	a0,0
    80006168:	01010113          	addi	sp,sp,16
    8000616c:	00008067          	ret
    80006170:	00002517          	auipc	a0,0x2
    80006174:	43050513          	addi	a0,a0,1072 # 800085a0 <CONSOLE_STATUS+0x590>
    80006178:	00001097          	auipc	ra,0x1
    8000617c:	8e4080e7          	jalr	-1820(ra) # 80006a5c <panic>

0000000080006180 <trapinit>:
    80006180:	ff010113          	addi	sp,sp,-16
    80006184:	00813423          	sd	s0,8(sp)
    80006188:	01010413          	addi	s0,sp,16
    8000618c:	00813403          	ld	s0,8(sp)
    80006190:	00002597          	auipc	a1,0x2
    80006194:	43858593          	addi	a1,a1,1080 # 800085c8 <CONSOLE_STATUS+0x5b8>
    80006198:	00005517          	auipc	a0,0x5
    8000619c:	68850513          	addi	a0,a0,1672 # 8000b820 <tickslock>
    800061a0:	01010113          	addi	sp,sp,16
    800061a4:	00001317          	auipc	t1,0x1
    800061a8:	5c430067          	jr	1476(t1) # 80007768 <initlock>

00000000800061ac <trapinithart>:
    800061ac:	ff010113          	addi	sp,sp,-16
    800061b0:	00813423          	sd	s0,8(sp)
    800061b4:	01010413          	addi	s0,sp,16
    800061b8:	00000797          	auipc	a5,0x0
    800061bc:	2f878793          	addi	a5,a5,760 # 800064b0 <kernelvec>
    800061c0:	10579073          	csrw	stvec,a5
    800061c4:	00813403          	ld	s0,8(sp)
    800061c8:	01010113          	addi	sp,sp,16
    800061cc:	00008067          	ret

00000000800061d0 <usertrap>:
    800061d0:	ff010113          	addi	sp,sp,-16
    800061d4:	00813423          	sd	s0,8(sp)
    800061d8:	01010413          	addi	s0,sp,16
    800061dc:	00813403          	ld	s0,8(sp)
    800061e0:	01010113          	addi	sp,sp,16
    800061e4:	00008067          	ret

00000000800061e8 <usertrapret>:
    800061e8:	ff010113          	addi	sp,sp,-16
    800061ec:	00813423          	sd	s0,8(sp)
    800061f0:	01010413          	addi	s0,sp,16
    800061f4:	00813403          	ld	s0,8(sp)
    800061f8:	01010113          	addi	sp,sp,16
    800061fc:	00008067          	ret

0000000080006200 <kerneltrap>:
    80006200:	fe010113          	addi	sp,sp,-32
    80006204:	00813823          	sd	s0,16(sp)
    80006208:	00113c23          	sd	ra,24(sp)
    8000620c:	00913423          	sd	s1,8(sp)
    80006210:	02010413          	addi	s0,sp,32
    80006214:	142025f3          	csrr	a1,scause
    80006218:	100027f3          	csrr	a5,sstatus
    8000621c:	0027f793          	andi	a5,a5,2
    80006220:	10079c63          	bnez	a5,80006338 <kerneltrap+0x138>
    80006224:	142027f3          	csrr	a5,scause
    80006228:	0207ce63          	bltz	a5,80006264 <kerneltrap+0x64>
    8000622c:	00002517          	auipc	a0,0x2
    80006230:	3e450513          	addi	a0,a0,996 # 80008610 <CONSOLE_STATUS+0x600>
    80006234:	00001097          	auipc	ra,0x1
    80006238:	884080e7          	jalr	-1916(ra) # 80006ab8 <__printf>
    8000623c:	141025f3          	csrr	a1,sepc
    80006240:	14302673          	csrr	a2,stval
    80006244:	00002517          	auipc	a0,0x2
    80006248:	3dc50513          	addi	a0,a0,988 # 80008620 <CONSOLE_STATUS+0x610>
    8000624c:	00001097          	auipc	ra,0x1
    80006250:	86c080e7          	jalr	-1940(ra) # 80006ab8 <__printf>
    80006254:	00002517          	auipc	a0,0x2
    80006258:	3e450513          	addi	a0,a0,996 # 80008638 <CONSOLE_STATUS+0x628>
    8000625c:	00001097          	auipc	ra,0x1
    80006260:	800080e7          	jalr	-2048(ra) # 80006a5c <panic>
    80006264:	0ff7f713          	andi	a4,a5,255
    80006268:	00900693          	li	a3,9
    8000626c:	04d70063          	beq	a4,a3,800062ac <kerneltrap+0xac>
    80006270:	fff00713          	li	a4,-1
    80006274:	03f71713          	slli	a4,a4,0x3f
    80006278:	00170713          	addi	a4,a4,1
    8000627c:	fae798e3          	bne	a5,a4,8000622c <kerneltrap+0x2c>
    80006280:	00000097          	auipc	ra,0x0
    80006284:	e00080e7          	jalr	-512(ra) # 80006080 <cpuid>
    80006288:	06050663          	beqz	a0,800062f4 <kerneltrap+0xf4>
    8000628c:	144027f3          	csrr	a5,sip
    80006290:	ffd7f793          	andi	a5,a5,-3
    80006294:	14479073          	csrw	sip,a5
    80006298:	01813083          	ld	ra,24(sp)
    8000629c:	01013403          	ld	s0,16(sp)
    800062a0:	00813483          	ld	s1,8(sp)
    800062a4:	02010113          	addi	sp,sp,32
    800062a8:	00008067          	ret
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	3c8080e7          	jalr	968(ra) # 80006674 <plic_claim>
    800062b4:	00a00793          	li	a5,10
    800062b8:	00050493          	mv	s1,a0
    800062bc:	06f50863          	beq	a0,a5,8000632c <kerneltrap+0x12c>
    800062c0:	fc050ce3          	beqz	a0,80006298 <kerneltrap+0x98>
    800062c4:	00050593          	mv	a1,a0
    800062c8:	00002517          	auipc	a0,0x2
    800062cc:	32850513          	addi	a0,a0,808 # 800085f0 <CONSOLE_STATUS+0x5e0>
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	7e8080e7          	jalr	2024(ra) # 80006ab8 <__printf>
    800062d8:	01013403          	ld	s0,16(sp)
    800062dc:	01813083          	ld	ra,24(sp)
    800062e0:	00048513          	mv	a0,s1
    800062e4:	00813483          	ld	s1,8(sp)
    800062e8:	02010113          	addi	sp,sp,32
    800062ec:	00000317          	auipc	t1,0x0
    800062f0:	3c030067          	jr	960(t1) # 800066ac <plic_complete>
    800062f4:	00005517          	auipc	a0,0x5
    800062f8:	52c50513          	addi	a0,a0,1324 # 8000b820 <tickslock>
    800062fc:	00001097          	auipc	ra,0x1
    80006300:	490080e7          	jalr	1168(ra) # 8000778c <acquire>
    80006304:	00004717          	auipc	a4,0x4
    80006308:	3c070713          	addi	a4,a4,960 # 8000a6c4 <ticks>
    8000630c:	00072783          	lw	a5,0(a4)
    80006310:	00005517          	auipc	a0,0x5
    80006314:	51050513          	addi	a0,a0,1296 # 8000b820 <tickslock>
    80006318:	0017879b          	addiw	a5,a5,1
    8000631c:	00f72023          	sw	a5,0(a4)
    80006320:	00001097          	auipc	ra,0x1
    80006324:	538080e7          	jalr	1336(ra) # 80007858 <release>
    80006328:	f65ff06f          	j	8000628c <kerneltrap+0x8c>
    8000632c:	00001097          	auipc	ra,0x1
    80006330:	094080e7          	jalr	148(ra) # 800073c0 <uartintr>
    80006334:	fa5ff06f          	j	800062d8 <kerneltrap+0xd8>
    80006338:	00002517          	auipc	a0,0x2
    8000633c:	29850513          	addi	a0,a0,664 # 800085d0 <CONSOLE_STATUS+0x5c0>
    80006340:	00000097          	auipc	ra,0x0
    80006344:	71c080e7          	jalr	1820(ra) # 80006a5c <panic>

0000000080006348 <clockintr>:
    80006348:	fe010113          	addi	sp,sp,-32
    8000634c:	00813823          	sd	s0,16(sp)
    80006350:	00913423          	sd	s1,8(sp)
    80006354:	00113c23          	sd	ra,24(sp)
    80006358:	02010413          	addi	s0,sp,32
    8000635c:	00005497          	auipc	s1,0x5
    80006360:	4c448493          	addi	s1,s1,1220 # 8000b820 <tickslock>
    80006364:	00048513          	mv	a0,s1
    80006368:	00001097          	auipc	ra,0x1
    8000636c:	424080e7          	jalr	1060(ra) # 8000778c <acquire>
    80006370:	00004717          	auipc	a4,0x4
    80006374:	35470713          	addi	a4,a4,852 # 8000a6c4 <ticks>
    80006378:	00072783          	lw	a5,0(a4)
    8000637c:	01013403          	ld	s0,16(sp)
    80006380:	01813083          	ld	ra,24(sp)
    80006384:	00048513          	mv	a0,s1
    80006388:	0017879b          	addiw	a5,a5,1
    8000638c:	00813483          	ld	s1,8(sp)
    80006390:	00f72023          	sw	a5,0(a4)
    80006394:	02010113          	addi	sp,sp,32
    80006398:	00001317          	auipc	t1,0x1
    8000639c:	4c030067          	jr	1216(t1) # 80007858 <release>

00000000800063a0 <devintr>:
    800063a0:	142027f3          	csrr	a5,scause
    800063a4:	00000513          	li	a0,0
    800063a8:	0007c463          	bltz	a5,800063b0 <devintr+0x10>
    800063ac:	00008067          	ret
    800063b0:	fe010113          	addi	sp,sp,-32
    800063b4:	00813823          	sd	s0,16(sp)
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	00913423          	sd	s1,8(sp)
    800063c0:	02010413          	addi	s0,sp,32
    800063c4:	0ff7f713          	andi	a4,a5,255
    800063c8:	00900693          	li	a3,9
    800063cc:	04d70c63          	beq	a4,a3,80006424 <devintr+0x84>
    800063d0:	fff00713          	li	a4,-1
    800063d4:	03f71713          	slli	a4,a4,0x3f
    800063d8:	00170713          	addi	a4,a4,1
    800063dc:	00e78c63          	beq	a5,a4,800063f4 <devintr+0x54>
    800063e0:	01813083          	ld	ra,24(sp)
    800063e4:	01013403          	ld	s0,16(sp)
    800063e8:	00813483          	ld	s1,8(sp)
    800063ec:	02010113          	addi	sp,sp,32
    800063f0:	00008067          	ret
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	c8c080e7          	jalr	-884(ra) # 80006080 <cpuid>
    800063fc:	06050663          	beqz	a0,80006468 <devintr+0xc8>
    80006400:	144027f3          	csrr	a5,sip
    80006404:	ffd7f793          	andi	a5,a5,-3
    80006408:	14479073          	csrw	sip,a5
    8000640c:	01813083          	ld	ra,24(sp)
    80006410:	01013403          	ld	s0,16(sp)
    80006414:	00813483          	ld	s1,8(sp)
    80006418:	00200513          	li	a0,2
    8000641c:	02010113          	addi	sp,sp,32
    80006420:	00008067          	ret
    80006424:	00000097          	auipc	ra,0x0
    80006428:	250080e7          	jalr	592(ra) # 80006674 <plic_claim>
    8000642c:	00a00793          	li	a5,10
    80006430:	00050493          	mv	s1,a0
    80006434:	06f50663          	beq	a0,a5,800064a0 <devintr+0x100>
    80006438:	00100513          	li	a0,1
    8000643c:	fa0482e3          	beqz	s1,800063e0 <devintr+0x40>
    80006440:	00048593          	mv	a1,s1
    80006444:	00002517          	auipc	a0,0x2
    80006448:	1ac50513          	addi	a0,a0,428 # 800085f0 <CONSOLE_STATUS+0x5e0>
    8000644c:	00000097          	auipc	ra,0x0
    80006450:	66c080e7          	jalr	1644(ra) # 80006ab8 <__printf>
    80006454:	00048513          	mv	a0,s1
    80006458:	00000097          	auipc	ra,0x0
    8000645c:	254080e7          	jalr	596(ra) # 800066ac <plic_complete>
    80006460:	00100513          	li	a0,1
    80006464:	f7dff06f          	j	800063e0 <devintr+0x40>
    80006468:	00005517          	auipc	a0,0x5
    8000646c:	3b850513          	addi	a0,a0,952 # 8000b820 <tickslock>
    80006470:	00001097          	auipc	ra,0x1
    80006474:	31c080e7          	jalr	796(ra) # 8000778c <acquire>
    80006478:	00004717          	auipc	a4,0x4
    8000647c:	24c70713          	addi	a4,a4,588 # 8000a6c4 <ticks>
    80006480:	00072783          	lw	a5,0(a4)
    80006484:	00005517          	auipc	a0,0x5
    80006488:	39c50513          	addi	a0,a0,924 # 8000b820 <tickslock>
    8000648c:	0017879b          	addiw	a5,a5,1
    80006490:	00f72023          	sw	a5,0(a4)
    80006494:	00001097          	auipc	ra,0x1
    80006498:	3c4080e7          	jalr	964(ra) # 80007858 <release>
    8000649c:	f65ff06f          	j	80006400 <devintr+0x60>
    800064a0:	00001097          	auipc	ra,0x1
    800064a4:	f20080e7          	jalr	-224(ra) # 800073c0 <uartintr>
    800064a8:	fadff06f          	j	80006454 <devintr+0xb4>
    800064ac:	0000                	unimp
	...

00000000800064b0 <kernelvec>:
    800064b0:	f0010113          	addi	sp,sp,-256
    800064b4:	00113023          	sd	ra,0(sp)
    800064b8:	00213423          	sd	sp,8(sp)
    800064bc:	00313823          	sd	gp,16(sp)
    800064c0:	00413c23          	sd	tp,24(sp)
    800064c4:	02513023          	sd	t0,32(sp)
    800064c8:	02613423          	sd	t1,40(sp)
    800064cc:	02713823          	sd	t2,48(sp)
    800064d0:	02813c23          	sd	s0,56(sp)
    800064d4:	04913023          	sd	s1,64(sp)
    800064d8:	04a13423          	sd	a0,72(sp)
    800064dc:	04b13823          	sd	a1,80(sp)
    800064e0:	04c13c23          	sd	a2,88(sp)
    800064e4:	06d13023          	sd	a3,96(sp)
    800064e8:	06e13423          	sd	a4,104(sp)
    800064ec:	06f13823          	sd	a5,112(sp)
    800064f0:	07013c23          	sd	a6,120(sp)
    800064f4:	09113023          	sd	a7,128(sp)
    800064f8:	09213423          	sd	s2,136(sp)
    800064fc:	09313823          	sd	s3,144(sp)
    80006500:	09413c23          	sd	s4,152(sp)
    80006504:	0b513023          	sd	s5,160(sp)
    80006508:	0b613423          	sd	s6,168(sp)
    8000650c:	0b713823          	sd	s7,176(sp)
    80006510:	0b813c23          	sd	s8,184(sp)
    80006514:	0d913023          	sd	s9,192(sp)
    80006518:	0da13423          	sd	s10,200(sp)
    8000651c:	0db13823          	sd	s11,208(sp)
    80006520:	0dc13c23          	sd	t3,216(sp)
    80006524:	0fd13023          	sd	t4,224(sp)
    80006528:	0fe13423          	sd	t5,232(sp)
    8000652c:	0ff13823          	sd	t6,240(sp)
    80006530:	cd1ff0ef          	jal	ra,80006200 <kerneltrap>
    80006534:	00013083          	ld	ra,0(sp)
    80006538:	00813103          	ld	sp,8(sp)
    8000653c:	01013183          	ld	gp,16(sp)
    80006540:	02013283          	ld	t0,32(sp)
    80006544:	02813303          	ld	t1,40(sp)
    80006548:	03013383          	ld	t2,48(sp)
    8000654c:	03813403          	ld	s0,56(sp)
    80006550:	04013483          	ld	s1,64(sp)
    80006554:	04813503          	ld	a0,72(sp)
    80006558:	05013583          	ld	a1,80(sp)
    8000655c:	05813603          	ld	a2,88(sp)
    80006560:	06013683          	ld	a3,96(sp)
    80006564:	06813703          	ld	a4,104(sp)
    80006568:	07013783          	ld	a5,112(sp)
    8000656c:	07813803          	ld	a6,120(sp)
    80006570:	08013883          	ld	a7,128(sp)
    80006574:	08813903          	ld	s2,136(sp)
    80006578:	09013983          	ld	s3,144(sp)
    8000657c:	09813a03          	ld	s4,152(sp)
    80006580:	0a013a83          	ld	s5,160(sp)
    80006584:	0a813b03          	ld	s6,168(sp)
    80006588:	0b013b83          	ld	s7,176(sp)
    8000658c:	0b813c03          	ld	s8,184(sp)
    80006590:	0c013c83          	ld	s9,192(sp)
    80006594:	0c813d03          	ld	s10,200(sp)
    80006598:	0d013d83          	ld	s11,208(sp)
    8000659c:	0d813e03          	ld	t3,216(sp)
    800065a0:	0e013e83          	ld	t4,224(sp)
    800065a4:	0e813f03          	ld	t5,232(sp)
    800065a8:	0f013f83          	ld	t6,240(sp)
    800065ac:	10010113          	addi	sp,sp,256
    800065b0:	10200073          	sret
    800065b4:	00000013          	nop
    800065b8:	00000013          	nop
    800065bc:	00000013          	nop

00000000800065c0 <timervec>:
    800065c0:	34051573          	csrrw	a0,mscratch,a0
    800065c4:	00b53023          	sd	a1,0(a0)
    800065c8:	00c53423          	sd	a2,8(a0)
    800065cc:	00d53823          	sd	a3,16(a0)
    800065d0:	01853583          	ld	a1,24(a0)
    800065d4:	02053603          	ld	a2,32(a0)
    800065d8:	0005b683          	ld	a3,0(a1)
    800065dc:	00c686b3          	add	a3,a3,a2
    800065e0:	00d5b023          	sd	a3,0(a1)
    800065e4:	00200593          	li	a1,2
    800065e8:	14459073          	csrw	sip,a1
    800065ec:	01053683          	ld	a3,16(a0)
    800065f0:	00853603          	ld	a2,8(a0)
    800065f4:	00053583          	ld	a1,0(a0)
    800065f8:	34051573          	csrrw	a0,mscratch,a0
    800065fc:	30200073          	mret

0000000080006600 <plicinit>:
    80006600:	ff010113          	addi	sp,sp,-16
    80006604:	00813423          	sd	s0,8(sp)
    80006608:	01010413          	addi	s0,sp,16
    8000660c:	00813403          	ld	s0,8(sp)
    80006610:	0c0007b7          	lui	a5,0xc000
    80006614:	00100713          	li	a4,1
    80006618:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000661c:	00e7a223          	sw	a4,4(a5)
    80006620:	01010113          	addi	sp,sp,16
    80006624:	00008067          	ret

0000000080006628 <plicinithart>:
    80006628:	ff010113          	addi	sp,sp,-16
    8000662c:	00813023          	sd	s0,0(sp)
    80006630:	00113423          	sd	ra,8(sp)
    80006634:	01010413          	addi	s0,sp,16
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	a48080e7          	jalr	-1464(ra) # 80006080 <cpuid>
    80006640:	0085171b          	slliw	a4,a0,0x8
    80006644:	0c0027b7          	lui	a5,0xc002
    80006648:	00e787b3          	add	a5,a5,a4
    8000664c:	40200713          	li	a4,1026
    80006650:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006654:	00813083          	ld	ra,8(sp)
    80006658:	00013403          	ld	s0,0(sp)
    8000665c:	00d5151b          	slliw	a0,a0,0xd
    80006660:	0c2017b7          	lui	a5,0xc201
    80006664:	00a78533          	add	a0,a5,a0
    80006668:	00052023          	sw	zero,0(a0)
    8000666c:	01010113          	addi	sp,sp,16
    80006670:	00008067          	ret

0000000080006674 <plic_claim>:
    80006674:	ff010113          	addi	sp,sp,-16
    80006678:	00813023          	sd	s0,0(sp)
    8000667c:	00113423          	sd	ra,8(sp)
    80006680:	01010413          	addi	s0,sp,16
    80006684:	00000097          	auipc	ra,0x0
    80006688:	9fc080e7          	jalr	-1540(ra) # 80006080 <cpuid>
    8000668c:	00813083          	ld	ra,8(sp)
    80006690:	00013403          	ld	s0,0(sp)
    80006694:	00d5151b          	slliw	a0,a0,0xd
    80006698:	0c2017b7          	lui	a5,0xc201
    8000669c:	00a78533          	add	a0,a5,a0
    800066a0:	00452503          	lw	a0,4(a0)
    800066a4:	01010113          	addi	sp,sp,16
    800066a8:	00008067          	ret

00000000800066ac <plic_complete>:
    800066ac:	fe010113          	addi	sp,sp,-32
    800066b0:	00813823          	sd	s0,16(sp)
    800066b4:	00913423          	sd	s1,8(sp)
    800066b8:	00113c23          	sd	ra,24(sp)
    800066bc:	02010413          	addi	s0,sp,32
    800066c0:	00050493          	mv	s1,a0
    800066c4:	00000097          	auipc	ra,0x0
    800066c8:	9bc080e7          	jalr	-1604(ra) # 80006080 <cpuid>
    800066cc:	01813083          	ld	ra,24(sp)
    800066d0:	01013403          	ld	s0,16(sp)
    800066d4:	00d5179b          	slliw	a5,a0,0xd
    800066d8:	0c201737          	lui	a4,0xc201
    800066dc:	00f707b3          	add	a5,a4,a5
    800066e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800066e4:	00813483          	ld	s1,8(sp)
    800066e8:	02010113          	addi	sp,sp,32
    800066ec:	00008067          	ret

00000000800066f0 <consolewrite>:
    800066f0:	fb010113          	addi	sp,sp,-80
    800066f4:	04813023          	sd	s0,64(sp)
    800066f8:	04113423          	sd	ra,72(sp)
    800066fc:	02913c23          	sd	s1,56(sp)
    80006700:	03213823          	sd	s2,48(sp)
    80006704:	03313423          	sd	s3,40(sp)
    80006708:	03413023          	sd	s4,32(sp)
    8000670c:	01513c23          	sd	s5,24(sp)
    80006710:	05010413          	addi	s0,sp,80
    80006714:	06c05c63          	blez	a2,8000678c <consolewrite+0x9c>
    80006718:	00060993          	mv	s3,a2
    8000671c:	00050a13          	mv	s4,a0
    80006720:	00058493          	mv	s1,a1
    80006724:	00000913          	li	s2,0
    80006728:	fff00a93          	li	s5,-1
    8000672c:	01c0006f          	j	80006748 <consolewrite+0x58>
    80006730:	fbf44503          	lbu	a0,-65(s0)
    80006734:	0019091b          	addiw	s2,s2,1
    80006738:	00148493          	addi	s1,s1,1
    8000673c:	00001097          	auipc	ra,0x1
    80006740:	a9c080e7          	jalr	-1380(ra) # 800071d8 <uartputc>
    80006744:	03298063          	beq	s3,s2,80006764 <consolewrite+0x74>
    80006748:	00048613          	mv	a2,s1
    8000674c:	00100693          	li	a3,1
    80006750:	000a0593          	mv	a1,s4
    80006754:	fbf40513          	addi	a0,s0,-65
    80006758:	00000097          	auipc	ra,0x0
    8000675c:	9e0080e7          	jalr	-1568(ra) # 80006138 <either_copyin>
    80006760:	fd5518e3          	bne	a0,s5,80006730 <consolewrite+0x40>
    80006764:	04813083          	ld	ra,72(sp)
    80006768:	04013403          	ld	s0,64(sp)
    8000676c:	03813483          	ld	s1,56(sp)
    80006770:	02813983          	ld	s3,40(sp)
    80006774:	02013a03          	ld	s4,32(sp)
    80006778:	01813a83          	ld	s5,24(sp)
    8000677c:	00090513          	mv	a0,s2
    80006780:	03013903          	ld	s2,48(sp)
    80006784:	05010113          	addi	sp,sp,80
    80006788:	00008067          	ret
    8000678c:	00000913          	li	s2,0
    80006790:	fd5ff06f          	j	80006764 <consolewrite+0x74>

0000000080006794 <consoleread>:
    80006794:	f9010113          	addi	sp,sp,-112
    80006798:	06813023          	sd	s0,96(sp)
    8000679c:	04913c23          	sd	s1,88(sp)
    800067a0:	05213823          	sd	s2,80(sp)
    800067a4:	05313423          	sd	s3,72(sp)
    800067a8:	05413023          	sd	s4,64(sp)
    800067ac:	03513c23          	sd	s5,56(sp)
    800067b0:	03613823          	sd	s6,48(sp)
    800067b4:	03713423          	sd	s7,40(sp)
    800067b8:	03813023          	sd	s8,32(sp)
    800067bc:	06113423          	sd	ra,104(sp)
    800067c0:	01913c23          	sd	s9,24(sp)
    800067c4:	07010413          	addi	s0,sp,112
    800067c8:	00060b93          	mv	s7,a2
    800067cc:	00050913          	mv	s2,a0
    800067d0:	00058c13          	mv	s8,a1
    800067d4:	00060b1b          	sext.w	s6,a2
    800067d8:	00005497          	auipc	s1,0x5
    800067dc:	07048493          	addi	s1,s1,112 # 8000b848 <cons>
    800067e0:	00400993          	li	s3,4
    800067e4:	fff00a13          	li	s4,-1
    800067e8:	00a00a93          	li	s5,10
    800067ec:	05705e63          	blez	s7,80006848 <consoleread+0xb4>
    800067f0:	09c4a703          	lw	a4,156(s1)
    800067f4:	0984a783          	lw	a5,152(s1)
    800067f8:	0007071b          	sext.w	a4,a4
    800067fc:	08e78463          	beq	a5,a4,80006884 <consoleread+0xf0>
    80006800:	07f7f713          	andi	a4,a5,127
    80006804:	00e48733          	add	a4,s1,a4
    80006808:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000680c:	0017869b          	addiw	a3,a5,1
    80006810:	08d4ac23          	sw	a3,152(s1)
    80006814:	00070c9b          	sext.w	s9,a4
    80006818:	0b370663          	beq	a4,s3,800068c4 <consoleread+0x130>
    8000681c:	00100693          	li	a3,1
    80006820:	f9f40613          	addi	a2,s0,-97
    80006824:	000c0593          	mv	a1,s8
    80006828:	00090513          	mv	a0,s2
    8000682c:	f8e40fa3          	sb	a4,-97(s0)
    80006830:	00000097          	auipc	ra,0x0
    80006834:	8bc080e7          	jalr	-1860(ra) # 800060ec <either_copyout>
    80006838:	01450863          	beq	a0,s4,80006848 <consoleread+0xb4>
    8000683c:	001c0c13          	addi	s8,s8,1
    80006840:	fffb8b9b          	addiw	s7,s7,-1
    80006844:	fb5c94e3          	bne	s9,s5,800067ec <consoleread+0x58>
    80006848:	000b851b          	sext.w	a0,s7
    8000684c:	06813083          	ld	ra,104(sp)
    80006850:	06013403          	ld	s0,96(sp)
    80006854:	05813483          	ld	s1,88(sp)
    80006858:	05013903          	ld	s2,80(sp)
    8000685c:	04813983          	ld	s3,72(sp)
    80006860:	04013a03          	ld	s4,64(sp)
    80006864:	03813a83          	ld	s5,56(sp)
    80006868:	02813b83          	ld	s7,40(sp)
    8000686c:	02013c03          	ld	s8,32(sp)
    80006870:	01813c83          	ld	s9,24(sp)
    80006874:	40ab053b          	subw	a0,s6,a0
    80006878:	03013b03          	ld	s6,48(sp)
    8000687c:	07010113          	addi	sp,sp,112
    80006880:	00008067          	ret
    80006884:	00001097          	auipc	ra,0x1
    80006888:	1d8080e7          	jalr	472(ra) # 80007a5c <push_on>
    8000688c:	0984a703          	lw	a4,152(s1)
    80006890:	09c4a783          	lw	a5,156(s1)
    80006894:	0007879b          	sext.w	a5,a5
    80006898:	fef70ce3          	beq	a4,a5,80006890 <consoleread+0xfc>
    8000689c:	00001097          	auipc	ra,0x1
    800068a0:	234080e7          	jalr	564(ra) # 80007ad0 <pop_on>
    800068a4:	0984a783          	lw	a5,152(s1)
    800068a8:	07f7f713          	andi	a4,a5,127
    800068ac:	00e48733          	add	a4,s1,a4
    800068b0:	01874703          	lbu	a4,24(a4)
    800068b4:	0017869b          	addiw	a3,a5,1
    800068b8:	08d4ac23          	sw	a3,152(s1)
    800068bc:	00070c9b          	sext.w	s9,a4
    800068c0:	f5371ee3          	bne	a4,s3,8000681c <consoleread+0x88>
    800068c4:	000b851b          	sext.w	a0,s7
    800068c8:	f96bf2e3          	bgeu	s7,s6,8000684c <consoleread+0xb8>
    800068cc:	08f4ac23          	sw	a5,152(s1)
    800068d0:	f7dff06f          	j	8000684c <consoleread+0xb8>

00000000800068d4 <consputc>:
    800068d4:	10000793          	li	a5,256
    800068d8:	00f50663          	beq	a0,a5,800068e4 <consputc+0x10>
    800068dc:	00001317          	auipc	t1,0x1
    800068e0:	9f430067          	jr	-1548(t1) # 800072d0 <uartputc_sync>
    800068e4:	ff010113          	addi	sp,sp,-16
    800068e8:	00113423          	sd	ra,8(sp)
    800068ec:	00813023          	sd	s0,0(sp)
    800068f0:	01010413          	addi	s0,sp,16
    800068f4:	00800513          	li	a0,8
    800068f8:	00001097          	auipc	ra,0x1
    800068fc:	9d8080e7          	jalr	-1576(ra) # 800072d0 <uartputc_sync>
    80006900:	02000513          	li	a0,32
    80006904:	00001097          	auipc	ra,0x1
    80006908:	9cc080e7          	jalr	-1588(ra) # 800072d0 <uartputc_sync>
    8000690c:	00013403          	ld	s0,0(sp)
    80006910:	00813083          	ld	ra,8(sp)
    80006914:	00800513          	li	a0,8
    80006918:	01010113          	addi	sp,sp,16
    8000691c:	00001317          	auipc	t1,0x1
    80006920:	9b430067          	jr	-1612(t1) # 800072d0 <uartputc_sync>

0000000080006924 <consoleintr>:
    80006924:	fe010113          	addi	sp,sp,-32
    80006928:	00813823          	sd	s0,16(sp)
    8000692c:	00913423          	sd	s1,8(sp)
    80006930:	01213023          	sd	s2,0(sp)
    80006934:	00113c23          	sd	ra,24(sp)
    80006938:	02010413          	addi	s0,sp,32
    8000693c:	00005917          	auipc	s2,0x5
    80006940:	f0c90913          	addi	s2,s2,-244 # 8000b848 <cons>
    80006944:	00050493          	mv	s1,a0
    80006948:	00090513          	mv	a0,s2
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	e40080e7          	jalr	-448(ra) # 8000778c <acquire>
    80006954:	02048c63          	beqz	s1,8000698c <consoleintr+0x68>
    80006958:	0a092783          	lw	a5,160(s2)
    8000695c:	09892703          	lw	a4,152(s2)
    80006960:	07f00693          	li	a3,127
    80006964:	40e7873b          	subw	a4,a5,a4
    80006968:	02e6e263          	bltu	a3,a4,8000698c <consoleintr+0x68>
    8000696c:	00d00713          	li	a4,13
    80006970:	04e48063          	beq	s1,a4,800069b0 <consoleintr+0x8c>
    80006974:	07f7f713          	andi	a4,a5,127
    80006978:	00e90733          	add	a4,s2,a4
    8000697c:	0017879b          	addiw	a5,a5,1
    80006980:	0af92023          	sw	a5,160(s2)
    80006984:	00970c23          	sb	s1,24(a4)
    80006988:	08f92e23          	sw	a5,156(s2)
    8000698c:	01013403          	ld	s0,16(sp)
    80006990:	01813083          	ld	ra,24(sp)
    80006994:	00813483          	ld	s1,8(sp)
    80006998:	00013903          	ld	s2,0(sp)
    8000699c:	00005517          	auipc	a0,0x5
    800069a0:	eac50513          	addi	a0,a0,-340 # 8000b848 <cons>
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00001317          	auipc	t1,0x1
    800069ac:	eb030067          	jr	-336(t1) # 80007858 <release>
    800069b0:	00a00493          	li	s1,10
    800069b4:	fc1ff06f          	j	80006974 <consoleintr+0x50>

00000000800069b8 <consoleinit>:
    800069b8:	fe010113          	addi	sp,sp,-32
    800069bc:	00113c23          	sd	ra,24(sp)
    800069c0:	00813823          	sd	s0,16(sp)
    800069c4:	00913423          	sd	s1,8(sp)
    800069c8:	02010413          	addi	s0,sp,32
    800069cc:	00005497          	auipc	s1,0x5
    800069d0:	e7c48493          	addi	s1,s1,-388 # 8000b848 <cons>
    800069d4:	00048513          	mv	a0,s1
    800069d8:	00002597          	auipc	a1,0x2
    800069dc:	c7058593          	addi	a1,a1,-912 # 80008648 <CONSOLE_STATUS+0x638>
    800069e0:	00001097          	auipc	ra,0x1
    800069e4:	d88080e7          	jalr	-632(ra) # 80007768 <initlock>
    800069e8:	00000097          	auipc	ra,0x0
    800069ec:	7ac080e7          	jalr	1964(ra) # 80007194 <uartinit>
    800069f0:	01813083          	ld	ra,24(sp)
    800069f4:	01013403          	ld	s0,16(sp)
    800069f8:	00000797          	auipc	a5,0x0
    800069fc:	d9c78793          	addi	a5,a5,-612 # 80006794 <consoleread>
    80006a00:	0af4bc23          	sd	a5,184(s1)
    80006a04:	00000797          	auipc	a5,0x0
    80006a08:	cec78793          	addi	a5,a5,-788 # 800066f0 <consolewrite>
    80006a0c:	0cf4b023          	sd	a5,192(s1)
    80006a10:	00813483          	ld	s1,8(sp)
    80006a14:	02010113          	addi	sp,sp,32
    80006a18:	00008067          	ret

0000000080006a1c <console_read>:
    80006a1c:	ff010113          	addi	sp,sp,-16
    80006a20:	00813423          	sd	s0,8(sp)
    80006a24:	01010413          	addi	s0,sp,16
    80006a28:	00813403          	ld	s0,8(sp)
    80006a2c:	00005317          	auipc	t1,0x5
    80006a30:	ed433303          	ld	t1,-300(t1) # 8000b900 <devsw+0x10>
    80006a34:	01010113          	addi	sp,sp,16
    80006a38:	00030067          	jr	t1

0000000080006a3c <console_write>:
    80006a3c:	ff010113          	addi	sp,sp,-16
    80006a40:	00813423          	sd	s0,8(sp)
    80006a44:	01010413          	addi	s0,sp,16
    80006a48:	00813403          	ld	s0,8(sp)
    80006a4c:	00005317          	auipc	t1,0x5
    80006a50:	ebc33303          	ld	t1,-324(t1) # 8000b908 <devsw+0x18>
    80006a54:	01010113          	addi	sp,sp,16
    80006a58:	00030067          	jr	t1

0000000080006a5c <panic>:
    80006a5c:	fe010113          	addi	sp,sp,-32
    80006a60:	00113c23          	sd	ra,24(sp)
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    80006a70:	00050493          	mv	s1,a0
    80006a74:	00002517          	auipc	a0,0x2
    80006a78:	bdc50513          	addi	a0,a0,-1060 # 80008650 <CONSOLE_STATUS+0x640>
    80006a7c:	00005797          	auipc	a5,0x5
    80006a80:	f207a623          	sw	zero,-212(a5) # 8000b9a8 <pr+0x18>
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	034080e7          	jalr	52(ra) # 80006ab8 <__printf>
    80006a8c:	00048513          	mv	a0,s1
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	028080e7          	jalr	40(ra) # 80006ab8 <__printf>
    80006a98:	00002517          	auipc	a0,0x2
    80006a9c:	9b050513          	addi	a0,a0,-1616 # 80008448 <CONSOLE_STATUS+0x438>
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	018080e7          	jalr	24(ra) # 80006ab8 <__printf>
    80006aa8:	00100793          	li	a5,1
    80006aac:	00004717          	auipc	a4,0x4
    80006ab0:	c0f72e23          	sw	a5,-996(a4) # 8000a6c8 <panicked>
    80006ab4:	0000006f          	j	80006ab4 <panic+0x58>

0000000080006ab8 <__printf>:
    80006ab8:	f3010113          	addi	sp,sp,-208
    80006abc:	08813023          	sd	s0,128(sp)
    80006ac0:	07313423          	sd	s3,104(sp)
    80006ac4:	09010413          	addi	s0,sp,144
    80006ac8:	05813023          	sd	s8,64(sp)
    80006acc:	08113423          	sd	ra,136(sp)
    80006ad0:	06913c23          	sd	s1,120(sp)
    80006ad4:	07213823          	sd	s2,112(sp)
    80006ad8:	07413023          	sd	s4,96(sp)
    80006adc:	05513c23          	sd	s5,88(sp)
    80006ae0:	05613823          	sd	s6,80(sp)
    80006ae4:	05713423          	sd	s7,72(sp)
    80006ae8:	03913c23          	sd	s9,56(sp)
    80006aec:	03a13823          	sd	s10,48(sp)
    80006af0:	03b13423          	sd	s11,40(sp)
    80006af4:	00005317          	auipc	t1,0x5
    80006af8:	e9c30313          	addi	t1,t1,-356 # 8000b990 <pr>
    80006afc:	01832c03          	lw	s8,24(t1)
    80006b00:	00b43423          	sd	a1,8(s0)
    80006b04:	00c43823          	sd	a2,16(s0)
    80006b08:	00d43c23          	sd	a3,24(s0)
    80006b0c:	02e43023          	sd	a4,32(s0)
    80006b10:	02f43423          	sd	a5,40(s0)
    80006b14:	03043823          	sd	a6,48(s0)
    80006b18:	03143c23          	sd	a7,56(s0)
    80006b1c:	00050993          	mv	s3,a0
    80006b20:	4a0c1663          	bnez	s8,80006fcc <__printf+0x514>
    80006b24:	60098c63          	beqz	s3,8000713c <__printf+0x684>
    80006b28:	0009c503          	lbu	a0,0(s3)
    80006b2c:	00840793          	addi	a5,s0,8
    80006b30:	f6f43c23          	sd	a5,-136(s0)
    80006b34:	00000493          	li	s1,0
    80006b38:	22050063          	beqz	a0,80006d58 <__printf+0x2a0>
    80006b3c:	00002a37          	lui	s4,0x2
    80006b40:	00018ab7          	lui	s5,0x18
    80006b44:	000f4b37          	lui	s6,0xf4
    80006b48:	00989bb7          	lui	s7,0x989
    80006b4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006b50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006b54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006b58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006b5c:	00148c9b          	addiw	s9,s1,1
    80006b60:	02500793          	li	a5,37
    80006b64:	01998933          	add	s2,s3,s9
    80006b68:	38f51263          	bne	a0,a5,80006eec <__printf+0x434>
    80006b6c:	00094783          	lbu	a5,0(s2)
    80006b70:	00078c9b          	sext.w	s9,a5
    80006b74:	1e078263          	beqz	a5,80006d58 <__printf+0x2a0>
    80006b78:	0024849b          	addiw	s1,s1,2
    80006b7c:	07000713          	li	a4,112
    80006b80:	00998933          	add	s2,s3,s1
    80006b84:	38e78a63          	beq	a5,a4,80006f18 <__printf+0x460>
    80006b88:	20f76863          	bltu	a4,a5,80006d98 <__printf+0x2e0>
    80006b8c:	42a78863          	beq	a5,a0,80006fbc <__printf+0x504>
    80006b90:	06400713          	li	a4,100
    80006b94:	40e79663          	bne	a5,a4,80006fa0 <__printf+0x4e8>
    80006b98:	f7843783          	ld	a5,-136(s0)
    80006b9c:	0007a603          	lw	a2,0(a5)
    80006ba0:	00878793          	addi	a5,a5,8
    80006ba4:	f6f43c23          	sd	a5,-136(s0)
    80006ba8:	42064a63          	bltz	a2,80006fdc <__printf+0x524>
    80006bac:	00a00713          	li	a4,10
    80006bb0:	02e677bb          	remuw	a5,a2,a4
    80006bb4:	00002d97          	auipc	s11,0x2
    80006bb8:	ac4d8d93          	addi	s11,s11,-1340 # 80008678 <digits>
    80006bbc:	00900593          	li	a1,9
    80006bc0:	0006051b          	sext.w	a0,a2
    80006bc4:	00000c93          	li	s9,0
    80006bc8:	02079793          	slli	a5,a5,0x20
    80006bcc:	0207d793          	srli	a5,a5,0x20
    80006bd0:	00fd87b3          	add	a5,s11,a5
    80006bd4:	0007c783          	lbu	a5,0(a5)
    80006bd8:	02e656bb          	divuw	a3,a2,a4
    80006bdc:	f8f40023          	sb	a5,-128(s0)
    80006be0:	14c5d863          	bge	a1,a2,80006d30 <__printf+0x278>
    80006be4:	06300593          	li	a1,99
    80006be8:	00100c93          	li	s9,1
    80006bec:	02e6f7bb          	remuw	a5,a3,a4
    80006bf0:	02079793          	slli	a5,a5,0x20
    80006bf4:	0207d793          	srli	a5,a5,0x20
    80006bf8:	00fd87b3          	add	a5,s11,a5
    80006bfc:	0007c783          	lbu	a5,0(a5)
    80006c00:	02e6d73b          	divuw	a4,a3,a4
    80006c04:	f8f400a3          	sb	a5,-127(s0)
    80006c08:	12a5f463          	bgeu	a1,a0,80006d30 <__printf+0x278>
    80006c0c:	00a00693          	li	a3,10
    80006c10:	00900593          	li	a1,9
    80006c14:	02d777bb          	remuw	a5,a4,a3
    80006c18:	02079793          	slli	a5,a5,0x20
    80006c1c:	0207d793          	srli	a5,a5,0x20
    80006c20:	00fd87b3          	add	a5,s11,a5
    80006c24:	0007c503          	lbu	a0,0(a5)
    80006c28:	02d757bb          	divuw	a5,a4,a3
    80006c2c:	f8a40123          	sb	a0,-126(s0)
    80006c30:	48e5f263          	bgeu	a1,a4,800070b4 <__printf+0x5fc>
    80006c34:	06300513          	li	a0,99
    80006c38:	02d7f5bb          	remuw	a1,a5,a3
    80006c3c:	02059593          	slli	a1,a1,0x20
    80006c40:	0205d593          	srli	a1,a1,0x20
    80006c44:	00bd85b3          	add	a1,s11,a1
    80006c48:	0005c583          	lbu	a1,0(a1)
    80006c4c:	02d7d7bb          	divuw	a5,a5,a3
    80006c50:	f8b401a3          	sb	a1,-125(s0)
    80006c54:	48e57263          	bgeu	a0,a4,800070d8 <__printf+0x620>
    80006c58:	3e700513          	li	a0,999
    80006c5c:	02d7f5bb          	remuw	a1,a5,a3
    80006c60:	02059593          	slli	a1,a1,0x20
    80006c64:	0205d593          	srli	a1,a1,0x20
    80006c68:	00bd85b3          	add	a1,s11,a1
    80006c6c:	0005c583          	lbu	a1,0(a1)
    80006c70:	02d7d7bb          	divuw	a5,a5,a3
    80006c74:	f8b40223          	sb	a1,-124(s0)
    80006c78:	46e57663          	bgeu	a0,a4,800070e4 <__printf+0x62c>
    80006c7c:	02d7f5bb          	remuw	a1,a5,a3
    80006c80:	02059593          	slli	a1,a1,0x20
    80006c84:	0205d593          	srli	a1,a1,0x20
    80006c88:	00bd85b3          	add	a1,s11,a1
    80006c8c:	0005c583          	lbu	a1,0(a1)
    80006c90:	02d7d7bb          	divuw	a5,a5,a3
    80006c94:	f8b402a3          	sb	a1,-123(s0)
    80006c98:	46ea7863          	bgeu	s4,a4,80007108 <__printf+0x650>
    80006c9c:	02d7f5bb          	remuw	a1,a5,a3
    80006ca0:	02059593          	slli	a1,a1,0x20
    80006ca4:	0205d593          	srli	a1,a1,0x20
    80006ca8:	00bd85b3          	add	a1,s11,a1
    80006cac:	0005c583          	lbu	a1,0(a1)
    80006cb0:	02d7d7bb          	divuw	a5,a5,a3
    80006cb4:	f8b40323          	sb	a1,-122(s0)
    80006cb8:	3eeaf863          	bgeu	s5,a4,800070a8 <__printf+0x5f0>
    80006cbc:	02d7f5bb          	remuw	a1,a5,a3
    80006cc0:	02059593          	slli	a1,a1,0x20
    80006cc4:	0205d593          	srli	a1,a1,0x20
    80006cc8:	00bd85b3          	add	a1,s11,a1
    80006ccc:	0005c583          	lbu	a1,0(a1)
    80006cd0:	02d7d7bb          	divuw	a5,a5,a3
    80006cd4:	f8b403a3          	sb	a1,-121(s0)
    80006cd8:	42eb7e63          	bgeu	s6,a4,80007114 <__printf+0x65c>
    80006cdc:	02d7f5bb          	remuw	a1,a5,a3
    80006ce0:	02059593          	slli	a1,a1,0x20
    80006ce4:	0205d593          	srli	a1,a1,0x20
    80006ce8:	00bd85b3          	add	a1,s11,a1
    80006cec:	0005c583          	lbu	a1,0(a1)
    80006cf0:	02d7d7bb          	divuw	a5,a5,a3
    80006cf4:	f8b40423          	sb	a1,-120(s0)
    80006cf8:	42ebfc63          	bgeu	s7,a4,80007130 <__printf+0x678>
    80006cfc:	02079793          	slli	a5,a5,0x20
    80006d00:	0207d793          	srli	a5,a5,0x20
    80006d04:	00fd8db3          	add	s11,s11,a5
    80006d08:	000dc703          	lbu	a4,0(s11)
    80006d0c:	00a00793          	li	a5,10
    80006d10:	00900c93          	li	s9,9
    80006d14:	f8e404a3          	sb	a4,-119(s0)
    80006d18:	00065c63          	bgez	a2,80006d30 <__printf+0x278>
    80006d1c:	f9040713          	addi	a4,s0,-112
    80006d20:	00f70733          	add	a4,a4,a5
    80006d24:	02d00693          	li	a3,45
    80006d28:	fed70823          	sb	a3,-16(a4)
    80006d2c:	00078c93          	mv	s9,a5
    80006d30:	f8040793          	addi	a5,s0,-128
    80006d34:	01978cb3          	add	s9,a5,s9
    80006d38:	f7f40d13          	addi	s10,s0,-129
    80006d3c:	000cc503          	lbu	a0,0(s9)
    80006d40:	fffc8c93          	addi	s9,s9,-1
    80006d44:	00000097          	auipc	ra,0x0
    80006d48:	b90080e7          	jalr	-1136(ra) # 800068d4 <consputc>
    80006d4c:	ffac98e3          	bne	s9,s10,80006d3c <__printf+0x284>
    80006d50:	00094503          	lbu	a0,0(s2)
    80006d54:	e00514e3          	bnez	a0,80006b5c <__printf+0xa4>
    80006d58:	1a0c1663          	bnez	s8,80006f04 <__printf+0x44c>
    80006d5c:	08813083          	ld	ra,136(sp)
    80006d60:	08013403          	ld	s0,128(sp)
    80006d64:	07813483          	ld	s1,120(sp)
    80006d68:	07013903          	ld	s2,112(sp)
    80006d6c:	06813983          	ld	s3,104(sp)
    80006d70:	06013a03          	ld	s4,96(sp)
    80006d74:	05813a83          	ld	s5,88(sp)
    80006d78:	05013b03          	ld	s6,80(sp)
    80006d7c:	04813b83          	ld	s7,72(sp)
    80006d80:	04013c03          	ld	s8,64(sp)
    80006d84:	03813c83          	ld	s9,56(sp)
    80006d88:	03013d03          	ld	s10,48(sp)
    80006d8c:	02813d83          	ld	s11,40(sp)
    80006d90:	0d010113          	addi	sp,sp,208
    80006d94:	00008067          	ret
    80006d98:	07300713          	li	a4,115
    80006d9c:	1ce78a63          	beq	a5,a4,80006f70 <__printf+0x4b8>
    80006da0:	07800713          	li	a4,120
    80006da4:	1ee79e63          	bne	a5,a4,80006fa0 <__printf+0x4e8>
    80006da8:	f7843783          	ld	a5,-136(s0)
    80006dac:	0007a703          	lw	a4,0(a5)
    80006db0:	00878793          	addi	a5,a5,8
    80006db4:	f6f43c23          	sd	a5,-136(s0)
    80006db8:	28074263          	bltz	a4,8000703c <__printf+0x584>
    80006dbc:	00002d97          	auipc	s11,0x2
    80006dc0:	8bcd8d93          	addi	s11,s11,-1860 # 80008678 <digits>
    80006dc4:	00f77793          	andi	a5,a4,15
    80006dc8:	00fd87b3          	add	a5,s11,a5
    80006dcc:	0007c683          	lbu	a3,0(a5)
    80006dd0:	00f00613          	li	a2,15
    80006dd4:	0007079b          	sext.w	a5,a4
    80006dd8:	f8d40023          	sb	a3,-128(s0)
    80006ddc:	0047559b          	srliw	a1,a4,0x4
    80006de0:	0047569b          	srliw	a3,a4,0x4
    80006de4:	00000c93          	li	s9,0
    80006de8:	0ee65063          	bge	a2,a4,80006ec8 <__printf+0x410>
    80006dec:	00f6f693          	andi	a3,a3,15
    80006df0:	00dd86b3          	add	a3,s11,a3
    80006df4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006df8:	0087d79b          	srliw	a5,a5,0x8
    80006dfc:	00100c93          	li	s9,1
    80006e00:	f8d400a3          	sb	a3,-127(s0)
    80006e04:	0cb67263          	bgeu	a2,a1,80006ec8 <__printf+0x410>
    80006e08:	00f7f693          	andi	a3,a5,15
    80006e0c:	00dd86b3          	add	a3,s11,a3
    80006e10:	0006c583          	lbu	a1,0(a3)
    80006e14:	00f00613          	li	a2,15
    80006e18:	0047d69b          	srliw	a3,a5,0x4
    80006e1c:	f8b40123          	sb	a1,-126(s0)
    80006e20:	0047d593          	srli	a1,a5,0x4
    80006e24:	28f67e63          	bgeu	a2,a5,800070c0 <__printf+0x608>
    80006e28:	00f6f693          	andi	a3,a3,15
    80006e2c:	00dd86b3          	add	a3,s11,a3
    80006e30:	0006c503          	lbu	a0,0(a3)
    80006e34:	0087d813          	srli	a6,a5,0x8
    80006e38:	0087d69b          	srliw	a3,a5,0x8
    80006e3c:	f8a401a3          	sb	a0,-125(s0)
    80006e40:	28b67663          	bgeu	a2,a1,800070cc <__printf+0x614>
    80006e44:	00f6f693          	andi	a3,a3,15
    80006e48:	00dd86b3          	add	a3,s11,a3
    80006e4c:	0006c583          	lbu	a1,0(a3)
    80006e50:	00c7d513          	srli	a0,a5,0xc
    80006e54:	00c7d69b          	srliw	a3,a5,0xc
    80006e58:	f8b40223          	sb	a1,-124(s0)
    80006e5c:	29067a63          	bgeu	a2,a6,800070f0 <__printf+0x638>
    80006e60:	00f6f693          	andi	a3,a3,15
    80006e64:	00dd86b3          	add	a3,s11,a3
    80006e68:	0006c583          	lbu	a1,0(a3)
    80006e6c:	0107d813          	srli	a6,a5,0x10
    80006e70:	0107d69b          	srliw	a3,a5,0x10
    80006e74:	f8b402a3          	sb	a1,-123(s0)
    80006e78:	28a67263          	bgeu	a2,a0,800070fc <__printf+0x644>
    80006e7c:	00f6f693          	andi	a3,a3,15
    80006e80:	00dd86b3          	add	a3,s11,a3
    80006e84:	0006c683          	lbu	a3,0(a3)
    80006e88:	0147d79b          	srliw	a5,a5,0x14
    80006e8c:	f8d40323          	sb	a3,-122(s0)
    80006e90:	21067663          	bgeu	a2,a6,8000709c <__printf+0x5e4>
    80006e94:	02079793          	slli	a5,a5,0x20
    80006e98:	0207d793          	srli	a5,a5,0x20
    80006e9c:	00fd8db3          	add	s11,s11,a5
    80006ea0:	000dc683          	lbu	a3,0(s11)
    80006ea4:	00800793          	li	a5,8
    80006ea8:	00700c93          	li	s9,7
    80006eac:	f8d403a3          	sb	a3,-121(s0)
    80006eb0:	00075c63          	bgez	a4,80006ec8 <__printf+0x410>
    80006eb4:	f9040713          	addi	a4,s0,-112
    80006eb8:	00f70733          	add	a4,a4,a5
    80006ebc:	02d00693          	li	a3,45
    80006ec0:	fed70823          	sb	a3,-16(a4)
    80006ec4:	00078c93          	mv	s9,a5
    80006ec8:	f8040793          	addi	a5,s0,-128
    80006ecc:	01978cb3          	add	s9,a5,s9
    80006ed0:	f7f40d13          	addi	s10,s0,-129
    80006ed4:	000cc503          	lbu	a0,0(s9)
    80006ed8:	fffc8c93          	addi	s9,s9,-1
    80006edc:	00000097          	auipc	ra,0x0
    80006ee0:	9f8080e7          	jalr	-1544(ra) # 800068d4 <consputc>
    80006ee4:	ff9d18e3          	bne	s10,s9,80006ed4 <__printf+0x41c>
    80006ee8:	0100006f          	j	80006ef8 <__printf+0x440>
    80006eec:	00000097          	auipc	ra,0x0
    80006ef0:	9e8080e7          	jalr	-1560(ra) # 800068d4 <consputc>
    80006ef4:	000c8493          	mv	s1,s9
    80006ef8:	00094503          	lbu	a0,0(s2)
    80006efc:	c60510e3          	bnez	a0,80006b5c <__printf+0xa4>
    80006f00:	e40c0ee3          	beqz	s8,80006d5c <__printf+0x2a4>
    80006f04:	00005517          	auipc	a0,0x5
    80006f08:	a8c50513          	addi	a0,a0,-1396 # 8000b990 <pr>
    80006f0c:	00001097          	auipc	ra,0x1
    80006f10:	94c080e7          	jalr	-1716(ra) # 80007858 <release>
    80006f14:	e49ff06f          	j	80006d5c <__printf+0x2a4>
    80006f18:	f7843783          	ld	a5,-136(s0)
    80006f1c:	03000513          	li	a0,48
    80006f20:	01000d13          	li	s10,16
    80006f24:	00878713          	addi	a4,a5,8
    80006f28:	0007bc83          	ld	s9,0(a5)
    80006f2c:	f6e43c23          	sd	a4,-136(s0)
    80006f30:	00000097          	auipc	ra,0x0
    80006f34:	9a4080e7          	jalr	-1628(ra) # 800068d4 <consputc>
    80006f38:	07800513          	li	a0,120
    80006f3c:	00000097          	auipc	ra,0x0
    80006f40:	998080e7          	jalr	-1640(ra) # 800068d4 <consputc>
    80006f44:	00001d97          	auipc	s11,0x1
    80006f48:	734d8d93          	addi	s11,s11,1844 # 80008678 <digits>
    80006f4c:	03ccd793          	srli	a5,s9,0x3c
    80006f50:	00fd87b3          	add	a5,s11,a5
    80006f54:	0007c503          	lbu	a0,0(a5)
    80006f58:	fffd0d1b          	addiw	s10,s10,-1
    80006f5c:	004c9c93          	slli	s9,s9,0x4
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	974080e7          	jalr	-1676(ra) # 800068d4 <consputc>
    80006f68:	fe0d12e3          	bnez	s10,80006f4c <__printf+0x494>
    80006f6c:	f8dff06f          	j	80006ef8 <__printf+0x440>
    80006f70:	f7843783          	ld	a5,-136(s0)
    80006f74:	0007bc83          	ld	s9,0(a5)
    80006f78:	00878793          	addi	a5,a5,8
    80006f7c:	f6f43c23          	sd	a5,-136(s0)
    80006f80:	000c9a63          	bnez	s9,80006f94 <__printf+0x4dc>
    80006f84:	1080006f          	j	8000708c <__printf+0x5d4>
    80006f88:	001c8c93          	addi	s9,s9,1
    80006f8c:	00000097          	auipc	ra,0x0
    80006f90:	948080e7          	jalr	-1720(ra) # 800068d4 <consputc>
    80006f94:	000cc503          	lbu	a0,0(s9)
    80006f98:	fe0518e3          	bnez	a0,80006f88 <__printf+0x4d0>
    80006f9c:	f5dff06f          	j	80006ef8 <__printf+0x440>
    80006fa0:	02500513          	li	a0,37
    80006fa4:	00000097          	auipc	ra,0x0
    80006fa8:	930080e7          	jalr	-1744(ra) # 800068d4 <consputc>
    80006fac:	000c8513          	mv	a0,s9
    80006fb0:	00000097          	auipc	ra,0x0
    80006fb4:	924080e7          	jalr	-1756(ra) # 800068d4 <consputc>
    80006fb8:	f41ff06f          	j	80006ef8 <__printf+0x440>
    80006fbc:	02500513          	li	a0,37
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	914080e7          	jalr	-1772(ra) # 800068d4 <consputc>
    80006fc8:	f31ff06f          	j	80006ef8 <__printf+0x440>
    80006fcc:	00030513          	mv	a0,t1
    80006fd0:	00000097          	auipc	ra,0x0
    80006fd4:	7bc080e7          	jalr	1980(ra) # 8000778c <acquire>
    80006fd8:	b4dff06f          	j	80006b24 <__printf+0x6c>
    80006fdc:	40c0053b          	negw	a0,a2
    80006fe0:	00a00713          	li	a4,10
    80006fe4:	02e576bb          	remuw	a3,a0,a4
    80006fe8:	00001d97          	auipc	s11,0x1
    80006fec:	690d8d93          	addi	s11,s11,1680 # 80008678 <digits>
    80006ff0:	ff700593          	li	a1,-9
    80006ff4:	02069693          	slli	a3,a3,0x20
    80006ff8:	0206d693          	srli	a3,a3,0x20
    80006ffc:	00dd86b3          	add	a3,s11,a3
    80007000:	0006c683          	lbu	a3,0(a3)
    80007004:	02e557bb          	divuw	a5,a0,a4
    80007008:	f8d40023          	sb	a3,-128(s0)
    8000700c:	10b65e63          	bge	a2,a1,80007128 <__printf+0x670>
    80007010:	06300593          	li	a1,99
    80007014:	02e7f6bb          	remuw	a3,a5,a4
    80007018:	02069693          	slli	a3,a3,0x20
    8000701c:	0206d693          	srli	a3,a3,0x20
    80007020:	00dd86b3          	add	a3,s11,a3
    80007024:	0006c683          	lbu	a3,0(a3)
    80007028:	02e7d73b          	divuw	a4,a5,a4
    8000702c:	00200793          	li	a5,2
    80007030:	f8d400a3          	sb	a3,-127(s0)
    80007034:	bca5ece3          	bltu	a1,a0,80006c0c <__printf+0x154>
    80007038:	ce5ff06f          	j	80006d1c <__printf+0x264>
    8000703c:	40e007bb          	negw	a5,a4
    80007040:	00001d97          	auipc	s11,0x1
    80007044:	638d8d93          	addi	s11,s11,1592 # 80008678 <digits>
    80007048:	00f7f693          	andi	a3,a5,15
    8000704c:	00dd86b3          	add	a3,s11,a3
    80007050:	0006c583          	lbu	a1,0(a3)
    80007054:	ff100613          	li	a2,-15
    80007058:	0047d69b          	srliw	a3,a5,0x4
    8000705c:	f8b40023          	sb	a1,-128(s0)
    80007060:	0047d59b          	srliw	a1,a5,0x4
    80007064:	0ac75e63          	bge	a4,a2,80007120 <__printf+0x668>
    80007068:	00f6f693          	andi	a3,a3,15
    8000706c:	00dd86b3          	add	a3,s11,a3
    80007070:	0006c603          	lbu	a2,0(a3)
    80007074:	00f00693          	li	a3,15
    80007078:	0087d79b          	srliw	a5,a5,0x8
    8000707c:	f8c400a3          	sb	a2,-127(s0)
    80007080:	d8b6e4e3          	bltu	a3,a1,80006e08 <__printf+0x350>
    80007084:	00200793          	li	a5,2
    80007088:	e2dff06f          	j	80006eb4 <__printf+0x3fc>
    8000708c:	00001c97          	auipc	s9,0x1
    80007090:	5ccc8c93          	addi	s9,s9,1484 # 80008658 <CONSOLE_STATUS+0x648>
    80007094:	02800513          	li	a0,40
    80007098:	ef1ff06f          	j	80006f88 <__printf+0x4d0>
    8000709c:	00700793          	li	a5,7
    800070a0:	00600c93          	li	s9,6
    800070a4:	e0dff06f          	j	80006eb0 <__printf+0x3f8>
    800070a8:	00700793          	li	a5,7
    800070ac:	00600c93          	li	s9,6
    800070b0:	c69ff06f          	j	80006d18 <__printf+0x260>
    800070b4:	00300793          	li	a5,3
    800070b8:	00200c93          	li	s9,2
    800070bc:	c5dff06f          	j	80006d18 <__printf+0x260>
    800070c0:	00300793          	li	a5,3
    800070c4:	00200c93          	li	s9,2
    800070c8:	de9ff06f          	j	80006eb0 <__printf+0x3f8>
    800070cc:	00400793          	li	a5,4
    800070d0:	00300c93          	li	s9,3
    800070d4:	dddff06f          	j	80006eb0 <__printf+0x3f8>
    800070d8:	00400793          	li	a5,4
    800070dc:	00300c93          	li	s9,3
    800070e0:	c39ff06f          	j	80006d18 <__printf+0x260>
    800070e4:	00500793          	li	a5,5
    800070e8:	00400c93          	li	s9,4
    800070ec:	c2dff06f          	j	80006d18 <__printf+0x260>
    800070f0:	00500793          	li	a5,5
    800070f4:	00400c93          	li	s9,4
    800070f8:	db9ff06f          	j	80006eb0 <__printf+0x3f8>
    800070fc:	00600793          	li	a5,6
    80007100:	00500c93          	li	s9,5
    80007104:	dadff06f          	j	80006eb0 <__printf+0x3f8>
    80007108:	00600793          	li	a5,6
    8000710c:	00500c93          	li	s9,5
    80007110:	c09ff06f          	j	80006d18 <__printf+0x260>
    80007114:	00800793          	li	a5,8
    80007118:	00700c93          	li	s9,7
    8000711c:	bfdff06f          	j	80006d18 <__printf+0x260>
    80007120:	00100793          	li	a5,1
    80007124:	d91ff06f          	j	80006eb4 <__printf+0x3fc>
    80007128:	00100793          	li	a5,1
    8000712c:	bf1ff06f          	j	80006d1c <__printf+0x264>
    80007130:	00900793          	li	a5,9
    80007134:	00800c93          	li	s9,8
    80007138:	be1ff06f          	j	80006d18 <__printf+0x260>
    8000713c:	00001517          	auipc	a0,0x1
    80007140:	52450513          	addi	a0,a0,1316 # 80008660 <CONSOLE_STATUS+0x650>
    80007144:	00000097          	auipc	ra,0x0
    80007148:	918080e7          	jalr	-1768(ra) # 80006a5c <panic>

000000008000714c <printfinit>:
    8000714c:	fe010113          	addi	sp,sp,-32
    80007150:	00813823          	sd	s0,16(sp)
    80007154:	00913423          	sd	s1,8(sp)
    80007158:	00113c23          	sd	ra,24(sp)
    8000715c:	02010413          	addi	s0,sp,32
    80007160:	00005497          	auipc	s1,0x5
    80007164:	83048493          	addi	s1,s1,-2000 # 8000b990 <pr>
    80007168:	00048513          	mv	a0,s1
    8000716c:	00001597          	auipc	a1,0x1
    80007170:	50458593          	addi	a1,a1,1284 # 80008670 <CONSOLE_STATUS+0x660>
    80007174:	00000097          	auipc	ra,0x0
    80007178:	5f4080e7          	jalr	1524(ra) # 80007768 <initlock>
    8000717c:	01813083          	ld	ra,24(sp)
    80007180:	01013403          	ld	s0,16(sp)
    80007184:	0004ac23          	sw	zero,24(s1)
    80007188:	00813483          	ld	s1,8(sp)
    8000718c:	02010113          	addi	sp,sp,32
    80007190:	00008067          	ret

0000000080007194 <uartinit>:
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00813423          	sd	s0,8(sp)
    8000719c:	01010413          	addi	s0,sp,16
    800071a0:	100007b7          	lui	a5,0x10000
    800071a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800071a8:	f8000713          	li	a4,-128
    800071ac:	00e781a3          	sb	a4,3(a5)
    800071b0:	00300713          	li	a4,3
    800071b4:	00e78023          	sb	a4,0(a5)
    800071b8:	000780a3          	sb	zero,1(a5)
    800071bc:	00e781a3          	sb	a4,3(a5)
    800071c0:	00700693          	li	a3,7
    800071c4:	00d78123          	sb	a3,2(a5)
    800071c8:	00e780a3          	sb	a4,1(a5)
    800071cc:	00813403          	ld	s0,8(sp)
    800071d0:	01010113          	addi	sp,sp,16
    800071d4:	00008067          	ret

00000000800071d8 <uartputc>:
    800071d8:	00003797          	auipc	a5,0x3
    800071dc:	4f07a783          	lw	a5,1264(a5) # 8000a6c8 <panicked>
    800071e0:	00078463          	beqz	a5,800071e8 <uartputc+0x10>
    800071e4:	0000006f          	j	800071e4 <uartputc+0xc>
    800071e8:	fd010113          	addi	sp,sp,-48
    800071ec:	02813023          	sd	s0,32(sp)
    800071f0:	00913c23          	sd	s1,24(sp)
    800071f4:	01213823          	sd	s2,16(sp)
    800071f8:	01313423          	sd	s3,8(sp)
    800071fc:	02113423          	sd	ra,40(sp)
    80007200:	03010413          	addi	s0,sp,48
    80007204:	00003917          	auipc	s2,0x3
    80007208:	4cc90913          	addi	s2,s2,1228 # 8000a6d0 <uart_tx_r>
    8000720c:	00093783          	ld	a5,0(s2)
    80007210:	00003497          	auipc	s1,0x3
    80007214:	4c848493          	addi	s1,s1,1224 # 8000a6d8 <uart_tx_w>
    80007218:	0004b703          	ld	a4,0(s1)
    8000721c:	02078693          	addi	a3,a5,32
    80007220:	00050993          	mv	s3,a0
    80007224:	02e69c63          	bne	a3,a4,8000725c <uartputc+0x84>
    80007228:	00001097          	auipc	ra,0x1
    8000722c:	834080e7          	jalr	-1996(ra) # 80007a5c <push_on>
    80007230:	00093783          	ld	a5,0(s2)
    80007234:	0004b703          	ld	a4,0(s1)
    80007238:	02078793          	addi	a5,a5,32
    8000723c:	00e79463          	bne	a5,a4,80007244 <uartputc+0x6c>
    80007240:	0000006f          	j	80007240 <uartputc+0x68>
    80007244:	00001097          	auipc	ra,0x1
    80007248:	88c080e7          	jalr	-1908(ra) # 80007ad0 <pop_on>
    8000724c:	00093783          	ld	a5,0(s2)
    80007250:	0004b703          	ld	a4,0(s1)
    80007254:	02078693          	addi	a3,a5,32
    80007258:	fce688e3          	beq	a3,a4,80007228 <uartputc+0x50>
    8000725c:	01f77693          	andi	a3,a4,31
    80007260:	00004597          	auipc	a1,0x4
    80007264:	75058593          	addi	a1,a1,1872 # 8000b9b0 <uart_tx_buf>
    80007268:	00d586b3          	add	a3,a1,a3
    8000726c:	00170713          	addi	a4,a4,1
    80007270:	01368023          	sb	s3,0(a3)
    80007274:	00e4b023          	sd	a4,0(s1)
    80007278:	10000637          	lui	a2,0x10000
    8000727c:	02f71063          	bne	a4,a5,8000729c <uartputc+0xc4>
    80007280:	0340006f          	j	800072b4 <uartputc+0xdc>
    80007284:	00074703          	lbu	a4,0(a4)
    80007288:	00f93023          	sd	a5,0(s2)
    8000728c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007290:	00093783          	ld	a5,0(s2)
    80007294:	0004b703          	ld	a4,0(s1)
    80007298:	00f70e63          	beq	a4,a5,800072b4 <uartputc+0xdc>
    8000729c:	00564683          	lbu	a3,5(a2)
    800072a0:	01f7f713          	andi	a4,a5,31
    800072a4:	00e58733          	add	a4,a1,a4
    800072a8:	0206f693          	andi	a3,a3,32
    800072ac:	00178793          	addi	a5,a5,1
    800072b0:	fc069ae3          	bnez	a3,80007284 <uartputc+0xac>
    800072b4:	02813083          	ld	ra,40(sp)
    800072b8:	02013403          	ld	s0,32(sp)
    800072bc:	01813483          	ld	s1,24(sp)
    800072c0:	01013903          	ld	s2,16(sp)
    800072c4:	00813983          	ld	s3,8(sp)
    800072c8:	03010113          	addi	sp,sp,48
    800072cc:	00008067          	ret

00000000800072d0 <uartputc_sync>:
    800072d0:	ff010113          	addi	sp,sp,-16
    800072d4:	00813423          	sd	s0,8(sp)
    800072d8:	01010413          	addi	s0,sp,16
    800072dc:	00003717          	auipc	a4,0x3
    800072e0:	3ec72703          	lw	a4,1004(a4) # 8000a6c8 <panicked>
    800072e4:	02071663          	bnez	a4,80007310 <uartputc_sync+0x40>
    800072e8:	00050793          	mv	a5,a0
    800072ec:	100006b7          	lui	a3,0x10000
    800072f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800072f4:	02077713          	andi	a4,a4,32
    800072f8:	fe070ce3          	beqz	a4,800072f0 <uartputc_sync+0x20>
    800072fc:	0ff7f793          	andi	a5,a5,255
    80007300:	00f68023          	sb	a5,0(a3)
    80007304:	00813403          	ld	s0,8(sp)
    80007308:	01010113          	addi	sp,sp,16
    8000730c:	00008067          	ret
    80007310:	0000006f          	j	80007310 <uartputc_sync+0x40>

0000000080007314 <uartstart>:
    80007314:	ff010113          	addi	sp,sp,-16
    80007318:	00813423          	sd	s0,8(sp)
    8000731c:	01010413          	addi	s0,sp,16
    80007320:	00003617          	auipc	a2,0x3
    80007324:	3b060613          	addi	a2,a2,944 # 8000a6d0 <uart_tx_r>
    80007328:	00003517          	auipc	a0,0x3
    8000732c:	3b050513          	addi	a0,a0,944 # 8000a6d8 <uart_tx_w>
    80007330:	00063783          	ld	a5,0(a2)
    80007334:	00053703          	ld	a4,0(a0)
    80007338:	04f70263          	beq	a4,a5,8000737c <uartstart+0x68>
    8000733c:	100005b7          	lui	a1,0x10000
    80007340:	00004817          	auipc	a6,0x4
    80007344:	67080813          	addi	a6,a6,1648 # 8000b9b0 <uart_tx_buf>
    80007348:	01c0006f          	j	80007364 <uartstart+0x50>
    8000734c:	0006c703          	lbu	a4,0(a3)
    80007350:	00f63023          	sd	a5,0(a2)
    80007354:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007358:	00063783          	ld	a5,0(a2)
    8000735c:	00053703          	ld	a4,0(a0)
    80007360:	00f70e63          	beq	a4,a5,8000737c <uartstart+0x68>
    80007364:	01f7f713          	andi	a4,a5,31
    80007368:	00e806b3          	add	a3,a6,a4
    8000736c:	0055c703          	lbu	a4,5(a1)
    80007370:	00178793          	addi	a5,a5,1
    80007374:	02077713          	andi	a4,a4,32
    80007378:	fc071ae3          	bnez	a4,8000734c <uartstart+0x38>
    8000737c:	00813403          	ld	s0,8(sp)
    80007380:	01010113          	addi	sp,sp,16
    80007384:	00008067          	ret

0000000080007388 <uartgetc>:
    80007388:	ff010113          	addi	sp,sp,-16
    8000738c:	00813423          	sd	s0,8(sp)
    80007390:	01010413          	addi	s0,sp,16
    80007394:	10000737          	lui	a4,0x10000
    80007398:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000739c:	0017f793          	andi	a5,a5,1
    800073a0:	00078c63          	beqz	a5,800073b8 <uartgetc+0x30>
    800073a4:	00074503          	lbu	a0,0(a4)
    800073a8:	0ff57513          	andi	a0,a0,255
    800073ac:	00813403          	ld	s0,8(sp)
    800073b0:	01010113          	addi	sp,sp,16
    800073b4:	00008067          	ret
    800073b8:	fff00513          	li	a0,-1
    800073bc:	ff1ff06f          	j	800073ac <uartgetc+0x24>

00000000800073c0 <uartintr>:
    800073c0:	100007b7          	lui	a5,0x10000
    800073c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800073c8:	0017f793          	andi	a5,a5,1
    800073cc:	0a078463          	beqz	a5,80007474 <uartintr+0xb4>
    800073d0:	fe010113          	addi	sp,sp,-32
    800073d4:	00813823          	sd	s0,16(sp)
    800073d8:	00913423          	sd	s1,8(sp)
    800073dc:	00113c23          	sd	ra,24(sp)
    800073e0:	02010413          	addi	s0,sp,32
    800073e4:	100004b7          	lui	s1,0x10000
    800073e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800073ec:	0ff57513          	andi	a0,a0,255
    800073f0:	fffff097          	auipc	ra,0xfffff
    800073f4:	534080e7          	jalr	1332(ra) # 80006924 <consoleintr>
    800073f8:	0054c783          	lbu	a5,5(s1)
    800073fc:	0017f793          	andi	a5,a5,1
    80007400:	fe0794e3          	bnez	a5,800073e8 <uartintr+0x28>
    80007404:	00003617          	auipc	a2,0x3
    80007408:	2cc60613          	addi	a2,a2,716 # 8000a6d0 <uart_tx_r>
    8000740c:	00003517          	auipc	a0,0x3
    80007410:	2cc50513          	addi	a0,a0,716 # 8000a6d8 <uart_tx_w>
    80007414:	00063783          	ld	a5,0(a2)
    80007418:	00053703          	ld	a4,0(a0)
    8000741c:	04f70263          	beq	a4,a5,80007460 <uartintr+0xa0>
    80007420:	100005b7          	lui	a1,0x10000
    80007424:	00004817          	auipc	a6,0x4
    80007428:	58c80813          	addi	a6,a6,1420 # 8000b9b0 <uart_tx_buf>
    8000742c:	01c0006f          	j	80007448 <uartintr+0x88>
    80007430:	0006c703          	lbu	a4,0(a3)
    80007434:	00f63023          	sd	a5,0(a2)
    80007438:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000743c:	00063783          	ld	a5,0(a2)
    80007440:	00053703          	ld	a4,0(a0)
    80007444:	00f70e63          	beq	a4,a5,80007460 <uartintr+0xa0>
    80007448:	01f7f713          	andi	a4,a5,31
    8000744c:	00e806b3          	add	a3,a6,a4
    80007450:	0055c703          	lbu	a4,5(a1)
    80007454:	00178793          	addi	a5,a5,1
    80007458:	02077713          	andi	a4,a4,32
    8000745c:	fc071ae3          	bnez	a4,80007430 <uartintr+0x70>
    80007460:	01813083          	ld	ra,24(sp)
    80007464:	01013403          	ld	s0,16(sp)
    80007468:	00813483          	ld	s1,8(sp)
    8000746c:	02010113          	addi	sp,sp,32
    80007470:	00008067          	ret
    80007474:	00003617          	auipc	a2,0x3
    80007478:	25c60613          	addi	a2,a2,604 # 8000a6d0 <uart_tx_r>
    8000747c:	00003517          	auipc	a0,0x3
    80007480:	25c50513          	addi	a0,a0,604 # 8000a6d8 <uart_tx_w>
    80007484:	00063783          	ld	a5,0(a2)
    80007488:	00053703          	ld	a4,0(a0)
    8000748c:	04f70263          	beq	a4,a5,800074d0 <uartintr+0x110>
    80007490:	100005b7          	lui	a1,0x10000
    80007494:	00004817          	auipc	a6,0x4
    80007498:	51c80813          	addi	a6,a6,1308 # 8000b9b0 <uart_tx_buf>
    8000749c:	01c0006f          	j	800074b8 <uartintr+0xf8>
    800074a0:	0006c703          	lbu	a4,0(a3)
    800074a4:	00f63023          	sd	a5,0(a2)
    800074a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800074ac:	00063783          	ld	a5,0(a2)
    800074b0:	00053703          	ld	a4,0(a0)
    800074b4:	02f70063          	beq	a4,a5,800074d4 <uartintr+0x114>
    800074b8:	01f7f713          	andi	a4,a5,31
    800074bc:	00e806b3          	add	a3,a6,a4
    800074c0:	0055c703          	lbu	a4,5(a1)
    800074c4:	00178793          	addi	a5,a5,1
    800074c8:	02077713          	andi	a4,a4,32
    800074cc:	fc071ae3          	bnez	a4,800074a0 <uartintr+0xe0>
    800074d0:	00008067          	ret
    800074d4:	00008067          	ret

00000000800074d8 <kinit>:
    800074d8:	fc010113          	addi	sp,sp,-64
    800074dc:	02913423          	sd	s1,40(sp)
    800074e0:	fffff7b7          	lui	a5,0xfffff
    800074e4:	00005497          	auipc	s1,0x5
    800074e8:	4eb48493          	addi	s1,s1,1259 # 8000c9cf <end+0xfff>
    800074ec:	02813823          	sd	s0,48(sp)
    800074f0:	01313c23          	sd	s3,24(sp)
    800074f4:	00f4f4b3          	and	s1,s1,a5
    800074f8:	02113c23          	sd	ra,56(sp)
    800074fc:	03213023          	sd	s2,32(sp)
    80007500:	01413823          	sd	s4,16(sp)
    80007504:	01513423          	sd	s5,8(sp)
    80007508:	04010413          	addi	s0,sp,64
    8000750c:	000017b7          	lui	a5,0x1
    80007510:	01100993          	li	s3,17
    80007514:	00f487b3          	add	a5,s1,a5
    80007518:	01b99993          	slli	s3,s3,0x1b
    8000751c:	06f9e063          	bltu	s3,a5,8000757c <kinit+0xa4>
    80007520:	00004a97          	auipc	s5,0x4
    80007524:	4b0a8a93          	addi	s5,s5,1200 # 8000b9d0 <end>
    80007528:	0754ec63          	bltu	s1,s5,800075a0 <kinit+0xc8>
    8000752c:	0734fa63          	bgeu	s1,s3,800075a0 <kinit+0xc8>
    80007530:	00088a37          	lui	s4,0x88
    80007534:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007538:	00003917          	auipc	s2,0x3
    8000753c:	1a890913          	addi	s2,s2,424 # 8000a6e0 <kmem>
    80007540:	00ca1a13          	slli	s4,s4,0xc
    80007544:	0140006f          	j	80007558 <kinit+0x80>
    80007548:	000017b7          	lui	a5,0x1
    8000754c:	00f484b3          	add	s1,s1,a5
    80007550:	0554e863          	bltu	s1,s5,800075a0 <kinit+0xc8>
    80007554:	0534f663          	bgeu	s1,s3,800075a0 <kinit+0xc8>
    80007558:	00001637          	lui	a2,0x1
    8000755c:	00100593          	li	a1,1
    80007560:	00048513          	mv	a0,s1
    80007564:	00000097          	auipc	ra,0x0
    80007568:	5e4080e7          	jalr	1508(ra) # 80007b48 <__memset>
    8000756c:	00093783          	ld	a5,0(s2)
    80007570:	00f4b023          	sd	a5,0(s1)
    80007574:	00993023          	sd	s1,0(s2)
    80007578:	fd4498e3          	bne	s1,s4,80007548 <kinit+0x70>
    8000757c:	03813083          	ld	ra,56(sp)
    80007580:	03013403          	ld	s0,48(sp)
    80007584:	02813483          	ld	s1,40(sp)
    80007588:	02013903          	ld	s2,32(sp)
    8000758c:	01813983          	ld	s3,24(sp)
    80007590:	01013a03          	ld	s4,16(sp)
    80007594:	00813a83          	ld	s5,8(sp)
    80007598:	04010113          	addi	sp,sp,64
    8000759c:	00008067          	ret
    800075a0:	00001517          	auipc	a0,0x1
    800075a4:	0f050513          	addi	a0,a0,240 # 80008690 <digits+0x18>
    800075a8:	fffff097          	auipc	ra,0xfffff
    800075ac:	4b4080e7          	jalr	1204(ra) # 80006a5c <panic>

00000000800075b0 <freerange>:
    800075b0:	fc010113          	addi	sp,sp,-64
    800075b4:	000017b7          	lui	a5,0x1
    800075b8:	02913423          	sd	s1,40(sp)
    800075bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800075c0:	009504b3          	add	s1,a0,s1
    800075c4:	fffff537          	lui	a0,0xfffff
    800075c8:	02813823          	sd	s0,48(sp)
    800075cc:	02113c23          	sd	ra,56(sp)
    800075d0:	03213023          	sd	s2,32(sp)
    800075d4:	01313c23          	sd	s3,24(sp)
    800075d8:	01413823          	sd	s4,16(sp)
    800075dc:	01513423          	sd	s5,8(sp)
    800075e0:	01613023          	sd	s6,0(sp)
    800075e4:	04010413          	addi	s0,sp,64
    800075e8:	00a4f4b3          	and	s1,s1,a0
    800075ec:	00f487b3          	add	a5,s1,a5
    800075f0:	06f5e463          	bltu	a1,a5,80007658 <freerange+0xa8>
    800075f4:	00004a97          	auipc	s5,0x4
    800075f8:	3dca8a93          	addi	s5,s5,988 # 8000b9d0 <end>
    800075fc:	0954e263          	bltu	s1,s5,80007680 <freerange+0xd0>
    80007600:	01100993          	li	s3,17
    80007604:	01b99993          	slli	s3,s3,0x1b
    80007608:	0734fc63          	bgeu	s1,s3,80007680 <freerange+0xd0>
    8000760c:	00058a13          	mv	s4,a1
    80007610:	00003917          	auipc	s2,0x3
    80007614:	0d090913          	addi	s2,s2,208 # 8000a6e0 <kmem>
    80007618:	00002b37          	lui	s6,0x2
    8000761c:	0140006f          	j	80007630 <freerange+0x80>
    80007620:	000017b7          	lui	a5,0x1
    80007624:	00f484b3          	add	s1,s1,a5
    80007628:	0554ec63          	bltu	s1,s5,80007680 <freerange+0xd0>
    8000762c:	0534fa63          	bgeu	s1,s3,80007680 <freerange+0xd0>
    80007630:	00001637          	lui	a2,0x1
    80007634:	00100593          	li	a1,1
    80007638:	00048513          	mv	a0,s1
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	50c080e7          	jalr	1292(ra) # 80007b48 <__memset>
    80007644:	00093703          	ld	a4,0(s2)
    80007648:	016487b3          	add	a5,s1,s6
    8000764c:	00e4b023          	sd	a4,0(s1)
    80007650:	00993023          	sd	s1,0(s2)
    80007654:	fcfa76e3          	bgeu	s4,a5,80007620 <freerange+0x70>
    80007658:	03813083          	ld	ra,56(sp)
    8000765c:	03013403          	ld	s0,48(sp)
    80007660:	02813483          	ld	s1,40(sp)
    80007664:	02013903          	ld	s2,32(sp)
    80007668:	01813983          	ld	s3,24(sp)
    8000766c:	01013a03          	ld	s4,16(sp)
    80007670:	00813a83          	ld	s5,8(sp)
    80007674:	00013b03          	ld	s6,0(sp)
    80007678:	04010113          	addi	sp,sp,64
    8000767c:	00008067          	ret
    80007680:	00001517          	auipc	a0,0x1
    80007684:	01050513          	addi	a0,a0,16 # 80008690 <digits+0x18>
    80007688:	fffff097          	auipc	ra,0xfffff
    8000768c:	3d4080e7          	jalr	980(ra) # 80006a5c <panic>

0000000080007690 <kfree>:
    80007690:	fe010113          	addi	sp,sp,-32
    80007694:	00813823          	sd	s0,16(sp)
    80007698:	00113c23          	sd	ra,24(sp)
    8000769c:	00913423          	sd	s1,8(sp)
    800076a0:	02010413          	addi	s0,sp,32
    800076a4:	03451793          	slli	a5,a0,0x34
    800076a8:	04079c63          	bnez	a5,80007700 <kfree+0x70>
    800076ac:	00004797          	auipc	a5,0x4
    800076b0:	32478793          	addi	a5,a5,804 # 8000b9d0 <end>
    800076b4:	00050493          	mv	s1,a0
    800076b8:	04f56463          	bltu	a0,a5,80007700 <kfree+0x70>
    800076bc:	01100793          	li	a5,17
    800076c0:	01b79793          	slli	a5,a5,0x1b
    800076c4:	02f57e63          	bgeu	a0,a5,80007700 <kfree+0x70>
    800076c8:	00001637          	lui	a2,0x1
    800076cc:	00100593          	li	a1,1
    800076d0:	00000097          	auipc	ra,0x0
    800076d4:	478080e7          	jalr	1144(ra) # 80007b48 <__memset>
    800076d8:	00003797          	auipc	a5,0x3
    800076dc:	00878793          	addi	a5,a5,8 # 8000a6e0 <kmem>
    800076e0:	0007b703          	ld	a4,0(a5)
    800076e4:	01813083          	ld	ra,24(sp)
    800076e8:	01013403          	ld	s0,16(sp)
    800076ec:	00e4b023          	sd	a4,0(s1)
    800076f0:	0097b023          	sd	s1,0(a5)
    800076f4:	00813483          	ld	s1,8(sp)
    800076f8:	02010113          	addi	sp,sp,32
    800076fc:	00008067          	ret
    80007700:	00001517          	auipc	a0,0x1
    80007704:	f9050513          	addi	a0,a0,-112 # 80008690 <digits+0x18>
    80007708:	fffff097          	auipc	ra,0xfffff
    8000770c:	354080e7          	jalr	852(ra) # 80006a5c <panic>

0000000080007710 <kalloc>:
    80007710:	fe010113          	addi	sp,sp,-32
    80007714:	00813823          	sd	s0,16(sp)
    80007718:	00913423          	sd	s1,8(sp)
    8000771c:	00113c23          	sd	ra,24(sp)
    80007720:	02010413          	addi	s0,sp,32
    80007724:	00003797          	auipc	a5,0x3
    80007728:	fbc78793          	addi	a5,a5,-68 # 8000a6e0 <kmem>
    8000772c:	0007b483          	ld	s1,0(a5)
    80007730:	02048063          	beqz	s1,80007750 <kalloc+0x40>
    80007734:	0004b703          	ld	a4,0(s1)
    80007738:	00001637          	lui	a2,0x1
    8000773c:	00500593          	li	a1,5
    80007740:	00048513          	mv	a0,s1
    80007744:	00e7b023          	sd	a4,0(a5)
    80007748:	00000097          	auipc	ra,0x0
    8000774c:	400080e7          	jalr	1024(ra) # 80007b48 <__memset>
    80007750:	01813083          	ld	ra,24(sp)
    80007754:	01013403          	ld	s0,16(sp)
    80007758:	00048513          	mv	a0,s1
    8000775c:	00813483          	ld	s1,8(sp)
    80007760:	02010113          	addi	sp,sp,32
    80007764:	00008067          	ret

0000000080007768 <initlock>:
    80007768:	ff010113          	addi	sp,sp,-16
    8000776c:	00813423          	sd	s0,8(sp)
    80007770:	01010413          	addi	s0,sp,16
    80007774:	00813403          	ld	s0,8(sp)
    80007778:	00b53423          	sd	a1,8(a0)
    8000777c:	00052023          	sw	zero,0(a0)
    80007780:	00053823          	sd	zero,16(a0)
    80007784:	01010113          	addi	sp,sp,16
    80007788:	00008067          	ret

000000008000778c <acquire>:
    8000778c:	fe010113          	addi	sp,sp,-32
    80007790:	00813823          	sd	s0,16(sp)
    80007794:	00913423          	sd	s1,8(sp)
    80007798:	00113c23          	sd	ra,24(sp)
    8000779c:	01213023          	sd	s2,0(sp)
    800077a0:	02010413          	addi	s0,sp,32
    800077a4:	00050493          	mv	s1,a0
    800077a8:	10002973          	csrr	s2,sstatus
    800077ac:	100027f3          	csrr	a5,sstatus
    800077b0:	ffd7f793          	andi	a5,a5,-3
    800077b4:	10079073          	csrw	sstatus,a5
    800077b8:	fffff097          	auipc	ra,0xfffff
    800077bc:	8e8080e7          	jalr	-1816(ra) # 800060a0 <mycpu>
    800077c0:	07852783          	lw	a5,120(a0)
    800077c4:	06078e63          	beqz	a5,80007840 <acquire+0xb4>
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	8d8080e7          	jalr	-1832(ra) # 800060a0 <mycpu>
    800077d0:	07852783          	lw	a5,120(a0)
    800077d4:	0004a703          	lw	a4,0(s1)
    800077d8:	0017879b          	addiw	a5,a5,1
    800077dc:	06f52c23          	sw	a5,120(a0)
    800077e0:	04071063          	bnez	a4,80007820 <acquire+0x94>
    800077e4:	00100713          	li	a4,1
    800077e8:	00070793          	mv	a5,a4
    800077ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800077f0:	0007879b          	sext.w	a5,a5
    800077f4:	fe079ae3          	bnez	a5,800077e8 <acquire+0x5c>
    800077f8:	0ff0000f          	fence
    800077fc:	fffff097          	auipc	ra,0xfffff
    80007800:	8a4080e7          	jalr	-1884(ra) # 800060a0 <mycpu>
    80007804:	01813083          	ld	ra,24(sp)
    80007808:	01013403          	ld	s0,16(sp)
    8000780c:	00a4b823          	sd	a0,16(s1)
    80007810:	00013903          	ld	s2,0(sp)
    80007814:	00813483          	ld	s1,8(sp)
    80007818:	02010113          	addi	sp,sp,32
    8000781c:	00008067          	ret
    80007820:	0104b903          	ld	s2,16(s1)
    80007824:	fffff097          	auipc	ra,0xfffff
    80007828:	87c080e7          	jalr	-1924(ra) # 800060a0 <mycpu>
    8000782c:	faa91ce3          	bne	s2,a0,800077e4 <acquire+0x58>
    80007830:	00001517          	auipc	a0,0x1
    80007834:	e6850513          	addi	a0,a0,-408 # 80008698 <digits+0x20>
    80007838:	fffff097          	auipc	ra,0xfffff
    8000783c:	224080e7          	jalr	548(ra) # 80006a5c <panic>
    80007840:	00195913          	srli	s2,s2,0x1
    80007844:	fffff097          	auipc	ra,0xfffff
    80007848:	85c080e7          	jalr	-1956(ra) # 800060a0 <mycpu>
    8000784c:	00197913          	andi	s2,s2,1
    80007850:	07252e23          	sw	s2,124(a0)
    80007854:	f75ff06f          	j	800077c8 <acquire+0x3c>

0000000080007858 <release>:
    80007858:	fe010113          	addi	sp,sp,-32
    8000785c:	00813823          	sd	s0,16(sp)
    80007860:	00113c23          	sd	ra,24(sp)
    80007864:	00913423          	sd	s1,8(sp)
    80007868:	01213023          	sd	s2,0(sp)
    8000786c:	02010413          	addi	s0,sp,32
    80007870:	00052783          	lw	a5,0(a0)
    80007874:	00079a63          	bnez	a5,80007888 <release+0x30>
    80007878:	00001517          	auipc	a0,0x1
    8000787c:	e2850513          	addi	a0,a0,-472 # 800086a0 <digits+0x28>
    80007880:	fffff097          	auipc	ra,0xfffff
    80007884:	1dc080e7          	jalr	476(ra) # 80006a5c <panic>
    80007888:	01053903          	ld	s2,16(a0)
    8000788c:	00050493          	mv	s1,a0
    80007890:	fffff097          	auipc	ra,0xfffff
    80007894:	810080e7          	jalr	-2032(ra) # 800060a0 <mycpu>
    80007898:	fea910e3          	bne	s2,a0,80007878 <release+0x20>
    8000789c:	0004b823          	sd	zero,16(s1)
    800078a0:	0ff0000f          	fence
    800078a4:	0f50000f          	fence	iorw,ow
    800078a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800078ac:	ffffe097          	auipc	ra,0xffffe
    800078b0:	7f4080e7          	jalr	2036(ra) # 800060a0 <mycpu>
    800078b4:	100027f3          	csrr	a5,sstatus
    800078b8:	0027f793          	andi	a5,a5,2
    800078bc:	04079a63          	bnez	a5,80007910 <release+0xb8>
    800078c0:	07852783          	lw	a5,120(a0)
    800078c4:	02f05e63          	blez	a5,80007900 <release+0xa8>
    800078c8:	fff7871b          	addiw	a4,a5,-1
    800078cc:	06e52c23          	sw	a4,120(a0)
    800078d0:	00071c63          	bnez	a4,800078e8 <release+0x90>
    800078d4:	07c52783          	lw	a5,124(a0)
    800078d8:	00078863          	beqz	a5,800078e8 <release+0x90>
    800078dc:	100027f3          	csrr	a5,sstatus
    800078e0:	0027e793          	ori	a5,a5,2
    800078e4:	10079073          	csrw	sstatus,a5
    800078e8:	01813083          	ld	ra,24(sp)
    800078ec:	01013403          	ld	s0,16(sp)
    800078f0:	00813483          	ld	s1,8(sp)
    800078f4:	00013903          	ld	s2,0(sp)
    800078f8:	02010113          	addi	sp,sp,32
    800078fc:	00008067          	ret
    80007900:	00001517          	auipc	a0,0x1
    80007904:	dc050513          	addi	a0,a0,-576 # 800086c0 <digits+0x48>
    80007908:	fffff097          	auipc	ra,0xfffff
    8000790c:	154080e7          	jalr	340(ra) # 80006a5c <panic>
    80007910:	00001517          	auipc	a0,0x1
    80007914:	d9850513          	addi	a0,a0,-616 # 800086a8 <digits+0x30>
    80007918:	fffff097          	auipc	ra,0xfffff
    8000791c:	144080e7          	jalr	324(ra) # 80006a5c <panic>

0000000080007920 <holding>:
    80007920:	00052783          	lw	a5,0(a0)
    80007924:	00079663          	bnez	a5,80007930 <holding+0x10>
    80007928:	00000513          	li	a0,0
    8000792c:	00008067          	ret
    80007930:	fe010113          	addi	sp,sp,-32
    80007934:	00813823          	sd	s0,16(sp)
    80007938:	00913423          	sd	s1,8(sp)
    8000793c:	00113c23          	sd	ra,24(sp)
    80007940:	02010413          	addi	s0,sp,32
    80007944:	01053483          	ld	s1,16(a0)
    80007948:	ffffe097          	auipc	ra,0xffffe
    8000794c:	758080e7          	jalr	1880(ra) # 800060a0 <mycpu>
    80007950:	01813083          	ld	ra,24(sp)
    80007954:	01013403          	ld	s0,16(sp)
    80007958:	40a48533          	sub	a0,s1,a0
    8000795c:	00153513          	seqz	a0,a0
    80007960:	00813483          	ld	s1,8(sp)
    80007964:	02010113          	addi	sp,sp,32
    80007968:	00008067          	ret

000000008000796c <push_off>:
    8000796c:	fe010113          	addi	sp,sp,-32
    80007970:	00813823          	sd	s0,16(sp)
    80007974:	00113c23          	sd	ra,24(sp)
    80007978:	00913423          	sd	s1,8(sp)
    8000797c:	02010413          	addi	s0,sp,32
    80007980:	100024f3          	csrr	s1,sstatus
    80007984:	100027f3          	csrr	a5,sstatus
    80007988:	ffd7f793          	andi	a5,a5,-3
    8000798c:	10079073          	csrw	sstatus,a5
    80007990:	ffffe097          	auipc	ra,0xffffe
    80007994:	710080e7          	jalr	1808(ra) # 800060a0 <mycpu>
    80007998:	07852783          	lw	a5,120(a0)
    8000799c:	02078663          	beqz	a5,800079c8 <push_off+0x5c>
    800079a0:	ffffe097          	auipc	ra,0xffffe
    800079a4:	700080e7          	jalr	1792(ra) # 800060a0 <mycpu>
    800079a8:	07852783          	lw	a5,120(a0)
    800079ac:	01813083          	ld	ra,24(sp)
    800079b0:	01013403          	ld	s0,16(sp)
    800079b4:	0017879b          	addiw	a5,a5,1
    800079b8:	06f52c23          	sw	a5,120(a0)
    800079bc:	00813483          	ld	s1,8(sp)
    800079c0:	02010113          	addi	sp,sp,32
    800079c4:	00008067          	ret
    800079c8:	0014d493          	srli	s1,s1,0x1
    800079cc:	ffffe097          	auipc	ra,0xffffe
    800079d0:	6d4080e7          	jalr	1748(ra) # 800060a0 <mycpu>
    800079d4:	0014f493          	andi	s1,s1,1
    800079d8:	06952e23          	sw	s1,124(a0)
    800079dc:	fc5ff06f          	j	800079a0 <push_off+0x34>

00000000800079e0 <pop_off>:
    800079e0:	ff010113          	addi	sp,sp,-16
    800079e4:	00813023          	sd	s0,0(sp)
    800079e8:	00113423          	sd	ra,8(sp)
    800079ec:	01010413          	addi	s0,sp,16
    800079f0:	ffffe097          	auipc	ra,0xffffe
    800079f4:	6b0080e7          	jalr	1712(ra) # 800060a0 <mycpu>
    800079f8:	100027f3          	csrr	a5,sstatus
    800079fc:	0027f793          	andi	a5,a5,2
    80007a00:	04079663          	bnez	a5,80007a4c <pop_off+0x6c>
    80007a04:	07852783          	lw	a5,120(a0)
    80007a08:	02f05a63          	blez	a5,80007a3c <pop_off+0x5c>
    80007a0c:	fff7871b          	addiw	a4,a5,-1
    80007a10:	06e52c23          	sw	a4,120(a0)
    80007a14:	00071c63          	bnez	a4,80007a2c <pop_off+0x4c>
    80007a18:	07c52783          	lw	a5,124(a0)
    80007a1c:	00078863          	beqz	a5,80007a2c <pop_off+0x4c>
    80007a20:	100027f3          	csrr	a5,sstatus
    80007a24:	0027e793          	ori	a5,a5,2
    80007a28:	10079073          	csrw	sstatus,a5
    80007a2c:	00813083          	ld	ra,8(sp)
    80007a30:	00013403          	ld	s0,0(sp)
    80007a34:	01010113          	addi	sp,sp,16
    80007a38:	00008067          	ret
    80007a3c:	00001517          	auipc	a0,0x1
    80007a40:	c8450513          	addi	a0,a0,-892 # 800086c0 <digits+0x48>
    80007a44:	fffff097          	auipc	ra,0xfffff
    80007a48:	018080e7          	jalr	24(ra) # 80006a5c <panic>
    80007a4c:	00001517          	auipc	a0,0x1
    80007a50:	c5c50513          	addi	a0,a0,-932 # 800086a8 <digits+0x30>
    80007a54:	fffff097          	auipc	ra,0xfffff
    80007a58:	008080e7          	jalr	8(ra) # 80006a5c <panic>

0000000080007a5c <push_on>:
    80007a5c:	fe010113          	addi	sp,sp,-32
    80007a60:	00813823          	sd	s0,16(sp)
    80007a64:	00113c23          	sd	ra,24(sp)
    80007a68:	00913423          	sd	s1,8(sp)
    80007a6c:	02010413          	addi	s0,sp,32
    80007a70:	100024f3          	csrr	s1,sstatus
    80007a74:	100027f3          	csrr	a5,sstatus
    80007a78:	0027e793          	ori	a5,a5,2
    80007a7c:	10079073          	csrw	sstatus,a5
    80007a80:	ffffe097          	auipc	ra,0xffffe
    80007a84:	620080e7          	jalr	1568(ra) # 800060a0 <mycpu>
    80007a88:	07852783          	lw	a5,120(a0)
    80007a8c:	02078663          	beqz	a5,80007ab8 <push_on+0x5c>
    80007a90:	ffffe097          	auipc	ra,0xffffe
    80007a94:	610080e7          	jalr	1552(ra) # 800060a0 <mycpu>
    80007a98:	07852783          	lw	a5,120(a0)
    80007a9c:	01813083          	ld	ra,24(sp)
    80007aa0:	01013403          	ld	s0,16(sp)
    80007aa4:	0017879b          	addiw	a5,a5,1
    80007aa8:	06f52c23          	sw	a5,120(a0)
    80007aac:	00813483          	ld	s1,8(sp)
    80007ab0:	02010113          	addi	sp,sp,32
    80007ab4:	00008067          	ret
    80007ab8:	0014d493          	srli	s1,s1,0x1
    80007abc:	ffffe097          	auipc	ra,0xffffe
    80007ac0:	5e4080e7          	jalr	1508(ra) # 800060a0 <mycpu>
    80007ac4:	0014f493          	andi	s1,s1,1
    80007ac8:	06952e23          	sw	s1,124(a0)
    80007acc:	fc5ff06f          	j	80007a90 <push_on+0x34>

0000000080007ad0 <pop_on>:
    80007ad0:	ff010113          	addi	sp,sp,-16
    80007ad4:	00813023          	sd	s0,0(sp)
    80007ad8:	00113423          	sd	ra,8(sp)
    80007adc:	01010413          	addi	s0,sp,16
    80007ae0:	ffffe097          	auipc	ra,0xffffe
    80007ae4:	5c0080e7          	jalr	1472(ra) # 800060a0 <mycpu>
    80007ae8:	100027f3          	csrr	a5,sstatus
    80007aec:	0027f793          	andi	a5,a5,2
    80007af0:	04078463          	beqz	a5,80007b38 <pop_on+0x68>
    80007af4:	07852783          	lw	a5,120(a0)
    80007af8:	02f05863          	blez	a5,80007b28 <pop_on+0x58>
    80007afc:	fff7879b          	addiw	a5,a5,-1
    80007b00:	06f52c23          	sw	a5,120(a0)
    80007b04:	07853783          	ld	a5,120(a0)
    80007b08:	00079863          	bnez	a5,80007b18 <pop_on+0x48>
    80007b0c:	100027f3          	csrr	a5,sstatus
    80007b10:	ffd7f793          	andi	a5,a5,-3
    80007b14:	10079073          	csrw	sstatus,a5
    80007b18:	00813083          	ld	ra,8(sp)
    80007b1c:	00013403          	ld	s0,0(sp)
    80007b20:	01010113          	addi	sp,sp,16
    80007b24:	00008067          	ret
    80007b28:	00001517          	auipc	a0,0x1
    80007b2c:	bc050513          	addi	a0,a0,-1088 # 800086e8 <digits+0x70>
    80007b30:	fffff097          	auipc	ra,0xfffff
    80007b34:	f2c080e7          	jalr	-212(ra) # 80006a5c <panic>
    80007b38:	00001517          	auipc	a0,0x1
    80007b3c:	b9050513          	addi	a0,a0,-1136 # 800086c8 <digits+0x50>
    80007b40:	fffff097          	auipc	ra,0xfffff
    80007b44:	f1c080e7          	jalr	-228(ra) # 80006a5c <panic>

0000000080007b48 <__memset>:
    80007b48:	ff010113          	addi	sp,sp,-16
    80007b4c:	00813423          	sd	s0,8(sp)
    80007b50:	01010413          	addi	s0,sp,16
    80007b54:	1a060e63          	beqz	a2,80007d10 <__memset+0x1c8>
    80007b58:	40a007b3          	neg	a5,a0
    80007b5c:	0077f793          	andi	a5,a5,7
    80007b60:	00778693          	addi	a3,a5,7
    80007b64:	00b00813          	li	a6,11
    80007b68:	0ff5f593          	andi	a1,a1,255
    80007b6c:	fff6071b          	addiw	a4,a2,-1
    80007b70:	1b06e663          	bltu	a3,a6,80007d1c <__memset+0x1d4>
    80007b74:	1cd76463          	bltu	a4,a3,80007d3c <__memset+0x1f4>
    80007b78:	1a078e63          	beqz	a5,80007d34 <__memset+0x1ec>
    80007b7c:	00b50023          	sb	a1,0(a0)
    80007b80:	00100713          	li	a4,1
    80007b84:	1ae78463          	beq	a5,a4,80007d2c <__memset+0x1e4>
    80007b88:	00b500a3          	sb	a1,1(a0)
    80007b8c:	00200713          	li	a4,2
    80007b90:	1ae78a63          	beq	a5,a4,80007d44 <__memset+0x1fc>
    80007b94:	00b50123          	sb	a1,2(a0)
    80007b98:	00300713          	li	a4,3
    80007b9c:	18e78463          	beq	a5,a4,80007d24 <__memset+0x1dc>
    80007ba0:	00b501a3          	sb	a1,3(a0)
    80007ba4:	00400713          	li	a4,4
    80007ba8:	1ae78263          	beq	a5,a4,80007d4c <__memset+0x204>
    80007bac:	00b50223          	sb	a1,4(a0)
    80007bb0:	00500713          	li	a4,5
    80007bb4:	1ae78063          	beq	a5,a4,80007d54 <__memset+0x20c>
    80007bb8:	00b502a3          	sb	a1,5(a0)
    80007bbc:	00700713          	li	a4,7
    80007bc0:	18e79e63          	bne	a5,a4,80007d5c <__memset+0x214>
    80007bc4:	00b50323          	sb	a1,6(a0)
    80007bc8:	00700e93          	li	t4,7
    80007bcc:	00859713          	slli	a4,a1,0x8
    80007bd0:	00e5e733          	or	a4,a1,a4
    80007bd4:	01059e13          	slli	t3,a1,0x10
    80007bd8:	01c76e33          	or	t3,a4,t3
    80007bdc:	01859313          	slli	t1,a1,0x18
    80007be0:	006e6333          	or	t1,t3,t1
    80007be4:	02059893          	slli	a7,a1,0x20
    80007be8:	40f60e3b          	subw	t3,a2,a5
    80007bec:	011368b3          	or	a7,t1,a7
    80007bf0:	02859813          	slli	a6,a1,0x28
    80007bf4:	0108e833          	or	a6,a7,a6
    80007bf8:	03059693          	slli	a3,a1,0x30
    80007bfc:	003e589b          	srliw	a7,t3,0x3
    80007c00:	00d866b3          	or	a3,a6,a3
    80007c04:	03859713          	slli	a4,a1,0x38
    80007c08:	00389813          	slli	a6,a7,0x3
    80007c0c:	00f507b3          	add	a5,a0,a5
    80007c10:	00e6e733          	or	a4,a3,a4
    80007c14:	000e089b          	sext.w	a7,t3
    80007c18:	00f806b3          	add	a3,a6,a5
    80007c1c:	00e7b023          	sd	a4,0(a5)
    80007c20:	00878793          	addi	a5,a5,8
    80007c24:	fed79ce3          	bne	a5,a3,80007c1c <__memset+0xd4>
    80007c28:	ff8e7793          	andi	a5,t3,-8
    80007c2c:	0007871b          	sext.w	a4,a5
    80007c30:	01d787bb          	addw	a5,a5,t4
    80007c34:	0ce88e63          	beq	a7,a4,80007d10 <__memset+0x1c8>
    80007c38:	00f50733          	add	a4,a0,a5
    80007c3c:	00b70023          	sb	a1,0(a4)
    80007c40:	0017871b          	addiw	a4,a5,1
    80007c44:	0cc77663          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007c48:	00e50733          	add	a4,a0,a4
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0027871b          	addiw	a4,a5,2
    80007c54:	0ac77e63          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0037871b          	addiw	a4,a5,3
    80007c64:	0ac77663          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	0047871b          	addiw	a4,a5,4
    80007c74:	08c77e63          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	0057871b          	addiw	a4,a5,5
    80007c84:	08c77663          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0067871b          	addiw	a4,a5,6
    80007c94:	06c77e63          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0077871b          	addiw	a4,a5,7
    80007ca4:	06c77663          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	0087871b          	addiw	a4,a5,8
    80007cb4:	04c77e63          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	0097871b          	addiw	a4,a5,9
    80007cc4:	04c77663          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	00a7871b          	addiw	a4,a5,10
    80007cd4:	02c77e63          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	00b7871b          	addiw	a4,a5,11
    80007ce4:	02c77663          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007ce8:	00e50733          	add	a4,a0,a4
    80007cec:	00b70023          	sb	a1,0(a4)
    80007cf0:	00c7871b          	addiw	a4,a5,12
    80007cf4:	00c77e63          	bgeu	a4,a2,80007d10 <__memset+0x1c8>
    80007cf8:	00e50733          	add	a4,a0,a4
    80007cfc:	00b70023          	sb	a1,0(a4)
    80007d00:	00d7879b          	addiw	a5,a5,13
    80007d04:	00c7f663          	bgeu	a5,a2,80007d10 <__memset+0x1c8>
    80007d08:	00f507b3          	add	a5,a0,a5
    80007d0c:	00b78023          	sb	a1,0(a5)
    80007d10:	00813403          	ld	s0,8(sp)
    80007d14:	01010113          	addi	sp,sp,16
    80007d18:	00008067          	ret
    80007d1c:	00b00693          	li	a3,11
    80007d20:	e55ff06f          	j	80007b74 <__memset+0x2c>
    80007d24:	00300e93          	li	t4,3
    80007d28:	ea5ff06f          	j	80007bcc <__memset+0x84>
    80007d2c:	00100e93          	li	t4,1
    80007d30:	e9dff06f          	j	80007bcc <__memset+0x84>
    80007d34:	00000e93          	li	t4,0
    80007d38:	e95ff06f          	j	80007bcc <__memset+0x84>
    80007d3c:	00000793          	li	a5,0
    80007d40:	ef9ff06f          	j	80007c38 <__memset+0xf0>
    80007d44:	00200e93          	li	t4,2
    80007d48:	e85ff06f          	j	80007bcc <__memset+0x84>
    80007d4c:	00400e93          	li	t4,4
    80007d50:	e7dff06f          	j	80007bcc <__memset+0x84>
    80007d54:	00500e93          	li	t4,5
    80007d58:	e75ff06f          	j	80007bcc <__memset+0x84>
    80007d5c:	00600e93          	li	t4,6
    80007d60:	e6dff06f          	j	80007bcc <__memset+0x84>

0000000080007d64 <__memmove>:
    80007d64:	ff010113          	addi	sp,sp,-16
    80007d68:	00813423          	sd	s0,8(sp)
    80007d6c:	01010413          	addi	s0,sp,16
    80007d70:	0e060863          	beqz	a2,80007e60 <__memmove+0xfc>
    80007d74:	fff6069b          	addiw	a3,a2,-1
    80007d78:	0006881b          	sext.w	a6,a3
    80007d7c:	0ea5e863          	bltu	a1,a0,80007e6c <__memmove+0x108>
    80007d80:	00758713          	addi	a4,a1,7
    80007d84:	00a5e7b3          	or	a5,a1,a0
    80007d88:	40a70733          	sub	a4,a4,a0
    80007d8c:	0077f793          	andi	a5,a5,7
    80007d90:	00f73713          	sltiu	a4,a4,15
    80007d94:	00174713          	xori	a4,a4,1
    80007d98:	0017b793          	seqz	a5,a5
    80007d9c:	00e7f7b3          	and	a5,a5,a4
    80007da0:	10078863          	beqz	a5,80007eb0 <__memmove+0x14c>
    80007da4:	00900793          	li	a5,9
    80007da8:	1107f463          	bgeu	a5,a6,80007eb0 <__memmove+0x14c>
    80007dac:	0036581b          	srliw	a6,a2,0x3
    80007db0:	fff8081b          	addiw	a6,a6,-1
    80007db4:	02081813          	slli	a6,a6,0x20
    80007db8:	01d85893          	srli	a7,a6,0x1d
    80007dbc:	00858813          	addi	a6,a1,8
    80007dc0:	00058793          	mv	a5,a1
    80007dc4:	00050713          	mv	a4,a0
    80007dc8:	01088833          	add	a6,a7,a6
    80007dcc:	0007b883          	ld	a7,0(a5)
    80007dd0:	00878793          	addi	a5,a5,8
    80007dd4:	00870713          	addi	a4,a4,8
    80007dd8:	ff173c23          	sd	a7,-8(a4)
    80007ddc:	ff0798e3          	bne	a5,a6,80007dcc <__memmove+0x68>
    80007de0:	ff867713          	andi	a4,a2,-8
    80007de4:	02071793          	slli	a5,a4,0x20
    80007de8:	0207d793          	srli	a5,a5,0x20
    80007dec:	00f585b3          	add	a1,a1,a5
    80007df0:	40e686bb          	subw	a3,a3,a4
    80007df4:	00f507b3          	add	a5,a0,a5
    80007df8:	06e60463          	beq	a2,a4,80007e60 <__memmove+0xfc>
    80007dfc:	0005c703          	lbu	a4,0(a1)
    80007e00:	00e78023          	sb	a4,0(a5)
    80007e04:	04068e63          	beqz	a3,80007e60 <__memmove+0xfc>
    80007e08:	0015c603          	lbu	a2,1(a1)
    80007e0c:	00100713          	li	a4,1
    80007e10:	00c780a3          	sb	a2,1(a5)
    80007e14:	04e68663          	beq	a3,a4,80007e60 <__memmove+0xfc>
    80007e18:	0025c603          	lbu	a2,2(a1)
    80007e1c:	00200713          	li	a4,2
    80007e20:	00c78123          	sb	a2,2(a5)
    80007e24:	02e68e63          	beq	a3,a4,80007e60 <__memmove+0xfc>
    80007e28:	0035c603          	lbu	a2,3(a1)
    80007e2c:	00300713          	li	a4,3
    80007e30:	00c781a3          	sb	a2,3(a5)
    80007e34:	02e68663          	beq	a3,a4,80007e60 <__memmove+0xfc>
    80007e38:	0045c603          	lbu	a2,4(a1)
    80007e3c:	00400713          	li	a4,4
    80007e40:	00c78223          	sb	a2,4(a5)
    80007e44:	00e68e63          	beq	a3,a4,80007e60 <__memmove+0xfc>
    80007e48:	0055c603          	lbu	a2,5(a1)
    80007e4c:	00500713          	li	a4,5
    80007e50:	00c782a3          	sb	a2,5(a5)
    80007e54:	00e68663          	beq	a3,a4,80007e60 <__memmove+0xfc>
    80007e58:	0065c703          	lbu	a4,6(a1)
    80007e5c:	00e78323          	sb	a4,6(a5)
    80007e60:	00813403          	ld	s0,8(sp)
    80007e64:	01010113          	addi	sp,sp,16
    80007e68:	00008067          	ret
    80007e6c:	02061713          	slli	a4,a2,0x20
    80007e70:	02075713          	srli	a4,a4,0x20
    80007e74:	00e587b3          	add	a5,a1,a4
    80007e78:	f0f574e3          	bgeu	a0,a5,80007d80 <__memmove+0x1c>
    80007e7c:	02069613          	slli	a2,a3,0x20
    80007e80:	02065613          	srli	a2,a2,0x20
    80007e84:	fff64613          	not	a2,a2
    80007e88:	00e50733          	add	a4,a0,a4
    80007e8c:	00c78633          	add	a2,a5,a2
    80007e90:	fff7c683          	lbu	a3,-1(a5)
    80007e94:	fff78793          	addi	a5,a5,-1
    80007e98:	fff70713          	addi	a4,a4,-1
    80007e9c:	00d70023          	sb	a3,0(a4)
    80007ea0:	fec798e3          	bne	a5,a2,80007e90 <__memmove+0x12c>
    80007ea4:	00813403          	ld	s0,8(sp)
    80007ea8:	01010113          	addi	sp,sp,16
    80007eac:	00008067          	ret
    80007eb0:	02069713          	slli	a4,a3,0x20
    80007eb4:	02075713          	srli	a4,a4,0x20
    80007eb8:	00170713          	addi	a4,a4,1
    80007ebc:	00e50733          	add	a4,a0,a4
    80007ec0:	00050793          	mv	a5,a0
    80007ec4:	0005c683          	lbu	a3,0(a1)
    80007ec8:	00178793          	addi	a5,a5,1
    80007ecc:	00158593          	addi	a1,a1,1
    80007ed0:	fed78fa3          	sb	a3,-1(a5)
    80007ed4:	fee798e3          	bne	a5,a4,80007ec4 <__memmove+0x160>
    80007ed8:	f89ff06f          	j	80007e60 <__memmove+0xfc>

0000000080007edc <__putc>:
    80007edc:	fe010113          	addi	sp,sp,-32
    80007ee0:	00813823          	sd	s0,16(sp)
    80007ee4:	00113c23          	sd	ra,24(sp)
    80007ee8:	02010413          	addi	s0,sp,32
    80007eec:	00050793          	mv	a5,a0
    80007ef0:	fef40593          	addi	a1,s0,-17
    80007ef4:	00100613          	li	a2,1
    80007ef8:	00000513          	li	a0,0
    80007efc:	fef407a3          	sb	a5,-17(s0)
    80007f00:	fffff097          	auipc	ra,0xfffff
    80007f04:	b3c080e7          	jalr	-1220(ra) # 80006a3c <console_write>
    80007f08:	01813083          	ld	ra,24(sp)
    80007f0c:	01013403          	ld	s0,16(sp)
    80007f10:	02010113          	addi	sp,sp,32
    80007f14:	00008067          	ret

0000000080007f18 <__getc>:
    80007f18:	fe010113          	addi	sp,sp,-32
    80007f1c:	00813823          	sd	s0,16(sp)
    80007f20:	00113c23          	sd	ra,24(sp)
    80007f24:	02010413          	addi	s0,sp,32
    80007f28:	fe840593          	addi	a1,s0,-24
    80007f2c:	00100613          	li	a2,1
    80007f30:	00000513          	li	a0,0
    80007f34:	fffff097          	auipc	ra,0xfffff
    80007f38:	ae8080e7          	jalr	-1304(ra) # 80006a1c <console_read>
    80007f3c:	fe844503          	lbu	a0,-24(s0)
    80007f40:	01813083          	ld	ra,24(sp)
    80007f44:	01013403          	ld	s0,16(sp)
    80007f48:	02010113          	addi	sp,sp,32
    80007f4c:	00008067          	ret

0000000080007f50 <console_handler>:
    80007f50:	fe010113          	addi	sp,sp,-32
    80007f54:	00813823          	sd	s0,16(sp)
    80007f58:	00113c23          	sd	ra,24(sp)
    80007f5c:	00913423          	sd	s1,8(sp)
    80007f60:	02010413          	addi	s0,sp,32
    80007f64:	14202773          	csrr	a4,scause
    80007f68:	100027f3          	csrr	a5,sstatus
    80007f6c:	0027f793          	andi	a5,a5,2
    80007f70:	06079e63          	bnez	a5,80007fec <console_handler+0x9c>
    80007f74:	00074c63          	bltz	a4,80007f8c <console_handler+0x3c>
    80007f78:	01813083          	ld	ra,24(sp)
    80007f7c:	01013403          	ld	s0,16(sp)
    80007f80:	00813483          	ld	s1,8(sp)
    80007f84:	02010113          	addi	sp,sp,32
    80007f88:	00008067          	ret
    80007f8c:	0ff77713          	andi	a4,a4,255
    80007f90:	00900793          	li	a5,9
    80007f94:	fef712e3          	bne	a4,a5,80007f78 <console_handler+0x28>
    80007f98:	ffffe097          	auipc	ra,0xffffe
    80007f9c:	6dc080e7          	jalr	1756(ra) # 80006674 <plic_claim>
    80007fa0:	00a00793          	li	a5,10
    80007fa4:	00050493          	mv	s1,a0
    80007fa8:	02f50c63          	beq	a0,a5,80007fe0 <console_handler+0x90>
    80007fac:	fc0506e3          	beqz	a0,80007f78 <console_handler+0x28>
    80007fb0:	00050593          	mv	a1,a0
    80007fb4:	00000517          	auipc	a0,0x0
    80007fb8:	63c50513          	addi	a0,a0,1596 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80007fbc:	fffff097          	auipc	ra,0xfffff
    80007fc0:	afc080e7          	jalr	-1284(ra) # 80006ab8 <__printf>
    80007fc4:	01013403          	ld	s0,16(sp)
    80007fc8:	01813083          	ld	ra,24(sp)
    80007fcc:	00048513          	mv	a0,s1
    80007fd0:	00813483          	ld	s1,8(sp)
    80007fd4:	02010113          	addi	sp,sp,32
    80007fd8:	ffffe317          	auipc	t1,0xffffe
    80007fdc:	6d430067          	jr	1748(t1) # 800066ac <plic_complete>
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	3e0080e7          	jalr	992(ra) # 800073c0 <uartintr>
    80007fe8:	fddff06f          	j	80007fc4 <console_handler+0x74>
    80007fec:	00000517          	auipc	a0,0x0
    80007ff0:	70450513          	addi	a0,a0,1796 # 800086f0 <digits+0x78>
    80007ff4:	fffff097          	auipc	ra,0xfffff
    80007ff8:	a68080e7          	jalr	-1432(ra) # 80006a5c <panic>
    80007ffc:	0000                	unimp
	...
