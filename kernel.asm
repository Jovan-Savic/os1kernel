
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	6b813103          	ld	sp,1720(sp) # 8000a6b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5f1050ef          	jal	ra,80005e0c <start>

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
    80001184:	739000ef          	jal	ra,800020bc <_ZN5Riscv20handleSupervisorTrapEv>

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

//neimplementirane funkcije

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
    800014e4:	040080e7          	jalr	64(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000150c:	018080e7          	jalr	24(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001534:	144080e7          	jalr	324(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
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
    8000155c:	11c080e7          	jalr	284(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
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
    int timed_wait(); //neimplementirano


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
    8000162c:	00009797          	auipc	a5,0x9
    80001630:	0947b783          	ld	a5,148(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001634:	0007b903          	ld	s2,0(a5)
                elem->next=0;
                head= elem;
                if(!tail) tail = head;
            }
            void addLast (T* data){
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    80001638:	01000513          	li	a0,16
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	ee4080e7          	jalr	-284(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001644:	01253023          	sd	s2,0(a0)
                elem->next=0;
    80001648:	00053423          	sd	zero,8(a0)
                if(tail){
    8000164c:	0104b783          	ld	a5,16(s1)
    80001650:	04078663          	beqz	a5,8000169c <_ZN9semaphore5blockEv+0x8c>
                    tail->next = elem;
    80001654:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80001658:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    8000165c:	00009797          	auipc	a5,0x9
    80001660:	0647b783          	ld	a5,100(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001664:	0007b783          	ld	a5,0(a5)
public:

    ~TCB(){ delete stack;}
    bool isFinished() const {return finished;}
    void setFinished(bool f) { finished = f;}
    void setBlocked(bool b) {blocked = b;};
    80001668:	00100713          	li	a4,1
    8000166c:	02e788a3          	sb	a4,49(a5)

    TCB::timeSliceCounter=0;
    80001670:	00009797          	auipc	a5,0x9
    80001674:	0407b783          	ld	a5,64(a5) # 8000a6b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001678:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	388080e7          	jalr	904(ra) # 80001a04 <_ZN3TCB8dispatchEv>
}
    80001684:	01813083          	ld	ra,24(sp)
    80001688:	01013403          	ld	s0,16(sp)
    8000168c:	00813483          	ld	s1,8(sp)
    80001690:	00013903          	ld	s2,0(sp)
    80001694:	02010113          	addi	sp,sp,32
    80001698:	00008067          	ret
                }else{
                    head= tail = elem;
    8000169c:	00a4b823          	sd	a0,16(s1)
    800016a0:	00a4b423          	sd	a0,8(s1)
    800016a4:	fb9ff06f          	j	8000165c <_ZN9semaphore5blockEv+0x4c>

00000000800016a8 <_ZN9semaphore4waitEv>:
    if(this->closed) return -2;
    800016a8:	00454783          	lbu	a5,4(a0)
    800016ac:	04079663          	bnez	a5,800016f8 <_ZN9semaphore4waitEv+0x50>
    this->value--;
    800016b0:	00052783          	lw	a5,0(a0)
    800016b4:	fff7879b          	addiw	a5,a5,-1
    800016b8:	00f52023          	sw	a5,0(a0)
    if(this->value <0){
    800016bc:	02079713          	slli	a4,a5,0x20
    800016c0:	00074663          	bltz	a4,800016cc <_ZN9semaphore4waitEv+0x24>
    return 0;
    800016c4:	00000513          	li	a0,0
}
    800016c8:	00008067          	ret
int semaphore::wait() {
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
        block();
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	f34080e7          	jalr	-204(ra) # 80001610 <_ZN9semaphore5blockEv>
    return 0;
    800016e4:	00000513          	li	a0,0
}
    800016e8:	00813083          	ld	ra,8(sp)
    800016ec:	00013403          	ld	s0,0(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret
    if(this->closed) return -2;
    800016f8:	ffe00513          	li	a0,-2
    800016fc:	00008067          	ret

0000000080001700 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001700:	00050793          	mv	a5,a0
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001704:	00853503          	ld	a0,8(a0)
    80001708:	06050063          	beqz	a0,80001768 <_ZN9semaphore7unblockEv+0x68>
    8000170c:	fe010113          	addi	sp,sp,-32
    80001710:	00113c23          	sd	ra,24(sp)
    80001714:	00813823          	sd	s0,16(sp)
    80001718:	00913423          	sd	s1,8(sp)
    8000171c:	02010413          	addi	s0,sp,32
                Elem *elem = head;
                head = head->next;
    80001720:	00853703          	ld	a4,8(a0)
    80001724:	00e7b423          	sd	a4,8(a5)
                if(!head) tail = 0;
    80001728:	02070c63          	beqz	a4,80001760 <_ZN9semaphore7unblockEv+0x60>
                T *ret = elem->data;
    8000172c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001730:	00001097          	auipc	ra,0x1
    80001734:	f44080e7          	jalr	-188(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
    80001738:	00048a63          	beqz	s1,8000174c <_ZN9semaphore7unblockEv+0x4c>
    8000173c:	020488a3          	sb	zero,49(s1)
        thread->setBlocked(false);
        Scheduler::put(thread);
    80001740:	00048513          	mv	a0,s1
    80001744:	00001097          	auipc	ra,0x1
    80001748:	d3c080e7          	jalr	-708(ra) # 80002480 <_ZN9Scheduler3putEP3TCB>
    }
}
    8000174c:	01813083          	ld	ra,24(sp)
    80001750:	01013403          	ld	s0,16(sp)
    80001754:	00813483          	ld	s1,8(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret
                if(!head) tail = 0;
    80001760:	0007b823          	sd	zero,16(a5)
    80001764:	fc9ff06f          	j	8000172c <_ZN9semaphore7unblockEv+0x2c>
    80001768:	00008067          	ret

000000008000176c <_ZN9semaphore14closeSemaphoreEv>:
    if(!this->closed) this->closed = true;
    8000176c:	00454783          	lbu	a5,4(a0)
    80001770:	04079263          	bnez	a5,800017b4 <_ZN9semaphore14closeSemaphoreEv+0x48>
int semaphore::closeSemaphore() {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	02010413          	addi	s0,sp,32
    80001788:	00050493          	mv	s1,a0
    if(!this->closed) this->closed = true;
    8000178c:	00100793          	li	a5,1
    80001790:	00f50223          	sb	a5,4(a0)
                operator delete(elem);
                return ret;
            }
            T* peekFirst(){
                if(!head) return 0;
    80001794:	0084b783          	ld	a5,8(s1)
    80001798:	02078263          	beqz	a5,800017bc <_ZN9semaphore14closeSemaphoreEv+0x50>
                return head->data;
    8000179c:	0007b783          	ld	a5,0(a5)
   while(this->blocked.peekFirst()){
    800017a0:	02078a63          	beqz	a5,800017d4 <_ZN9semaphore14closeSemaphoreEv+0x68>
       unblock();
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	f58080e7          	jalr	-168(ra) # 80001700 <_ZN9semaphore7unblockEv>
   while(this->blocked.peekFirst()){
    800017b0:	fe5ff06f          	j	80001794 <_ZN9semaphore14closeSemaphoreEv+0x28>
    else return -2;
    800017b4:	ffe00513          	li	a0,-2
}
    800017b8:	00008067          	ret
    return 0;
    800017bc:	00000513          	li	a0,0
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	02010113          	addi	sp,sp,32
    800017d0:	00008067          	ret
    return 0;
    800017d4:	00000513          	li	a0,0
    800017d8:	fe9ff06f          	j	800017c0 <_ZN9semaphore14closeSemaphoreEv+0x54>

00000000800017dc <_ZN9semaphore6signalEv>:
    if(this->closed) return -2;
    800017dc:	00454783          	lbu	a5,4(a0)
    800017e0:	04079663          	bnez	a5,8000182c <_ZN9semaphore6signalEv+0x50>
    this->value++;
    800017e4:	00052783          	lw	a5,0(a0)
    800017e8:	0017879b          	addiw	a5,a5,1
    800017ec:	0007871b          	sext.w	a4,a5
    800017f0:	00f52023          	sw	a5,0(a0)
    if(this->value <=0){
    800017f4:	00e05663          	blez	a4,80001800 <_ZN9semaphore6signalEv+0x24>
    return 0;
    800017f8:	00000513          	li	a0,0
}
    800017fc:	00008067          	ret
int semaphore::signal() {
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00113423          	sd	ra,8(sp)
    80001808:	00813023          	sd	s0,0(sp)
    8000180c:	01010413          	addi	s0,sp,16
       unblock();
    80001810:	00000097          	auipc	ra,0x0
    80001814:	ef0080e7          	jalr	-272(ra) # 80001700 <_ZN9semaphore7unblockEv>
    return 0;
    80001818:	00000513          	li	a0,0
}
    8000181c:	00813083          	ld	ra,8(sp)
    80001820:	00013403          	ld	s0,0(sp)
    80001824:	01010113          	addi	sp,sp,16
    80001828:	00008067          	ret
    if(this->closed) return -2;
    8000182c:	ffe00513          	li	a0,-2
    80001830:	00008067          	ret

0000000080001834 <_Z15UserMainWrapperPv>:
#include "../test/printing.hpp"


extern void userMain();

void UserMainWrapper(void* placeholder){ //omotac korisnicke funkcije
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00113423          	sd	ra,8(sp)
    8000183c:	00813023          	sd	s0,0(sp)
    80001840:	01010413          	addi	s0,sp,16
    userMain();
    80001844:	00004097          	auipc	ra,0x4
    80001848:	a4c080e7          	jalr	-1460(ra) # 80005290 <_Z8userMainv>
}
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <main>:

int main(){
    8000185c:	fe010113          	addi	sp,sp,-32
    80001860:	00113c23          	sd	ra,24(sp)
    80001864:	00813823          	sd	s0,16(sp)
    80001868:	02010413          	addi	s0,sp,32

    //inicijalizacija kernela
    __asm__ volatile("csrw stvec, %[trap]" : : [trap] "r" (&Riscv::supervisorTrap));
    8000186c:	00009797          	auipc	a5,0x9
    80001870:	e3c7b783          	ld	a5,-452(a5) # 8000a6a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001874:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	d64080e7          	jalr	-668(ra) # 800025dc <_ZN15MemoryAllocator4initEv>

    TCB* threads[2];
    thread_create(&threads[0], nullptr, nullptr);
    80001880:	00000613          	li	a2,0
    80001884:	00000593          	li	a1,0
    80001888:	fe040513          	addi	a0,s0,-32
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	a64080e7          	jalr	-1436(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001894:	fe043703          	ld	a4,-32(s0)
    80001898:	00009797          	auipc	a5,0x9
    8000189c:	e287b783          	ld	a5,-472(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018a0:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1],UserMainWrapper, nullptr);
    800018a4:	00000613          	li	a2,0
    800018a8:	00000597          	auipc	a1,0x0
    800018ac:	f8c58593          	addi	a1,a1,-116 # 80001834 <_Z15UserMainWrapperPv>
    800018b0:	fe840513          	addi	a0,s0,-24
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	a3c080e7          	jalr	-1476(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    while(!(threads[1]->isFinished())){
    800018bc:	fe843783          	ld	a5,-24(s0)
    bool isFinished() const {return finished;}
    800018c0:	0307c783          	lbu	a5,48(a5)
    800018c4:	00079863          	bnez	a5,800018d4 <main+0x78>
        thread_dispatch();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	9e0080e7          	jalr	-1568(ra) # 800012a8 <_Z15thread_dispatchv>
    800018d0:	fedff06f          	j	800018bc <main+0x60>
    }

    return 0;
}
    800018d4:	00000513          	li	a0,0
    800018d8:	01813083          	ld	ra,24(sp)
    800018dc:	01013403          	ld	s0,16(sp)
    800018e0:	02010113          	addi	sp,sp,32
    800018e4:	00008067          	ret

00000000800018e8 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	00813023          	sd	s0,0(sp)
    800018f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	c28080e7          	jalr	-984(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001900:	00813083          	ld	ra,8(sp)
    80001904:	00013403          	ld	s0,0(sp)
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret

0000000080001910 <_ZN3TCBnaEm>:
void *TCB::operator new[](size_t n)
{
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00113423          	sd	ra,8(sp)
    80001918:	00813023          	sd	s0,0(sp)
    8000191c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001920:	00001097          	auipc	ra,0x1
    80001924:	c00080e7          	jalr	-1024(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001928:	00813083          	ld	ra,8(sp)
    8000192c:	00013403          	ld	s0,0(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_ZN3TCBdlEPv>:
void TCB::operator delete(void *p) noexcept
{
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	d2c080e7          	jalr	-724(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_ZN3TCBdaEPv>:
void TCB::operator delete[](void *p) noexcept
{
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00113423          	sd	ra,8(sp)
    80001968:	00813023          	sd	s0,0(sp)
    8000196c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001970:	00001097          	auipc	ra,0x1
    80001974:	d04080e7          	jalr	-764(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001978:	00813083          	ld	ra,8(sp)
    8000197c:	00013403          	ld	s0,0(sp)
    80001980:	01010113          	addi	sp,sp,16
    80001984:	00008067          	ret

0000000080001988 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00813423          	sd	s0,8(sp)
    80001990:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001994:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001998:	00000073          	ecall
    //TCB::timeSliceCounter=0;
    //TCB::dispatch();
}
    8000199c:	00813403          	ld	s0,8(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_ZN3TCB13threadWrapperEv>:
    TCB::yield();
    return 0;
}


void TCB::threadWrapper() {
    800019a8:	fe010113          	addi	sp,sp,-32
    800019ac:	00113c23          	sd	ra,24(sp)
    800019b0:	00813823          	sd	s0,16(sp)
    800019b4:	00913423          	sd	s1,8(sp)
    800019b8:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	6c4080e7          	jalr	1732(ra) # 80002080 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    800019c4:	00009497          	auipc	s1,0x9
    800019c8:	d5c48493          	addi	s1,s1,-676 # 8000a720 <_ZN3TCB7runningE>
    800019cc:	0004b783          	ld	a5,0(s1)
    800019d0:	0007b703          	ld	a4,0(a5)
    800019d4:	0087b503          	ld	a0,8(a5)
    800019d8:	000700e7          	jalr	a4
    running->setFinished(true);
    800019dc:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { finished = f;}
    800019e0:	00100713          	li	a4,1
    800019e4:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	fa0080e7          	jalr	-96(ra) # 80001988 <_ZN3TCB5yieldEv>
}
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret

0000000080001a04 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001a04:	fe010113          	addi	sp,sp,-32
    80001a08:	00113c23          	sd	ra,24(sp)
    80001a0c:	00813823          	sd	s0,16(sp)
    80001a10:	00913423          	sd	s1,8(sp)
    80001a14:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001a18:	00009497          	auipc	s1,0x9
    80001a1c:	d084b483          	ld	s1,-760(s1) # 8000a720 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001a20:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->blocked){
    80001a24:	00079663          	bnez	a5,80001a30 <_ZN3TCB8dispatchEv+0x2c>
    80001a28:	0314c783          	lbu	a5,49(s1)
    80001a2c:	02078c63          	beqz	a5,80001a64 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	9e8080e7          	jalr	-1560(ra) # 80002418 <_ZN9Scheduler3getEv>
    80001a38:	00009797          	auipc	a5,0x9
    80001a3c:	cea7b423          	sd	a0,-792(a5) # 8000a720 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a40:	01850593          	addi	a1,a0,24
    80001a44:	01848513          	addi	a0,s1,24
    80001a48:	fffff097          	auipc	ra,0xfffff
    80001a4c:	7c8080e7          	jalr	1992(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret
        Scheduler::put(old);
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	a18080e7          	jalr	-1512(ra) # 80002480 <_ZN9Scheduler3putEP3TCB>
    80001a70:	fc1ff06f          	j	80001a30 <_ZN3TCB8dispatchEv+0x2c>

0000000080001a74 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001a74:	fd010113          	addi	sp,sp,-48
    80001a78:	02113423          	sd	ra,40(sp)
    80001a7c:	02813023          	sd	s0,32(sp)
    80001a80:	00913c23          	sd	s1,24(sp)
    80001a84:	01213823          	sd	s2,16(sp)
    80001a88:	01313423          	sd	s3,8(sp)
    80001a8c:	01413023          	sd	s4,0(sp)
    80001a90:	03010413          	addi	s0,sp,48
    80001a94:	00050993          	mv	s3,a0
    80001a98:	00058a13          	mv	s4,a1
    80001a9c:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001aa0:	03800513          	li	a0,56
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	e44080e7          	jalr	-444(ra) # 800018e8 <_ZN3TCBnwEm>
    80001aac:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001ab0:	01353023          	sd	s3,0(a0)
    80001ab4:	01453423          	sd	s4,8(a0)
    explicit TCB(Body body, uint64 timeSlice, void* arg, void* stek): body(body), argument(arg), stack((uint8*)stek + 8 * DEFAULT_STACK_SIZE),
    80001ab8:	000087b7          	lui	a5,0x8
    80001abc:	00f907b3          	add	a5,s2,a5
                blocked(false)
    80001ac0:	00f53823          	sd	a5,16(a0)
    80001ac4:	00000717          	auipc	a4,0x0
    80001ac8:	ee470713          	addi	a4,a4,-284 # 800019a8 <_ZN3TCB13threadWrapperEv>
    80001acc:	00e53c23          	sd	a4,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001ad0:	02078a63          	beqz	a5,80001b04 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x90>
    80001ad4:	00009637          	lui	a2,0x9
    80001ad8:	00c90933          	add	s2,s2,a2
                blocked(false)
    80001adc:	0324b023          	sd	s2,32(s1)
    80001ae0:	00200793          	li	a5,2
    80001ae4:	02f4b423          	sd	a5,40(s1)
    80001ae8:	02048823          	sb	zero,48(s1)
    80001aec:	020488a3          	sb	zero,49(s1)
    {
        if(body!= nullptr) {
    80001af0:	02098c63          	beqz	s3,80001b28 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
            Scheduler::put(this);
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	988080e7          	jalr	-1656(ra) # 80002480 <_ZN9Scheduler3putEP3TCB>
    80001b00:	0280006f          	j	80001b28 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b04:	00000913          	li	s2,0
    80001b08:	fd5ff06f          	j	80001adc <_ZN3TCB12createThreadEPFvPvES0_S0_+0x68>
    80001b0c:	00050913          	mv	s2,a0
    80001b10:	00048513          	mv	a0,s1
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	e24080e7          	jalr	-476(ra) # 80001938 <_ZN3TCBdlEPv>
    80001b1c:	00090513          	mv	a0,s2
    80001b20:	0000a097          	auipc	ra,0xa
    80001b24:	d48080e7          	jalr	-696(ra) # 8000b868 <_Unwind_Resume>
}
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	02813083          	ld	ra,40(sp)
    80001b30:	02013403          	ld	s0,32(sp)
    80001b34:	01813483          	ld	s1,24(sp)
    80001b38:	01013903          	ld	s2,16(sp)
    80001b3c:	00813983          	ld	s3,8(sp)
    80001b40:	00013a03          	ld	s4,0(sp)
    80001b44:	03010113          	addi	sp,sp,48
    80001b48:	00008067          	ret

0000000080001b4c <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00113423          	sd	ra,8(sp)
    80001b54:	00813023          	sd	s0,0(sp)
    80001b58:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { finished = f;}
    80001b5c:	00009797          	auipc	a5,0x9
    80001b60:	bc47b783          	ld	a5,-1084(a5) # 8000a720 <_ZN3TCB7runningE>
    80001b64:	00100713          	li	a4,1
    80001b68:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	e1c080e7          	jalr	-484(ra) # 80001988 <_ZN3TCB5yieldEv>
}
    80001b74:	00000513          	li	a0,0
    80001b78:	00813083          	ld	ra,8(sp)
    80001b7c:	00013403          	ld	s0,0(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_Znwm>:

#include "../h/syscall_c.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	00813023          	sd	s0,0(sp)
    80001b94:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001b98:	fffff097          	auipc	ra,0xfffff
    80001b9c:	6ac080e7          	jalr	1708(ra) # 80001244 <_Z9mem_allocm>
}
    80001ba0:	00813083          	ld	ra,8(sp)
    80001ba4:	00013403          	ld	s0,0(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_Znam>:

void *operator new[](size_t n)
{
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	00813023          	sd	s0,0(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	684080e7          	jalr	1668(ra) # 80001244 <_Z9mem_allocm>
}
    80001bc8:	00813083          	ld	ra,8(sp)
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001bd8:	ff010113          	addi	sp,sp,-16
    80001bdc:	00113423          	sd	ra,8(sp)
    80001be0:	00813023          	sd	s0,0(sp)
    80001be4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	694080e7          	jalr	1684(ra) # 8000127c <_Z8mem_freePv>
}
    80001bf0:	00813083          	ld	ra,8(sp)
    80001bf4:	00013403          	ld	s0,0(sp)
    80001bf8:	01010113          	addi	sp,sp,16
    80001bfc:	00008067          	ret

0000000080001c00 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c00:	ff010113          	addi	sp,sp,-16
    80001c04:	00113423          	sd	ra,8(sp)
    80001c08:	00813023          	sd	s0,0(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	66c080e7          	jalr	1644(ra) # 8000127c <_Z8mem_freePv>
    80001c18:	00813083          	ld	ra,8(sp)
    80001c1c:	00013403          	ld	s0,0(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <_ZN6Thread13threadWrapperEPv>:
//protected thread
Thread::Thread() {
    this->body = Thread::threadWrapper;
    this->arg = this;
}
void Thread::threadWrapper(void *thread) {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00113423          	sd	ra,8(sp)
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001c38:	00053783          	ld	a5,0(a0)
    80001c3c:	0107b783          	ld	a5,16(a5)
    80001c40:	000780e7          	jalr	a5
}
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    80001c64:	00009797          	auipc	a5,0x9
    80001c68:	85478793          	addi	a5,a5,-1964 # 8000a4b8 <_ZTV6Thread+0x10>
    80001c6c:	00f53023          	sd	a5,0(a0)
    operator delete(myHandle);
    80001c70:	00853503          	ld	a0,8(a0)
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	f64080e7          	jalr	-156(ra) # 80001bd8 <_ZdlPv>
}
    80001c7c:	00813083          	ld	ra,8(sp)
    80001c80:	00013403          	ld	s0,0(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00113c23          	sd	ra,24(sp)
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	00913423          	sd	s1,8(sp)
    80001c9c:	02010413          	addi	s0,sp,32
    80001ca0:	00050493          	mv	s1,a0
}
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	fb0080e7          	jalr	-80(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	f28080e7          	jalr	-216(ra) # 80001bd8 <_ZdlPv>
    80001cb8:	01813083          	ld	ra,24(sp)
    80001cbc:	01013403          	ld	s0,16(sp)
    80001cc0:	00813483          	ld	s1,8(sp)
    80001cc4:	02010113          	addi	sp,sp,32
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}
Semaphore::~Semaphore() {
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00113423          	sd	ra,8(sp)
    80001cd4:	00813023          	sd	s0,0(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	00009797          	auipc	a5,0x9
    80001ce0:	80478793          	addi	a5,a5,-2044 # 8000a4e0 <_ZTV9Semaphore+0x10>
    80001ce4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001ce8:	00853503          	ld	a0,8(a0)
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	6b0080e7          	jalr	1712(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80001cf4:	00813083          	ld	ra,8(sp)
    80001cf8:	00013403          	ld	s0,0(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d04:	fe010113          	addi	sp,sp,-32
    80001d08:	00113c23          	sd	ra,24(sp)
    80001d0c:	00813823          	sd	s0,16(sp)
    80001d10:	00913423          	sd	s1,8(sp)
    80001d14:	02010413          	addi	s0,sp,32
    80001d18:	00050493          	mv	s1,a0
}
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	fb0080e7          	jalr	-80(ra) # 80001ccc <_ZN9SemaphoreD1Ev>
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	eb0080e7          	jalr	-336(ra) # 80001bd8 <_ZdlPv>
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret

0000000080001d44 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00113423          	sd	ra,8(sp)
    80001d4c:	00813023          	sd	s0,0(sp)
    80001d50:	01010413          	addi	s0,sp,16
    80001d54:	00008797          	auipc	a5,0x8
    80001d58:	76478793          	addi	a5,a5,1892 # 8000a4b8 <_ZTV6Thread+0x10>
    80001d5c:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001d60:	00850513          	addi	a0,a0,8
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	58c080e7          	jalr	1420(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}//prvo mem alloc!!!
    80001d6c:	00813083          	ld	ra,8(sp)
    80001d70:	00013403          	ld	s0,0(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZN6Thread5startEv>:
int Thread::start() {
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    80001d8c:	00050613          	mv	a2,a0
    80001d90:	00000597          	auipc	a1,0x0
    80001d94:	e9858593          	addi	a1,a1,-360 # 80001c28 <_ZN6Thread13threadWrapperEPv>
    80001d98:	00850513          	addi	a0,a0,8
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	554080e7          	jalr	1364(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	4e4080e7          	jalr	1252(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    80001de8:	00008797          	auipc	a5,0x8
    80001dec:	6d078793          	addi	a5,a5,1744 # 8000a4b8 <_ZTV6Thread+0x10>
    80001df0:	00f53023          	sd	a5,0(a0)
    this->body = Thread::threadWrapper;
    80001df4:	00000797          	auipc	a5,0x0
    80001df8:	e3478793          	addi	a5,a5,-460 # 80001c28 <_ZN6Thread13threadWrapperEPv>
    80001dfc:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    80001e00:	00a53c23          	sd	a0,24(a0)
}
    80001e04:	00813403          	ld	s0,8(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00113423          	sd	ra,8(sp)
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    80001e20:	00008797          	auipc	a5,0x8
    80001e24:	6c078793          	addi	a5,a5,1728 # 8000a4e0 <_ZTV9Semaphore+0x10>
    80001e28:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001e2c:	00850513          	addi	a0,a0,8
    80001e30:	fffff097          	auipc	ra,0xfffff
    80001e34:	53c080e7          	jalr	1340(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	00813023          	sd	s0,0(sp)
    80001e54:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e58:	00853503          	ld	a0,8(a0)
    80001e5c:	fffff097          	auipc	ra,0xfffff
    80001e60:	56c080e7          	jalr	1388(ra) # 800013c8 <_Z8sem_waitP3sem>
}
    80001e64:	00813083          	ld	ra,8(sp)
    80001e68:	00013403          	ld	s0,0(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00113423          	sd	ra,8(sp)
    80001e7c:	00813023          	sd	s0,0(sp)
    80001e80:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001e84:	00853503          	ld	a0,8(a0)
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	56c080e7          	jalr	1388(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00113423          	sd	ra,8(sp)
    80001ea8:	00813023          	sd	s0,0(sp)
    80001eac:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001eb0:	00853503          	ld	a0,8(a0)
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	56c080e7          	jalr	1388(ra) # 80001420 <_Z11sem_trywaitP3sem>
}
    80001ebc:	00813083          	ld	ra,8(sp)
    80001ec0:	00013403          	ld	s0,0(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN6Thread5sleepEm>:

//neimplementirane funkcije

int Thread::sleep(time_t t) {
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    time_sleep(t);
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	5d8080e7          	jalr	1496(ra) # 800014b4 <_Z10time_sleepm>
    return 0;
}
    80001ee4:	00000513          	li	a0,0
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t t) {
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	00813023          	sd	s0,0(sp)
    80001f04:	01010413          	addi	s0,sp,16
    sem_timedwait(myHandle,t);
    80001f08:	00853503          	ld	a0,8(a0)
    80001f0c:	fffff097          	auipc	ra,0xfffff
    80001f10:	58c080e7          	jalr	1420(ra) # 80001498 <_Z13sem_timedwaitP3semm>
    return 0;
}
    80001f14:	00000513          	li	a0,0
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    //terminate();
}
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001f40:	fe010113          	addi	sp,sp,-32
    80001f44:	00113c23          	sd	ra,24(sp)
    80001f48:	00813823          	sd	s0,16(sp)
    80001f4c:	00913423          	sd	s1,8(sp)
    80001f50:	02010413          	addi	s0,sp,32
    80001f54:	00050493          	mv	s1,a0
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	e84080e7          	jalr	-380(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80001f60:	00008797          	auipc	a5,0x8
    80001f64:	52878793          	addi	a5,a5,1320 # 8000a488 <_ZTV14PeriodicThread+0x10>
    80001f68:	00f4b023          	sd	a5,0(s1)

}
    80001f6c:	01813083          	ld	ra,24(sp)
    80001f70:	01013403          	ld	s0,16(sp)
    80001f74:	00813483          	ld	s1,8(sp)
    80001f78:	02010113          	addi	sp,sp,32
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00113423          	sd	ra,8(sp)
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	4e4080e7          	jalr	1252(ra) # 80001474 <_Z4putcc>
}
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN7Console4getcEv>:
char Console::getc() {
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
   return ::getc();
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	494080e7          	jalr	1172(ra) # 8000144c <_Z4getcv>
}
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6Thread3runEv>:
    int start ();//
    static void dispatch ();//
    static int sleep (time_t);
protected:
    Thread ();//
    virtual void run () {}//
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00813403          	ld	s0,8(sp)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
        public:
        void terminate ();
        protected:
        PeriodicThread (time_t period);
        virtual void periodicActivation () {}
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00813423          	sd	s0,8(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	00813403          	ld	s0,8(sp)
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	00008067          	ret

0000000080002000 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    80002010:	00008797          	auipc	a5,0x8
    80002014:	47878793          	addi	a5,a5,1144 # 8000a488 <_ZTV14PeriodicThread+0x10>
    80002018:	00f53023          	sd	a5,0(a0)
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	c38080e7          	jalr	-968(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN14PeriodicThreadD0Ev>:
    80002034:	fe010113          	addi	sp,sp,-32
    80002038:	00113c23          	sd	ra,24(sp)
    8000203c:	00813823          	sd	s0,16(sp)
    80002040:	00913423          	sd	s1,8(sp)
    80002044:	02010413          	addi	s0,sp,32
    80002048:	00050493          	mv	s1,a0
    8000204c:	00008797          	auipc	a5,0x8
    80002050:	43c78793          	addi	a5,a5,1084 # 8000a488 <_ZTV14PeriodicThread+0x10>
    80002054:	00f53023          	sd	a5,0(a0)
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	bfc080e7          	jalr	-1028(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80002060:	00048513          	mv	a0,s1
    80002064:	00000097          	auipc	ra,0x0
    80002068:	b74080e7          	jalr	-1164(ra) # 80001bd8 <_ZdlPv>
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	02010113          	addi	sp,sp,32
    8000207c:	00008067          	ret

0000000080002080 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie() {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00813423          	sd	s0,8(sp)
    80002088:	01010413          	addi	s0,sp,16
    //restorovanje konteksta niti tj vracanje iz prekidne rutine sretom

    if(TCB::running->body != nullptr) {
    8000208c:	00008797          	auipc	a5,0x8
    80002090:	6347b783          	ld	a5,1588(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002094:	0007b783          	ld	a5,0(a5)
    80002098:	0007b783          	ld	a5,0(a5)
    8000209c:	00078663          	beqz	a5,800020a8 <_ZN5Riscv10popSppSpieEv+0x28>
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(Riscv::BitMaskSstatus::SSTATUS_SPP));
    800020a0:	10000793          	li	a5,256
    800020a4:	1007b073          	csrc	sstatus,a5
    }
    __asm__ volatile("csrw sepc, ra");
    800020a8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800020ac:	10200073          	sret
}
    800020b0:	00813403          	ld	s0,8(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800020bc:	f7010113          	addi	sp,sp,-144
    800020c0:	08113423          	sd	ra,136(sp)
    800020c4:	08813023          	sd	s0,128(sp)
    800020c8:	06913c23          	sd	s1,120(sp)
    800020cc:	07213823          	sd	s2,112(sp)
    800020d0:	09010413          	addi	s0,sp,144

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800020d4:	00050793          	mv	a5,a0
    800020d8:	faf43423          	sd	a5,-88(s0)
    return a0;
    800020dc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800020e0:	14202773          	csrr	a4,scause
    800020e4:	fae43023          	sd	a4,-96(s0)
    return scause;
    800020e8:	fa043703          	ld	a4,-96(s0)

    uint64 kod = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    800020ec:	ff870613          	addi	a2,a4,-8
    800020f0:	00100693          	li	a3,1
    800020f4:	04c6f863          	bgeu	a3,a2,80002144 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){ //timer interrupt
    800020f8:	fff00793          	li	a5,-1
    800020fc:	03f79793          	slli	a5,a5,0x3f
    80002100:	00178793          	addi	a5,a5,1
    80002104:	20f70e63          	beq	a4,a5,80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x264>

        w_sstatus(sstatus);
        w_sepc(sepc);


    }else if(scause == 0x8000000000000009UL){
    80002108:	fff00793          	li	a5,-1
    8000210c:	03f79793          	slli	a5,a5,0x3f
    80002110:	00978793          	addi	a5,a5,9
    80002114:	28f70463          	beq	a4,a5,8000239c <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
        console_handler();

        w_sstatus(sstatus);
        w_sepc(sepc);

    }else if(scause == 0x0000000000000002UL){
    80002118:	00200793          	li	a5,2
    8000211c:	08f71a63          	bne	a4,a5,800021b0 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        //forbidden command interrupt
        //printInteger(scause);
        //printInteger(r_sepc());
        //printInteger(r_stval());
        printString("greska\n");
    80002120:	00006517          	auipc	a0,0x6
    80002124:	f0050513          	addi	a0,a0,-256 # 80008020 <CONSOLE_STATUS+0x10>
    80002128:	00003097          	auipc	ra,0x3
    8000212c:	aa0080e7          	jalr	-1376(ra) # 80004bc8 <_Z11printStringPKc>

        __asm__ volatile("li t0, 0x5555");
    80002130:	000052b7          	lui	t0,0x5
    80002134:	5552829b          	addiw	t0,t0,1365
        __asm__ volatile("li t1, 0x100000");
    80002138:	00100337          	lui	t1,0x100
        __asm__ volatile("sw t0, 0(t1)");
    8000213c:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    }
    80002140:	0700006f          	j	800021b0 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002144:	14102773          	csrr	a4,sepc
    80002148:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    8000214c:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    80002150:	00470713          	addi	a4,a4,4
    80002154:	f6e43823          	sd	a4,-144(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002158:	10002773          	csrr	a4,sstatus
    8000215c:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    80002160:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80002164:	f6e43c23          	sd	a4,-136(s0)
        switch (kod) {
    80002168:	04200713          	li	a4,66
    8000216c:	02f76a63          	bltu	a4,a5,800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
    80002170:	00279793          	slli	a5,a5,0x2
    80002174:	00006717          	auipc	a4,0x6
    80002178:	eb470713          	addi	a4,a4,-332 # 80008028 <CONSOLE_STATUS+0x18>
    8000217c:	00e787b3          	add	a5,a5,a4
    80002180:	0007a783          	lw	a5,0(a5)
    80002184:	00e787b3          	add	a5,a5,a4
    80002188:	00078067          	jr	a5
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
    8000218c:	05843503          	ld	a0,88(s0)
                mallocr = MemoryAllocator::mem_alloc(size);
    80002190:	00000097          	auipc	ra,0x0
    80002194:	390080e7          	jalr	912(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80002198:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    8000219c:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    800021a0:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021a4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800021a8:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021ac:	14179073          	csrw	sepc,a5
    800021b0:	08813083          	ld	ra,136(sp)
    800021b4:	08013403          	ld	s0,128(sp)
    800021b8:	07813483          	ld	s1,120(sp)
    800021bc:	07013903          	ld	s2,112(sp)
    800021c0:	09010113          	addi	sp,sp,144
    800021c4:	00008067          	ret
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
    800021c8:	05843503          	ld	a0,88(s0)
                greska = MemoryAllocator::mem_free(freep);
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	4a8080e7          	jalr	1192(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    800021d4:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    800021d8:	04543823          	sd	t0,80(s0)
                break;
    800021dc:	fc5ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
    800021e0:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    800021e4:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    800021e8:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    800021ec:	07043603          	ld	a2,112(s0)
                *thandle = TCB::createThread(start_routine,arg, stek);
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	884080e7          	jalr	-1916(ra) # 80001a74 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800021f8:	00a4b023          	sd	a0,0(s1)
                if(*thandle != nullptr) ret =0;
    800021fc:	00050a63          	beqz	a0,80002210 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80002200:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002204:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    80002208:	04543823          	sd	t0,80(s0)
                break;
    8000220c:	f95ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                else ret = -1;
    80002210:	fff00793          	li	a5,-1
    80002214:	ff1ff06f          	j	80002204 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                ret = TCB::exitThread();
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	934080e7          	jalr	-1740(ra) # 80001b4c <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002220:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002224:	04542823          	sw	t0,80(s0)
                break;
    80002228:	f79ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                TCB::timeSliceCounter=0;
    8000222c:	00008797          	auipc	a5,0x8
    80002230:	4847b783          	ld	a5,1156(a5) # 8000a6b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002234:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	7cc080e7          	jalr	1996(ra) # 80001a04 <_ZN3TCB8dispatchEv>
                break;
    80002240:	f61ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
    80002244:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
    80002248:	06043503          	ld	a0,96(s0)
                *shandle = semaphore::openSemaphore(val);
    8000224c:	0005051b          	sext.w	a0,a0
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	320080e7          	jalr	800(ra) # 80001570 <_ZN9semaphore13openSemaphoreEi>
    80002258:	00a4b023          	sd	a0,0(s1)
                if(*shandle != nullptr) ret =0;
    8000225c:	00050a63          	beqz	a0,80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    80002260:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002264:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002268:	04542823          	sw	t0,80(s0)
                break;
    8000226c:	f35ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                else ret = -1;
    80002270:	fff00793          	li	a5,-1
    80002274:	ff1ff06f          	j	80002264 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002278:	05843903          	ld	s2,88(s0)
                ret = id->semaphore::closeSemaphore();
    8000227c:	00090513          	mv	a0,s2
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	4ec080e7          	jalr	1260(ra) # 8000176c <_ZN9semaphore14closeSemaphoreEv>
    80002288:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(id);
    8000228c:	00090513          	mv	a0,s2
    80002290:	00000097          	auipc	ra,0x0
    80002294:	3e4080e7          	jalr	996(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002298:	00048293          	mv	t0,s1
                __asm__ volatile("sw t0, 80(x8)");
    8000229c:	04542823          	sw	t0,80(s0)
                break;
    800022a0:	f01ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    800022a4:	05843503          	ld	a0,88(s0)
                if(id != nullptr) ret = id->semaphore::wait();
    800022a8:	00050c63          	beqz	a0,800022c0 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	3fc080e7          	jalr	1020(ra) # 800016a8 <_ZN9semaphore4waitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022b4:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022b8:	04542823          	sw	t0,80(s0)
                break;
    800022bc:	ee5ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                else ret = -1;
    800022c0:	fff00513          	li	a0,-1
    800022c4:	ff1ff06f          	j	800022b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    800022c8:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::signal();
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	510080e7          	jalr	1296(ra) # 800017dc <_ZN9semaphore6signalEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022d4:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022d8:	04542823          	sw	t0,80(s0)
                break;
    800022dc:	ec5ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    800022e0:	05843503          	ld	a0,88(s0)
                ret = id->semaphore::trywait();
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	2d4080e7          	jalr	724(ra) # 800015b8 <_ZN9semaphore7trywaitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800022ec:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800022f0:	04542823          	sw	t0,80(s0)
                break;
    800022f4:	eadff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                c = __getc();
    800022f8:	00006097          	auipc	ra,0x6
    800022fc:	c10080e7          	jalr	-1008(ra) # 80007f08 <__getc>
                __asm__ volatile ("mv t0, %0" : : "r"(c));
    80002300:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002304:	04542823          	sw	t0,80(s0)
                break;
    80002308:	e99ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
                __asm__ volatile("ld %0, 88(x8)": "=r"(c));
    8000230c:	05843503          	ld	a0,88(s0)
                __putc(c);
    80002310:	0ff57513          	andi	a0,a0,255
    80002314:	00006097          	auipc	ra,0x6
    80002318:	bb8080e7          	jalr	-1096(ra) # 80007ecc <__putc>
                break;
    8000231c:	e85ff06f          	j	800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002320:	00200793          	li	a5,2
    80002324:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002328:	141027f3          	csrr	a5,sepc
    8000232c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002330:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc();
    80002334:	f8f43023          	sd	a5,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002338:	100027f3          	csrr	a5,sstatus
    8000233c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002340:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002344:	f8f43423          	sd	a5,-120(s0)
        TCB::timeSliceCounter++;
    80002348:	00008717          	auipc	a4,0x8
    8000234c:	36873703          	ld	a4,872(a4) # 8000a6b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002350:	00073783          	ld	a5,0(a4)
    80002354:	00178793          	addi	a5,a5,1
    80002358:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    8000235c:	00008717          	auipc	a4,0x8
    80002360:	36473703          	ld	a4,868(a4) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002364:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002368:	02873703          	ld	a4,40(a4)
    8000236c:	00e7fc63          	bgeu	a5,a4,80002384 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
        w_sstatus(sstatus);
    80002370:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002374:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002378:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000237c:	14179073          	csrw	sepc,a5
}
    80002380:	e31ff06f          	j	800021b0 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
            TCB::timeSliceCounter=0;
    80002384:	00008797          	auipc	a5,0x8
    80002388:	32c7b783          	ld	a5,812(a5) # 8000a6b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000238c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	674080e7          	jalr	1652(ra) # 80001a04 <_ZN3TCB8dispatchEv>
    80002398:	fd9ff06f          	j	80002370 <_ZN5Riscv20handleSupervisorTrapEv+0x2b4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000239c:	141027f3          	csrr	a5,sepc
    800023a0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800023a4:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    800023a8:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023ac:	100027f3          	csrr	a5,sstatus
    800023b0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800023b4:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800023b8:	f8f43c23          	sd	a5,-104(s0)
        console_handler();
    800023bc:	00006097          	auipc	ra,0x6
    800023c0:	b84080e7          	jalr	-1148(ra) # 80007f40 <console_handler>
        w_sstatus(sstatus);
    800023c4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023c8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800023cc:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023d0:	14179073          	csrw	sepc,a5
}
    800023d4:	dddff06f          	j	800021b0 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>

00000000800023d8 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00813423          	sd	s0,8(sp)
    800023e0:	01010413          	addi	s0,sp,16
    800023e4:	00100793          	li	a5,1
    800023e8:	00f50863          	beq	a0,a5,800023f8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023ec:	00813403          	ld	s0,8(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret
    800023f8:	000107b7          	lui	a5,0x10
    800023fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002400:	fef596e3          	bne	a1,a5,800023ec <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    80002404:	00008797          	auipc	a5,0x8
    80002408:	32c78793          	addi	a5,a5,812 # 8000a730 <_ZN9Scheduler16readyThreadQueueE>
    8000240c:	0007b023          	sd	zero,0(a5)
    80002410:	0007b423          	sd	zero,8(a5)
    80002414:	fd9ff06f          	j	800023ec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002418 <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    80002418:	fe010113          	addi	sp,sp,-32
    8000241c:	00113c23          	sd	ra,24(sp)
    80002420:	00813823          	sd	s0,16(sp)
    80002424:	00913423          	sd	s1,8(sp)
    80002428:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    8000242c:	00008517          	auipc	a0,0x8
    80002430:	30453503          	ld	a0,772(a0) # 8000a730 <_ZN9Scheduler16readyThreadQueueE>
    80002434:	04050263          	beqz	a0,80002478 <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    80002438:	00853783          	ld	a5,8(a0)
    8000243c:	00008717          	auipc	a4,0x8
    80002440:	2ef73a23          	sd	a5,756(a4) # 8000a730 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80002444:	02078463          	beqz	a5,8000246c <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    80002448:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	228080e7          	jalr	552(ra) # 80002674 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80002454:	00048513          	mv	a0,s1
    80002458:	01813083          	ld	ra,24(sp)
    8000245c:	01013403          	ld	s0,16(sp)
    80002460:	00813483          	ld	s1,8(sp)
    80002464:	02010113          	addi	sp,sp,32
    80002468:	00008067          	ret
                if(!head) tail = 0;
    8000246c:	00008797          	auipc	a5,0x8
    80002470:	2c07b623          	sd	zero,716(a5) # 8000a738 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002474:	fd5ff06f          	j	80002448 <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80002478:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000247c:	fd9ff06f          	j	80002454 <_ZN9Scheduler3getEv+0x3c>

0000000080002480 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    80002480:	fe010113          	addi	sp,sp,-32
    80002484:	00113c23          	sd	ra,24(sp)
    80002488:	00813823          	sd	s0,16(sp)
    8000248c:	00913423          	sd	s1,8(sp)
    80002490:	02010413          	addi	s0,sp,32
    80002494:	00050493          	mv	s1,a0
                Elem* elem = (Elem*)MemoryAllocator::mem_alloc(sizeof(Elem));
    80002498:	01000513          	li	a0,16
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	084080e7          	jalr	132(ra) # 80002520 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    800024a4:	00953023          	sd	s1,0(a0)
                elem->next=0;
    800024a8:	00053423          	sd	zero,8(a0)
                if(tail){
    800024ac:	00008797          	auipc	a5,0x8
    800024b0:	28c7b783          	ld	a5,652(a5) # 8000a738 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024b4:	02078263          	beqz	a5,800024d8 <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    800024b8:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    800024bc:	00008797          	auipc	a5,0x8
    800024c0:	26a7be23          	sd	a0,636(a5) # 8000a738 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024c4:	01813083          	ld	ra,24(sp)
    800024c8:	01013403          	ld	s0,16(sp)
    800024cc:	00813483          	ld	s1,8(sp)
    800024d0:	02010113          	addi	sp,sp,32
    800024d4:	00008067          	ret
                    head= tail = elem;
    800024d8:	00008797          	auipc	a5,0x8
    800024dc:	25878793          	addi	a5,a5,600 # 8000a730 <_ZN9Scheduler16readyThreadQueueE>
    800024e0:	00a7b423          	sd	a0,8(a5)
    800024e4:	00a7b023          	sd	a0,0(a5)
    800024e8:	fddff06f          	j	800024c4 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800024ec <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00113423          	sd	ra,8(sp)
    800024f4:	00813023          	sd	s0,0(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	000105b7          	lui	a1,0x10
    80002500:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002504:	00100513          	li	a0,1
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	ed0080e7          	jalr	-304(ra) # 800023d8 <_Z41__static_initialization_and_destruction_0ii>
    80002510:	00813083          	ld	ra,8(sp)
    80002514:	00013403          	ld	s0,0(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    8000252c:	00050793          	mv	a5,a0
    FreeMem* tek = freememhead;
    80002530:	00008517          	auipc	a0,0x8
    80002534:	21053503          	ld	a0,528(a0) # 8000a740 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    80002538:	03f7f713          	andi	a4,a5,63
    8000253c:	00070663          	beqz	a4,80002548 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002540:	fc07f793          	andi	a5,a5,-64
    80002544:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    80002548:	02050863          	beqz	a0,80002578 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    8000254c:	00853703          	ld	a4,8(a0)
    80002550:	02f77863          	bgeu	a4,a5,80002580 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    80002554:	00050693          	mv	a3,a0
        tek = tek->sled;
    80002558:	00053503          	ld	a0,0(a0)
    8000255c:	00c0006f          	j	80002568 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    80002560:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    80002564:	00053503          	ld	a0,0(a0)
    80002568:	00050e63          	beqz	a0,80002584 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    8000256c:	00853703          	ld	a4,8(a0)
    80002570:	fef768e3          	bltu	a4,a5,80002560 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80002574:	0100006f          	j	80002584 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    80002578:	00050693          	mv	a3,a0
    8000257c:	0080006f          	j	80002584 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002580:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    80002584:	02050c63          	beqz	a0,800025bc <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    80002588:	00853703          	ld	a4,8(a0)
    8000258c:	02e7fe63          	bgeu	a5,a4,800025c8 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    80002590:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    80002594:	00f505b3          	add	a1,a0,a5
    80002598:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    8000259c:	40f707b3          	sub	a5,a4,a5
    800025a0:	ff078793          	addi	a5,a5,-16
    800025a4:	00f63423          	sd	a5,8(a2) # 9008 <_entry-0x7fff6ff8>
        sledeci->sled = tek->sled;
    800025a8:	00053783          	ld	a5,0(a0)
    800025ac:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    800025b0:	02068063          	beqz	a3,800025d0 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800025b4:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    800025b8:	01050513          	addi	a0,a0,16
}
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    800025c8:	00053603          	ld	a2,0(a0)
    800025cc:	fe5ff06f          	j	800025b0 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    800025d0:	00008797          	auipc	a5,0x8
    800025d4:	16c7b823          	sd	a2,368(a5) # 8000a740 <_ZN15MemoryAllocator11freememheadE>
    800025d8:	fe1ff06f          	j	800025b8 <_ZN15MemoryAllocator9mem_allocEm+0x98>

00000000800025dc <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00813423          	sd	s0,8(sp)
    800025e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    800025e8:	00008797          	auipc	a5,0x8
    800025ec:	0b87b783          	ld	a5,184(a5) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025f0:	0007b703          	ld	a4,0(a5)
    800025f4:	00008797          	auipc	a5,0x8
    800025f8:	14e7b623          	sd	a4,332(a5) # 8000a740 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    800025fc:	00008797          	auipc	a5,0x8
    80002600:	0cc7b783          	ld	a5,204(a5) # 8000a6c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002604:	0007b783          	ld	a5,0(a5)
    80002608:	40e787b3          	sub	a5,a5,a4
    8000260c:	ff078793          	addi	a5,a5,-16
    80002610:	00073023          	sd	zero,0(a4)
    80002614:	00f73423          	sd	a5,8(a4)
};
    80002618:	00813403          	ld	s0,8(sp)
    8000261c:	01010113          	addi	sp,sp,16
    80002620:	00008067          	ret

0000000080002624 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00813423          	sd	s0,8(sp)
    8000262c:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002630:	00053783          	ld	a5,0(a0)
    80002634:	00078a63          	beqz	a5,80002648 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    80002638:	00853683          	ld	a3,8(a0)
    8000263c:	00d50733          	add	a4,a0,a3
    80002640:	01070713          	addi	a4,a4,16
    80002644:	00f70a63          	beq	a4,a5,80002658 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    80002648:	00000513          	li	a0,0
    8000264c:	00813403          	ld	s0,8(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    80002658:	0087b703          	ld	a4,8(a5)
    8000265c:	00e686b3          	add	a3,a3,a4
    80002660:	01068693          	addi	a3,a3,16
    80002664:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    80002668:	0007b783          	ld	a5,0(a5)
    8000266c:	00f53023          	sd	a5,0(a0)
    80002670:	fd9ff06f          	j	80002648 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

0000000080002674 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002674:	0c050263          	beqz	a0,80002738 <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    80002678:	00050713          	mv	a4,a0
    8000267c:	00008797          	auipc	a5,0x8
    80002680:	0247b783          	ld	a5,36(a5) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002684:	0007b783          	ld	a5,0(a5)
    80002688:	0af56c63          	bltu	a0,a5,80002740 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    8000268c:	00008797          	auipc	a5,0x8
    80002690:	03c7b783          	ld	a5,60(a5) # 8000a6c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002694:	0007b783          	ld	a5,0(a5)
    80002698:	0af57863          	bgeu	a0,a5,80002748 <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    8000269c:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    800026a0:	00008797          	auipc	a5,0x8
    800026a4:	0a07b783          	ld	a5,160(a5) # 8000a740 <_ZN15MemoryAllocator11freememheadE>
    800026a8:	06078063          	beqz	a5,80002708 <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    800026ac:	fe010113          	addi	sp,sp,-32
    800026b0:	00113c23          	sd	ra,24(sp)
    800026b4:	00813823          	sd	s0,16(sp)
    800026b8:	00913423          	sd	s1,8(sp)
    800026bc:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    800026c0:	04f56e63          	bltu	a0,a5,8000271c <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    800026c4:	00078493          	mv	s1,a5
    800026c8:	0007b783          	ld	a5,0(a5)
    800026cc:	00078463          	beqz	a5,800026d4 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    800026d0:	fea7eae3          	bltu	a5,a0,800026c4 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    800026d4:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    800026d8:	00a4b023          	sd	a0,0(s1)
        join(tek);
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	f48080e7          	jalr	-184(ra) # 80002624 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    800026e4:	00048513          	mv	a0,s1
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	f3c080e7          	jalr	-196(ra) # 80002624 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    800026f0:	00000513          	li	a0,0
}
    800026f4:	01813083          	ld	ra,24(sp)
    800026f8:	01013403          	ld	s0,16(sp)
    800026fc:	00813483          	ld	s1,8(sp)
    80002700:	02010113          	addi	sp,sp,32
    80002704:	00008067          	ret
        freememhead = tek;
    80002708:	00008797          	auipc	a5,0x8
    8000270c:	02a7bc23          	sd	a0,56(a5) # 8000a740 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002710:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002714:	00000513          	li	a0,0
    80002718:	00008067          	ret
        tek->sled = freememhead;
    8000271c:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002720:	00008797          	auipc	a5,0x8
    80002724:	02a7b023          	sd	a0,32(a5) # 8000a740 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	efc080e7          	jalr	-260(ra) # 80002624 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002730:	00000513          	li	a0,0
    80002734:	fc1ff06f          	j	800026f4 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002738:	fff00513          	li	a0,-1
    8000273c:	00008067          	ret
    80002740:	fff00513          	li	a0,-1
    80002744:	00008067          	ret
    80002748:	fff00513          	li	a0,-1
}
    8000274c:	00008067          	ret

0000000080002750 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002750:	fe010113          	addi	sp,sp,-32
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	00813823          	sd	s0,16(sp)
    8000275c:	00913423          	sd	s1,8(sp)
    80002760:	01213023          	sd	s2,0(sp)
    80002764:	02010413          	addi	s0,sp,32
    80002768:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000276c:	00000913          	li	s2,0
    80002770:	00c0006f          	j	8000277c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	b34080e7          	jalr	-1228(ra) # 800012a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	cd0080e7          	jalr	-816(ra) # 8000144c <_Z4getcv>
    80002784:	0005059b          	sext.w	a1,a0
    80002788:	01b00793          	li	a5,27
    8000278c:	02f58a63          	beq	a1,a5,800027c0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002790:	0084b503          	ld	a0,8(s1)
    80002794:	00003097          	auipc	ra,0x3
    80002798:	3f4080e7          	jalr	1012(ra) # 80005b88 <_ZN6Buffer3putEi>
        i++;
    8000279c:	0019071b          	addiw	a4,s2,1
    800027a0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800027a4:	0004a683          	lw	a3,0(s1)
    800027a8:	0026979b          	slliw	a5,a3,0x2
    800027ac:	00d787bb          	addw	a5,a5,a3
    800027b0:	0017979b          	slliw	a5,a5,0x1
    800027b4:	02f767bb          	remw	a5,a4,a5
    800027b8:	fc0792e3          	bnez	a5,8000277c <_ZL16producerKeyboardPv+0x2c>
    800027bc:	fb9ff06f          	j	80002774 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800027c0:	00100793          	li	a5,1
    800027c4:	00008717          	auipc	a4,0x8
    800027c8:	f8f72223          	sw	a5,-124(a4) # 8000a748 <_ZL9threadEnd>
    data->buffer->put('!');
    800027cc:	02100593          	li	a1,33
    800027d0:	0084b503          	ld	a0,8(s1)
    800027d4:	00003097          	auipc	ra,0x3
    800027d8:	3b4080e7          	jalr	948(ra) # 80005b88 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800027dc:	0104b503          	ld	a0,16(s1)
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	c14080e7          	jalr	-1004(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    800027e8:	01813083          	ld	ra,24(sp)
    800027ec:	01013403          	ld	s0,16(sp)
    800027f0:	00813483          	ld	s1,8(sp)
    800027f4:	00013903          	ld	s2,0(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_ZL8producerPv>:

static void producer(void *arg) {
    80002800:	fe010113          	addi	sp,sp,-32
    80002804:	00113c23          	sd	ra,24(sp)
    80002808:	00813823          	sd	s0,16(sp)
    8000280c:	00913423          	sd	s1,8(sp)
    80002810:	01213023          	sd	s2,0(sp)
    80002814:	02010413          	addi	s0,sp,32
    80002818:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000281c:	00000913          	li	s2,0
    80002820:	00c0006f          	j	8000282c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	a84080e7          	jalr	-1404(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000282c:	00008797          	auipc	a5,0x8
    80002830:	f1c7a783          	lw	a5,-228(a5) # 8000a748 <_ZL9threadEnd>
    80002834:	02079e63          	bnez	a5,80002870 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002838:	0004a583          	lw	a1,0(s1)
    8000283c:	0305859b          	addiw	a1,a1,48
    80002840:	0084b503          	ld	a0,8(s1)
    80002844:	00003097          	auipc	ra,0x3
    80002848:	344080e7          	jalr	836(ra) # 80005b88 <_ZN6Buffer3putEi>
        i++;
    8000284c:	0019071b          	addiw	a4,s2,1
    80002850:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002854:	0004a683          	lw	a3,0(s1)
    80002858:	0026979b          	slliw	a5,a3,0x2
    8000285c:	00d787bb          	addw	a5,a5,a3
    80002860:	0017979b          	slliw	a5,a5,0x1
    80002864:	02f767bb          	remw	a5,a4,a5
    80002868:	fc0792e3          	bnez	a5,8000282c <_ZL8producerPv+0x2c>
    8000286c:	fb9ff06f          	j	80002824 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002870:	0104b503          	ld	a0,16(s1)
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	b80080e7          	jalr	-1152(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    8000287c:	01813083          	ld	ra,24(sp)
    80002880:	01013403          	ld	s0,16(sp)
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	00013903          	ld	s2,0(sp)
    8000288c:	02010113          	addi	sp,sp,32
    80002890:	00008067          	ret

0000000080002894 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002894:	fd010113          	addi	sp,sp,-48
    80002898:	02113423          	sd	ra,40(sp)
    8000289c:	02813023          	sd	s0,32(sp)
    800028a0:	00913c23          	sd	s1,24(sp)
    800028a4:	01213823          	sd	s2,16(sp)
    800028a8:	01313423          	sd	s3,8(sp)
    800028ac:	03010413          	addi	s0,sp,48
    800028b0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800028b4:	00000993          	li	s3,0
    800028b8:	01c0006f          	j	800028d4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	9ec080e7          	jalr	-1556(ra) # 800012a8 <_Z15thread_dispatchv>
    800028c4:	0500006f          	j	80002914 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800028c8:	00a00513          	li	a0,10
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	ba8080e7          	jalr	-1112(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    800028d4:	00008797          	auipc	a5,0x8
    800028d8:	e747a783          	lw	a5,-396(a5) # 8000a748 <_ZL9threadEnd>
    800028dc:	06079063          	bnez	a5,8000293c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800028e0:	00893503          	ld	a0,8(s2)
    800028e4:	00003097          	auipc	ra,0x3
    800028e8:	334080e7          	jalr	820(ra) # 80005c18 <_ZN6Buffer3getEv>
        i++;
    800028ec:	0019849b          	addiw	s1,s3,1
    800028f0:	0004899b          	sext.w	s3,s1
        putc(key);
    800028f4:	0ff57513          	andi	a0,a0,255
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	b7c080e7          	jalr	-1156(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002900:	00092703          	lw	a4,0(s2)
    80002904:	0027179b          	slliw	a5,a4,0x2
    80002908:	00e787bb          	addw	a5,a5,a4
    8000290c:	02f4e7bb          	remw	a5,s1,a5
    80002910:	fa0786e3          	beqz	a5,800028bc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002914:	05000793          	li	a5,80
    80002918:	02f4e4bb          	remw	s1,s1,a5
    8000291c:	fa049ce3          	bnez	s1,800028d4 <_ZL8consumerPv+0x40>
    80002920:	fa9ff06f          	j	800028c8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002924:	00893503          	ld	a0,8(s2)
    80002928:	00003097          	auipc	ra,0x3
    8000292c:	2f0080e7          	jalr	752(ra) # 80005c18 <_ZN6Buffer3getEv>
        putc(key);
    80002930:	0ff57513          	andi	a0,a0,255
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	b40080e7          	jalr	-1216(ra) # 80001474 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000293c:	00893503          	ld	a0,8(s2)
    80002940:	00003097          	auipc	ra,0x3
    80002944:	364080e7          	jalr	868(ra) # 80005ca4 <_ZN6Buffer6getCntEv>
    80002948:	fca04ee3          	bgtz	a0,80002924 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000294c:	01093503          	ld	a0,16(s2)
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	aa4080e7          	jalr	-1372(ra) # 800013f4 <_Z10sem_signalP3sem>
}
    80002958:	02813083          	ld	ra,40(sp)
    8000295c:	02013403          	ld	s0,32(sp)
    80002960:	01813483          	ld	s1,24(sp)
    80002964:	01013903          	ld	s2,16(sp)
    80002968:	00813983          	ld	s3,8(sp)
    8000296c:	03010113          	addi	sp,sp,48
    80002970:	00008067          	ret

0000000080002974 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002974:	f9010113          	addi	sp,sp,-112
    80002978:	06113423          	sd	ra,104(sp)
    8000297c:	06813023          	sd	s0,96(sp)
    80002980:	04913c23          	sd	s1,88(sp)
    80002984:	05213823          	sd	s2,80(sp)
    80002988:	05313423          	sd	s3,72(sp)
    8000298c:	05413023          	sd	s4,64(sp)
    80002990:	03513c23          	sd	s5,56(sp)
    80002994:	03613823          	sd	s6,48(sp)
    80002998:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000299c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800029a0:	00005517          	auipc	a0,0x5
    800029a4:	79850513          	addi	a0,a0,1944 # 80008138 <CONSOLE_STATUS+0x128>
    800029a8:	00002097          	auipc	ra,0x2
    800029ac:	220080e7          	jalr	544(ra) # 80004bc8 <_Z11printStringPKc>
    getString(input, 30);
    800029b0:	01e00593          	li	a1,30
    800029b4:	fa040493          	addi	s1,s0,-96
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00002097          	auipc	ra,0x2
    800029c0:	294080e7          	jalr	660(ra) # 80004c50 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800029c4:	00048513          	mv	a0,s1
    800029c8:	00002097          	auipc	ra,0x2
    800029cc:	360080e7          	jalr	864(ra) # 80004d28 <_Z11stringToIntPKc>
    800029d0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800029d4:	00005517          	auipc	a0,0x5
    800029d8:	78450513          	addi	a0,a0,1924 # 80008158 <CONSOLE_STATUS+0x148>
    800029dc:	00002097          	auipc	ra,0x2
    800029e0:	1ec080e7          	jalr	492(ra) # 80004bc8 <_Z11printStringPKc>
    getString(input, 30);
    800029e4:	01e00593          	li	a1,30
    800029e8:	00048513          	mv	a0,s1
    800029ec:	00002097          	auipc	ra,0x2
    800029f0:	264080e7          	jalr	612(ra) # 80004c50 <_Z9getStringPci>
    n = stringToInt(input);
    800029f4:	00048513          	mv	a0,s1
    800029f8:	00002097          	auipc	ra,0x2
    800029fc:	330080e7          	jalr	816(ra) # 80004d28 <_Z11stringToIntPKc>
    80002a00:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002a04:	00005517          	auipc	a0,0x5
    80002a08:	77450513          	addi	a0,a0,1908 # 80008178 <CONSOLE_STATUS+0x168>
    80002a0c:	00002097          	auipc	ra,0x2
    80002a10:	1bc080e7          	jalr	444(ra) # 80004bc8 <_Z11printStringPKc>
    80002a14:	00000613          	li	a2,0
    80002a18:	00a00593          	li	a1,10
    80002a1c:	00090513          	mv	a0,s2
    80002a20:	00002097          	auipc	ra,0x2
    80002a24:	358080e7          	jalr	856(ra) # 80004d78 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002a28:	00005517          	auipc	a0,0x5
    80002a2c:	76850513          	addi	a0,a0,1896 # 80008190 <CONSOLE_STATUS+0x180>
    80002a30:	00002097          	auipc	ra,0x2
    80002a34:	198080e7          	jalr	408(ra) # 80004bc8 <_Z11printStringPKc>
    80002a38:	00000613          	li	a2,0
    80002a3c:	00a00593          	li	a1,10
    80002a40:	00048513          	mv	a0,s1
    80002a44:	00002097          	auipc	ra,0x2
    80002a48:	334080e7          	jalr	820(ra) # 80004d78 <_Z8printIntiii>
    printString(".\n");
    80002a4c:	00005517          	auipc	a0,0x5
    80002a50:	75c50513          	addi	a0,a0,1884 # 800081a8 <CONSOLE_STATUS+0x198>
    80002a54:	00002097          	auipc	ra,0x2
    80002a58:	174080e7          	jalr	372(ra) # 80004bc8 <_Z11printStringPKc>
    if(threadNum > n) {
    80002a5c:	0324c463          	blt	s1,s2,80002a84 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002a60:	03205c63          	blez	s2,80002a98 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002a64:	03800513          	li	a0,56
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	120080e7          	jalr	288(ra) # 80001b88 <_Znwm>
    80002a70:	00050a13          	mv	s4,a0
    80002a74:	00048593          	mv	a1,s1
    80002a78:	00003097          	auipc	ra,0x3
    80002a7c:	074080e7          	jalr	116(ra) # 80005aec <_ZN6BufferC1Ei>
    80002a80:	0300006f          	j	80002ab0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002a84:	00005517          	auipc	a0,0x5
    80002a88:	72c50513          	addi	a0,a0,1836 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80002a8c:	00002097          	auipc	ra,0x2
    80002a90:	13c080e7          	jalr	316(ra) # 80004bc8 <_Z11printStringPKc>
        return;
    80002a94:	0140006f          	j	80002aa8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002a98:	00005517          	auipc	a0,0x5
    80002a9c:	75850513          	addi	a0,a0,1880 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80002aa0:	00002097          	auipc	ra,0x2
    80002aa4:	128080e7          	jalr	296(ra) # 80004bc8 <_Z11printStringPKc>
        return;
    80002aa8:	000b0113          	mv	sp,s6
    80002aac:	1500006f          	j	80002bfc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002ab0:	00000593          	li	a1,0
    80002ab4:	00008517          	auipc	a0,0x8
    80002ab8:	c9c50513          	addi	a0,a0,-868 # 8000a750 <_ZL10waitForAll>
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	8b0080e7          	jalr	-1872(ra) # 8000136c <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80002ac4:	00391793          	slli	a5,s2,0x3
    80002ac8:	00f78793          	addi	a5,a5,15
    80002acc:	ff07f793          	andi	a5,a5,-16
    80002ad0:	40f10133          	sub	sp,sp,a5
    80002ad4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002ad8:	0019071b          	addiw	a4,s2,1
    80002adc:	00171793          	slli	a5,a4,0x1
    80002ae0:	00e787b3          	add	a5,a5,a4
    80002ae4:	00379793          	slli	a5,a5,0x3
    80002ae8:	00f78793          	addi	a5,a5,15
    80002aec:	ff07f793          	andi	a5,a5,-16
    80002af0:	40f10133          	sub	sp,sp,a5
    80002af4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002af8:	00191613          	slli	a2,s2,0x1
    80002afc:	012607b3          	add	a5,a2,s2
    80002b00:	00379793          	slli	a5,a5,0x3
    80002b04:	00f987b3          	add	a5,s3,a5
    80002b08:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002b0c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002b10:	00008717          	auipc	a4,0x8
    80002b14:	c4073703          	ld	a4,-960(a4) # 8000a750 <_ZL10waitForAll>
    80002b18:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002b1c:	00078613          	mv	a2,a5
    80002b20:	00000597          	auipc	a1,0x0
    80002b24:	d7458593          	addi	a1,a1,-652 # 80002894 <_ZL8consumerPv>
    80002b28:	f9840513          	addi	a0,s0,-104
    80002b2c:	ffffe097          	auipc	ra,0xffffe
    80002b30:	7c4080e7          	jalr	1988(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002b34:	00000493          	li	s1,0
    80002b38:	0280006f          	j	80002b60 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002b3c:	00000597          	auipc	a1,0x0
    80002b40:	c1458593          	addi	a1,a1,-1004 # 80002750 <_ZL16producerKeyboardPv>
                      data + i);
    80002b44:	00179613          	slli	a2,a5,0x1
    80002b48:	00f60633          	add	a2,a2,a5
    80002b4c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002b50:	00c98633          	add	a2,s3,a2
    80002b54:	ffffe097          	auipc	ra,0xffffe
    80002b58:	79c080e7          	jalr	1948(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002b5c:	0014849b          	addiw	s1,s1,1
    80002b60:	0524d263          	bge	s1,s2,80002ba4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002b64:	00149793          	slli	a5,s1,0x1
    80002b68:	009787b3          	add	a5,a5,s1
    80002b6c:	00379793          	slli	a5,a5,0x3
    80002b70:	00f987b3          	add	a5,s3,a5
    80002b74:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002b78:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002b7c:	00008717          	auipc	a4,0x8
    80002b80:	bd473703          	ld	a4,-1068(a4) # 8000a750 <_ZL10waitForAll>
    80002b84:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002b88:	00048793          	mv	a5,s1
    80002b8c:	00349513          	slli	a0,s1,0x3
    80002b90:	00aa8533          	add	a0,s5,a0
    80002b94:	fa9054e3          	blez	s1,80002b3c <_Z22producerConsumer_C_APIv+0x1c8>
    80002b98:	00000597          	auipc	a1,0x0
    80002b9c:	c6858593          	addi	a1,a1,-920 # 80002800 <_ZL8producerPv>
    80002ba0:	fa5ff06f          	j	80002b44 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002ba4:	ffffe097          	auipc	ra,0xffffe
    80002ba8:	704080e7          	jalr	1796(ra) # 800012a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002bac:	00000493          	li	s1,0
    80002bb0:	00994e63          	blt	s2,s1,80002bcc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002bb4:	00008517          	auipc	a0,0x8
    80002bb8:	b9c53503          	ld	a0,-1124(a0) # 8000a750 <_ZL10waitForAll>
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	80c080e7          	jalr	-2036(ra) # 800013c8 <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80002bc4:	0014849b          	addiw	s1,s1,1
    80002bc8:	fe9ff06f          	j	80002bb0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002bcc:	00008517          	auipc	a0,0x8
    80002bd0:	b8453503          	ld	a0,-1148(a0) # 8000a750 <_ZL10waitForAll>
    80002bd4:	ffffe097          	auipc	ra,0xffffe
    80002bd8:	7c8080e7          	jalr	1992(ra) # 8000139c <_Z9sem_closeP3sem>
    delete buffer;
    80002bdc:	000a0e63          	beqz	s4,80002bf8 <_Z22producerConsumer_C_APIv+0x284>
    80002be0:	000a0513          	mv	a0,s4
    80002be4:	00003097          	auipc	ra,0x3
    80002be8:	148080e7          	jalr	328(ra) # 80005d2c <_ZN6BufferD1Ev>
    80002bec:	000a0513          	mv	a0,s4
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	fe8080e7          	jalr	-24(ra) # 80001bd8 <_ZdlPv>
    80002bf8:	000b0113          	mv	sp,s6

}
    80002bfc:	f9040113          	addi	sp,s0,-112
    80002c00:	06813083          	ld	ra,104(sp)
    80002c04:	06013403          	ld	s0,96(sp)
    80002c08:	05813483          	ld	s1,88(sp)
    80002c0c:	05013903          	ld	s2,80(sp)
    80002c10:	04813983          	ld	s3,72(sp)
    80002c14:	04013a03          	ld	s4,64(sp)
    80002c18:	03813a83          	ld	s5,56(sp)
    80002c1c:	03013b03          	ld	s6,48(sp)
    80002c20:	07010113          	addi	sp,sp,112
    80002c24:	00008067          	ret
    80002c28:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002c2c:	000a0513          	mv	a0,s4
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	fa8080e7          	jalr	-88(ra) # 80001bd8 <_ZdlPv>
    80002c38:	00048513          	mv	a0,s1
    80002c3c:	00009097          	auipc	ra,0x9
    80002c40:	c2c080e7          	jalr	-980(ra) # 8000b868 <_Unwind_Resume>

0000000080002c44 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002c44:	fe010113          	addi	sp,sp,-32
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	00813823          	sd	s0,16(sp)
    80002c50:	00913423          	sd	s1,8(sp)
    80002c54:	01213023          	sd	s2,0(sp)
    80002c58:	02010413          	addi	s0,sp,32
    80002c5c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002c60:	00100793          	li	a5,1
    80002c64:	02a7f863          	bgeu	a5,a0,80002c94 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002c68:	00a00793          	li	a5,10
    80002c6c:	02f577b3          	remu	a5,a0,a5
    80002c70:	02078e63          	beqz	a5,80002cac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002c74:	fff48513          	addi	a0,s1,-1
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	fcc080e7          	jalr	-52(ra) # 80002c44 <_ZL9fibonaccim>
    80002c80:	00050913          	mv	s2,a0
    80002c84:	ffe48513          	addi	a0,s1,-2
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	fbc080e7          	jalr	-68(ra) # 80002c44 <_ZL9fibonaccim>
    80002c90:	00a90533          	add	a0,s2,a0
}
    80002c94:	01813083          	ld	ra,24(sp)
    80002c98:	01013403          	ld	s0,16(sp)
    80002c9c:	00813483          	ld	s1,8(sp)
    80002ca0:	00013903          	ld	s2,0(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002cac:	ffffe097          	auipc	ra,0xffffe
    80002cb0:	5fc080e7          	jalr	1532(ra) # 800012a8 <_Z15thread_dispatchv>
    80002cb4:	fc1ff06f          	j	80002c74 <_ZL9fibonaccim+0x30>

0000000080002cb8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002cb8:	fe010113          	addi	sp,sp,-32
    80002cbc:	00113c23          	sd	ra,24(sp)
    80002cc0:	00813823          	sd	s0,16(sp)
    80002cc4:	00913423          	sd	s1,8(sp)
    80002cc8:	01213023          	sd	s2,0(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002cd0:	00000913          	li	s2,0
    80002cd4:	0380006f          	j	80002d0c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002cd8:	ffffe097          	auipc	ra,0xffffe
    80002cdc:	5d0080e7          	jalr	1488(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002ce0:	00148493          	addi	s1,s1,1
    80002ce4:	000027b7          	lui	a5,0x2
    80002ce8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cec:	0097ee63          	bltu	a5,s1,80002d08 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cf0:	00000713          	li	a4,0
    80002cf4:	000077b7          	lui	a5,0x7
    80002cf8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002cfc:	fce7eee3          	bltu	a5,a4,80002cd8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002d00:	00170713          	addi	a4,a4,1
    80002d04:	ff1ff06f          	j	80002cf4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d08:	00190913          	addi	s2,s2,1
    80002d0c:	00900793          	li	a5,9
    80002d10:	0527e063          	bltu	a5,s2,80002d50 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d14:	00005517          	auipc	a0,0x5
    80002d18:	50c50513          	addi	a0,a0,1292 # 80008220 <CONSOLE_STATUS+0x210>
    80002d1c:	00002097          	auipc	ra,0x2
    80002d20:	eac080e7          	jalr	-340(ra) # 80004bc8 <_Z11printStringPKc>
    80002d24:	00000613          	li	a2,0
    80002d28:	00a00593          	li	a1,10
    80002d2c:	0009051b          	sext.w	a0,s2
    80002d30:	00002097          	auipc	ra,0x2
    80002d34:	048080e7          	jalr	72(ra) # 80004d78 <_Z8printIntiii>
    80002d38:	00005517          	auipc	a0,0x5
    80002d3c:	76850513          	addi	a0,a0,1896 # 800084a0 <CONSOLE_STATUS+0x490>
    80002d40:	00002097          	auipc	ra,0x2
    80002d44:	e88080e7          	jalr	-376(ra) # 80004bc8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d48:	00000493          	li	s1,0
    80002d4c:	f99ff06f          	j	80002ce4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002d50:	00005517          	auipc	a0,0x5
    80002d54:	4d850513          	addi	a0,a0,1240 # 80008228 <CONSOLE_STATUS+0x218>
    80002d58:	00002097          	auipc	ra,0x2
    80002d5c:	e70080e7          	jalr	-400(ra) # 80004bc8 <_Z11printStringPKc>
    finishedA = true;
    80002d60:	00100793          	li	a5,1
    80002d64:	00008717          	auipc	a4,0x8
    80002d68:	9ef70a23          	sb	a5,-1548(a4) # 8000a758 <_ZL9finishedA>
}
    80002d6c:	01813083          	ld	ra,24(sp)
    80002d70:	01013403          	ld	s0,16(sp)
    80002d74:	00813483          	ld	s1,8(sp)
    80002d78:	00013903          	ld	s2,0(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret

0000000080002d84 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002d84:	fe010113          	addi	sp,sp,-32
    80002d88:	00113c23          	sd	ra,24(sp)
    80002d8c:	00813823          	sd	s0,16(sp)
    80002d90:	00913423          	sd	s1,8(sp)
    80002d94:	01213023          	sd	s2,0(sp)
    80002d98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d9c:	00000913          	li	s2,0
    80002da0:	0380006f          	j	80002dd8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	504080e7          	jalr	1284(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002dac:	00148493          	addi	s1,s1,1
    80002db0:	000027b7          	lui	a5,0x2
    80002db4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002db8:	0097ee63          	bltu	a5,s1,80002dd4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002dbc:	00000713          	li	a4,0
    80002dc0:	000077b7          	lui	a5,0x7
    80002dc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002dc8:	fce7eee3          	bltu	a5,a4,80002da4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002dcc:	00170713          	addi	a4,a4,1
    80002dd0:	ff1ff06f          	j	80002dc0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002dd4:	00190913          	addi	s2,s2,1
    80002dd8:	00f00793          	li	a5,15
    80002ddc:	0527e063          	bltu	a5,s2,80002e1c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002de0:	00005517          	auipc	a0,0x5
    80002de4:	45850513          	addi	a0,a0,1112 # 80008238 <CONSOLE_STATUS+0x228>
    80002de8:	00002097          	auipc	ra,0x2
    80002dec:	de0080e7          	jalr	-544(ra) # 80004bc8 <_Z11printStringPKc>
    80002df0:	00000613          	li	a2,0
    80002df4:	00a00593          	li	a1,10
    80002df8:	0009051b          	sext.w	a0,s2
    80002dfc:	00002097          	auipc	ra,0x2
    80002e00:	f7c080e7          	jalr	-132(ra) # 80004d78 <_Z8printIntiii>
    80002e04:	00005517          	auipc	a0,0x5
    80002e08:	69c50513          	addi	a0,a0,1692 # 800084a0 <CONSOLE_STATUS+0x490>
    80002e0c:	00002097          	auipc	ra,0x2
    80002e10:	dbc080e7          	jalr	-580(ra) # 80004bc8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e14:	00000493          	li	s1,0
    80002e18:	f99ff06f          	j	80002db0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002e1c:	00005517          	auipc	a0,0x5
    80002e20:	42450513          	addi	a0,a0,1060 # 80008240 <CONSOLE_STATUS+0x230>
    80002e24:	00002097          	auipc	ra,0x2
    80002e28:	da4080e7          	jalr	-604(ra) # 80004bc8 <_Z11printStringPKc>
    finishedB = true;
    80002e2c:	00100793          	li	a5,1
    80002e30:	00008717          	auipc	a4,0x8
    80002e34:	92f704a3          	sb	a5,-1751(a4) # 8000a759 <_ZL9finishedB>
    thread_dispatch();
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	470080e7          	jalr	1136(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002e40:	01813083          	ld	ra,24(sp)
    80002e44:	01013403          	ld	s0,16(sp)
    80002e48:	00813483          	ld	s1,8(sp)
    80002e4c:	00013903          	ld	s2,0(sp)
    80002e50:	02010113          	addi	sp,sp,32
    80002e54:	00008067          	ret

0000000080002e58 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002e58:	fe010113          	addi	sp,sp,-32
    80002e5c:	00113c23          	sd	ra,24(sp)
    80002e60:	00813823          	sd	s0,16(sp)
    80002e64:	00913423          	sd	s1,8(sp)
    80002e68:	01213023          	sd	s2,0(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002e70:	00000493          	li	s1,0
    80002e74:	0400006f          	j	80002eb4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002e78:	00005517          	auipc	a0,0x5
    80002e7c:	3d850513          	addi	a0,a0,984 # 80008250 <CONSOLE_STATUS+0x240>
    80002e80:	00002097          	auipc	ra,0x2
    80002e84:	d48080e7          	jalr	-696(ra) # 80004bc8 <_Z11printStringPKc>
    80002e88:	00000613          	li	a2,0
    80002e8c:	00a00593          	li	a1,10
    80002e90:	00048513          	mv	a0,s1
    80002e94:	00002097          	auipc	ra,0x2
    80002e98:	ee4080e7          	jalr	-284(ra) # 80004d78 <_Z8printIntiii>
    80002e9c:	00005517          	auipc	a0,0x5
    80002ea0:	60450513          	addi	a0,a0,1540 # 800084a0 <CONSOLE_STATUS+0x490>
    80002ea4:	00002097          	auipc	ra,0x2
    80002ea8:	d24080e7          	jalr	-732(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002eac:	0014849b          	addiw	s1,s1,1
    80002eb0:	0ff4f493          	andi	s1,s1,255
    80002eb4:	00200793          	li	a5,2
    80002eb8:	fc97f0e3          	bgeu	a5,s1,80002e78 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002ebc:	00005517          	auipc	a0,0x5
    80002ec0:	39c50513          	addi	a0,a0,924 # 80008258 <CONSOLE_STATUS+0x248>
    80002ec4:	00002097          	auipc	ra,0x2
    80002ec8:	d04080e7          	jalr	-764(ra) # 80004bc8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002ecc:	00700313          	li	t1,7
    thread_dispatch();
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	3d8080e7          	jalr	984(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ed8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002edc:	00005517          	auipc	a0,0x5
    80002ee0:	38c50513          	addi	a0,a0,908 # 80008268 <CONSOLE_STATUS+0x258>
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	ce4080e7          	jalr	-796(ra) # 80004bc8 <_Z11printStringPKc>
    80002eec:	00000613          	li	a2,0
    80002ef0:	00a00593          	li	a1,10
    80002ef4:	0009051b          	sext.w	a0,s2
    80002ef8:	00002097          	auipc	ra,0x2
    80002efc:	e80080e7          	jalr	-384(ra) # 80004d78 <_Z8printIntiii>
    80002f00:	00005517          	auipc	a0,0x5
    80002f04:	5a050513          	addi	a0,a0,1440 # 800084a0 <CONSOLE_STATUS+0x490>
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	cc0080e7          	jalr	-832(ra) # 80004bc8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002f10:	00c00513          	li	a0,12
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	d30080e7          	jalr	-720(ra) # 80002c44 <_ZL9fibonaccim>
    80002f1c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002f20:	00005517          	auipc	a0,0x5
    80002f24:	35050513          	addi	a0,a0,848 # 80008270 <CONSOLE_STATUS+0x260>
    80002f28:	00002097          	auipc	ra,0x2
    80002f2c:	ca0080e7          	jalr	-864(ra) # 80004bc8 <_Z11printStringPKc>
    80002f30:	00000613          	li	a2,0
    80002f34:	00a00593          	li	a1,10
    80002f38:	0009051b          	sext.w	a0,s2
    80002f3c:	00002097          	auipc	ra,0x2
    80002f40:	e3c080e7          	jalr	-452(ra) # 80004d78 <_Z8printIntiii>
    80002f44:	00005517          	auipc	a0,0x5
    80002f48:	55c50513          	addi	a0,a0,1372 # 800084a0 <CONSOLE_STATUS+0x490>
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	c7c080e7          	jalr	-900(ra) # 80004bc8 <_Z11printStringPKc>
    80002f54:	0400006f          	j	80002f94 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002f58:	00005517          	auipc	a0,0x5
    80002f5c:	2f850513          	addi	a0,a0,760 # 80008250 <CONSOLE_STATUS+0x240>
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	c68080e7          	jalr	-920(ra) # 80004bc8 <_Z11printStringPKc>
    80002f68:	00000613          	li	a2,0
    80002f6c:	00a00593          	li	a1,10
    80002f70:	00048513          	mv	a0,s1
    80002f74:	00002097          	auipc	ra,0x2
    80002f78:	e04080e7          	jalr	-508(ra) # 80004d78 <_Z8printIntiii>
    80002f7c:	00005517          	auipc	a0,0x5
    80002f80:	52450513          	addi	a0,a0,1316 # 800084a0 <CONSOLE_STATUS+0x490>
    80002f84:	00002097          	auipc	ra,0x2
    80002f88:	c44080e7          	jalr	-956(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002f8c:	0014849b          	addiw	s1,s1,1
    80002f90:	0ff4f493          	andi	s1,s1,255
    80002f94:	00500793          	li	a5,5
    80002f98:	fc97f0e3          	bgeu	a5,s1,80002f58 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002f9c:	00005517          	auipc	a0,0x5
    80002fa0:	28c50513          	addi	a0,a0,652 # 80008228 <CONSOLE_STATUS+0x218>
    80002fa4:	00002097          	auipc	ra,0x2
    80002fa8:	c24080e7          	jalr	-988(ra) # 80004bc8 <_Z11printStringPKc>
    finishedC = true;
    80002fac:	00100793          	li	a5,1
    80002fb0:	00007717          	auipc	a4,0x7
    80002fb4:	7af70523          	sb	a5,1962(a4) # 8000a75a <_ZL9finishedC>
    thread_dispatch();
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	2f0080e7          	jalr	752(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002fc0:	01813083          	ld	ra,24(sp)
    80002fc4:	01013403          	ld	s0,16(sp)
    80002fc8:	00813483          	ld	s1,8(sp)
    80002fcc:	00013903          	ld	s2,0(sp)
    80002fd0:	02010113          	addi	sp,sp,32
    80002fd4:	00008067          	ret

0000000080002fd8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002fd8:	fe010113          	addi	sp,sp,-32
    80002fdc:	00113c23          	sd	ra,24(sp)
    80002fe0:	00813823          	sd	s0,16(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	01213023          	sd	s2,0(sp)
    80002fec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002ff0:	00a00493          	li	s1,10
    80002ff4:	0400006f          	j	80003034 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002ff8:	00005517          	auipc	a0,0x5
    80002ffc:	28850513          	addi	a0,a0,648 # 80008280 <CONSOLE_STATUS+0x270>
    80003000:	00002097          	auipc	ra,0x2
    80003004:	bc8080e7          	jalr	-1080(ra) # 80004bc8 <_Z11printStringPKc>
    80003008:	00000613          	li	a2,0
    8000300c:	00a00593          	li	a1,10
    80003010:	00048513          	mv	a0,s1
    80003014:	00002097          	auipc	ra,0x2
    80003018:	d64080e7          	jalr	-668(ra) # 80004d78 <_Z8printIntiii>
    8000301c:	00005517          	auipc	a0,0x5
    80003020:	48450513          	addi	a0,a0,1156 # 800084a0 <CONSOLE_STATUS+0x490>
    80003024:	00002097          	auipc	ra,0x2
    80003028:	ba4080e7          	jalr	-1116(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000302c:	0014849b          	addiw	s1,s1,1
    80003030:	0ff4f493          	andi	s1,s1,255
    80003034:	00c00793          	li	a5,12
    80003038:	fc97f0e3          	bgeu	a5,s1,80002ff8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000303c:	00005517          	auipc	a0,0x5
    80003040:	24c50513          	addi	a0,a0,588 # 80008288 <CONSOLE_STATUS+0x278>
    80003044:	00002097          	auipc	ra,0x2
    80003048:	b84080e7          	jalr	-1148(ra) # 80004bc8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000304c:	00500313          	li	t1,5
    thread_dispatch();
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	258080e7          	jalr	600(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003058:	01000513          	li	a0,16
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	be8080e7          	jalr	-1048(ra) # 80002c44 <_ZL9fibonaccim>
    80003064:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003068:	00005517          	auipc	a0,0x5
    8000306c:	23050513          	addi	a0,a0,560 # 80008298 <CONSOLE_STATUS+0x288>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	b58080e7          	jalr	-1192(ra) # 80004bc8 <_Z11printStringPKc>
    80003078:	00000613          	li	a2,0
    8000307c:	00a00593          	li	a1,10
    80003080:	0009051b          	sext.w	a0,s2
    80003084:	00002097          	auipc	ra,0x2
    80003088:	cf4080e7          	jalr	-780(ra) # 80004d78 <_Z8printIntiii>
    8000308c:	00005517          	auipc	a0,0x5
    80003090:	41450513          	addi	a0,a0,1044 # 800084a0 <CONSOLE_STATUS+0x490>
    80003094:	00002097          	auipc	ra,0x2
    80003098:	b34080e7          	jalr	-1228(ra) # 80004bc8 <_Z11printStringPKc>
    8000309c:	0400006f          	j	800030dc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800030a0:	00005517          	auipc	a0,0x5
    800030a4:	1e050513          	addi	a0,a0,480 # 80008280 <CONSOLE_STATUS+0x270>
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	b20080e7          	jalr	-1248(ra) # 80004bc8 <_Z11printStringPKc>
    800030b0:	00000613          	li	a2,0
    800030b4:	00a00593          	li	a1,10
    800030b8:	00048513          	mv	a0,s1
    800030bc:	00002097          	auipc	ra,0x2
    800030c0:	cbc080e7          	jalr	-836(ra) # 80004d78 <_Z8printIntiii>
    800030c4:	00005517          	auipc	a0,0x5
    800030c8:	3dc50513          	addi	a0,a0,988 # 800084a0 <CONSOLE_STATUS+0x490>
    800030cc:	00002097          	auipc	ra,0x2
    800030d0:	afc080e7          	jalr	-1284(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800030d4:	0014849b          	addiw	s1,s1,1
    800030d8:	0ff4f493          	andi	s1,s1,255
    800030dc:	00f00793          	li	a5,15
    800030e0:	fc97f0e3          	bgeu	a5,s1,800030a0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800030e4:	00005517          	auipc	a0,0x5
    800030e8:	1c450513          	addi	a0,a0,452 # 800082a8 <CONSOLE_STATUS+0x298>
    800030ec:	00002097          	auipc	ra,0x2
    800030f0:	adc080e7          	jalr	-1316(ra) # 80004bc8 <_Z11printStringPKc>
    finishedD = true;
    800030f4:	00100793          	li	a5,1
    800030f8:	00007717          	auipc	a4,0x7
    800030fc:	66f701a3          	sb	a5,1635(a4) # 8000a75b <_ZL9finishedD>
    thread_dispatch();
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	1a8080e7          	jalr	424(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003108:	01813083          	ld	ra,24(sp)
    8000310c:	01013403          	ld	s0,16(sp)
    80003110:	00813483          	ld	s1,8(sp)
    80003114:	00013903          	ld	s2,0(sp)
    80003118:	02010113          	addi	sp,sp,32
    8000311c:	00008067          	ret

0000000080003120 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003120:	fc010113          	addi	sp,sp,-64
    80003124:	02113c23          	sd	ra,56(sp)
    80003128:	02813823          	sd	s0,48(sp)
    8000312c:	02913423          	sd	s1,40(sp)
    80003130:	03213023          	sd	s2,32(sp)
    80003134:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003138:	02000513          	li	a0,32
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	a4c080e7          	jalr	-1460(ra) # 80001b88 <_Znwm>
    80003144:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	c94080e7          	jalr	-876(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003150:	00007797          	auipc	a5,0x7
    80003154:	3b078793          	addi	a5,a5,944 # 8000a500 <_ZTV7WorkerA+0x10>
    80003158:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000315c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003160:	00005517          	auipc	a0,0x5
    80003164:	15850513          	addi	a0,a0,344 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80003168:	00002097          	auipc	ra,0x2
    8000316c:	a60080e7          	jalr	-1440(ra) # 80004bc8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003170:	02000513          	li	a0,32
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	a14080e7          	jalr	-1516(ra) # 80001b88 <_Znwm>
    8000317c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	c5c080e7          	jalr	-932(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003188:	00007797          	auipc	a5,0x7
    8000318c:	3a078793          	addi	a5,a5,928 # 8000a528 <_ZTV7WorkerB+0x10>
    80003190:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003194:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003198:	00005517          	auipc	a0,0x5
    8000319c:	13850513          	addi	a0,a0,312 # 800082d0 <CONSOLE_STATUS+0x2c0>
    800031a0:	00002097          	auipc	ra,0x2
    800031a4:	a28080e7          	jalr	-1496(ra) # 80004bc8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800031a8:	02000513          	li	a0,32
    800031ac:	fffff097          	auipc	ra,0xfffff
    800031b0:	9dc080e7          	jalr	-1572(ra) # 80001b88 <_Znwm>
    800031b4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	c24080e7          	jalr	-988(ra) # 80001ddc <_ZN6ThreadC1Ev>
    800031c0:	00007797          	auipc	a5,0x7
    800031c4:	39078793          	addi	a5,a5,912 # 8000a550 <_ZTV7WorkerC+0x10>
    800031c8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800031cc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800031d0:	00005517          	auipc	a0,0x5
    800031d4:	11850513          	addi	a0,a0,280 # 800082e8 <CONSOLE_STATUS+0x2d8>
    800031d8:	00002097          	auipc	ra,0x2
    800031dc:	9f0080e7          	jalr	-1552(ra) # 80004bc8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800031e0:	02000513          	li	a0,32
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	9a4080e7          	jalr	-1628(ra) # 80001b88 <_Znwm>
    800031ec:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	bec080e7          	jalr	-1044(ra) # 80001ddc <_ZN6ThreadC1Ev>
    800031f8:	00007797          	auipc	a5,0x7
    800031fc:	38078793          	addi	a5,a5,896 # 8000a578 <_ZTV7WorkerD+0x10>
    80003200:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003204:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003208:	00005517          	auipc	a0,0x5
    8000320c:	0f850513          	addi	a0,a0,248 # 80008300 <CONSOLE_STATUS+0x2f0>
    80003210:	00002097          	auipc	ra,0x2
    80003214:	9b8080e7          	jalr	-1608(ra) # 80004bc8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003218:	00000493          	li	s1,0
    8000321c:	00300793          	li	a5,3
    80003220:	0297c663          	blt	a5,s1,8000324c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003224:	00349793          	slli	a5,s1,0x3
    80003228:	fe040713          	addi	a4,s0,-32
    8000322c:	00f707b3          	add	a5,a4,a5
    80003230:	fe07b503          	ld	a0,-32(a5)
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	b48080e7          	jalr	-1208(ra) # 80001d7c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000323c:	0014849b          	addiw	s1,s1,1
    80003240:	fddff06f          	j	8000321c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	b70080e7          	jalr	-1168(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000324c:	00007797          	auipc	a5,0x7
    80003250:	50c7c783          	lbu	a5,1292(a5) # 8000a758 <_ZL9finishedA>
    80003254:	fe0788e3          	beqz	a5,80003244 <_Z20Threads_CPP_API_testv+0x124>
    80003258:	00007797          	auipc	a5,0x7
    8000325c:	5017c783          	lbu	a5,1281(a5) # 8000a759 <_ZL9finishedB>
    80003260:	fe0782e3          	beqz	a5,80003244 <_Z20Threads_CPP_API_testv+0x124>
    80003264:	00007797          	auipc	a5,0x7
    80003268:	4f67c783          	lbu	a5,1270(a5) # 8000a75a <_ZL9finishedC>
    8000326c:	fc078ce3          	beqz	a5,80003244 <_Z20Threads_CPP_API_testv+0x124>
    80003270:	00007797          	auipc	a5,0x7
    80003274:	4eb7c783          	lbu	a5,1259(a5) # 8000a75b <_ZL9finishedD>
    80003278:	fc0786e3          	beqz	a5,80003244 <_Z20Threads_CPP_API_testv+0x124>
    8000327c:	fc040493          	addi	s1,s0,-64
    80003280:	0080006f          	j	80003288 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003284:	00848493          	addi	s1,s1,8
    80003288:	fe040793          	addi	a5,s0,-32
    8000328c:	08f48663          	beq	s1,a5,80003318 <_Z20Threads_CPP_API_testv+0x1f8>
    80003290:	0004b503          	ld	a0,0(s1)
    80003294:	fe0508e3          	beqz	a0,80003284 <_Z20Threads_CPP_API_testv+0x164>
    80003298:	00053783          	ld	a5,0(a0)
    8000329c:	0087b783          	ld	a5,8(a5)
    800032a0:	000780e7          	jalr	a5
    800032a4:	fe1ff06f          	j	80003284 <_Z20Threads_CPP_API_testv+0x164>
    800032a8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800032ac:	00048513          	mv	a0,s1
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	928080e7          	jalr	-1752(ra) # 80001bd8 <_ZdlPv>
    800032b8:	00090513          	mv	a0,s2
    800032bc:	00008097          	auipc	ra,0x8
    800032c0:	5ac080e7          	jalr	1452(ra) # 8000b868 <_Unwind_Resume>
    800032c4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800032c8:	00048513          	mv	a0,s1
    800032cc:	fffff097          	auipc	ra,0xfffff
    800032d0:	90c080e7          	jalr	-1780(ra) # 80001bd8 <_ZdlPv>
    800032d4:	00090513          	mv	a0,s2
    800032d8:	00008097          	auipc	ra,0x8
    800032dc:	590080e7          	jalr	1424(ra) # 8000b868 <_Unwind_Resume>
    800032e0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800032e4:	00048513          	mv	a0,s1
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	8f0080e7          	jalr	-1808(ra) # 80001bd8 <_ZdlPv>
    800032f0:	00090513          	mv	a0,s2
    800032f4:	00008097          	auipc	ra,0x8
    800032f8:	574080e7          	jalr	1396(ra) # 8000b868 <_Unwind_Resume>
    800032fc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003300:	00048513          	mv	a0,s1
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	8d4080e7          	jalr	-1836(ra) # 80001bd8 <_ZdlPv>
    8000330c:	00090513          	mv	a0,s2
    80003310:	00008097          	auipc	ra,0x8
    80003314:	558080e7          	jalr	1368(ra) # 8000b868 <_Unwind_Resume>
}
    80003318:	03813083          	ld	ra,56(sp)
    8000331c:	03013403          	ld	s0,48(sp)
    80003320:	02813483          	ld	s1,40(sp)
    80003324:	02013903          	ld	s2,32(sp)
    80003328:	04010113          	addi	sp,sp,64
    8000332c:	00008067          	ret

0000000080003330 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003330:	ff010113          	addi	sp,sp,-16
    80003334:	00113423          	sd	ra,8(sp)
    80003338:	00813023          	sd	s0,0(sp)
    8000333c:	01010413          	addi	s0,sp,16
    80003340:	00007797          	auipc	a5,0x7
    80003344:	1c078793          	addi	a5,a5,448 # 8000a500 <_ZTV7WorkerA+0x10>
    80003348:	00f53023          	sd	a5,0(a0)
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	908080e7          	jalr	-1784(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003354:	00813083          	ld	ra,8(sp)
    80003358:	00013403          	ld	s0,0(sp)
    8000335c:	01010113          	addi	sp,sp,16
    80003360:	00008067          	ret

0000000080003364 <_ZN7WorkerAD0Ev>:
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	02010413          	addi	s0,sp,32
    80003378:	00050493          	mv	s1,a0
    8000337c:	00007797          	auipc	a5,0x7
    80003380:	18478793          	addi	a5,a5,388 # 8000a500 <_ZTV7WorkerA+0x10>
    80003384:	00f53023          	sd	a5,0(a0)
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	8cc080e7          	jalr	-1844(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003390:	00048513          	mv	a0,s1
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	844080e7          	jalr	-1980(ra) # 80001bd8 <_ZdlPv>
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	00813483          	ld	s1,8(sp)
    800033a8:	02010113          	addi	sp,sp,32
    800033ac:	00008067          	ret

00000000800033b0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	00007797          	auipc	a5,0x7
    800033c4:	16878793          	addi	a5,a5,360 # 8000a528 <_ZTV7WorkerB+0x10>
    800033c8:	00f53023          	sd	a5,0(a0)
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	888080e7          	jalr	-1912(ra) # 80001c54 <_ZN6ThreadD1Ev>
    800033d4:	00813083          	ld	ra,8(sp)
    800033d8:	00013403          	ld	s0,0(sp)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret

00000000800033e4 <_ZN7WorkerBD0Ev>:
    800033e4:	fe010113          	addi	sp,sp,-32
    800033e8:	00113c23          	sd	ra,24(sp)
    800033ec:	00813823          	sd	s0,16(sp)
    800033f0:	00913423          	sd	s1,8(sp)
    800033f4:	02010413          	addi	s0,sp,32
    800033f8:	00050493          	mv	s1,a0
    800033fc:	00007797          	auipc	a5,0x7
    80003400:	12c78793          	addi	a5,a5,300 # 8000a528 <_ZTV7WorkerB+0x10>
    80003404:	00f53023          	sd	a5,0(a0)
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	84c080e7          	jalr	-1972(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003410:	00048513          	mv	a0,s1
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	7c4080e7          	jalr	1988(ra) # 80001bd8 <_ZdlPv>
    8000341c:	01813083          	ld	ra,24(sp)
    80003420:	01013403          	ld	s0,16(sp)
    80003424:	00813483          	ld	s1,8(sp)
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret

0000000080003430 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00113423          	sd	ra,8(sp)
    80003438:	00813023          	sd	s0,0(sp)
    8000343c:	01010413          	addi	s0,sp,16
    80003440:	00007797          	auipc	a5,0x7
    80003444:	11078793          	addi	a5,a5,272 # 8000a550 <_ZTV7WorkerC+0x10>
    80003448:	00f53023          	sd	a5,0(a0)
    8000344c:	fffff097          	auipc	ra,0xfffff
    80003450:	808080e7          	jalr	-2040(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003454:	00813083          	ld	ra,8(sp)
    80003458:	00013403          	ld	s0,0(sp)
    8000345c:	01010113          	addi	sp,sp,16
    80003460:	00008067          	ret

0000000080003464 <_ZN7WorkerCD0Ev>:
    80003464:	fe010113          	addi	sp,sp,-32
    80003468:	00113c23          	sd	ra,24(sp)
    8000346c:	00813823          	sd	s0,16(sp)
    80003470:	00913423          	sd	s1,8(sp)
    80003474:	02010413          	addi	s0,sp,32
    80003478:	00050493          	mv	s1,a0
    8000347c:	00007797          	auipc	a5,0x7
    80003480:	0d478793          	addi	a5,a5,212 # 8000a550 <_ZTV7WorkerC+0x10>
    80003484:	00f53023          	sd	a5,0(a0)
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	7cc080e7          	jalr	1996(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003490:	00048513          	mv	a0,s1
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	744080e7          	jalr	1860(ra) # 80001bd8 <_ZdlPv>
    8000349c:	01813083          	ld	ra,24(sp)
    800034a0:	01013403          	ld	s0,16(sp)
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret

00000000800034b0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800034b0:	ff010113          	addi	sp,sp,-16
    800034b4:	00113423          	sd	ra,8(sp)
    800034b8:	00813023          	sd	s0,0(sp)
    800034bc:	01010413          	addi	s0,sp,16
    800034c0:	00007797          	auipc	a5,0x7
    800034c4:	0b878793          	addi	a5,a5,184 # 8000a578 <_ZTV7WorkerD+0x10>
    800034c8:	00f53023          	sd	a5,0(a0)
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	788080e7          	jalr	1928(ra) # 80001c54 <_ZN6ThreadD1Ev>
    800034d4:	00813083          	ld	ra,8(sp)
    800034d8:	00013403          	ld	s0,0(sp)
    800034dc:	01010113          	addi	sp,sp,16
    800034e0:	00008067          	ret

00000000800034e4 <_ZN7WorkerDD0Ev>:
    800034e4:	fe010113          	addi	sp,sp,-32
    800034e8:	00113c23          	sd	ra,24(sp)
    800034ec:	00813823          	sd	s0,16(sp)
    800034f0:	00913423          	sd	s1,8(sp)
    800034f4:	02010413          	addi	s0,sp,32
    800034f8:	00050493          	mv	s1,a0
    800034fc:	00007797          	auipc	a5,0x7
    80003500:	07c78793          	addi	a5,a5,124 # 8000a578 <_ZTV7WorkerD+0x10>
    80003504:	00f53023          	sd	a5,0(a0)
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	74c080e7          	jalr	1868(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003510:	00048513          	mv	a0,s1
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	6c4080e7          	jalr	1732(ra) # 80001bd8 <_ZdlPv>
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	02010113          	addi	sp,sp,32
    8000352c:	00008067          	ret

0000000080003530 <_ZN7WorkerA3runEv>:
    void run() override {
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00113423          	sd	ra,8(sp)
    80003538:	00813023          	sd	s0,0(sp)
    8000353c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003540:	00000593          	li	a1,0
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	774080e7          	jalr	1908(ra) # 80002cb8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000354c:	00813083          	ld	ra,8(sp)
    80003550:	00013403          	ld	s0,0(sp)
    80003554:	01010113          	addi	sp,sp,16
    80003558:	00008067          	ret

000000008000355c <_ZN7WorkerB3runEv>:
    void run() override {
    8000355c:	ff010113          	addi	sp,sp,-16
    80003560:	00113423          	sd	ra,8(sp)
    80003564:	00813023          	sd	s0,0(sp)
    80003568:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000356c:	00000593          	li	a1,0
    80003570:	00000097          	auipc	ra,0x0
    80003574:	814080e7          	jalr	-2028(ra) # 80002d84 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003578:	00813083          	ld	ra,8(sp)
    8000357c:	00013403          	ld	s0,0(sp)
    80003580:	01010113          	addi	sp,sp,16
    80003584:	00008067          	ret

0000000080003588 <_ZN7WorkerC3runEv>:
    void run() override {
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00113423          	sd	ra,8(sp)
    80003590:	00813023          	sd	s0,0(sp)
    80003594:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003598:	00000593          	li	a1,0
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	8bc080e7          	jalr	-1860(ra) # 80002e58 <_ZN7WorkerC11workerBodyCEPv>
    }
    800035a4:	00813083          	ld	ra,8(sp)
    800035a8:	00013403          	ld	s0,0(sp)
    800035ac:	01010113          	addi	sp,sp,16
    800035b0:	00008067          	ret

00000000800035b4 <_ZN7WorkerD3runEv>:
    void run() override {
    800035b4:	ff010113          	addi	sp,sp,-16
    800035b8:	00113423          	sd	ra,8(sp)
    800035bc:	00813023          	sd	s0,0(sp)
    800035c0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800035c4:	00000593          	li	a1,0
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	a10080e7          	jalr	-1520(ra) # 80002fd8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800035d0:	00813083          	ld	ra,8(sp)
    800035d4:	00013403          	ld	s0,0(sp)
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00008067          	ret

00000000800035e0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800035e0:	f8010113          	addi	sp,sp,-128
    800035e4:	06113c23          	sd	ra,120(sp)
    800035e8:	06813823          	sd	s0,112(sp)
    800035ec:	06913423          	sd	s1,104(sp)
    800035f0:	07213023          	sd	s2,96(sp)
    800035f4:	05313c23          	sd	s3,88(sp)
    800035f8:	05413823          	sd	s4,80(sp)
    800035fc:	05513423          	sd	s5,72(sp)
    80003600:	05613023          	sd	s6,64(sp)
    80003604:	03713c23          	sd	s7,56(sp)
    80003608:	03813823          	sd	s8,48(sp)
    8000360c:	03913423          	sd	s9,40(sp)
    80003610:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003614:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003618:	00005517          	auipc	a0,0x5
    8000361c:	b2050513          	addi	a0,a0,-1248 # 80008138 <CONSOLE_STATUS+0x128>
    80003620:	00001097          	auipc	ra,0x1
    80003624:	5a8080e7          	jalr	1448(ra) # 80004bc8 <_Z11printStringPKc>
    getString(input, 30);
    80003628:	01e00593          	li	a1,30
    8000362c:	f8040493          	addi	s1,s0,-128
    80003630:	00048513          	mv	a0,s1
    80003634:	00001097          	auipc	ra,0x1
    80003638:	61c080e7          	jalr	1564(ra) # 80004c50 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000363c:	00048513          	mv	a0,s1
    80003640:	00001097          	auipc	ra,0x1
    80003644:	6e8080e7          	jalr	1768(ra) # 80004d28 <_Z11stringToIntPKc>
    80003648:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000364c:	00005517          	auipc	a0,0x5
    80003650:	b0c50513          	addi	a0,a0,-1268 # 80008158 <CONSOLE_STATUS+0x148>
    80003654:	00001097          	auipc	ra,0x1
    80003658:	574080e7          	jalr	1396(ra) # 80004bc8 <_Z11printStringPKc>
    getString(input, 30);
    8000365c:	01e00593          	li	a1,30
    80003660:	00048513          	mv	a0,s1
    80003664:	00001097          	auipc	ra,0x1
    80003668:	5ec080e7          	jalr	1516(ra) # 80004c50 <_Z9getStringPci>
    n = stringToInt(input);
    8000366c:	00048513          	mv	a0,s1
    80003670:	00001097          	auipc	ra,0x1
    80003674:	6b8080e7          	jalr	1720(ra) # 80004d28 <_Z11stringToIntPKc>
    80003678:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000367c:	00005517          	auipc	a0,0x5
    80003680:	afc50513          	addi	a0,a0,-1284 # 80008178 <CONSOLE_STATUS+0x168>
    80003684:	00001097          	auipc	ra,0x1
    80003688:	544080e7          	jalr	1348(ra) # 80004bc8 <_Z11printStringPKc>
    printInt(threadNum);
    8000368c:	00000613          	li	a2,0
    80003690:	00a00593          	li	a1,10
    80003694:	00098513          	mv	a0,s3
    80003698:	00001097          	auipc	ra,0x1
    8000369c:	6e0080e7          	jalr	1760(ra) # 80004d78 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800036a0:	00005517          	auipc	a0,0x5
    800036a4:	af050513          	addi	a0,a0,-1296 # 80008190 <CONSOLE_STATUS+0x180>
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	520080e7          	jalr	1312(ra) # 80004bc8 <_Z11printStringPKc>
    printInt(n);
    800036b0:	00000613          	li	a2,0
    800036b4:	00a00593          	li	a1,10
    800036b8:	00048513          	mv	a0,s1
    800036bc:	00001097          	auipc	ra,0x1
    800036c0:	6bc080e7          	jalr	1724(ra) # 80004d78 <_Z8printIntiii>
    printString(".\n");
    800036c4:	00005517          	auipc	a0,0x5
    800036c8:	ae450513          	addi	a0,a0,-1308 # 800081a8 <CONSOLE_STATUS+0x198>
    800036cc:	00001097          	auipc	ra,0x1
    800036d0:	4fc080e7          	jalr	1276(ra) # 80004bc8 <_Z11printStringPKc>
    if (threadNum > n) {
    800036d4:	0334c463          	blt	s1,s3,800036fc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800036d8:	03305c63          	blez	s3,80003710 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800036dc:	03800513          	li	a0,56
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	4a8080e7          	jalr	1192(ra) # 80001b88 <_Znwm>
    800036e8:	00050a93          	mv	s5,a0
    800036ec:	00048593          	mv	a1,s1
    800036f0:	00001097          	auipc	ra,0x1
    800036f4:	7a8080e7          	jalr	1960(ra) # 80004e98 <_ZN9BufferCPPC1Ei>
    800036f8:	0300006f          	j	80003728 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036fc:	00005517          	auipc	a0,0x5
    80003700:	ab450513          	addi	a0,a0,-1356 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80003704:	00001097          	auipc	ra,0x1
    80003708:	4c4080e7          	jalr	1220(ra) # 80004bc8 <_Z11printStringPKc>
        return;
    8000370c:	0140006f          	j	80003720 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003710:	00005517          	auipc	a0,0x5
    80003714:	ae050513          	addi	a0,a0,-1312 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80003718:	00001097          	auipc	ra,0x1
    8000371c:	4b0080e7          	jalr	1200(ra) # 80004bc8 <_Z11printStringPKc>
        return;
    80003720:	000c0113          	mv	sp,s8
    80003724:	2140006f          	j	80003938 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003728:	01000513          	li	a0,16
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	45c080e7          	jalr	1116(ra) # 80001b88 <_Znwm>
    80003734:	00050913          	mv	s2,a0
    80003738:	00000593          	li	a1,0
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	6d4080e7          	jalr	1748(ra) # 80001e10 <_ZN9SemaphoreC1Ej>
    80003744:	00007797          	auipc	a5,0x7
    80003748:	0327b223          	sd	s2,36(a5) # 8000a768 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000374c:	00399793          	slli	a5,s3,0x3
    80003750:	00f78793          	addi	a5,a5,15
    80003754:	ff07f793          	andi	a5,a5,-16
    80003758:	40f10133          	sub	sp,sp,a5
    8000375c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003760:	0019871b          	addiw	a4,s3,1
    80003764:	00171793          	slli	a5,a4,0x1
    80003768:	00e787b3          	add	a5,a5,a4
    8000376c:	00379793          	slli	a5,a5,0x3
    80003770:	00f78793          	addi	a5,a5,15
    80003774:	ff07f793          	andi	a5,a5,-16
    80003778:	40f10133          	sub	sp,sp,a5
    8000377c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003780:	00199493          	slli	s1,s3,0x1
    80003784:	013484b3          	add	s1,s1,s3
    80003788:	00349493          	slli	s1,s1,0x3
    8000378c:	009b04b3          	add	s1,s6,s1
    80003790:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003794:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003798:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000379c:	02800513          	li	a0,40
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	3e8080e7          	jalr	1000(ra) # 80001b88 <_Znwm>
    800037a8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	630080e7          	jalr	1584(ra) # 80001ddc <_ZN6ThreadC1Ev>
    800037b4:	00007797          	auipc	a5,0x7
    800037b8:	e3c78793          	addi	a5,a5,-452 # 8000a5f0 <_ZTV8Consumer+0x10>
    800037bc:	00fbb023          	sd	a5,0(s7)
    800037c0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800037c4:	000b8513          	mv	a0,s7
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	5b4080e7          	jalr	1460(ra) # 80001d7c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800037d0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800037d4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800037d8:	00007797          	auipc	a5,0x7
    800037dc:	f907b783          	ld	a5,-112(a5) # 8000a768 <_ZL10waitForAll>
    800037e0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800037e4:	02800513          	li	a0,40
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	3a0080e7          	jalr	928(ra) # 80001b88 <_Znwm>
    800037f0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	5e8080e7          	jalr	1512(ra) # 80001ddc <_ZN6ThreadC1Ev>
    800037fc:	00007797          	auipc	a5,0x7
    80003800:	da478793          	addi	a5,a5,-604 # 8000a5a0 <_ZTV16ProducerKeyborad+0x10>
    80003804:	00f4b023          	sd	a5,0(s1)
    80003808:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000380c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003810:	00048513          	mv	a0,s1
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	568080e7          	jalr	1384(ra) # 80001d7c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000381c:	00100913          	li	s2,1
    80003820:	0300006f          	j	80003850 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003824:	00007797          	auipc	a5,0x7
    80003828:	da478793          	addi	a5,a5,-604 # 8000a5c8 <_ZTV8Producer+0x10>
    8000382c:	00fcb023          	sd	a5,0(s9)
    80003830:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003834:	00391793          	slli	a5,s2,0x3
    80003838:	00fa07b3          	add	a5,s4,a5
    8000383c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003840:	000c8513          	mv	a0,s9
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	538080e7          	jalr	1336(ra) # 80001d7c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000384c:	0019091b          	addiw	s2,s2,1
    80003850:	05395263          	bge	s2,s3,80003894 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003854:	00191493          	slli	s1,s2,0x1
    80003858:	012484b3          	add	s1,s1,s2
    8000385c:	00349493          	slli	s1,s1,0x3
    80003860:	009b04b3          	add	s1,s6,s1
    80003864:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003868:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000386c:	00007797          	auipc	a5,0x7
    80003870:	efc7b783          	ld	a5,-260(a5) # 8000a768 <_ZL10waitForAll>
    80003874:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003878:	02800513          	li	a0,40
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	30c080e7          	jalr	780(ra) # 80001b88 <_Znwm>
    80003884:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	554080e7          	jalr	1364(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80003890:	f95ff06f          	j	80003824 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	520080e7          	jalr	1312(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000389c:	00000493          	li	s1,0
    800038a0:	0099ce63          	blt	s3,s1,800038bc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800038a4:	00007517          	auipc	a0,0x7
    800038a8:	ec453503          	ld	a0,-316(a0) # 8000a768 <_ZL10waitForAll>
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	59c080e7          	jalr	1436(ra) # 80001e48 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800038b4:	0014849b          	addiw	s1,s1,1
    800038b8:	fe9ff06f          	j	800038a0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800038bc:	00007517          	auipc	a0,0x7
    800038c0:	eac53503          	ld	a0,-340(a0) # 8000a768 <_ZL10waitForAll>
    800038c4:	00050863          	beqz	a0,800038d4 <_Z20testConsumerProducerv+0x2f4>
    800038c8:	00053783          	ld	a5,0(a0)
    800038cc:	0087b783          	ld	a5,8(a5)
    800038d0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800038d4:	00000493          	li	s1,0
    800038d8:	0080006f          	j	800038e0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800038dc:	0014849b          	addiw	s1,s1,1
    800038e0:	0334d263          	bge	s1,s3,80003904 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800038e4:	00349793          	slli	a5,s1,0x3
    800038e8:	00fa07b3          	add	a5,s4,a5
    800038ec:	0007b503          	ld	a0,0(a5)
    800038f0:	fe0506e3          	beqz	a0,800038dc <_Z20testConsumerProducerv+0x2fc>
    800038f4:	00053783          	ld	a5,0(a0)
    800038f8:	0087b783          	ld	a5,8(a5)
    800038fc:	000780e7          	jalr	a5
    80003900:	fddff06f          	j	800038dc <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003904:	000b8a63          	beqz	s7,80003918 <_Z20testConsumerProducerv+0x338>
    80003908:	000bb783          	ld	a5,0(s7)
    8000390c:	0087b783          	ld	a5,8(a5)
    80003910:	000b8513          	mv	a0,s7
    80003914:	000780e7          	jalr	a5
    delete buffer;
    80003918:	000a8e63          	beqz	s5,80003934 <_Z20testConsumerProducerv+0x354>
    8000391c:	000a8513          	mv	a0,s5
    80003920:	00002097          	auipc	ra,0x2
    80003924:	870080e7          	jalr	-1936(ra) # 80005190 <_ZN9BufferCPPD1Ev>
    80003928:	000a8513          	mv	a0,s5
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	2ac080e7          	jalr	684(ra) # 80001bd8 <_ZdlPv>
    80003934:	000c0113          	mv	sp,s8
}
    80003938:	f8040113          	addi	sp,s0,-128
    8000393c:	07813083          	ld	ra,120(sp)
    80003940:	07013403          	ld	s0,112(sp)
    80003944:	06813483          	ld	s1,104(sp)
    80003948:	06013903          	ld	s2,96(sp)
    8000394c:	05813983          	ld	s3,88(sp)
    80003950:	05013a03          	ld	s4,80(sp)
    80003954:	04813a83          	ld	s5,72(sp)
    80003958:	04013b03          	ld	s6,64(sp)
    8000395c:	03813b83          	ld	s7,56(sp)
    80003960:	03013c03          	ld	s8,48(sp)
    80003964:	02813c83          	ld	s9,40(sp)
    80003968:	08010113          	addi	sp,sp,128
    8000396c:	00008067          	ret
    80003970:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003974:	000a8513          	mv	a0,s5
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	260080e7          	jalr	608(ra) # 80001bd8 <_ZdlPv>
    80003980:	00048513          	mv	a0,s1
    80003984:	00008097          	auipc	ra,0x8
    80003988:	ee4080e7          	jalr	-284(ra) # 8000b868 <_Unwind_Resume>
    8000398c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003990:	00090513          	mv	a0,s2
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	244080e7          	jalr	580(ra) # 80001bd8 <_ZdlPv>
    8000399c:	00048513          	mv	a0,s1
    800039a0:	00008097          	auipc	ra,0x8
    800039a4:	ec8080e7          	jalr	-312(ra) # 8000b868 <_Unwind_Resume>
    800039a8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800039ac:	000b8513          	mv	a0,s7
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	228080e7          	jalr	552(ra) # 80001bd8 <_ZdlPv>
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00008097          	auipc	ra,0x8
    800039c0:	eac080e7          	jalr	-340(ra) # 8000b868 <_Unwind_Resume>
    800039c4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039c8:	00048513          	mv	a0,s1
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	20c080e7          	jalr	524(ra) # 80001bd8 <_ZdlPv>
    800039d4:	00090513          	mv	a0,s2
    800039d8:	00008097          	auipc	ra,0x8
    800039dc:	e90080e7          	jalr	-368(ra) # 8000b868 <_Unwind_Resume>
    800039e0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800039e4:	000c8513          	mv	a0,s9
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	1f0080e7          	jalr	496(ra) # 80001bd8 <_ZdlPv>
    800039f0:	00048513          	mv	a0,s1
    800039f4:	00008097          	auipc	ra,0x8
    800039f8:	e74080e7          	jalr	-396(ra) # 8000b868 <_Unwind_Resume>

00000000800039fc <_ZN8Consumer3runEv>:
    void run() override {
    800039fc:	fd010113          	addi	sp,sp,-48
    80003a00:	02113423          	sd	ra,40(sp)
    80003a04:	02813023          	sd	s0,32(sp)
    80003a08:	00913c23          	sd	s1,24(sp)
    80003a0c:	01213823          	sd	s2,16(sp)
    80003a10:	01313423          	sd	s3,8(sp)
    80003a14:	03010413          	addi	s0,sp,48
    80003a18:	00050913          	mv	s2,a0
        int i = 0;
    80003a1c:	00000993          	li	s3,0
    80003a20:	0100006f          	j	80003a30 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003a24:	00a00513          	li	a0,10
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	558080e7          	jalr	1368(ra) # 80001f80 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003a30:	00007797          	auipc	a5,0x7
    80003a34:	d307a783          	lw	a5,-720(a5) # 8000a760 <_ZL9threadEnd>
    80003a38:	04079a63          	bnez	a5,80003a8c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003a3c:	02093783          	ld	a5,32(s2)
    80003a40:	0087b503          	ld	a0,8(a5)
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	638080e7          	jalr	1592(ra) # 8000507c <_ZN9BufferCPP3getEv>
            i++;
    80003a4c:	0019849b          	addiw	s1,s3,1
    80003a50:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003a54:	0ff57513          	andi	a0,a0,255
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	528080e7          	jalr	1320(ra) # 80001f80 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003a60:	05000793          	li	a5,80
    80003a64:	02f4e4bb          	remw	s1,s1,a5
    80003a68:	fc0494e3          	bnez	s1,80003a30 <_ZN8Consumer3runEv+0x34>
    80003a6c:	fb9ff06f          	j	80003a24 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003a70:	02093783          	ld	a5,32(s2)
    80003a74:	0087b503          	ld	a0,8(a5)
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	604080e7          	jalr	1540(ra) # 8000507c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003a80:	0ff57513          	andi	a0,a0,255
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	4fc080e7          	jalr	1276(ra) # 80001f80 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003a8c:	02093783          	ld	a5,32(s2)
    80003a90:	0087b503          	ld	a0,8(a5)
    80003a94:	00001097          	auipc	ra,0x1
    80003a98:	674080e7          	jalr	1652(ra) # 80005108 <_ZN9BufferCPP6getCntEv>
    80003a9c:	fca04ae3          	bgtz	a0,80003a70 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003aa0:	02093783          	ld	a5,32(s2)
    80003aa4:	0107b503          	ld	a0,16(a5)
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	3cc080e7          	jalr	972(ra) # 80001e74 <_ZN9Semaphore6signalEv>
    }
    80003ab0:	02813083          	ld	ra,40(sp)
    80003ab4:	02013403          	ld	s0,32(sp)
    80003ab8:	01813483          	ld	s1,24(sp)
    80003abc:	01013903          	ld	s2,16(sp)
    80003ac0:	00813983          	ld	s3,8(sp)
    80003ac4:	03010113          	addi	sp,sp,48
    80003ac8:	00008067          	ret

0000000080003acc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003acc:	ff010113          	addi	sp,sp,-16
    80003ad0:	00113423          	sd	ra,8(sp)
    80003ad4:	00813023          	sd	s0,0(sp)
    80003ad8:	01010413          	addi	s0,sp,16
    80003adc:	00007797          	auipc	a5,0x7
    80003ae0:	b1478793          	addi	a5,a5,-1260 # 8000a5f0 <_ZTV8Consumer+0x10>
    80003ae4:	00f53023          	sd	a5,0(a0)
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	16c080e7          	jalr	364(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003af0:	00813083          	ld	ra,8(sp)
    80003af4:	00013403          	ld	s0,0(sp)
    80003af8:	01010113          	addi	sp,sp,16
    80003afc:	00008067          	ret

0000000080003b00 <_ZN8ConsumerD0Ev>:
    80003b00:	fe010113          	addi	sp,sp,-32
    80003b04:	00113c23          	sd	ra,24(sp)
    80003b08:	00813823          	sd	s0,16(sp)
    80003b0c:	00913423          	sd	s1,8(sp)
    80003b10:	02010413          	addi	s0,sp,32
    80003b14:	00050493          	mv	s1,a0
    80003b18:	00007797          	auipc	a5,0x7
    80003b1c:	ad878793          	addi	a5,a5,-1320 # 8000a5f0 <_ZTV8Consumer+0x10>
    80003b20:	00f53023          	sd	a5,0(a0)
    80003b24:	ffffe097          	auipc	ra,0xffffe
    80003b28:	130080e7          	jalr	304(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	0a8080e7          	jalr	168(ra) # 80001bd8 <_ZdlPv>
    80003b38:	01813083          	ld	ra,24(sp)
    80003b3c:	01013403          	ld	s0,16(sp)
    80003b40:	00813483          	ld	s1,8(sp)
    80003b44:	02010113          	addi	sp,sp,32
    80003b48:	00008067          	ret

0000000080003b4c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003b4c:	ff010113          	addi	sp,sp,-16
    80003b50:	00113423          	sd	ra,8(sp)
    80003b54:	00813023          	sd	s0,0(sp)
    80003b58:	01010413          	addi	s0,sp,16
    80003b5c:	00007797          	auipc	a5,0x7
    80003b60:	a4478793          	addi	a5,a5,-1468 # 8000a5a0 <_ZTV16ProducerKeyborad+0x10>
    80003b64:	00f53023          	sd	a5,0(a0)
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	0ec080e7          	jalr	236(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003b70:	00813083          	ld	ra,8(sp)
    80003b74:	00013403          	ld	s0,0(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN16ProducerKeyboradD0Ev>:
    80003b80:	fe010113          	addi	sp,sp,-32
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	00813823          	sd	s0,16(sp)
    80003b8c:	00913423          	sd	s1,8(sp)
    80003b90:	02010413          	addi	s0,sp,32
    80003b94:	00050493          	mv	s1,a0
    80003b98:	00007797          	auipc	a5,0x7
    80003b9c:	a0878793          	addi	a5,a5,-1528 # 8000a5a0 <_ZTV16ProducerKeyborad+0x10>
    80003ba0:	00f53023          	sd	a5,0(a0)
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	0b0080e7          	jalr	176(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003bac:	00048513          	mv	a0,s1
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	028080e7          	jalr	40(ra) # 80001bd8 <_ZdlPv>
    80003bb8:	01813083          	ld	ra,24(sp)
    80003bbc:	01013403          	ld	s0,16(sp)
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	02010113          	addi	sp,sp,32
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00113423          	sd	ra,8(sp)
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	01010413          	addi	s0,sp,16
    80003bdc:	00007797          	auipc	a5,0x7
    80003be0:	9ec78793          	addi	a5,a5,-1556 # 8000a5c8 <_ZTV8Producer+0x10>
    80003be4:	00f53023          	sd	a5,0(a0)
    80003be8:	ffffe097          	auipc	ra,0xffffe
    80003bec:	06c080e7          	jalr	108(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003bf0:	00813083          	ld	ra,8(sp)
    80003bf4:	00013403          	ld	s0,0(sp)
    80003bf8:	01010113          	addi	sp,sp,16
    80003bfc:	00008067          	ret

0000000080003c00 <_ZN8ProducerD0Ev>:
    80003c00:	fe010113          	addi	sp,sp,-32
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	00813823          	sd	s0,16(sp)
    80003c0c:	00913423          	sd	s1,8(sp)
    80003c10:	02010413          	addi	s0,sp,32
    80003c14:	00050493          	mv	s1,a0
    80003c18:	00007797          	auipc	a5,0x7
    80003c1c:	9b078793          	addi	a5,a5,-1616 # 8000a5c8 <_ZTV8Producer+0x10>
    80003c20:	00f53023          	sd	a5,0(a0)
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	030080e7          	jalr	48(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	fa8080e7          	jalr	-88(ra) # 80001bd8 <_ZdlPv>
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	02010113          	addi	sp,sp,32
    80003c48:	00008067          	ret

0000000080003c4c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    80003c60:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003c64:	ffffd097          	auipc	ra,0xffffd
    80003c68:	7e8080e7          	jalr	2024(ra) # 8000144c <_Z4getcv>
    80003c6c:	0005059b          	sext.w	a1,a0
    80003c70:	01b00793          	li	a5,27
    80003c74:	00f58c63          	beq	a1,a5,80003c8c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003c78:	0204b783          	ld	a5,32(s1)
    80003c7c:	0087b503          	ld	a0,8(a5)
    80003c80:	00001097          	auipc	ra,0x1
    80003c84:	36c080e7          	jalr	876(ra) # 80004fec <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003c88:	fddff06f          	j	80003c64 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003c8c:	00100793          	li	a5,1
    80003c90:	00007717          	auipc	a4,0x7
    80003c94:	acf72823          	sw	a5,-1328(a4) # 8000a760 <_ZL9threadEnd>
        td->buffer->put('!');
    80003c98:	0204b783          	ld	a5,32(s1)
    80003c9c:	02100593          	li	a1,33
    80003ca0:	0087b503          	ld	a0,8(a5)
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	348080e7          	jalr	840(ra) # 80004fec <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003cac:	0204b783          	ld	a5,32(s1)
    80003cb0:	0107b503          	ld	a0,16(a5)
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	1c0080e7          	jalr	448(ra) # 80001e74 <_ZN9Semaphore6signalEv>
    }
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	00813483          	ld	s1,8(sp)
    80003cc8:	02010113          	addi	sp,sp,32
    80003ccc:	00008067          	ret

0000000080003cd0 <_ZN8Producer3runEv>:
    void run() override {
    80003cd0:	fe010113          	addi	sp,sp,-32
    80003cd4:	00113c23          	sd	ra,24(sp)
    80003cd8:	00813823          	sd	s0,16(sp)
    80003cdc:	00913423          	sd	s1,8(sp)
    80003ce0:	01213023          	sd	s2,0(sp)
    80003ce4:	02010413          	addi	s0,sp,32
    80003ce8:	00050493          	mv	s1,a0
        int i = 0;
    80003cec:	00000913          	li	s2,0
        while (!threadEnd) {
    80003cf0:	00007797          	auipc	a5,0x7
    80003cf4:	a707a783          	lw	a5,-1424(a5) # 8000a760 <_ZL9threadEnd>
    80003cf8:	04079263          	bnez	a5,80003d3c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003cfc:	0204b783          	ld	a5,32(s1)
    80003d00:	0007a583          	lw	a1,0(a5)
    80003d04:	0305859b          	addiw	a1,a1,48
    80003d08:	0087b503          	ld	a0,8(a5)
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	2e0080e7          	jalr	736(ra) # 80004fec <_ZN9BufferCPP3putEi>
            i++;
    80003d14:	0019071b          	addiw	a4,s2,1
    80003d18:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003d1c:	0204b783          	ld	a5,32(s1)
    80003d20:	0007a783          	lw	a5,0(a5)
    80003d24:	00e787bb          	addw	a5,a5,a4
    80003d28:	00500513          	li	a0,5
    80003d2c:	02a7e53b          	remw	a0,a5,a0
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	19c080e7          	jalr	412(ra) # 80001ecc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003d38:	fb9ff06f          	j	80003cf0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003d3c:	0204b783          	ld	a5,32(s1)
    80003d40:	0107b503          	ld	a0,16(a5)
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	130080e7          	jalr	304(ra) # 80001e74 <_ZN9Semaphore6signalEv>
    }
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	00813483          	ld	s1,8(sp)
    80003d58:	00013903          	ld	s2,0(sp)
    80003d5c:	02010113          	addi	sp,sp,32
    80003d60:	00008067          	ret

0000000080003d64 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d64:	fe010113          	addi	sp,sp,-32
    80003d68:	00113c23          	sd	ra,24(sp)
    80003d6c:	00813823          	sd	s0,16(sp)
    80003d70:	00913423          	sd	s1,8(sp)
    80003d74:	01213023          	sd	s2,0(sp)
    80003d78:	02010413          	addi	s0,sp,32
    80003d7c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d80:	00100793          	li	a5,1
    80003d84:	02a7f863          	bgeu	a5,a0,80003db4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d88:	00a00793          	li	a5,10
    80003d8c:	02f577b3          	remu	a5,a0,a5
    80003d90:	02078e63          	beqz	a5,80003dcc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d94:	fff48513          	addi	a0,s1,-1
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	fcc080e7          	jalr	-52(ra) # 80003d64 <_ZL9fibonaccim>
    80003da0:	00050913          	mv	s2,a0
    80003da4:	ffe48513          	addi	a0,s1,-2
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	fbc080e7          	jalr	-68(ra) # 80003d64 <_ZL9fibonaccim>
    80003db0:	00a90533          	add	a0,s2,a0
}
    80003db4:	01813083          	ld	ra,24(sp)
    80003db8:	01013403          	ld	s0,16(sp)
    80003dbc:	00813483          	ld	s1,8(sp)
    80003dc0:	00013903          	ld	s2,0(sp)
    80003dc4:	02010113          	addi	sp,sp,32
    80003dc8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003dcc:	ffffd097          	auipc	ra,0xffffd
    80003dd0:	4dc080e7          	jalr	1244(ra) # 800012a8 <_Z15thread_dispatchv>
    80003dd4:	fc1ff06f          	j	80003d94 <_ZL9fibonaccim+0x30>

0000000080003dd8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003dd8:	fe010113          	addi	sp,sp,-32
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00913423          	sd	s1,8(sp)
    80003de8:	01213023          	sd	s2,0(sp)
    80003dec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003df0:	00a00493          	li	s1,10
    80003df4:	0400006f          	j	80003e34 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003df8:	00004517          	auipc	a0,0x4
    80003dfc:	48850513          	addi	a0,a0,1160 # 80008280 <CONSOLE_STATUS+0x270>
    80003e00:	00001097          	auipc	ra,0x1
    80003e04:	dc8080e7          	jalr	-568(ra) # 80004bc8 <_Z11printStringPKc>
    80003e08:	00000613          	li	a2,0
    80003e0c:	00a00593          	li	a1,10
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	f64080e7          	jalr	-156(ra) # 80004d78 <_Z8printIntiii>
    80003e1c:	00004517          	auipc	a0,0x4
    80003e20:	68450513          	addi	a0,a0,1668 # 800084a0 <CONSOLE_STATUS+0x490>
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	da4080e7          	jalr	-604(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e2c:	0014849b          	addiw	s1,s1,1
    80003e30:	0ff4f493          	andi	s1,s1,255
    80003e34:	00c00793          	li	a5,12
    80003e38:	fc97f0e3          	bgeu	a5,s1,80003df8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003e3c:	00004517          	auipc	a0,0x4
    80003e40:	44c50513          	addi	a0,a0,1100 # 80008288 <CONSOLE_STATUS+0x278>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	d84080e7          	jalr	-636(ra) # 80004bc8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e4c:	00500313          	li	t1,5
    thread_dispatch();
    80003e50:	ffffd097          	auipc	ra,0xffffd
    80003e54:	458080e7          	jalr	1112(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e58:	01000513          	li	a0,16
    80003e5c:	00000097          	auipc	ra,0x0
    80003e60:	f08080e7          	jalr	-248(ra) # 80003d64 <_ZL9fibonaccim>
    80003e64:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e68:	00004517          	auipc	a0,0x4
    80003e6c:	43050513          	addi	a0,a0,1072 # 80008298 <CONSOLE_STATUS+0x288>
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	d58080e7          	jalr	-680(ra) # 80004bc8 <_Z11printStringPKc>
    80003e78:	00000613          	li	a2,0
    80003e7c:	00a00593          	li	a1,10
    80003e80:	0009051b          	sext.w	a0,s2
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	ef4080e7          	jalr	-268(ra) # 80004d78 <_Z8printIntiii>
    80003e8c:	00004517          	auipc	a0,0x4
    80003e90:	61450513          	addi	a0,a0,1556 # 800084a0 <CONSOLE_STATUS+0x490>
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	d34080e7          	jalr	-716(ra) # 80004bc8 <_Z11printStringPKc>
    80003e9c:	0400006f          	j	80003edc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ea0:	00004517          	auipc	a0,0x4
    80003ea4:	3e050513          	addi	a0,a0,992 # 80008280 <CONSOLE_STATUS+0x270>
    80003ea8:	00001097          	auipc	ra,0x1
    80003eac:	d20080e7          	jalr	-736(ra) # 80004bc8 <_Z11printStringPKc>
    80003eb0:	00000613          	li	a2,0
    80003eb4:	00a00593          	li	a1,10
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	ebc080e7          	jalr	-324(ra) # 80004d78 <_Z8printIntiii>
    80003ec4:	00004517          	auipc	a0,0x4
    80003ec8:	5dc50513          	addi	a0,a0,1500 # 800084a0 <CONSOLE_STATUS+0x490>
    80003ecc:	00001097          	auipc	ra,0x1
    80003ed0:	cfc080e7          	jalr	-772(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ed4:	0014849b          	addiw	s1,s1,1
    80003ed8:	0ff4f493          	andi	s1,s1,255
    80003edc:	00f00793          	li	a5,15
    80003ee0:	fc97f0e3          	bgeu	a5,s1,80003ea0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003ee4:	00004517          	auipc	a0,0x4
    80003ee8:	3c450513          	addi	a0,a0,964 # 800082a8 <CONSOLE_STATUS+0x298>
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	cdc080e7          	jalr	-804(ra) # 80004bc8 <_Z11printStringPKc>
    finishedD = true;
    80003ef4:	00100793          	li	a5,1
    80003ef8:	00007717          	auipc	a4,0x7
    80003efc:	86f70c23          	sb	a5,-1928(a4) # 8000a770 <_ZL9finishedD>
    thread_dispatch();
    80003f00:	ffffd097          	auipc	ra,0xffffd
    80003f04:	3a8080e7          	jalr	936(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003f08:	01813083          	ld	ra,24(sp)
    80003f0c:	01013403          	ld	s0,16(sp)
    80003f10:	00813483          	ld	s1,8(sp)
    80003f14:	00013903          	ld	s2,0(sp)
    80003f18:	02010113          	addi	sp,sp,32
    80003f1c:	00008067          	ret

0000000080003f20 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003f20:	fe010113          	addi	sp,sp,-32
    80003f24:	00113c23          	sd	ra,24(sp)
    80003f28:	00813823          	sd	s0,16(sp)
    80003f2c:	00913423          	sd	s1,8(sp)
    80003f30:	01213023          	sd	s2,0(sp)
    80003f34:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f38:	00000493          	li	s1,0
    80003f3c:	0400006f          	j	80003f7c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003f40:	00004517          	auipc	a0,0x4
    80003f44:	31050513          	addi	a0,a0,784 # 80008250 <CONSOLE_STATUS+0x240>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	c80080e7          	jalr	-896(ra) # 80004bc8 <_Z11printStringPKc>
    80003f50:	00000613          	li	a2,0
    80003f54:	00a00593          	li	a1,10
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	00001097          	auipc	ra,0x1
    80003f60:	e1c080e7          	jalr	-484(ra) # 80004d78 <_Z8printIntiii>
    80003f64:	00004517          	auipc	a0,0x4
    80003f68:	53c50513          	addi	a0,a0,1340 # 800084a0 <CONSOLE_STATUS+0x490>
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	c5c080e7          	jalr	-932(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f74:	0014849b          	addiw	s1,s1,1
    80003f78:	0ff4f493          	andi	s1,s1,255
    80003f7c:	00200793          	li	a5,2
    80003f80:	fc97f0e3          	bgeu	a5,s1,80003f40 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003f84:	00004517          	auipc	a0,0x4
    80003f88:	2d450513          	addi	a0,a0,724 # 80008258 <CONSOLE_STATUS+0x248>
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	c3c080e7          	jalr	-964(ra) # 80004bc8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f94:	00700313          	li	t1,7
    thread_dispatch();
    80003f98:	ffffd097          	auipc	ra,0xffffd
    80003f9c:	310080e7          	jalr	784(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003fa0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003fa4:	00004517          	auipc	a0,0x4
    80003fa8:	2c450513          	addi	a0,a0,708 # 80008268 <CONSOLE_STATUS+0x258>
    80003fac:	00001097          	auipc	ra,0x1
    80003fb0:	c1c080e7          	jalr	-996(ra) # 80004bc8 <_Z11printStringPKc>
    80003fb4:	00000613          	li	a2,0
    80003fb8:	00a00593          	li	a1,10
    80003fbc:	0009051b          	sext.w	a0,s2
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	db8080e7          	jalr	-584(ra) # 80004d78 <_Z8printIntiii>
    80003fc8:	00004517          	auipc	a0,0x4
    80003fcc:	4d850513          	addi	a0,a0,1240 # 800084a0 <CONSOLE_STATUS+0x490>
    80003fd0:	00001097          	auipc	ra,0x1
    80003fd4:	bf8080e7          	jalr	-1032(ra) # 80004bc8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003fd8:	00c00513          	li	a0,12
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	d88080e7          	jalr	-632(ra) # 80003d64 <_ZL9fibonaccim>
    80003fe4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003fe8:	00004517          	auipc	a0,0x4
    80003fec:	28850513          	addi	a0,a0,648 # 80008270 <CONSOLE_STATUS+0x260>
    80003ff0:	00001097          	auipc	ra,0x1
    80003ff4:	bd8080e7          	jalr	-1064(ra) # 80004bc8 <_Z11printStringPKc>
    80003ff8:	00000613          	li	a2,0
    80003ffc:	00a00593          	li	a1,10
    80004000:	0009051b          	sext.w	a0,s2
    80004004:	00001097          	auipc	ra,0x1
    80004008:	d74080e7          	jalr	-652(ra) # 80004d78 <_Z8printIntiii>
    8000400c:	00004517          	auipc	a0,0x4
    80004010:	49450513          	addi	a0,a0,1172 # 800084a0 <CONSOLE_STATUS+0x490>
    80004014:	00001097          	auipc	ra,0x1
    80004018:	bb4080e7          	jalr	-1100(ra) # 80004bc8 <_Z11printStringPKc>
    8000401c:	0400006f          	j	8000405c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004020:	00004517          	auipc	a0,0x4
    80004024:	23050513          	addi	a0,a0,560 # 80008250 <CONSOLE_STATUS+0x240>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	ba0080e7          	jalr	-1120(ra) # 80004bc8 <_Z11printStringPKc>
    80004030:	00000613          	li	a2,0
    80004034:	00a00593          	li	a1,10
    80004038:	00048513          	mv	a0,s1
    8000403c:	00001097          	auipc	ra,0x1
    80004040:	d3c080e7          	jalr	-708(ra) # 80004d78 <_Z8printIntiii>
    80004044:	00004517          	auipc	a0,0x4
    80004048:	45c50513          	addi	a0,a0,1116 # 800084a0 <CONSOLE_STATUS+0x490>
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	b7c080e7          	jalr	-1156(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004054:	0014849b          	addiw	s1,s1,1
    80004058:	0ff4f493          	andi	s1,s1,255
    8000405c:	00500793          	li	a5,5
    80004060:	fc97f0e3          	bgeu	a5,s1,80004020 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004064:	00004517          	auipc	a0,0x4
    80004068:	1c450513          	addi	a0,a0,452 # 80008228 <CONSOLE_STATUS+0x218>
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	b5c080e7          	jalr	-1188(ra) # 80004bc8 <_Z11printStringPKc>
    finishedC = true;
    80004074:	00100793          	li	a5,1
    80004078:	00006717          	auipc	a4,0x6
    8000407c:	6ef70ca3          	sb	a5,1785(a4) # 8000a771 <_ZL9finishedC>
    thread_dispatch();
    80004080:	ffffd097          	auipc	ra,0xffffd
    80004084:	228080e7          	jalr	552(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80004088:	01813083          	ld	ra,24(sp)
    8000408c:	01013403          	ld	s0,16(sp)
    80004090:	00813483          	ld	s1,8(sp)
    80004094:	00013903          	ld	s2,0(sp)
    80004098:	02010113          	addi	sp,sp,32
    8000409c:	00008067          	ret

00000000800040a0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800040a0:	fe010113          	addi	sp,sp,-32
    800040a4:	00113c23          	sd	ra,24(sp)
    800040a8:	00813823          	sd	s0,16(sp)
    800040ac:	00913423          	sd	s1,8(sp)
    800040b0:	01213023          	sd	s2,0(sp)
    800040b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800040b8:	00000913          	li	s2,0
    800040bc:	0380006f          	j	800040f4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800040c0:	ffffd097          	auipc	ra,0xffffd
    800040c4:	1e8080e7          	jalr	488(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800040c8:	00148493          	addi	s1,s1,1
    800040cc:	000027b7          	lui	a5,0x2
    800040d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040d4:	0097ee63          	bltu	a5,s1,800040f0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040d8:	00000713          	li	a4,0
    800040dc:	000077b7          	lui	a5,0x7
    800040e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040e4:	fce7eee3          	bltu	a5,a4,800040c0 <_ZL11workerBodyBPv+0x20>
    800040e8:	00170713          	addi	a4,a4,1
    800040ec:	ff1ff06f          	j	800040dc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800040f0:	00190913          	addi	s2,s2,1
    800040f4:	00f00793          	li	a5,15
    800040f8:	0527e063          	bltu	a5,s2,80004138 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800040fc:	00004517          	auipc	a0,0x4
    80004100:	13c50513          	addi	a0,a0,316 # 80008238 <CONSOLE_STATUS+0x228>
    80004104:	00001097          	auipc	ra,0x1
    80004108:	ac4080e7          	jalr	-1340(ra) # 80004bc8 <_Z11printStringPKc>
    8000410c:	00000613          	li	a2,0
    80004110:	00a00593          	li	a1,10
    80004114:	0009051b          	sext.w	a0,s2
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	c60080e7          	jalr	-928(ra) # 80004d78 <_Z8printIntiii>
    80004120:	00004517          	auipc	a0,0x4
    80004124:	38050513          	addi	a0,a0,896 # 800084a0 <CONSOLE_STATUS+0x490>
    80004128:	00001097          	auipc	ra,0x1
    8000412c:	aa0080e7          	jalr	-1376(ra) # 80004bc8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004130:	00000493          	li	s1,0
    80004134:	f99ff06f          	j	800040cc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004138:	00004517          	auipc	a0,0x4
    8000413c:	10850513          	addi	a0,a0,264 # 80008240 <CONSOLE_STATUS+0x230>
    80004140:	00001097          	auipc	ra,0x1
    80004144:	a88080e7          	jalr	-1400(ra) # 80004bc8 <_Z11printStringPKc>
    finishedB = true;
    80004148:	00100793          	li	a5,1
    8000414c:	00006717          	auipc	a4,0x6
    80004150:	62f70323          	sb	a5,1574(a4) # 8000a772 <_ZL9finishedB>
    thread_dispatch();
    80004154:	ffffd097          	auipc	ra,0xffffd
    80004158:	154080e7          	jalr	340(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	00013903          	ld	s2,0(sp)
    8000416c:	02010113          	addi	sp,sp,32
    80004170:	00008067          	ret

0000000080004174 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004174:	fe010113          	addi	sp,sp,-32
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	00813823          	sd	s0,16(sp)
    80004180:	00913423          	sd	s1,8(sp)
    80004184:	01213023          	sd	s2,0(sp)
    80004188:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000418c:	00000913          	li	s2,0
    80004190:	0380006f          	j	800041c8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	114080e7          	jalr	276(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000419c:	00148493          	addi	s1,s1,1
    800041a0:	000027b7          	lui	a5,0x2
    800041a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800041a8:	0097ee63          	bltu	a5,s1,800041c4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800041ac:	00000713          	li	a4,0
    800041b0:	000077b7          	lui	a5,0x7
    800041b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800041b8:	fce7eee3          	bltu	a5,a4,80004194 <_ZL11workerBodyAPv+0x20>
    800041bc:	00170713          	addi	a4,a4,1
    800041c0:	ff1ff06f          	j	800041b0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800041c4:	00190913          	addi	s2,s2,1
    800041c8:	00900793          	li	a5,9
    800041cc:	0527e063          	bltu	a5,s2,8000420c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800041d0:	00004517          	auipc	a0,0x4
    800041d4:	05050513          	addi	a0,a0,80 # 80008220 <CONSOLE_STATUS+0x210>
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	9f0080e7          	jalr	-1552(ra) # 80004bc8 <_Z11printStringPKc>
    800041e0:	00000613          	li	a2,0
    800041e4:	00a00593          	li	a1,10
    800041e8:	0009051b          	sext.w	a0,s2
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	b8c080e7          	jalr	-1140(ra) # 80004d78 <_Z8printIntiii>
    800041f4:	00004517          	auipc	a0,0x4
    800041f8:	2ac50513          	addi	a0,a0,684 # 800084a0 <CONSOLE_STATUS+0x490>
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	9cc080e7          	jalr	-1588(ra) # 80004bc8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004204:	00000493          	li	s1,0
    80004208:	f99ff06f          	j	800041a0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000420c:	00004517          	auipc	a0,0x4
    80004210:	01c50513          	addi	a0,a0,28 # 80008228 <CONSOLE_STATUS+0x218>
    80004214:	00001097          	auipc	ra,0x1
    80004218:	9b4080e7          	jalr	-1612(ra) # 80004bc8 <_Z11printStringPKc>
    finishedA = true;
    8000421c:	00100793          	li	a5,1
    80004220:	00006717          	auipc	a4,0x6
    80004224:	54f709a3          	sb	a5,1363(a4) # 8000a773 <_ZL9finishedA>
}
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	00013903          	ld	s2,0(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004240:	fd010113          	addi	sp,sp,-48
    80004244:	02113423          	sd	ra,40(sp)
    80004248:	02813023          	sd	s0,32(sp)
    8000424c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004250:	00000613          	li	a2,0
    80004254:	00000597          	auipc	a1,0x0
    80004258:	f2058593          	addi	a1,a1,-224 # 80004174 <_ZL11workerBodyAPv>
    8000425c:	fd040513          	addi	a0,s0,-48
    80004260:	ffffd097          	auipc	ra,0xffffd
    80004264:	090080e7          	jalr	144(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004268:	00004517          	auipc	a0,0x4
    8000426c:	05050513          	addi	a0,a0,80 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80004270:	00001097          	auipc	ra,0x1
    80004274:	958080e7          	jalr	-1704(ra) # 80004bc8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004278:	00000613          	li	a2,0
    8000427c:	00000597          	auipc	a1,0x0
    80004280:	e2458593          	addi	a1,a1,-476 # 800040a0 <_ZL11workerBodyBPv>
    80004284:	fd840513          	addi	a0,s0,-40
    80004288:	ffffd097          	auipc	ra,0xffffd
    8000428c:	068080e7          	jalr	104(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004290:	00004517          	auipc	a0,0x4
    80004294:	04050513          	addi	a0,a0,64 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	930080e7          	jalr	-1744(ra) # 80004bc8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800042a0:	00000613          	li	a2,0
    800042a4:	00000597          	auipc	a1,0x0
    800042a8:	c7c58593          	addi	a1,a1,-900 # 80003f20 <_ZL11workerBodyCPv>
    800042ac:	fe040513          	addi	a0,s0,-32
    800042b0:	ffffd097          	auipc	ra,0xffffd
    800042b4:	040080e7          	jalr	64(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800042b8:	00004517          	auipc	a0,0x4
    800042bc:	03050513          	addi	a0,a0,48 # 800082e8 <CONSOLE_STATUS+0x2d8>
    800042c0:	00001097          	auipc	ra,0x1
    800042c4:	908080e7          	jalr	-1784(ra) # 80004bc8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800042c8:	00000613          	li	a2,0
    800042cc:	00000597          	auipc	a1,0x0
    800042d0:	b0c58593          	addi	a1,a1,-1268 # 80003dd8 <_ZL11workerBodyDPv>
    800042d4:	fe840513          	addi	a0,s0,-24
    800042d8:	ffffd097          	auipc	ra,0xffffd
    800042dc:	018080e7          	jalr	24(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800042e0:	00004517          	auipc	a0,0x4
    800042e4:	02050513          	addi	a0,a0,32 # 80008300 <CONSOLE_STATUS+0x2f0>
    800042e8:	00001097          	auipc	ra,0x1
    800042ec:	8e0080e7          	jalr	-1824(ra) # 80004bc8 <_Z11printStringPKc>
    800042f0:	00c0006f          	j	800042fc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800042f4:	ffffd097          	auipc	ra,0xffffd
    800042f8:	fb4080e7          	jalr	-76(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800042fc:	00006797          	auipc	a5,0x6
    80004300:	4777c783          	lbu	a5,1143(a5) # 8000a773 <_ZL9finishedA>
    80004304:	fe0788e3          	beqz	a5,800042f4 <_Z18Threads_C_API_testv+0xb4>
    80004308:	00006797          	auipc	a5,0x6
    8000430c:	46a7c783          	lbu	a5,1130(a5) # 8000a772 <_ZL9finishedB>
    80004310:	fe0782e3          	beqz	a5,800042f4 <_Z18Threads_C_API_testv+0xb4>
    80004314:	00006797          	auipc	a5,0x6
    80004318:	45d7c783          	lbu	a5,1117(a5) # 8000a771 <_ZL9finishedC>
    8000431c:	fc078ce3          	beqz	a5,800042f4 <_Z18Threads_C_API_testv+0xb4>
    80004320:	00006797          	auipc	a5,0x6
    80004324:	4507c783          	lbu	a5,1104(a5) # 8000a770 <_ZL9finishedD>
    80004328:	fc0786e3          	beqz	a5,800042f4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000432c:	02813083          	ld	ra,40(sp)
    80004330:	02013403          	ld	s0,32(sp)
    80004334:	03010113          	addi	sp,sp,48
    80004338:	00008067          	ret

000000008000433c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000433c:	fd010113          	addi	sp,sp,-48
    80004340:	02113423          	sd	ra,40(sp)
    80004344:	02813023          	sd	s0,32(sp)
    80004348:	00913c23          	sd	s1,24(sp)
    8000434c:	01213823          	sd	s2,16(sp)
    80004350:	01313423          	sd	s3,8(sp)
    80004354:	03010413          	addi	s0,sp,48
    80004358:	00050993          	mv	s3,a0
    8000435c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004360:	00000913          	li	s2,0
    80004364:	00c0006f          	j	80004370 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	a4c080e7          	jalr	-1460(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004370:	ffffd097          	auipc	ra,0xffffd
    80004374:	0dc080e7          	jalr	220(ra) # 8000144c <_Z4getcv>
    80004378:	0005059b          	sext.w	a1,a0
    8000437c:	01b00793          	li	a5,27
    80004380:	02f58a63          	beq	a1,a5,800043b4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004384:	0084b503          	ld	a0,8(s1)
    80004388:	00001097          	auipc	ra,0x1
    8000438c:	c64080e7          	jalr	-924(ra) # 80004fec <_ZN9BufferCPP3putEi>
        i++;
    80004390:	0019071b          	addiw	a4,s2,1
    80004394:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004398:	0004a683          	lw	a3,0(s1)
    8000439c:	0026979b          	slliw	a5,a3,0x2
    800043a0:	00d787bb          	addw	a5,a5,a3
    800043a4:	0017979b          	slliw	a5,a5,0x1
    800043a8:	02f767bb          	remw	a5,a4,a5
    800043ac:	fc0792e3          	bnez	a5,80004370 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800043b0:	fb9ff06f          	j	80004368 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800043b4:	00100793          	li	a5,1
    800043b8:	00006717          	auipc	a4,0x6
    800043bc:	3cf72023          	sw	a5,960(a4) # 8000a778 <_ZL9threadEnd>
    td->buffer->put('!');
    800043c0:	0209b783          	ld	a5,32(s3)
    800043c4:	02100593          	li	a1,33
    800043c8:	0087b503          	ld	a0,8(a5)
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	c20080e7          	jalr	-992(ra) # 80004fec <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800043d4:	0104b503          	ld	a0,16(s1)
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	a9c080e7          	jalr	-1380(ra) # 80001e74 <_ZN9Semaphore6signalEv>
}
    800043e0:	02813083          	ld	ra,40(sp)
    800043e4:	02013403          	ld	s0,32(sp)
    800043e8:	01813483          	ld	s1,24(sp)
    800043ec:	01013903          	ld	s2,16(sp)
    800043f0:	00813983          	ld	s3,8(sp)
    800043f4:	03010113          	addi	sp,sp,48
    800043f8:	00008067          	ret

00000000800043fc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800043fc:	fe010113          	addi	sp,sp,-32
    80004400:	00113c23          	sd	ra,24(sp)
    80004404:	00813823          	sd	s0,16(sp)
    80004408:	00913423          	sd	s1,8(sp)
    8000440c:	01213023          	sd	s2,0(sp)
    80004410:	02010413          	addi	s0,sp,32
    80004414:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004418:	00000913          	li	s2,0
    8000441c:	00c0006f          	j	80004428 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	994080e7          	jalr	-1644(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004428:	00006797          	auipc	a5,0x6
    8000442c:	3507a783          	lw	a5,848(a5) # 8000a778 <_ZL9threadEnd>
    80004430:	02079e63          	bnez	a5,8000446c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004434:	0004a583          	lw	a1,0(s1)
    80004438:	0305859b          	addiw	a1,a1,48
    8000443c:	0084b503          	ld	a0,8(s1)
    80004440:	00001097          	auipc	ra,0x1
    80004444:	bac080e7          	jalr	-1108(ra) # 80004fec <_ZN9BufferCPP3putEi>
        i++;
    80004448:	0019071b          	addiw	a4,s2,1
    8000444c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004450:	0004a683          	lw	a3,0(s1)
    80004454:	0026979b          	slliw	a5,a3,0x2
    80004458:	00d787bb          	addw	a5,a5,a3
    8000445c:	0017979b          	slliw	a5,a5,0x1
    80004460:	02f767bb          	remw	a5,a4,a5
    80004464:	fc0792e3          	bnez	a5,80004428 <_ZN12ProducerSync8producerEPv+0x2c>
    80004468:	fb9ff06f          	j	80004420 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000446c:	0104b503          	ld	a0,16(s1)
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	a04080e7          	jalr	-1532(ra) # 80001e74 <_ZN9Semaphore6signalEv>
}
    80004478:	01813083          	ld	ra,24(sp)
    8000447c:	01013403          	ld	s0,16(sp)
    80004480:	00813483          	ld	s1,8(sp)
    80004484:	00013903          	ld	s2,0(sp)
    80004488:	02010113          	addi	sp,sp,32
    8000448c:	00008067          	ret

0000000080004490 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004490:	fd010113          	addi	sp,sp,-48
    80004494:	02113423          	sd	ra,40(sp)
    80004498:	02813023          	sd	s0,32(sp)
    8000449c:	00913c23          	sd	s1,24(sp)
    800044a0:	01213823          	sd	s2,16(sp)
    800044a4:	01313423          	sd	s3,8(sp)
    800044a8:	01413023          	sd	s4,0(sp)
    800044ac:	03010413          	addi	s0,sp,48
    800044b0:	00050993          	mv	s3,a0
    800044b4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800044b8:	00000a13          	li	s4,0
    800044bc:	01c0006f          	j	800044d8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	8f4080e7          	jalr	-1804(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    800044c8:	0500006f          	j	80004518 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800044cc:	00a00513          	li	a0,10
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	fa4080e7          	jalr	-92(ra) # 80001474 <_Z4putcc>
    while (!threadEnd) {
    800044d8:	00006797          	auipc	a5,0x6
    800044dc:	2a07a783          	lw	a5,672(a5) # 8000a778 <_ZL9threadEnd>
    800044e0:	06079263          	bnez	a5,80004544 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800044e4:	00893503          	ld	a0,8(s2)
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	b94080e7          	jalr	-1132(ra) # 8000507c <_ZN9BufferCPP3getEv>
        i++;
    800044f0:	001a049b          	addiw	s1,s4,1
    800044f4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800044f8:	0ff57513          	andi	a0,a0,255
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	f78080e7          	jalr	-136(ra) # 80001474 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004504:	00092703          	lw	a4,0(s2)
    80004508:	0027179b          	slliw	a5,a4,0x2
    8000450c:	00e787bb          	addw	a5,a5,a4
    80004510:	02f4e7bb          	remw	a5,s1,a5
    80004514:	fa0786e3          	beqz	a5,800044c0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004518:	05000793          	li	a5,80
    8000451c:	02f4e4bb          	remw	s1,s1,a5
    80004520:	fa049ce3          	bnez	s1,800044d8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004524:	fa9ff06f          	j	800044cc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004528:	0209b783          	ld	a5,32(s3)
    8000452c:	0087b503          	ld	a0,8(a5)
    80004530:	00001097          	auipc	ra,0x1
    80004534:	b4c080e7          	jalr	-1204(ra) # 8000507c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004538:	0ff57513          	andi	a0,a0,255
    8000453c:	ffffe097          	auipc	ra,0xffffe
    80004540:	a44080e7          	jalr	-1468(ra) # 80001f80 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004544:	0209b783          	ld	a5,32(s3)
    80004548:	0087b503          	ld	a0,8(a5)
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	bbc080e7          	jalr	-1092(ra) # 80005108 <_ZN9BufferCPP6getCntEv>
    80004554:	fca04ae3          	bgtz	a0,80004528 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004558:	01093503          	ld	a0,16(s2)
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	918080e7          	jalr	-1768(ra) # 80001e74 <_ZN9Semaphore6signalEv>
}
    80004564:	02813083          	ld	ra,40(sp)
    80004568:	02013403          	ld	s0,32(sp)
    8000456c:	01813483          	ld	s1,24(sp)
    80004570:	01013903          	ld	s2,16(sp)
    80004574:	00813983          	ld	s3,8(sp)
    80004578:	00013a03          	ld	s4,0(sp)
    8000457c:	03010113          	addi	sp,sp,48
    80004580:	00008067          	ret

0000000080004584 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004584:	f8010113          	addi	sp,sp,-128
    80004588:	06113c23          	sd	ra,120(sp)
    8000458c:	06813823          	sd	s0,112(sp)
    80004590:	06913423          	sd	s1,104(sp)
    80004594:	07213023          	sd	s2,96(sp)
    80004598:	05313c23          	sd	s3,88(sp)
    8000459c:	05413823          	sd	s4,80(sp)
    800045a0:	05513423          	sd	s5,72(sp)
    800045a4:	05613023          	sd	s6,64(sp)
    800045a8:	03713c23          	sd	s7,56(sp)
    800045ac:	03813823          	sd	s8,48(sp)
    800045b0:	03913423          	sd	s9,40(sp)
    800045b4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800045b8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800045bc:	00004517          	auipc	a0,0x4
    800045c0:	b7c50513          	addi	a0,a0,-1156 # 80008138 <CONSOLE_STATUS+0x128>
    800045c4:	00000097          	auipc	ra,0x0
    800045c8:	604080e7          	jalr	1540(ra) # 80004bc8 <_Z11printStringPKc>
    getString(input, 30);
    800045cc:	01e00593          	li	a1,30
    800045d0:	f8040493          	addi	s1,s0,-128
    800045d4:	00048513          	mv	a0,s1
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	678080e7          	jalr	1656(ra) # 80004c50 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800045e0:	00048513          	mv	a0,s1
    800045e4:	00000097          	auipc	ra,0x0
    800045e8:	744080e7          	jalr	1860(ra) # 80004d28 <_Z11stringToIntPKc>
    800045ec:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800045f0:	00004517          	auipc	a0,0x4
    800045f4:	b6850513          	addi	a0,a0,-1176 # 80008158 <CONSOLE_STATUS+0x148>
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	5d0080e7          	jalr	1488(ra) # 80004bc8 <_Z11printStringPKc>
    getString(input, 30);
    80004600:	01e00593          	li	a1,30
    80004604:	00048513          	mv	a0,s1
    80004608:	00000097          	auipc	ra,0x0
    8000460c:	648080e7          	jalr	1608(ra) # 80004c50 <_Z9getStringPci>
    n = stringToInt(input);
    80004610:	00048513          	mv	a0,s1
    80004614:	00000097          	auipc	ra,0x0
    80004618:	714080e7          	jalr	1812(ra) # 80004d28 <_Z11stringToIntPKc>
    8000461c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004620:	00004517          	auipc	a0,0x4
    80004624:	b5850513          	addi	a0,a0,-1192 # 80008178 <CONSOLE_STATUS+0x168>
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	5a0080e7          	jalr	1440(ra) # 80004bc8 <_Z11printStringPKc>
    80004630:	00000613          	li	a2,0
    80004634:	00a00593          	li	a1,10
    80004638:	00090513          	mv	a0,s2
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	73c080e7          	jalr	1852(ra) # 80004d78 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004644:	00004517          	auipc	a0,0x4
    80004648:	b4c50513          	addi	a0,a0,-1204 # 80008190 <CONSOLE_STATUS+0x180>
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	57c080e7          	jalr	1404(ra) # 80004bc8 <_Z11printStringPKc>
    80004654:	00000613          	li	a2,0
    80004658:	00a00593          	li	a1,10
    8000465c:	00048513          	mv	a0,s1
    80004660:	00000097          	auipc	ra,0x0
    80004664:	718080e7          	jalr	1816(ra) # 80004d78 <_Z8printIntiii>
    printString(".\n");
    80004668:	00004517          	auipc	a0,0x4
    8000466c:	b4050513          	addi	a0,a0,-1216 # 800081a8 <CONSOLE_STATUS+0x198>
    80004670:	00000097          	auipc	ra,0x0
    80004674:	558080e7          	jalr	1368(ra) # 80004bc8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004678:	0324c463          	blt	s1,s2,800046a0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000467c:	03205c63          	blez	s2,800046b4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004680:	03800513          	li	a0,56
    80004684:	ffffd097          	auipc	ra,0xffffd
    80004688:	504080e7          	jalr	1284(ra) # 80001b88 <_Znwm>
    8000468c:	00050a93          	mv	s5,a0
    80004690:	00048593          	mv	a1,s1
    80004694:	00001097          	auipc	ra,0x1
    80004698:	804080e7          	jalr	-2044(ra) # 80004e98 <_ZN9BufferCPPC1Ei>
    8000469c:	0300006f          	j	800046cc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800046a0:	00004517          	auipc	a0,0x4
    800046a4:	b1050513          	addi	a0,a0,-1264 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	520080e7          	jalr	1312(ra) # 80004bc8 <_Z11printStringPKc>
        return;
    800046b0:	0140006f          	j	800046c4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800046b4:	00004517          	auipc	a0,0x4
    800046b8:	b3c50513          	addi	a0,a0,-1220 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	50c080e7          	jalr	1292(ra) # 80004bc8 <_Z11printStringPKc>
        return;
    800046c4:	000b8113          	mv	sp,s7
    800046c8:	2380006f          	j	80004900 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800046cc:	01000513          	li	a0,16
    800046d0:	ffffd097          	auipc	ra,0xffffd
    800046d4:	4b8080e7          	jalr	1208(ra) # 80001b88 <_Znwm>
    800046d8:	00050493          	mv	s1,a0
    800046dc:	00000593          	li	a1,0
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	730080e7          	jalr	1840(ra) # 80001e10 <_ZN9SemaphoreC1Ej>
    800046e8:	00006797          	auipc	a5,0x6
    800046ec:	0897bc23          	sd	s1,152(a5) # 8000a780 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800046f0:	00391793          	slli	a5,s2,0x3
    800046f4:	00f78793          	addi	a5,a5,15
    800046f8:	ff07f793          	andi	a5,a5,-16
    800046fc:	40f10133          	sub	sp,sp,a5
    80004700:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004704:	0019071b          	addiw	a4,s2,1
    80004708:	00171793          	slli	a5,a4,0x1
    8000470c:	00e787b3          	add	a5,a5,a4
    80004710:	00379793          	slli	a5,a5,0x3
    80004714:	00f78793          	addi	a5,a5,15
    80004718:	ff07f793          	andi	a5,a5,-16
    8000471c:	40f10133          	sub	sp,sp,a5
    80004720:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004724:	00191c13          	slli	s8,s2,0x1
    80004728:	012c07b3          	add	a5,s8,s2
    8000472c:	00379793          	slli	a5,a5,0x3
    80004730:	00fa07b3          	add	a5,s4,a5
    80004734:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004738:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000473c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004740:	02800513          	li	a0,40
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	444080e7          	jalr	1092(ra) # 80001b88 <_Znwm>
    8000474c:	00050b13          	mv	s6,a0
    80004750:	012c0c33          	add	s8,s8,s2
    80004754:	003c1c13          	slli	s8,s8,0x3
    80004758:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	680080e7          	jalr	1664(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80004764:	00006797          	auipc	a5,0x6
    80004768:	f0478793          	addi	a5,a5,-252 # 8000a668 <_ZTV12ConsumerSync+0x10>
    8000476c:	00fb3023          	sd	a5,0(s6)
    80004770:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004774:	000b0513          	mv	a0,s6
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	604080e7          	jalr	1540(ra) # 80001d7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004780:	00000493          	li	s1,0
    80004784:	0380006f          	j	800047bc <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004788:	00006797          	auipc	a5,0x6
    8000478c:	eb878793          	addi	a5,a5,-328 # 8000a640 <_ZTV12ProducerSync+0x10>
    80004790:	00fcb023          	sd	a5,0(s9)
    80004794:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004798:	00349793          	slli	a5,s1,0x3
    8000479c:	00f987b3          	add	a5,s3,a5
    800047a0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800047a4:	00349793          	slli	a5,s1,0x3
    800047a8:	00f987b3          	add	a5,s3,a5
    800047ac:	0007b503          	ld	a0,0(a5)
    800047b0:	ffffd097          	auipc	ra,0xffffd
    800047b4:	5cc080e7          	jalr	1484(ra) # 80001d7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800047b8:	0014849b          	addiw	s1,s1,1
    800047bc:	0b24d063          	bge	s1,s2,8000485c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800047c0:	00149793          	slli	a5,s1,0x1
    800047c4:	009787b3          	add	a5,a5,s1
    800047c8:	00379793          	slli	a5,a5,0x3
    800047cc:	00fa07b3          	add	a5,s4,a5
    800047d0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800047d4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800047d8:	00006717          	auipc	a4,0x6
    800047dc:	fa873703          	ld	a4,-88(a4) # 8000a780 <_ZL10waitForAll>
    800047e0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800047e4:	02905863          	blez	s1,80004814 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800047e8:	02800513          	li	a0,40
    800047ec:	ffffd097          	auipc	ra,0xffffd
    800047f0:	39c080e7          	jalr	924(ra) # 80001b88 <_Znwm>
    800047f4:	00050c93          	mv	s9,a0
    800047f8:	00149c13          	slli	s8,s1,0x1
    800047fc:	009c0c33          	add	s8,s8,s1
    80004800:	003c1c13          	slli	s8,s8,0x3
    80004804:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	5d4080e7          	jalr	1492(ra) # 80001ddc <_ZN6ThreadC1Ev>
    80004810:	f79ff06f          	j	80004788 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004814:	02800513          	li	a0,40
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	370080e7          	jalr	880(ra) # 80001b88 <_Znwm>
    80004820:	00050c93          	mv	s9,a0
    80004824:	00149c13          	slli	s8,s1,0x1
    80004828:	009c0c33          	add	s8,s8,s1
    8000482c:	003c1c13          	slli	s8,s8,0x3
    80004830:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	5a8080e7          	jalr	1448(ra) # 80001ddc <_ZN6ThreadC1Ev>
    8000483c:	00006797          	auipc	a5,0x6
    80004840:	ddc78793          	addi	a5,a5,-548 # 8000a618 <_ZTV16ProducerKeyboard+0x10>
    80004844:	00fcb023          	sd	a5,0(s9)
    80004848:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000484c:	00349793          	slli	a5,s1,0x3
    80004850:	00f987b3          	add	a5,s3,a5
    80004854:	0197b023          	sd	s9,0(a5)
    80004858:	f4dff06f          	j	800047a4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	558080e7          	jalr	1368(ra) # 80001db4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004864:	00000493          	li	s1,0
    80004868:	00994e63          	blt	s2,s1,80004884 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000486c:	00006517          	auipc	a0,0x6
    80004870:	f1453503          	ld	a0,-236(a0) # 8000a780 <_ZL10waitForAll>
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	5d4080e7          	jalr	1492(ra) # 80001e48 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000487c:	0014849b          	addiw	s1,s1,1
    80004880:	fe9ff06f          	j	80004868 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004884:	00000493          	li	s1,0
    80004888:	0080006f          	j	80004890 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000488c:	0014849b          	addiw	s1,s1,1
    80004890:	0324d263          	bge	s1,s2,800048b4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004894:	00349793          	slli	a5,s1,0x3
    80004898:	00f987b3          	add	a5,s3,a5
    8000489c:	0007b503          	ld	a0,0(a5)
    800048a0:	fe0506e3          	beqz	a0,8000488c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800048a4:	00053783          	ld	a5,0(a0)
    800048a8:	0087b783          	ld	a5,8(a5)
    800048ac:	000780e7          	jalr	a5
    800048b0:	fddff06f          	j	8000488c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800048b4:	000b0a63          	beqz	s6,800048c8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800048b8:	000b3783          	ld	a5,0(s6)
    800048bc:	0087b783          	ld	a5,8(a5)
    800048c0:	000b0513          	mv	a0,s6
    800048c4:	000780e7          	jalr	a5
    delete waitForAll;
    800048c8:	00006517          	auipc	a0,0x6
    800048cc:	eb853503          	ld	a0,-328(a0) # 8000a780 <_ZL10waitForAll>
    800048d0:	00050863          	beqz	a0,800048e0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800048d4:	00053783          	ld	a5,0(a0)
    800048d8:	0087b783          	ld	a5,8(a5)
    800048dc:	000780e7          	jalr	a5
    delete buffer;
    800048e0:	000a8e63          	beqz	s5,800048fc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800048e4:	000a8513          	mv	a0,s5
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	8a8080e7          	jalr	-1880(ra) # 80005190 <_ZN9BufferCPPD1Ev>
    800048f0:	000a8513          	mv	a0,s5
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	2e4080e7          	jalr	740(ra) # 80001bd8 <_ZdlPv>
    800048fc:	000b8113          	mv	sp,s7

}
    80004900:	f8040113          	addi	sp,s0,-128
    80004904:	07813083          	ld	ra,120(sp)
    80004908:	07013403          	ld	s0,112(sp)
    8000490c:	06813483          	ld	s1,104(sp)
    80004910:	06013903          	ld	s2,96(sp)
    80004914:	05813983          	ld	s3,88(sp)
    80004918:	05013a03          	ld	s4,80(sp)
    8000491c:	04813a83          	ld	s5,72(sp)
    80004920:	04013b03          	ld	s6,64(sp)
    80004924:	03813b83          	ld	s7,56(sp)
    80004928:	03013c03          	ld	s8,48(sp)
    8000492c:	02813c83          	ld	s9,40(sp)
    80004930:	08010113          	addi	sp,sp,128
    80004934:	00008067          	ret
    80004938:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000493c:	000a8513          	mv	a0,s5
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	298080e7          	jalr	664(ra) # 80001bd8 <_ZdlPv>
    80004948:	00048513          	mv	a0,s1
    8000494c:	00007097          	auipc	ra,0x7
    80004950:	f1c080e7          	jalr	-228(ra) # 8000b868 <_Unwind_Resume>
    80004954:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004958:	00048513          	mv	a0,s1
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	27c080e7          	jalr	636(ra) # 80001bd8 <_ZdlPv>
    80004964:	00090513          	mv	a0,s2
    80004968:	00007097          	auipc	ra,0x7
    8000496c:	f00080e7          	jalr	-256(ra) # 8000b868 <_Unwind_Resume>
    80004970:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004974:	000b0513          	mv	a0,s6
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	260080e7          	jalr	608(ra) # 80001bd8 <_ZdlPv>
    80004980:	00048513          	mv	a0,s1
    80004984:	00007097          	auipc	ra,0x7
    80004988:	ee4080e7          	jalr	-284(ra) # 8000b868 <_Unwind_Resume>
    8000498c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004990:	000c8513          	mv	a0,s9
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	244080e7          	jalr	580(ra) # 80001bd8 <_ZdlPv>
    8000499c:	00048513          	mv	a0,s1
    800049a0:	00007097          	auipc	ra,0x7
    800049a4:	ec8080e7          	jalr	-312(ra) # 8000b868 <_Unwind_Resume>
    800049a8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800049ac:	000c8513          	mv	a0,s9
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	228080e7          	jalr	552(ra) # 80001bd8 <_ZdlPv>
    800049b8:	00048513          	mv	a0,s1
    800049bc:	00007097          	auipc	ra,0x7
    800049c0:	eac080e7          	jalr	-340(ra) # 8000b868 <_Unwind_Resume>

00000000800049c4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800049c4:	ff010113          	addi	sp,sp,-16
    800049c8:	00113423          	sd	ra,8(sp)
    800049cc:	00813023          	sd	s0,0(sp)
    800049d0:	01010413          	addi	s0,sp,16
    800049d4:	00006797          	auipc	a5,0x6
    800049d8:	c9478793          	addi	a5,a5,-876 # 8000a668 <_ZTV12ConsumerSync+0x10>
    800049dc:	00f53023          	sd	a5,0(a0)
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	274080e7          	jalr	628(ra) # 80001c54 <_ZN6ThreadD1Ev>
    800049e8:	00813083          	ld	ra,8(sp)
    800049ec:	00013403          	ld	s0,0(sp)
    800049f0:	01010113          	addi	sp,sp,16
    800049f4:	00008067          	ret

00000000800049f8 <_ZN12ConsumerSyncD0Ev>:
    800049f8:	fe010113          	addi	sp,sp,-32
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	02010413          	addi	s0,sp,32
    80004a0c:	00050493          	mv	s1,a0
    80004a10:	00006797          	auipc	a5,0x6
    80004a14:	c5878793          	addi	a5,a5,-936 # 8000a668 <_ZTV12ConsumerSync+0x10>
    80004a18:	00f53023          	sd	a5,0(a0)
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	238080e7          	jalr	568(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80004a24:	00048513          	mv	a0,s1
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	1b0080e7          	jalr	432(ra) # 80001bd8 <_ZdlPv>
    80004a30:	01813083          	ld	ra,24(sp)
    80004a34:	01013403          	ld	s0,16(sp)
    80004a38:	00813483          	ld	s1,8(sp)
    80004a3c:	02010113          	addi	sp,sp,32
    80004a40:	00008067          	ret

0000000080004a44 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004a44:	ff010113          	addi	sp,sp,-16
    80004a48:	00113423          	sd	ra,8(sp)
    80004a4c:	00813023          	sd	s0,0(sp)
    80004a50:	01010413          	addi	s0,sp,16
    80004a54:	00006797          	auipc	a5,0x6
    80004a58:	bec78793          	addi	a5,a5,-1044 # 8000a640 <_ZTV12ProducerSync+0x10>
    80004a5c:	00f53023          	sd	a5,0(a0)
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	1f4080e7          	jalr	500(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80004a68:	00813083          	ld	ra,8(sp)
    80004a6c:	00013403          	ld	s0,0(sp)
    80004a70:	01010113          	addi	sp,sp,16
    80004a74:	00008067          	ret

0000000080004a78 <_ZN12ProducerSyncD0Ev>:
    80004a78:	fe010113          	addi	sp,sp,-32
    80004a7c:	00113c23          	sd	ra,24(sp)
    80004a80:	00813823          	sd	s0,16(sp)
    80004a84:	00913423          	sd	s1,8(sp)
    80004a88:	02010413          	addi	s0,sp,32
    80004a8c:	00050493          	mv	s1,a0
    80004a90:	00006797          	auipc	a5,0x6
    80004a94:	bb078793          	addi	a5,a5,-1104 # 8000a640 <_ZTV12ProducerSync+0x10>
    80004a98:	00f53023          	sd	a5,0(a0)
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	1b8080e7          	jalr	440(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	130080e7          	jalr	304(ra) # 80001bd8 <_ZdlPv>
    80004ab0:	01813083          	ld	ra,24(sp)
    80004ab4:	01013403          	ld	s0,16(sp)
    80004ab8:	00813483          	ld	s1,8(sp)
    80004abc:	02010113          	addi	sp,sp,32
    80004ac0:	00008067          	ret

0000000080004ac4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004ac4:	ff010113          	addi	sp,sp,-16
    80004ac8:	00113423          	sd	ra,8(sp)
    80004acc:	00813023          	sd	s0,0(sp)
    80004ad0:	01010413          	addi	s0,sp,16
    80004ad4:	00006797          	auipc	a5,0x6
    80004ad8:	b4478793          	addi	a5,a5,-1212 # 8000a618 <_ZTV16ProducerKeyboard+0x10>
    80004adc:	00f53023          	sd	a5,0(a0)
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	174080e7          	jalr	372(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80004ae8:	00813083          	ld	ra,8(sp)
    80004aec:	00013403          	ld	s0,0(sp)
    80004af0:	01010113          	addi	sp,sp,16
    80004af4:	00008067          	ret

0000000080004af8 <_ZN16ProducerKeyboardD0Ev>:
    80004af8:	fe010113          	addi	sp,sp,-32
    80004afc:	00113c23          	sd	ra,24(sp)
    80004b00:	00813823          	sd	s0,16(sp)
    80004b04:	00913423          	sd	s1,8(sp)
    80004b08:	02010413          	addi	s0,sp,32
    80004b0c:	00050493          	mv	s1,a0
    80004b10:	00006797          	auipc	a5,0x6
    80004b14:	b0878793          	addi	a5,a5,-1272 # 8000a618 <_ZTV16ProducerKeyboard+0x10>
    80004b18:	00f53023          	sd	a5,0(a0)
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	138080e7          	jalr	312(ra) # 80001c54 <_ZN6ThreadD1Ev>
    80004b24:	00048513          	mv	a0,s1
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	0b0080e7          	jalr	176(ra) # 80001bd8 <_ZdlPv>
    80004b30:	01813083          	ld	ra,24(sp)
    80004b34:	01013403          	ld	s0,16(sp)
    80004b38:	00813483          	ld	s1,8(sp)
    80004b3c:	02010113          	addi	sp,sp,32
    80004b40:	00008067          	ret

0000000080004b44 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004b44:	ff010113          	addi	sp,sp,-16
    80004b48:	00113423          	sd	ra,8(sp)
    80004b4c:	00813023          	sd	s0,0(sp)
    80004b50:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004b54:	02053583          	ld	a1,32(a0)
    80004b58:	fffff097          	auipc	ra,0xfffff
    80004b5c:	7e4080e7          	jalr	2020(ra) # 8000433c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004b60:	00813083          	ld	ra,8(sp)
    80004b64:	00013403          	ld	s0,0(sp)
    80004b68:	01010113          	addi	sp,sp,16
    80004b6c:	00008067          	ret

0000000080004b70 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004b70:	ff010113          	addi	sp,sp,-16
    80004b74:	00113423          	sd	ra,8(sp)
    80004b78:	00813023          	sd	s0,0(sp)
    80004b7c:	01010413          	addi	s0,sp,16
        producer(td);
    80004b80:	02053583          	ld	a1,32(a0)
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	878080e7          	jalr	-1928(ra) # 800043fc <_ZN12ProducerSync8producerEPv>
    }
    80004b8c:	00813083          	ld	ra,8(sp)
    80004b90:	00013403          	ld	s0,0(sp)
    80004b94:	01010113          	addi	sp,sp,16
    80004b98:	00008067          	ret

0000000080004b9c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004b9c:	ff010113          	addi	sp,sp,-16
    80004ba0:	00113423          	sd	ra,8(sp)
    80004ba4:	00813023          	sd	s0,0(sp)
    80004ba8:	01010413          	addi	s0,sp,16
        consumer(td);
    80004bac:	02053583          	ld	a1,32(a0)
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	8e0080e7          	jalr	-1824(ra) # 80004490 <_ZN12ConsumerSync8consumerEPv>
    }
    80004bb8:	00813083          	ld	ra,8(sp)
    80004bbc:	00013403          	ld	s0,0(sp)
    80004bc0:	01010113          	addi	sp,sp,16
    80004bc4:	00008067          	ret

0000000080004bc8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004bc8:	fe010113          	addi	sp,sp,-32
    80004bcc:	00113c23          	sd	ra,24(sp)
    80004bd0:	00813823          	sd	s0,16(sp)
    80004bd4:	00913423          	sd	s1,8(sp)
    80004bd8:	02010413          	addi	s0,sp,32
    80004bdc:	00050493          	mv	s1,a0
    LOCK();
    80004be0:	00100613          	li	a2,1
    80004be4:	00000593          	li	a1,0
    80004be8:	00006517          	auipc	a0,0x6
    80004bec:	ba050513          	addi	a0,a0,-1120 # 8000a788 <lockPrint>
    80004bf0:	ffffc097          	auipc	ra,0xffffc
    80004bf4:	634080e7          	jalr	1588(ra) # 80001224 <copy_and_swap>
    80004bf8:	00050863          	beqz	a0,80004c08 <_Z11printStringPKc+0x40>
    80004bfc:	ffffc097          	auipc	ra,0xffffc
    80004c00:	6ac080e7          	jalr	1708(ra) # 800012a8 <_Z15thread_dispatchv>
    80004c04:	fddff06f          	j	80004be0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004c08:	0004c503          	lbu	a0,0(s1)
    80004c0c:	00050a63          	beqz	a0,80004c20 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	864080e7          	jalr	-1948(ra) # 80001474 <_Z4putcc>
        string++;
    80004c18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004c1c:	fedff06f          	j	80004c08 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004c20:	00000613          	li	a2,0
    80004c24:	00100593          	li	a1,1
    80004c28:	00006517          	auipc	a0,0x6
    80004c2c:	b6050513          	addi	a0,a0,-1184 # 8000a788 <lockPrint>
    80004c30:	ffffc097          	auipc	ra,0xffffc
    80004c34:	5f4080e7          	jalr	1524(ra) # 80001224 <copy_and_swap>
    80004c38:	fe0514e3          	bnez	a0,80004c20 <_Z11printStringPKc+0x58>
}
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	01013403          	ld	s0,16(sp)
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	02010113          	addi	sp,sp,32
    80004c4c:	00008067          	ret

0000000080004c50 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004c50:	fd010113          	addi	sp,sp,-48
    80004c54:	02113423          	sd	ra,40(sp)
    80004c58:	02813023          	sd	s0,32(sp)
    80004c5c:	00913c23          	sd	s1,24(sp)
    80004c60:	01213823          	sd	s2,16(sp)
    80004c64:	01313423          	sd	s3,8(sp)
    80004c68:	01413023          	sd	s4,0(sp)
    80004c6c:	03010413          	addi	s0,sp,48
    80004c70:	00050993          	mv	s3,a0
    80004c74:	00058a13          	mv	s4,a1
    LOCK();
    80004c78:	00100613          	li	a2,1
    80004c7c:	00000593          	li	a1,0
    80004c80:	00006517          	auipc	a0,0x6
    80004c84:	b0850513          	addi	a0,a0,-1272 # 8000a788 <lockPrint>
    80004c88:	ffffc097          	auipc	ra,0xffffc
    80004c8c:	59c080e7          	jalr	1436(ra) # 80001224 <copy_and_swap>
    80004c90:	00050863          	beqz	a0,80004ca0 <_Z9getStringPci+0x50>
    80004c94:	ffffc097          	auipc	ra,0xffffc
    80004c98:	614080e7          	jalr	1556(ra) # 800012a8 <_Z15thread_dispatchv>
    80004c9c:	fddff06f          	j	80004c78 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ca0:	00000913          	li	s2,0
    80004ca4:	00090493          	mv	s1,s2
    80004ca8:	0019091b          	addiw	s2,s2,1
    80004cac:	03495a63          	bge	s2,s4,80004ce0 <_Z9getStringPci+0x90>
        cc = getc();
    80004cb0:	ffffc097          	auipc	ra,0xffffc
    80004cb4:	79c080e7          	jalr	1948(ra) # 8000144c <_Z4getcv>
        if(cc < 1)
    80004cb8:	02050463          	beqz	a0,80004ce0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004cbc:	009984b3          	add	s1,s3,s1
    80004cc0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004cc4:	00a00793          	li	a5,10
    80004cc8:	00f50a63          	beq	a0,a5,80004cdc <_Z9getStringPci+0x8c>
    80004ccc:	00d00793          	li	a5,13
    80004cd0:	fcf51ae3          	bne	a0,a5,80004ca4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004cd4:	00090493          	mv	s1,s2
    80004cd8:	0080006f          	j	80004ce0 <_Z9getStringPci+0x90>
    80004cdc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004ce0:	009984b3          	add	s1,s3,s1
    80004ce4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004ce8:	00000613          	li	a2,0
    80004cec:	00100593          	li	a1,1
    80004cf0:	00006517          	auipc	a0,0x6
    80004cf4:	a9850513          	addi	a0,a0,-1384 # 8000a788 <lockPrint>
    80004cf8:	ffffc097          	auipc	ra,0xffffc
    80004cfc:	52c080e7          	jalr	1324(ra) # 80001224 <copy_and_swap>
    80004d00:	fe0514e3          	bnez	a0,80004ce8 <_Z9getStringPci+0x98>
    return buf;
}
    80004d04:	00098513          	mv	a0,s3
    80004d08:	02813083          	ld	ra,40(sp)
    80004d0c:	02013403          	ld	s0,32(sp)
    80004d10:	01813483          	ld	s1,24(sp)
    80004d14:	01013903          	ld	s2,16(sp)
    80004d18:	00813983          	ld	s3,8(sp)
    80004d1c:	00013a03          	ld	s4,0(sp)
    80004d20:	03010113          	addi	sp,sp,48
    80004d24:	00008067          	ret

0000000080004d28 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004d28:	ff010113          	addi	sp,sp,-16
    80004d2c:	00813423          	sd	s0,8(sp)
    80004d30:	01010413          	addi	s0,sp,16
    80004d34:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004d38:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004d3c:	0006c603          	lbu	a2,0(a3)
    80004d40:	fd06071b          	addiw	a4,a2,-48
    80004d44:	0ff77713          	andi	a4,a4,255
    80004d48:	00900793          	li	a5,9
    80004d4c:	02e7e063          	bltu	a5,a4,80004d6c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004d50:	0025179b          	slliw	a5,a0,0x2
    80004d54:	00a787bb          	addw	a5,a5,a0
    80004d58:	0017979b          	slliw	a5,a5,0x1
    80004d5c:	00168693          	addi	a3,a3,1
    80004d60:	00c787bb          	addw	a5,a5,a2
    80004d64:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004d68:	fd5ff06f          	j	80004d3c <_Z11stringToIntPKc+0x14>
    return n;
}
    80004d6c:	00813403          	ld	s0,8(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret

0000000080004d78 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004d78:	fc010113          	addi	sp,sp,-64
    80004d7c:	02113c23          	sd	ra,56(sp)
    80004d80:	02813823          	sd	s0,48(sp)
    80004d84:	02913423          	sd	s1,40(sp)
    80004d88:	03213023          	sd	s2,32(sp)
    80004d8c:	01313c23          	sd	s3,24(sp)
    80004d90:	04010413          	addi	s0,sp,64
    80004d94:	00050493          	mv	s1,a0
    80004d98:	00058913          	mv	s2,a1
    80004d9c:	00060993          	mv	s3,a2
    LOCK();
    80004da0:	00100613          	li	a2,1
    80004da4:	00000593          	li	a1,0
    80004da8:	00006517          	auipc	a0,0x6
    80004dac:	9e050513          	addi	a0,a0,-1568 # 8000a788 <lockPrint>
    80004db0:	ffffc097          	auipc	ra,0xffffc
    80004db4:	474080e7          	jalr	1140(ra) # 80001224 <copy_and_swap>
    80004db8:	00050863          	beqz	a0,80004dc8 <_Z8printIntiii+0x50>
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	4ec080e7          	jalr	1260(ra) # 800012a8 <_Z15thread_dispatchv>
    80004dc4:	fddff06f          	j	80004da0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004dc8:	00098463          	beqz	s3,80004dd0 <_Z8printIntiii+0x58>
    80004dcc:	0804c463          	bltz	s1,80004e54 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004dd0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004dd4:	00000593          	li	a1,0
    }

    i = 0;
    80004dd8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004ddc:	0009079b          	sext.w	a5,s2
    80004de0:	0325773b          	remuw	a4,a0,s2
    80004de4:	00048613          	mv	a2,s1
    80004de8:	0014849b          	addiw	s1,s1,1
    80004dec:	02071693          	slli	a3,a4,0x20
    80004df0:	0206d693          	srli	a3,a3,0x20
    80004df4:	00006717          	auipc	a4,0x6
    80004df8:	88c70713          	addi	a4,a4,-1908 # 8000a680 <digits>
    80004dfc:	00d70733          	add	a4,a4,a3
    80004e00:	00074683          	lbu	a3,0(a4)
    80004e04:	fd040713          	addi	a4,s0,-48
    80004e08:	00c70733          	add	a4,a4,a2
    80004e0c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004e10:	0005071b          	sext.w	a4,a0
    80004e14:	0325553b          	divuw	a0,a0,s2
    80004e18:	fcf772e3          	bgeu	a4,a5,80004ddc <_Z8printIntiii+0x64>
    if(neg)
    80004e1c:	00058c63          	beqz	a1,80004e34 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004e20:	fd040793          	addi	a5,s0,-48
    80004e24:	009784b3          	add	s1,a5,s1
    80004e28:	02d00793          	li	a5,45
    80004e2c:	fef48823          	sb	a5,-16(s1)
    80004e30:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004e34:	fff4849b          	addiw	s1,s1,-1
    80004e38:	0204c463          	bltz	s1,80004e60 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004e3c:	fd040793          	addi	a5,s0,-48
    80004e40:	009787b3          	add	a5,a5,s1
    80004e44:	ff07c503          	lbu	a0,-16(a5)
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	62c080e7          	jalr	1580(ra) # 80001474 <_Z4putcc>
    80004e50:	fe5ff06f          	j	80004e34 <_Z8printIntiii+0xbc>
        x = -xx;
    80004e54:	4090053b          	negw	a0,s1
        neg = 1;
    80004e58:	00100593          	li	a1,1
        x = -xx;
    80004e5c:	f7dff06f          	j	80004dd8 <_Z8printIntiii+0x60>

    UNLOCK();
    80004e60:	00000613          	li	a2,0
    80004e64:	00100593          	li	a1,1
    80004e68:	00006517          	auipc	a0,0x6
    80004e6c:	92050513          	addi	a0,a0,-1760 # 8000a788 <lockPrint>
    80004e70:	ffffc097          	auipc	ra,0xffffc
    80004e74:	3b4080e7          	jalr	948(ra) # 80001224 <copy_and_swap>
    80004e78:	fe0514e3          	bnez	a0,80004e60 <_Z8printIntiii+0xe8>
    80004e7c:	03813083          	ld	ra,56(sp)
    80004e80:	03013403          	ld	s0,48(sp)
    80004e84:	02813483          	ld	s1,40(sp)
    80004e88:	02013903          	ld	s2,32(sp)
    80004e8c:	01813983          	ld	s3,24(sp)
    80004e90:	04010113          	addi	sp,sp,64
    80004e94:	00008067          	ret

0000000080004e98 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004e98:	fd010113          	addi	sp,sp,-48
    80004e9c:	02113423          	sd	ra,40(sp)
    80004ea0:	02813023          	sd	s0,32(sp)
    80004ea4:	00913c23          	sd	s1,24(sp)
    80004ea8:	01213823          	sd	s2,16(sp)
    80004eac:	01313423          	sd	s3,8(sp)
    80004eb0:	03010413          	addi	s0,sp,48
    80004eb4:	00050493          	mv	s1,a0
    80004eb8:	00058913          	mv	s2,a1
    80004ebc:	0015879b          	addiw	a5,a1,1
    80004ec0:	0007851b          	sext.w	a0,a5
    80004ec4:	00f4a023          	sw	a5,0(s1)
    80004ec8:	0004a823          	sw	zero,16(s1)
    80004ecc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004ed0:	00251513          	slli	a0,a0,0x2
    80004ed4:	ffffc097          	auipc	ra,0xffffc
    80004ed8:	370080e7          	jalr	880(ra) # 80001244 <_Z9mem_allocm>
    80004edc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004ee0:	01000513          	li	a0,16
    80004ee4:	ffffd097          	auipc	ra,0xffffd
    80004ee8:	ca4080e7          	jalr	-860(ra) # 80001b88 <_Znwm>
    80004eec:	00050993          	mv	s3,a0
    80004ef0:	00000593          	li	a1,0
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	f1c080e7          	jalr	-228(ra) # 80001e10 <_ZN9SemaphoreC1Ej>
    80004efc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004f00:	01000513          	li	a0,16
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	c84080e7          	jalr	-892(ra) # 80001b88 <_Znwm>
    80004f0c:	00050993          	mv	s3,a0
    80004f10:	00090593          	mv	a1,s2
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	efc080e7          	jalr	-260(ra) # 80001e10 <_ZN9SemaphoreC1Ej>
    80004f1c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004f20:	01000513          	li	a0,16
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	c64080e7          	jalr	-924(ra) # 80001b88 <_Znwm>
    80004f2c:	00050913          	mv	s2,a0
    80004f30:	00100593          	li	a1,1
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	edc080e7          	jalr	-292(ra) # 80001e10 <_ZN9SemaphoreC1Ej>
    80004f3c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004f40:	01000513          	li	a0,16
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	c44080e7          	jalr	-956(ra) # 80001b88 <_Znwm>
    80004f4c:	00050913          	mv	s2,a0
    80004f50:	00100593          	li	a1,1
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	ebc080e7          	jalr	-324(ra) # 80001e10 <_ZN9SemaphoreC1Ej>
    80004f5c:	0324b823          	sd	s2,48(s1)
}
    80004f60:	02813083          	ld	ra,40(sp)
    80004f64:	02013403          	ld	s0,32(sp)
    80004f68:	01813483          	ld	s1,24(sp)
    80004f6c:	01013903          	ld	s2,16(sp)
    80004f70:	00813983          	ld	s3,8(sp)
    80004f74:	03010113          	addi	sp,sp,48
    80004f78:	00008067          	ret
    80004f7c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004f80:	00098513          	mv	a0,s3
    80004f84:	ffffd097          	auipc	ra,0xffffd
    80004f88:	c54080e7          	jalr	-940(ra) # 80001bd8 <_ZdlPv>
    80004f8c:	00048513          	mv	a0,s1
    80004f90:	00007097          	auipc	ra,0x7
    80004f94:	8d8080e7          	jalr	-1832(ra) # 8000b868 <_Unwind_Resume>
    80004f98:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004f9c:	00098513          	mv	a0,s3
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	c38080e7          	jalr	-968(ra) # 80001bd8 <_ZdlPv>
    80004fa8:	00048513          	mv	a0,s1
    80004fac:	00007097          	auipc	ra,0x7
    80004fb0:	8bc080e7          	jalr	-1860(ra) # 8000b868 <_Unwind_Resume>
    80004fb4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004fb8:	00090513          	mv	a0,s2
    80004fbc:	ffffd097          	auipc	ra,0xffffd
    80004fc0:	c1c080e7          	jalr	-996(ra) # 80001bd8 <_ZdlPv>
    80004fc4:	00048513          	mv	a0,s1
    80004fc8:	00007097          	auipc	ra,0x7
    80004fcc:	8a0080e7          	jalr	-1888(ra) # 8000b868 <_Unwind_Resume>
    80004fd0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004fd4:	00090513          	mv	a0,s2
    80004fd8:	ffffd097          	auipc	ra,0xffffd
    80004fdc:	c00080e7          	jalr	-1024(ra) # 80001bd8 <_ZdlPv>
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	00007097          	auipc	ra,0x7
    80004fe8:	884080e7          	jalr	-1916(ra) # 8000b868 <_Unwind_Resume>

0000000080004fec <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004fec:	fe010113          	addi	sp,sp,-32
    80004ff0:	00113c23          	sd	ra,24(sp)
    80004ff4:	00813823          	sd	s0,16(sp)
    80004ff8:	00913423          	sd	s1,8(sp)
    80004ffc:	01213023          	sd	s2,0(sp)
    80005000:	02010413          	addi	s0,sp,32
    80005004:	00050493          	mv	s1,a0
    80005008:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000500c:	01853503          	ld	a0,24(a0)
    80005010:	ffffd097          	auipc	ra,0xffffd
    80005014:	e38080e7          	jalr	-456(ra) # 80001e48 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005018:	0304b503          	ld	a0,48(s1)
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	e2c080e7          	jalr	-468(ra) # 80001e48 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005024:	0084b783          	ld	a5,8(s1)
    80005028:	0144a703          	lw	a4,20(s1)
    8000502c:	00271713          	slli	a4,a4,0x2
    80005030:	00e787b3          	add	a5,a5,a4
    80005034:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005038:	0144a783          	lw	a5,20(s1)
    8000503c:	0017879b          	addiw	a5,a5,1
    80005040:	0004a703          	lw	a4,0(s1)
    80005044:	02e7e7bb          	remw	a5,a5,a4
    80005048:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000504c:	0304b503          	ld	a0,48(s1)
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	e24080e7          	jalr	-476(ra) # 80001e74 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005058:	0204b503          	ld	a0,32(s1)
    8000505c:	ffffd097          	auipc	ra,0xffffd
    80005060:	e18080e7          	jalr	-488(ra) # 80001e74 <_ZN9Semaphore6signalEv>

}
    80005064:	01813083          	ld	ra,24(sp)
    80005068:	01013403          	ld	s0,16(sp)
    8000506c:	00813483          	ld	s1,8(sp)
    80005070:	00013903          	ld	s2,0(sp)
    80005074:	02010113          	addi	sp,sp,32
    80005078:	00008067          	ret

000000008000507c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000507c:	fe010113          	addi	sp,sp,-32
    80005080:	00113c23          	sd	ra,24(sp)
    80005084:	00813823          	sd	s0,16(sp)
    80005088:	00913423          	sd	s1,8(sp)
    8000508c:	01213023          	sd	s2,0(sp)
    80005090:	02010413          	addi	s0,sp,32
    80005094:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005098:	02053503          	ld	a0,32(a0)
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	dac080e7          	jalr	-596(ra) # 80001e48 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800050a4:	0284b503          	ld	a0,40(s1)
    800050a8:	ffffd097          	auipc	ra,0xffffd
    800050ac:	da0080e7          	jalr	-608(ra) # 80001e48 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800050b0:	0084b703          	ld	a4,8(s1)
    800050b4:	0104a783          	lw	a5,16(s1)
    800050b8:	00279693          	slli	a3,a5,0x2
    800050bc:	00d70733          	add	a4,a4,a3
    800050c0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800050c4:	0017879b          	addiw	a5,a5,1
    800050c8:	0004a703          	lw	a4,0(s1)
    800050cc:	02e7e7bb          	remw	a5,a5,a4
    800050d0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800050d4:	0284b503          	ld	a0,40(s1)
    800050d8:	ffffd097          	auipc	ra,0xffffd
    800050dc:	d9c080e7          	jalr	-612(ra) # 80001e74 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800050e0:	0184b503          	ld	a0,24(s1)
    800050e4:	ffffd097          	auipc	ra,0xffffd
    800050e8:	d90080e7          	jalr	-624(ra) # 80001e74 <_ZN9Semaphore6signalEv>

    return ret;
}
    800050ec:	00090513          	mv	a0,s2
    800050f0:	01813083          	ld	ra,24(sp)
    800050f4:	01013403          	ld	s0,16(sp)
    800050f8:	00813483          	ld	s1,8(sp)
    800050fc:	00013903          	ld	s2,0(sp)
    80005100:	02010113          	addi	sp,sp,32
    80005104:	00008067          	ret

0000000080005108 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005108:	fe010113          	addi	sp,sp,-32
    8000510c:	00113c23          	sd	ra,24(sp)
    80005110:	00813823          	sd	s0,16(sp)
    80005114:	00913423          	sd	s1,8(sp)
    80005118:	01213023          	sd	s2,0(sp)
    8000511c:	02010413          	addi	s0,sp,32
    80005120:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005124:	02853503          	ld	a0,40(a0)
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	d20080e7          	jalr	-736(ra) # 80001e48 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005130:	0304b503          	ld	a0,48(s1)
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	d14080e7          	jalr	-748(ra) # 80001e48 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000513c:	0144a783          	lw	a5,20(s1)
    80005140:	0104a903          	lw	s2,16(s1)
    80005144:	0327ce63          	blt	a5,s2,80005180 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005148:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000514c:	0304b503          	ld	a0,48(s1)
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	d24080e7          	jalr	-732(ra) # 80001e74 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005158:	0284b503          	ld	a0,40(s1)
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	d18080e7          	jalr	-744(ra) # 80001e74 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005164:	00090513          	mv	a0,s2
    80005168:	01813083          	ld	ra,24(sp)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	00813483          	ld	s1,8(sp)
    80005174:	00013903          	ld	s2,0(sp)
    80005178:	02010113          	addi	sp,sp,32
    8000517c:	00008067          	ret
        ret = cap - head + tail;
    80005180:	0004a703          	lw	a4,0(s1)
    80005184:	4127093b          	subw	s2,a4,s2
    80005188:	00f9093b          	addw	s2,s2,a5
    8000518c:	fc1ff06f          	j	8000514c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005190 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00113c23          	sd	ra,24(sp)
    80005198:	00813823          	sd	s0,16(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	02010413          	addi	s0,sp,32
    800051a4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800051a8:	00a00513          	li	a0,10
    800051ac:	ffffd097          	auipc	ra,0xffffd
    800051b0:	dd4080e7          	jalr	-556(ra) # 80001f80 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800051b4:	00003517          	auipc	a0,0x3
    800051b8:	16450513          	addi	a0,a0,356 # 80008318 <CONSOLE_STATUS+0x308>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	a0c080e7          	jalr	-1524(ra) # 80004bc8 <_Z11printStringPKc>
    while (getCnt()) {
    800051c4:	00048513          	mv	a0,s1
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	f40080e7          	jalr	-192(ra) # 80005108 <_ZN9BufferCPP6getCntEv>
    800051d0:	02050c63          	beqz	a0,80005208 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800051d4:	0084b783          	ld	a5,8(s1)
    800051d8:	0104a703          	lw	a4,16(s1)
    800051dc:	00271713          	slli	a4,a4,0x2
    800051e0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800051e4:	0007c503          	lbu	a0,0(a5)
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	d98080e7          	jalr	-616(ra) # 80001f80 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800051f0:	0104a783          	lw	a5,16(s1)
    800051f4:	0017879b          	addiw	a5,a5,1
    800051f8:	0004a703          	lw	a4,0(s1)
    800051fc:	02e7e7bb          	remw	a5,a5,a4
    80005200:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005204:	fc1ff06f          	j	800051c4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005208:	02100513          	li	a0,33
    8000520c:	ffffd097          	auipc	ra,0xffffd
    80005210:	d74080e7          	jalr	-652(ra) # 80001f80 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005214:	00a00513          	li	a0,10
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	d68080e7          	jalr	-664(ra) # 80001f80 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005220:	0084b503          	ld	a0,8(s1)
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	058080e7          	jalr	88(ra) # 8000127c <_Z8mem_freePv>
    delete itemAvailable;
    8000522c:	0204b503          	ld	a0,32(s1)
    80005230:	00050863          	beqz	a0,80005240 <_ZN9BufferCPPD1Ev+0xb0>
    80005234:	00053783          	ld	a5,0(a0)
    80005238:	0087b783          	ld	a5,8(a5)
    8000523c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005240:	0184b503          	ld	a0,24(s1)
    80005244:	00050863          	beqz	a0,80005254 <_ZN9BufferCPPD1Ev+0xc4>
    80005248:	00053783          	ld	a5,0(a0)
    8000524c:	0087b783          	ld	a5,8(a5)
    80005250:	000780e7          	jalr	a5
    delete mutexTail;
    80005254:	0304b503          	ld	a0,48(s1)
    80005258:	00050863          	beqz	a0,80005268 <_ZN9BufferCPPD1Ev+0xd8>
    8000525c:	00053783          	ld	a5,0(a0)
    80005260:	0087b783          	ld	a5,8(a5)
    80005264:	000780e7          	jalr	a5
    delete mutexHead;
    80005268:	0284b503          	ld	a0,40(s1)
    8000526c:	00050863          	beqz	a0,8000527c <_ZN9BufferCPPD1Ev+0xec>
    80005270:	00053783          	ld	a5,0(a0)
    80005274:	0087b783          	ld	a5,8(a5)
    80005278:	000780e7          	jalr	a5
}
    8000527c:	01813083          	ld	ra,24(sp)
    80005280:	01013403          	ld	s0,16(sp)
    80005284:	00813483          	ld	s1,8(sp)
    80005288:	02010113          	addi	sp,sp,32
    8000528c:	00008067          	ret

0000000080005290 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005290:	fe010113          	addi	sp,sp,-32
    80005294:	00113c23          	sd	ra,24(sp)
    80005298:	00813823          	sd	s0,16(sp)
    8000529c:	00913423          	sd	s1,8(sp)
    800052a0:	01213023          	sd	s2,0(sp)
    800052a4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800052a8:	00003517          	auipc	a0,0x3
    800052ac:	08850513          	addi	a0,a0,136 # 80008330 <CONSOLE_STATUS+0x320>
    800052b0:	00000097          	auipc	ra,0x0
    800052b4:	918080e7          	jalr	-1768(ra) # 80004bc8 <_Z11printStringPKc>
    int test = getc() - '0';
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	194080e7          	jalr	404(ra) # 8000144c <_Z4getcv>
    800052c0:	00050913          	mv	s2,a0
    800052c4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	184080e7          	jalr	388(ra) # 8000144c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800052d0:	fcb9091b          	addiw	s2,s2,-53
    800052d4:	00100793          	li	a5,1
    800052d8:	0327f463          	bgeu	a5,s2,80005300 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800052dc:	00700793          	li	a5,7
    800052e0:	0e97e263          	bltu	a5,s1,800053c4 <_Z8userMainv+0x134>
    800052e4:	00249493          	slli	s1,s1,0x2
    800052e8:	00003717          	auipc	a4,0x3
    800052ec:	26070713          	addi	a4,a4,608 # 80008548 <CONSOLE_STATUS+0x538>
    800052f0:	00e484b3          	add	s1,s1,a4
    800052f4:	0004a783          	lw	a5,0(s1)
    800052f8:	00e787b3          	add	a5,a5,a4
    800052fc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005300:	00003517          	auipc	a0,0x3
    80005304:	05050513          	addi	a0,a0,80 # 80008350 <CONSOLE_STATUS+0x340>
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	8c0080e7          	jalr	-1856(ra) # 80004bc8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005310:	01813083          	ld	ra,24(sp)
    80005314:	01013403          	ld	s0,16(sp)
    80005318:	00813483          	ld	s1,8(sp)
    8000531c:	00013903          	ld	s2,0(sp)
    80005320:	02010113          	addi	sp,sp,32
    80005324:	00008067          	ret
            Threads_C_API_test();
    80005328:	fffff097          	auipc	ra,0xfffff
    8000532c:	f18080e7          	jalr	-232(ra) # 80004240 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005330:	00003517          	auipc	a0,0x3
    80005334:	05050513          	addi	a0,a0,80 # 80008380 <CONSOLE_STATUS+0x370>
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	890080e7          	jalr	-1904(ra) # 80004bc8 <_Z11printStringPKc>
            break;
    80005340:	fd1ff06f          	j	80005310 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005344:	ffffe097          	auipc	ra,0xffffe
    80005348:	ddc080e7          	jalr	-548(ra) # 80003120 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000534c:	00003517          	auipc	a0,0x3
    80005350:	07450513          	addi	a0,a0,116 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005354:	00000097          	auipc	ra,0x0
    80005358:	874080e7          	jalr	-1932(ra) # 80004bc8 <_Z11printStringPKc>
            break;
    8000535c:	fb5ff06f          	j	80005310 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	614080e7          	jalr	1556(ra) # 80002974 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005368:	00003517          	auipc	a0,0x3
    8000536c:	09850513          	addi	a0,a0,152 # 80008400 <CONSOLE_STATUS+0x3f0>
    80005370:	00000097          	auipc	ra,0x0
    80005374:	858080e7          	jalr	-1960(ra) # 80004bc8 <_Z11printStringPKc>
            break;
    80005378:	f99ff06f          	j	80005310 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000537c:	fffff097          	auipc	ra,0xfffff
    80005380:	208080e7          	jalr	520(ra) # 80004584 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005384:	00003517          	auipc	a0,0x3
    80005388:	0cc50513          	addi	a0,a0,204 # 80008450 <CONSOLE_STATUS+0x440>
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	83c080e7          	jalr	-1988(ra) # 80004bc8 <_Z11printStringPKc>
            break;
    80005394:	f7dff06f          	j	80005310 <_Z8userMainv+0x80>
            System_Mode_test();
    80005398:	00000097          	auipc	ra,0x0
    8000539c:	658080e7          	jalr	1624(ra) # 800059f0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800053a0:	00003517          	auipc	a0,0x3
    800053a4:	10850513          	addi	a0,a0,264 # 800084a8 <CONSOLE_STATUS+0x498>
    800053a8:	00000097          	auipc	ra,0x0
    800053ac:	820080e7          	jalr	-2016(ra) # 80004bc8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800053b0:	00003517          	auipc	a0,0x3
    800053b4:	11850513          	addi	a0,a0,280 # 800084c8 <CONSOLE_STATUS+0x4b8>
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	810080e7          	jalr	-2032(ra) # 80004bc8 <_Z11printStringPKc>
            break;
    800053c0:	f51ff06f          	j	80005310 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800053c4:	00003517          	auipc	a0,0x3
    800053c8:	15c50513          	addi	a0,a0,348 # 80008520 <CONSOLE_STATUS+0x510>
    800053cc:	fffff097          	auipc	ra,0xfffff
    800053d0:	7fc080e7          	jalr	2044(ra) # 80004bc8 <_Z11printStringPKc>
    800053d4:	f3dff06f          	j	80005310 <_Z8userMainv+0x80>

00000000800053d8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800053d8:	fe010113          	addi	sp,sp,-32
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00913423          	sd	s1,8(sp)
    800053e8:	01213023          	sd	s2,0(sp)
    800053ec:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800053f0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800053f4:	00600493          	li	s1,6
    while (--i > 0) {
    800053f8:	fff4849b          	addiw	s1,s1,-1
    800053fc:	04905463          	blez	s1,80005444 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005400:	00003517          	auipc	a0,0x3
    80005404:	16850513          	addi	a0,a0,360 # 80008568 <CONSOLE_STATUS+0x558>
    80005408:	fffff097          	auipc	ra,0xfffff
    8000540c:	7c0080e7          	jalr	1984(ra) # 80004bc8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005410:	00000613          	li	a2,0
    80005414:	00a00593          	li	a1,10
    80005418:	0009051b          	sext.w	a0,s2
    8000541c:	00000097          	auipc	ra,0x0
    80005420:	95c080e7          	jalr	-1700(ra) # 80004d78 <_Z8printIntiii>
        printString(" !\n");
    80005424:	00003517          	auipc	a0,0x3
    80005428:	14c50513          	addi	a0,a0,332 # 80008570 <CONSOLE_STATUS+0x560>
    8000542c:	fffff097          	auipc	ra,0xfffff
    80005430:	79c080e7          	jalr	1948(ra) # 80004bc8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005434:	00090513          	mv	a0,s2
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	07c080e7          	jalr	124(ra) # 800014b4 <_Z10time_sleepm>
    while (--i > 0) {
    80005440:	fb9ff06f          	j	800053f8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005444:	00a00793          	li	a5,10
    80005448:	02f95933          	divu	s2,s2,a5
    8000544c:	fff90913          	addi	s2,s2,-1
    80005450:	00005797          	auipc	a5,0x5
    80005454:	34078793          	addi	a5,a5,832 # 8000a790 <_ZL8finished>
    80005458:	01278933          	add	s2,a5,s2
    8000545c:	00100793          	li	a5,1
    80005460:	00f90023          	sb	a5,0(s2)
}
    80005464:	01813083          	ld	ra,24(sp)
    80005468:	01013403          	ld	s0,16(sp)
    8000546c:	00813483          	ld	s1,8(sp)
    80005470:	00013903          	ld	s2,0(sp)
    80005474:	02010113          	addi	sp,sp,32
    80005478:	00008067          	ret

000000008000547c <_Z12testSleepingv>:

void testSleeping() {
    8000547c:	fc010113          	addi	sp,sp,-64
    80005480:	02113c23          	sd	ra,56(sp)
    80005484:	02813823          	sd	s0,48(sp)
    80005488:	02913423          	sd	s1,40(sp)
    8000548c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005490:	00a00793          	li	a5,10
    80005494:	fcf43823          	sd	a5,-48(s0)
    80005498:	01400793          	li	a5,20
    8000549c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800054a0:	00000493          	li	s1,0
    800054a4:	02c0006f          	j	800054d0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800054a8:	00349793          	slli	a5,s1,0x3
    800054ac:	fd040613          	addi	a2,s0,-48
    800054b0:	00f60633          	add	a2,a2,a5
    800054b4:	00000597          	auipc	a1,0x0
    800054b8:	f2458593          	addi	a1,a1,-220 # 800053d8 <_ZL9sleepyRunPv>
    800054bc:	fc040513          	addi	a0,s0,-64
    800054c0:	00f50533          	add	a0,a0,a5
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	e2c080e7          	jalr	-468(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800054cc:	0014849b          	addiw	s1,s1,1
    800054d0:	00100793          	li	a5,1
    800054d4:	fc97dae3          	bge	a5,s1,800054a8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800054d8:	00005797          	auipc	a5,0x5
    800054dc:	2b87c783          	lbu	a5,696(a5) # 8000a790 <_ZL8finished>
    800054e0:	fe078ce3          	beqz	a5,800054d8 <_Z12testSleepingv+0x5c>
    800054e4:	00005797          	auipc	a5,0x5
    800054e8:	2ad7c783          	lbu	a5,685(a5) # 8000a791 <_ZL8finished+0x1>
    800054ec:	fe0786e3          	beqz	a5,800054d8 <_Z12testSleepingv+0x5c>
}
    800054f0:	03813083          	ld	ra,56(sp)
    800054f4:	03013403          	ld	s0,48(sp)
    800054f8:	02813483          	ld	s1,40(sp)
    800054fc:	04010113          	addi	sp,sp,64
    80005500:	00008067          	ret

0000000080005504 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005504:	fe010113          	addi	sp,sp,-32
    80005508:	00113c23          	sd	ra,24(sp)
    8000550c:	00813823          	sd	s0,16(sp)
    80005510:	00913423          	sd	s1,8(sp)
    80005514:	01213023          	sd	s2,0(sp)
    80005518:	02010413          	addi	s0,sp,32
    8000551c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005520:	00100793          	li	a5,1
    80005524:	02a7f863          	bgeu	a5,a0,80005554 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005528:	00a00793          	li	a5,10
    8000552c:	02f577b3          	remu	a5,a0,a5
    80005530:	02078e63          	beqz	a5,8000556c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005534:	fff48513          	addi	a0,s1,-1
    80005538:	00000097          	auipc	ra,0x0
    8000553c:	fcc080e7          	jalr	-52(ra) # 80005504 <_ZL9fibonaccim>
    80005540:	00050913          	mv	s2,a0
    80005544:	ffe48513          	addi	a0,s1,-2
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	fbc080e7          	jalr	-68(ra) # 80005504 <_ZL9fibonaccim>
    80005550:	00a90533          	add	a0,s2,a0
}
    80005554:	01813083          	ld	ra,24(sp)
    80005558:	01013403          	ld	s0,16(sp)
    8000555c:	00813483          	ld	s1,8(sp)
    80005560:	00013903          	ld	s2,0(sp)
    80005564:	02010113          	addi	sp,sp,32
    80005568:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	d3c080e7          	jalr	-708(ra) # 800012a8 <_Z15thread_dispatchv>
    80005574:	fc1ff06f          	j	80005534 <_ZL9fibonaccim+0x30>

0000000080005578 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005578:	fe010113          	addi	sp,sp,-32
    8000557c:	00113c23          	sd	ra,24(sp)
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00913423          	sd	s1,8(sp)
    80005588:	01213023          	sd	s2,0(sp)
    8000558c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005590:	00a00493          	li	s1,10
    80005594:	0400006f          	j	800055d4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005598:	00003517          	auipc	a0,0x3
    8000559c:	ce850513          	addi	a0,a0,-792 # 80008280 <CONSOLE_STATUS+0x270>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	628080e7          	jalr	1576(ra) # 80004bc8 <_Z11printStringPKc>
    800055a8:	00000613          	li	a2,0
    800055ac:	00a00593          	li	a1,10
    800055b0:	00048513          	mv	a0,s1
    800055b4:	fffff097          	auipc	ra,0xfffff
    800055b8:	7c4080e7          	jalr	1988(ra) # 80004d78 <_Z8printIntiii>
    800055bc:	00003517          	auipc	a0,0x3
    800055c0:	ee450513          	addi	a0,a0,-284 # 800084a0 <CONSOLE_STATUS+0x490>
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	604080e7          	jalr	1540(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800055cc:	0014849b          	addiw	s1,s1,1
    800055d0:	0ff4f493          	andi	s1,s1,255
    800055d4:	00c00793          	li	a5,12
    800055d8:	fc97f0e3          	bgeu	a5,s1,80005598 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800055dc:	00003517          	auipc	a0,0x3
    800055e0:	cac50513          	addi	a0,a0,-852 # 80008288 <CONSOLE_STATUS+0x278>
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	5e4080e7          	jalr	1508(ra) # 80004bc8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800055ec:	00500313          	li	t1,5
    thread_dispatch();
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	cb8080e7          	jalr	-840(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800055f8:	01000513          	li	a0,16
    800055fc:	00000097          	auipc	ra,0x0
    80005600:	f08080e7          	jalr	-248(ra) # 80005504 <_ZL9fibonaccim>
    80005604:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005608:	00003517          	auipc	a0,0x3
    8000560c:	c9050513          	addi	a0,a0,-880 # 80008298 <CONSOLE_STATUS+0x288>
    80005610:	fffff097          	auipc	ra,0xfffff
    80005614:	5b8080e7          	jalr	1464(ra) # 80004bc8 <_Z11printStringPKc>
    80005618:	00000613          	li	a2,0
    8000561c:	00a00593          	li	a1,10
    80005620:	0009051b          	sext.w	a0,s2
    80005624:	fffff097          	auipc	ra,0xfffff
    80005628:	754080e7          	jalr	1876(ra) # 80004d78 <_Z8printIntiii>
    8000562c:	00003517          	auipc	a0,0x3
    80005630:	e7450513          	addi	a0,a0,-396 # 800084a0 <CONSOLE_STATUS+0x490>
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	594080e7          	jalr	1428(ra) # 80004bc8 <_Z11printStringPKc>
    8000563c:	0400006f          	j	8000567c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005640:	00003517          	auipc	a0,0x3
    80005644:	c4050513          	addi	a0,a0,-960 # 80008280 <CONSOLE_STATUS+0x270>
    80005648:	fffff097          	auipc	ra,0xfffff
    8000564c:	580080e7          	jalr	1408(ra) # 80004bc8 <_Z11printStringPKc>
    80005650:	00000613          	li	a2,0
    80005654:	00a00593          	li	a1,10
    80005658:	00048513          	mv	a0,s1
    8000565c:	fffff097          	auipc	ra,0xfffff
    80005660:	71c080e7          	jalr	1820(ra) # 80004d78 <_Z8printIntiii>
    80005664:	00003517          	auipc	a0,0x3
    80005668:	e3c50513          	addi	a0,a0,-452 # 800084a0 <CONSOLE_STATUS+0x490>
    8000566c:	fffff097          	auipc	ra,0xfffff
    80005670:	55c080e7          	jalr	1372(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005674:	0014849b          	addiw	s1,s1,1
    80005678:	0ff4f493          	andi	s1,s1,255
    8000567c:	00f00793          	li	a5,15
    80005680:	fc97f0e3          	bgeu	a5,s1,80005640 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005684:	00003517          	auipc	a0,0x3
    80005688:	c2450513          	addi	a0,a0,-988 # 800082a8 <CONSOLE_STATUS+0x298>
    8000568c:	fffff097          	auipc	ra,0xfffff
    80005690:	53c080e7          	jalr	1340(ra) # 80004bc8 <_Z11printStringPKc>
    finishedD = true;
    80005694:	00100793          	li	a5,1
    80005698:	00005717          	auipc	a4,0x5
    8000569c:	0ef70d23          	sb	a5,250(a4) # 8000a792 <_ZL9finishedD>
    thread_dispatch();
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	c08080e7          	jalr	-1016(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800056a8:	01813083          	ld	ra,24(sp)
    800056ac:	01013403          	ld	s0,16(sp)
    800056b0:	00813483          	ld	s1,8(sp)
    800056b4:	00013903          	ld	s2,0(sp)
    800056b8:	02010113          	addi	sp,sp,32
    800056bc:	00008067          	ret

00000000800056c0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800056c0:	fe010113          	addi	sp,sp,-32
    800056c4:	00113c23          	sd	ra,24(sp)
    800056c8:	00813823          	sd	s0,16(sp)
    800056cc:	00913423          	sd	s1,8(sp)
    800056d0:	01213023          	sd	s2,0(sp)
    800056d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800056d8:	00000493          	li	s1,0
    800056dc:	0400006f          	j	8000571c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800056e0:	00003517          	auipc	a0,0x3
    800056e4:	b7050513          	addi	a0,a0,-1168 # 80008250 <CONSOLE_STATUS+0x240>
    800056e8:	fffff097          	auipc	ra,0xfffff
    800056ec:	4e0080e7          	jalr	1248(ra) # 80004bc8 <_Z11printStringPKc>
    800056f0:	00000613          	li	a2,0
    800056f4:	00a00593          	li	a1,10
    800056f8:	00048513          	mv	a0,s1
    800056fc:	fffff097          	auipc	ra,0xfffff
    80005700:	67c080e7          	jalr	1660(ra) # 80004d78 <_Z8printIntiii>
    80005704:	00003517          	auipc	a0,0x3
    80005708:	d9c50513          	addi	a0,a0,-612 # 800084a0 <CONSOLE_STATUS+0x490>
    8000570c:	fffff097          	auipc	ra,0xfffff
    80005710:	4bc080e7          	jalr	1212(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005714:	0014849b          	addiw	s1,s1,1
    80005718:	0ff4f493          	andi	s1,s1,255
    8000571c:	00200793          	li	a5,2
    80005720:	fc97f0e3          	bgeu	a5,s1,800056e0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005724:	00003517          	auipc	a0,0x3
    80005728:	b3450513          	addi	a0,a0,-1228 # 80008258 <CONSOLE_STATUS+0x248>
    8000572c:	fffff097          	auipc	ra,0xfffff
    80005730:	49c080e7          	jalr	1180(ra) # 80004bc8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005734:	00700313          	li	t1,7
    thread_dispatch();
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	b70080e7          	jalr	-1168(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005740:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005744:	00003517          	auipc	a0,0x3
    80005748:	b2450513          	addi	a0,a0,-1244 # 80008268 <CONSOLE_STATUS+0x258>
    8000574c:	fffff097          	auipc	ra,0xfffff
    80005750:	47c080e7          	jalr	1148(ra) # 80004bc8 <_Z11printStringPKc>
    80005754:	00000613          	li	a2,0
    80005758:	00a00593          	li	a1,10
    8000575c:	0009051b          	sext.w	a0,s2
    80005760:	fffff097          	auipc	ra,0xfffff
    80005764:	618080e7          	jalr	1560(ra) # 80004d78 <_Z8printIntiii>
    80005768:	00003517          	auipc	a0,0x3
    8000576c:	d3850513          	addi	a0,a0,-712 # 800084a0 <CONSOLE_STATUS+0x490>
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	458080e7          	jalr	1112(ra) # 80004bc8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005778:	00c00513          	li	a0,12
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	d88080e7          	jalr	-632(ra) # 80005504 <_ZL9fibonaccim>
    80005784:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005788:	00003517          	auipc	a0,0x3
    8000578c:	ae850513          	addi	a0,a0,-1304 # 80008270 <CONSOLE_STATUS+0x260>
    80005790:	fffff097          	auipc	ra,0xfffff
    80005794:	438080e7          	jalr	1080(ra) # 80004bc8 <_Z11printStringPKc>
    80005798:	00000613          	li	a2,0
    8000579c:	00a00593          	li	a1,10
    800057a0:	0009051b          	sext.w	a0,s2
    800057a4:	fffff097          	auipc	ra,0xfffff
    800057a8:	5d4080e7          	jalr	1492(ra) # 80004d78 <_Z8printIntiii>
    800057ac:	00003517          	auipc	a0,0x3
    800057b0:	cf450513          	addi	a0,a0,-780 # 800084a0 <CONSOLE_STATUS+0x490>
    800057b4:	fffff097          	auipc	ra,0xfffff
    800057b8:	414080e7          	jalr	1044(ra) # 80004bc8 <_Z11printStringPKc>
    800057bc:	0400006f          	j	800057fc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800057c0:	00003517          	auipc	a0,0x3
    800057c4:	a9050513          	addi	a0,a0,-1392 # 80008250 <CONSOLE_STATUS+0x240>
    800057c8:	fffff097          	auipc	ra,0xfffff
    800057cc:	400080e7          	jalr	1024(ra) # 80004bc8 <_Z11printStringPKc>
    800057d0:	00000613          	li	a2,0
    800057d4:	00a00593          	li	a1,10
    800057d8:	00048513          	mv	a0,s1
    800057dc:	fffff097          	auipc	ra,0xfffff
    800057e0:	59c080e7          	jalr	1436(ra) # 80004d78 <_Z8printIntiii>
    800057e4:	00003517          	auipc	a0,0x3
    800057e8:	cbc50513          	addi	a0,a0,-836 # 800084a0 <CONSOLE_STATUS+0x490>
    800057ec:	fffff097          	auipc	ra,0xfffff
    800057f0:	3dc080e7          	jalr	988(ra) # 80004bc8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800057f4:	0014849b          	addiw	s1,s1,1
    800057f8:	0ff4f493          	andi	s1,s1,255
    800057fc:	00500793          	li	a5,5
    80005800:	fc97f0e3          	bgeu	a5,s1,800057c0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005804:	00003517          	auipc	a0,0x3
    80005808:	a2450513          	addi	a0,a0,-1500 # 80008228 <CONSOLE_STATUS+0x218>
    8000580c:	fffff097          	auipc	ra,0xfffff
    80005810:	3bc080e7          	jalr	956(ra) # 80004bc8 <_Z11printStringPKc>
    finishedC = true;
    80005814:	00100793          	li	a5,1
    80005818:	00005717          	auipc	a4,0x5
    8000581c:	f6f70da3          	sb	a5,-133(a4) # 8000a793 <_ZL9finishedC>
    thread_dispatch();
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	a88080e7          	jalr	-1400(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005828:	01813083          	ld	ra,24(sp)
    8000582c:	01013403          	ld	s0,16(sp)
    80005830:	00813483          	ld	s1,8(sp)
    80005834:	00013903          	ld	s2,0(sp)
    80005838:	02010113          	addi	sp,sp,32
    8000583c:	00008067          	ret

0000000080005840 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005840:	fe010113          	addi	sp,sp,-32
    80005844:	00113c23          	sd	ra,24(sp)
    80005848:	00813823          	sd	s0,16(sp)
    8000584c:	00913423          	sd	s1,8(sp)
    80005850:	01213023          	sd	s2,0(sp)
    80005854:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005858:	00000913          	li	s2,0
    8000585c:	0400006f          	j	8000589c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	a48080e7          	jalr	-1464(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005868:	00148493          	addi	s1,s1,1
    8000586c:	000027b7          	lui	a5,0x2
    80005870:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005874:	0097ee63          	bltu	a5,s1,80005890 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005878:	00000713          	li	a4,0
    8000587c:	000077b7          	lui	a5,0x7
    80005880:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005884:	fce7eee3          	bltu	a5,a4,80005860 <_ZL11workerBodyBPv+0x20>
    80005888:	00170713          	addi	a4,a4,1
    8000588c:	ff1ff06f          	j	8000587c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005890:	00a00793          	li	a5,10
    80005894:	04f90663          	beq	s2,a5,800058e0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005898:	00190913          	addi	s2,s2,1
    8000589c:	00f00793          	li	a5,15
    800058a0:	0527e463          	bltu	a5,s2,800058e8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800058a4:	00003517          	auipc	a0,0x3
    800058a8:	99450513          	addi	a0,a0,-1644 # 80008238 <CONSOLE_STATUS+0x228>
    800058ac:	fffff097          	auipc	ra,0xfffff
    800058b0:	31c080e7          	jalr	796(ra) # 80004bc8 <_Z11printStringPKc>
    800058b4:	00000613          	li	a2,0
    800058b8:	00a00593          	li	a1,10
    800058bc:	0009051b          	sext.w	a0,s2
    800058c0:	fffff097          	auipc	ra,0xfffff
    800058c4:	4b8080e7          	jalr	1208(ra) # 80004d78 <_Z8printIntiii>
    800058c8:	00003517          	auipc	a0,0x3
    800058cc:	bd850513          	addi	a0,a0,-1064 # 800084a0 <CONSOLE_STATUS+0x490>
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	2f8080e7          	jalr	760(ra) # 80004bc8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058d8:	00000493          	li	s1,0
    800058dc:	f91ff06f          	j	8000586c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800058e0:	14102ff3          	csrr	t6,sepc
    800058e4:	fb5ff06f          	j	80005898 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800058e8:	00003517          	auipc	a0,0x3
    800058ec:	95850513          	addi	a0,a0,-1704 # 80008240 <CONSOLE_STATUS+0x230>
    800058f0:	fffff097          	auipc	ra,0xfffff
    800058f4:	2d8080e7          	jalr	728(ra) # 80004bc8 <_Z11printStringPKc>
    finishedB = true;
    800058f8:	00100793          	li	a5,1
    800058fc:	00005717          	auipc	a4,0x5
    80005900:	e8f70c23          	sb	a5,-360(a4) # 8000a794 <_ZL9finishedB>
    thread_dispatch();
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	9a4080e7          	jalr	-1628(ra) # 800012a8 <_Z15thread_dispatchv>
}
    8000590c:	01813083          	ld	ra,24(sp)
    80005910:	01013403          	ld	s0,16(sp)
    80005914:	00813483          	ld	s1,8(sp)
    80005918:	00013903          	ld	s2,0(sp)
    8000591c:	02010113          	addi	sp,sp,32
    80005920:	00008067          	ret

0000000080005924 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005924:	fe010113          	addi	sp,sp,-32
    80005928:	00113c23          	sd	ra,24(sp)
    8000592c:	00813823          	sd	s0,16(sp)
    80005930:	00913423          	sd	s1,8(sp)
    80005934:	01213023          	sd	s2,0(sp)
    80005938:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000593c:	00000913          	li	s2,0
    80005940:	0380006f          	j	80005978 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	964080e7          	jalr	-1692(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000594c:	00148493          	addi	s1,s1,1
    80005950:	000027b7          	lui	a5,0x2
    80005954:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005958:	0097ee63          	bltu	a5,s1,80005974 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000595c:	00000713          	li	a4,0
    80005960:	000077b7          	lui	a5,0x7
    80005964:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005968:	fce7eee3          	bltu	a5,a4,80005944 <_ZL11workerBodyAPv+0x20>
    8000596c:	00170713          	addi	a4,a4,1
    80005970:	ff1ff06f          	j	80005960 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005974:	00190913          	addi	s2,s2,1
    80005978:	00900793          	li	a5,9
    8000597c:	0527e063          	bltu	a5,s2,800059bc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005980:	00003517          	auipc	a0,0x3
    80005984:	8a050513          	addi	a0,a0,-1888 # 80008220 <CONSOLE_STATUS+0x210>
    80005988:	fffff097          	auipc	ra,0xfffff
    8000598c:	240080e7          	jalr	576(ra) # 80004bc8 <_Z11printStringPKc>
    80005990:	00000613          	li	a2,0
    80005994:	00a00593          	li	a1,10
    80005998:	0009051b          	sext.w	a0,s2
    8000599c:	fffff097          	auipc	ra,0xfffff
    800059a0:	3dc080e7          	jalr	988(ra) # 80004d78 <_Z8printIntiii>
    800059a4:	00003517          	auipc	a0,0x3
    800059a8:	afc50513          	addi	a0,a0,-1284 # 800084a0 <CONSOLE_STATUS+0x490>
    800059ac:	fffff097          	auipc	ra,0xfffff
    800059b0:	21c080e7          	jalr	540(ra) # 80004bc8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800059b4:	00000493          	li	s1,0
    800059b8:	f99ff06f          	j	80005950 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800059bc:	00003517          	auipc	a0,0x3
    800059c0:	86c50513          	addi	a0,a0,-1940 # 80008228 <CONSOLE_STATUS+0x218>
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	204080e7          	jalr	516(ra) # 80004bc8 <_Z11printStringPKc>
    finishedA = true;
    800059cc:	00100793          	li	a5,1
    800059d0:	00005717          	auipc	a4,0x5
    800059d4:	dcf702a3          	sb	a5,-571(a4) # 8000a795 <_ZL9finishedA>
}
    800059d8:	01813083          	ld	ra,24(sp)
    800059dc:	01013403          	ld	s0,16(sp)
    800059e0:	00813483          	ld	s1,8(sp)
    800059e4:	00013903          	ld	s2,0(sp)
    800059e8:	02010113          	addi	sp,sp,32
    800059ec:	00008067          	ret

00000000800059f0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800059f0:	fd010113          	addi	sp,sp,-48
    800059f4:	02113423          	sd	ra,40(sp)
    800059f8:	02813023          	sd	s0,32(sp)
    800059fc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a00:	00000613          	li	a2,0
    80005a04:	00000597          	auipc	a1,0x0
    80005a08:	f2058593          	addi	a1,a1,-224 # 80005924 <_ZL11workerBodyAPv>
    80005a0c:	fd040513          	addi	a0,s0,-48
    80005a10:	ffffc097          	auipc	ra,0xffffc
    80005a14:	8e0080e7          	jalr	-1824(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005a18:	00003517          	auipc	a0,0x3
    80005a1c:	8a050513          	addi	a0,a0,-1888 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80005a20:	fffff097          	auipc	ra,0xfffff
    80005a24:	1a8080e7          	jalr	424(ra) # 80004bc8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a28:	00000613          	li	a2,0
    80005a2c:	00000597          	auipc	a1,0x0
    80005a30:	e1458593          	addi	a1,a1,-492 # 80005840 <_ZL11workerBodyBPv>
    80005a34:	fd840513          	addi	a0,s0,-40
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	8b8080e7          	jalr	-1864(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005a40:	00003517          	auipc	a0,0x3
    80005a44:	89050513          	addi	a0,a0,-1904 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80005a48:	fffff097          	auipc	ra,0xfffff
    80005a4c:	180080e7          	jalr	384(ra) # 80004bc8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a50:	00000613          	li	a2,0
    80005a54:	00000597          	auipc	a1,0x0
    80005a58:	c6c58593          	addi	a1,a1,-916 # 800056c0 <_ZL11workerBodyCPv>
    80005a5c:	fe040513          	addi	a0,s0,-32
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	890080e7          	jalr	-1904(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005a68:	00003517          	auipc	a0,0x3
    80005a6c:	88050513          	addi	a0,a0,-1920 # 800082e8 <CONSOLE_STATUS+0x2d8>
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	158080e7          	jalr	344(ra) # 80004bc8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a78:	00000613          	li	a2,0
    80005a7c:	00000597          	auipc	a1,0x0
    80005a80:	afc58593          	addi	a1,a1,-1284 # 80005578 <_ZL11workerBodyDPv>
    80005a84:	fe840513          	addi	a0,s0,-24
    80005a88:	ffffc097          	auipc	ra,0xffffc
    80005a8c:	868080e7          	jalr	-1944(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005a90:	00003517          	auipc	a0,0x3
    80005a94:	87050513          	addi	a0,a0,-1936 # 80008300 <CONSOLE_STATUS+0x2f0>
    80005a98:	fffff097          	auipc	ra,0xfffff
    80005a9c:	130080e7          	jalr	304(ra) # 80004bc8 <_Z11printStringPKc>
    80005aa0:	00c0006f          	j	80005aac <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005aa4:	ffffc097          	auipc	ra,0xffffc
    80005aa8:	804080e7          	jalr	-2044(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005aac:	00005797          	auipc	a5,0x5
    80005ab0:	ce97c783          	lbu	a5,-791(a5) # 8000a795 <_ZL9finishedA>
    80005ab4:	fe0788e3          	beqz	a5,80005aa4 <_Z16System_Mode_testv+0xb4>
    80005ab8:	00005797          	auipc	a5,0x5
    80005abc:	cdc7c783          	lbu	a5,-804(a5) # 8000a794 <_ZL9finishedB>
    80005ac0:	fe0782e3          	beqz	a5,80005aa4 <_Z16System_Mode_testv+0xb4>
    80005ac4:	00005797          	auipc	a5,0x5
    80005ac8:	ccf7c783          	lbu	a5,-817(a5) # 8000a793 <_ZL9finishedC>
    80005acc:	fc078ce3          	beqz	a5,80005aa4 <_Z16System_Mode_testv+0xb4>
    80005ad0:	00005797          	auipc	a5,0x5
    80005ad4:	cc27c783          	lbu	a5,-830(a5) # 8000a792 <_ZL9finishedD>
    80005ad8:	fc0786e3          	beqz	a5,80005aa4 <_Z16System_Mode_testv+0xb4>
    }

}
    80005adc:	02813083          	ld	ra,40(sp)
    80005ae0:	02013403          	ld	s0,32(sp)
    80005ae4:	03010113          	addi	sp,sp,48
    80005ae8:	00008067          	ret

0000000080005aec <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00113c23          	sd	ra,24(sp)
    80005af4:	00813823          	sd	s0,16(sp)
    80005af8:	00913423          	sd	s1,8(sp)
    80005afc:	01213023          	sd	s2,0(sp)
    80005b00:	02010413          	addi	s0,sp,32
    80005b04:	00050493          	mv	s1,a0
    80005b08:	00058913          	mv	s2,a1
    80005b0c:	0015879b          	addiw	a5,a1,1
    80005b10:	0007851b          	sext.w	a0,a5
    80005b14:	00f4a023          	sw	a5,0(s1)
    80005b18:	0004a823          	sw	zero,16(s1)
    80005b1c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b20:	00251513          	slli	a0,a0,0x2
    80005b24:	ffffb097          	auipc	ra,0xffffb
    80005b28:	720080e7          	jalr	1824(ra) # 80001244 <_Z9mem_allocm>
    80005b2c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b30:	00000593          	li	a1,0
    80005b34:	02048513          	addi	a0,s1,32
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	834080e7          	jalr	-1996(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    80005b40:	00090593          	mv	a1,s2
    80005b44:	01848513          	addi	a0,s1,24
    80005b48:	ffffc097          	auipc	ra,0xffffc
    80005b4c:	824080e7          	jalr	-2012(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    80005b50:	00100593          	li	a1,1
    80005b54:	02848513          	addi	a0,s1,40
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	814080e7          	jalr	-2028(ra) # 8000136c <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    80005b60:	00100593          	li	a1,1
    80005b64:	03048513          	addi	a0,s1,48
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	804080e7          	jalr	-2044(ra) # 8000136c <_Z8sem_openPP3semj>
}
    80005b70:	01813083          	ld	ra,24(sp)
    80005b74:	01013403          	ld	s0,16(sp)
    80005b78:	00813483          	ld	s1,8(sp)
    80005b7c:	00013903          	ld	s2,0(sp)
    80005b80:	02010113          	addi	sp,sp,32
    80005b84:	00008067          	ret

0000000080005b88 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005b88:	fe010113          	addi	sp,sp,-32
    80005b8c:	00113c23          	sd	ra,24(sp)
    80005b90:	00813823          	sd	s0,16(sp)
    80005b94:	00913423          	sd	s1,8(sp)
    80005b98:	01213023          	sd	s2,0(sp)
    80005b9c:	02010413          	addi	s0,sp,32
    80005ba0:	00050493          	mv	s1,a0
    80005ba4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005ba8:	01853503          	ld	a0,24(a0)
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	81c080e7          	jalr	-2020(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    80005bb4:	0304b503          	ld	a0,48(s1)
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	810080e7          	jalr	-2032(ra) # 800013c8 <_Z8sem_waitP3sem>
    buffer[tail] = val;
    80005bc0:	0084b783          	ld	a5,8(s1)
    80005bc4:	0144a703          	lw	a4,20(s1)
    80005bc8:	00271713          	slli	a4,a4,0x2
    80005bcc:	00e787b3          	add	a5,a5,a4
    80005bd0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bd4:	0144a783          	lw	a5,20(s1)
    80005bd8:	0017879b          	addiw	a5,a5,1
    80005bdc:	0004a703          	lw	a4,0(s1)
    80005be0:	02e7e7bb          	remw	a5,a5,a4
    80005be4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005be8:	0304b503          	ld	a0,48(s1)
    80005bec:	ffffc097          	auipc	ra,0xffffc
    80005bf0:	808080e7          	jalr	-2040(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80005bf4:	0204b503          	ld	a0,32(s1)
    80005bf8:	ffffb097          	auipc	ra,0xffffb
    80005bfc:	7fc080e7          	jalr	2044(ra) # 800013f4 <_Z10sem_signalP3sem>

}
    80005c00:	01813083          	ld	ra,24(sp)
    80005c04:	01013403          	ld	s0,16(sp)
    80005c08:	00813483          	ld	s1,8(sp)
    80005c0c:	00013903          	ld	s2,0(sp)
    80005c10:	02010113          	addi	sp,sp,32
    80005c14:	00008067          	ret

0000000080005c18 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005c18:	fe010113          	addi	sp,sp,-32
    80005c1c:	00113c23          	sd	ra,24(sp)
    80005c20:	00813823          	sd	s0,16(sp)
    80005c24:	00913423          	sd	s1,8(sp)
    80005c28:	01213023          	sd	s2,0(sp)
    80005c2c:	02010413          	addi	s0,sp,32
    80005c30:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c34:	02053503          	ld	a0,32(a0)
    80005c38:	ffffb097          	auipc	ra,0xffffb
    80005c3c:	790080e7          	jalr	1936(ra) # 800013c8 <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    80005c40:	0284b503          	ld	a0,40(s1)
    80005c44:	ffffb097          	auipc	ra,0xffffb
    80005c48:	784080e7          	jalr	1924(ra) # 800013c8 <_Z8sem_waitP3sem>

    int ret = buffer[head];
    80005c4c:	0084b703          	ld	a4,8(s1)
    80005c50:	0104a783          	lw	a5,16(s1)
    80005c54:	00279693          	slli	a3,a5,0x2
    80005c58:	00d70733          	add	a4,a4,a3
    80005c5c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c60:	0017879b          	addiw	a5,a5,1
    80005c64:	0004a703          	lw	a4,0(s1)
    80005c68:	02e7e7bb          	remw	a5,a5,a4
    80005c6c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c70:	0284b503          	ld	a0,40(s1)
    80005c74:	ffffb097          	auipc	ra,0xffffb
    80005c78:	780080e7          	jalr	1920(ra) # 800013f4 <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    80005c7c:	0184b503          	ld	a0,24(s1)
    80005c80:	ffffb097          	auipc	ra,0xffffb
    80005c84:	774080e7          	jalr	1908(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005c88:	00090513          	mv	a0,s2
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	00813483          	ld	s1,8(sp)
    80005c98:	00013903          	ld	s2,0(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005ca4:	fe010113          	addi	sp,sp,-32
    80005ca8:	00113c23          	sd	ra,24(sp)
    80005cac:	00813823          	sd	s0,16(sp)
    80005cb0:	00913423          	sd	s1,8(sp)
    80005cb4:	01213023          	sd	s2,0(sp)
    80005cb8:	02010413          	addi	s0,sp,32
    80005cbc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005cc0:	02853503          	ld	a0,40(a0)
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	704080e7          	jalr	1796(ra) # 800013c8 <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    80005ccc:	0304b503          	ld	a0,48(s1)
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	6f8080e7          	jalr	1784(ra) # 800013c8 <_Z8sem_waitP3sem>

    if (tail >= head) {
    80005cd8:	0144a783          	lw	a5,20(s1)
    80005cdc:	0104a903          	lw	s2,16(s1)
    80005ce0:	0327ce63          	blt	a5,s2,80005d1c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005ce4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005ce8:	0304b503          	ld	a0,48(s1)
    80005cec:	ffffb097          	auipc	ra,0xffffb
    80005cf0:	708080e7          	jalr	1800(ra) # 800013f4 <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80005cf4:	0284b503          	ld	a0,40(s1)
    80005cf8:	ffffb097          	auipc	ra,0xffffb
    80005cfc:	6fc080e7          	jalr	1788(ra) # 800013f4 <_Z10sem_signalP3sem>

    return ret;
}
    80005d00:	00090513          	mv	a0,s2
    80005d04:	01813083          	ld	ra,24(sp)
    80005d08:	01013403          	ld	s0,16(sp)
    80005d0c:	00813483          	ld	s1,8(sp)
    80005d10:	00013903          	ld	s2,0(sp)
    80005d14:	02010113          	addi	sp,sp,32
    80005d18:	00008067          	ret
        ret = cap - head + tail;
    80005d1c:	0004a703          	lw	a4,0(s1)
    80005d20:	4127093b          	subw	s2,a4,s2
    80005d24:	00f9093b          	addw	s2,s2,a5
    80005d28:	fc1ff06f          	j	80005ce8 <_ZN6Buffer6getCntEv+0x44>

0000000080005d2c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d2c:	fe010113          	addi	sp,sp,-32
    80005d30:	00113c23          	sd	ra,24(sp)
    80005d34:	00813823          	sd	s0,16(sp)
    80005d38:	00913423          	sd	s1,8(sp)
    80005d3c:	02010413          	addi	s0,sp,32
    80005d40:	00050493          	mv	s1,a0
    putc('\n');
    80005d44:	00a00513          	li	a0,10
    80005d48:	ffffb097          	auipc	ra,0xffffb
    80005d4c:	72c080e7          	jalr	1836(ra) # 80001474 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005d50:	00002517          	auipc	a0,0x2
    80005d54:	5c850513          	addi	a0,a0,1480 # 80008318 <CONSOLE_STATUS+0x308>
    80005d58:	fffff097          	auipc	ra,0xfffff
    80005d5c:	e70080e7          	jalr	-400(ra) # 80004bc8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d60:	00048513          	mv	a0,s1
    80005d64:	00000097          	auipc	ra,0x0
    80005d68:	f40080e7          	jalr	-192(ra) # 80005ca4 <_ZN6Buffer6getCntEv>
    80005d6c:	02a05c63          	blez	a0,80005da4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d70:	0084b783          	ld	a5,8(s1)
    80005d74:	0104a703          	lw	a4,16(s1)
    80005d78:	00271713          	slli	a4,a4,0x2
    80005d7c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005d80:	0007c503          	lbu	a0,0(a5)
    80005d84:	ffffb097          	auipc	ra,0xffffb
    80005d88:	6f0080e7          	jalr	1776(ra) # 80001474 <_Z4putcc>
        head = (head + 1) % cap;
    80005d8c:	0104a783          	lw	a5,16(s1)
    80005d90:	0017879b          	addiw	a5,a5,1
    80005d94:	0004a703          	lw	a4,0(s1)
    80005d98:	02e7e7bb          	remw	a5,a5,a4
    80005d9c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005da0:	fc1ff06f          	j	80005d60 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005da4:	02100513          	li	a0,33
    80005da8:	ffffb097          	auipc	ra,0xffffb
    80005dac:	6cc080e7          	jalr	1740(ra) # 80001474 <_Z4putcc>
    putc('\n');
    80005db0:	00a00513          	li	a0,10
    80005db4:	ffffb097          	auipc	ra,0xffffb
    80005db8:	6c0080e7          	jalr	1728(ra) # 80001474 <_Z4putcc>
    mem_free(buffer);
    80005dbc:	0084b503          	ld	a0,8(s1)
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	4bc080e7          	jalr	1212(ra) # 8000127c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005dc8:	0204b503          	ld	a0,32(s1)
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	5d0080e7          	jalr	1488(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80005dd4:	0184b503          	ld	a0,24(s1)
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	5c4080e7          	jalr	1476(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80005de0:	0304b503          	ld	a0,48(s1)
    80005de4:	ffffb097          	auipc	ra,0xffffb
    80005de8:	5b8080e7          	jalr	1464(ra) # 8000139c <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    80005dec:	0284b503          	ld	a0,40(s1)
    80005df0:	ffffb097          	auipc	ra,0xffffb
    80005df4:	5ac080e7          	jalr	1452(ra) # 8000139c <_Z9sem_closeP3sem>
}
    80005df8:	01813083          	ld	ra,24(sp)
    80005dfc:	01013403          	ld	s0,16(sp)
    80005e00:	00813483          	ld	s1,8(sp)
    80005e04:	02010113          	addi	sp,sp,32
    80005e08:	00008067          	ret

0000000080005e0c <start>:
    80005e0c:	ff010113          	addi	sp,sp,-16
    80005e10:	00813423          	sd	s0,8(sp)
    80005e14:	01010413          	addi	s0,sp,16
    80005e18:	300027f3          	csrr	a5,mstatus
    80005e1c:	ffffe737          	lui	a4,0xffffe
    80005e20:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2dff>
    80005e24:	00e7f7b3          	and	a5,a5,a4
    80005e28:	00001737          	lui	a4,0x1
    80005e2c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e30:	00e7e7b3          	or	a5,a5,a4
    80005e34:	30079073          	csrw	mstatus,a5
    80005e38:	00000797          	auipc	a5,0x0
    80005e3c:	16078793          	addi	a5,a5,352 # 80005f98 <system_main>
    80005e40:	34179073          	csrw	mepc,a5
    80005e44:	00000793          	li	a5,0
    80005e48:	18079073          	csrw	satp,a5
    80005e4c:	000107b7          	lui	a5,0x10
    80005e50:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005e54:	30279073          	csrw	medeleg,a5
    80005e58:	30379073          	csrw	mideleg,a5
    80005e5c:	104027f3          	csrr	a5,sie
    80005e60:	2227e793          	ori	a5,a5,546
    80005e64:	10479073          	csrw	sie,a5
    80005e68:	fff00793          	li	a5,-1
    80005e6c:	00a7d793          	srli	a5,a5,0xa
    80005e70:	3b079073          	csrw	pmpaddr0,a5
    80005e74:	00f00793          	li	a5,15
    80005e78:	3a079073          	csrw	pmpcfg0,a5
    80005e7c:	f14027f3          	csrr	a5,mhartid
    80005e80:	0200c737          	lui	a4,0x200c
    80005e84:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005e88:	0007869b          	sext.w	a3,a5
    80005e8c:	00269713          	slli	a4,a3,0x2
    80005e90:	000f4637          	lui	a2,0xf4
    80005e94:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005e98:	00d70733          	add	a4,a4,a3
    80005e9c:	0037979b          	slliw	a5,a5,0x3
    80005ea0:	020046b7          	lui	a3,0x2004
    80005ea4:	00d787b3          	add	a5,a5,a3
    80005ea8:	00c585b3          	add	a1,a1,a2
    80005eac:	00371693          	slli	a3,a4,0x3
    80005eb0:	00005717          	auipc	a4,0x5
    80005eb4:	8f070713          	addi	a4,a4,-1808 # 8000a7a0 <timer_scratch>
    80005eb8:	00b7b023          	sd	a1,0(a5)
    80005ebc:	00d70733          	add	a4,a4,a3
    80005ec0:	00f73c23          	sd	a5,24(a4)
    80005ec4:	02c73023          	sd	a2,32(a4)
    80005ec8:	34071073          	csrw	mscratch,a4
    80005ecc:	00000797          	auipc	a5,0x0
    80005ed0:	6e478793          	addi	a5,a5,1764 # 800065b0 <timervec>
    80005ed4:	30579073          	csrw	mtvec,a5
    80005ed8:	300027f3          	csrr	a5,mstatus
    80005edc:	0087e793          	ori	a5,a5,8
    80005ee0:	30079073          	csrw	mstatus,a5
    80005ee4:	304027f3          	csrr	a5,mie
    80005ee8:	0807e793          	ori	a5,a5,128
    80005eec:	30479073          	csrw	mie,a5
    80005ef0:	f14027f3          	csrr	a5,mhartid
    80005ef4:	0007879b          	sext.w	a5,a5
    80005ef8:	00078213          	mv	tp,a5
    80005efc:	30200073          	mret
    80005f00:	00813403          	ld	s0,8(sp)
    80005f04:	01010113          	addi	sp,sp,16
    80005f08:	00008067          	ret

0000000080005f0c <timerinit>:
    80005f0c:	ff010113          	addi	sp,sp,-16
    80005f10:	00813423          	sd	s0,8(sp)
    80005f14:	01010413          	addi	s0,sp,16
    80005f18:	f14027f3          	csrr	a5,mhartid
    80005f1c:	0200c737          	lui	a4,0x200c
    80005f20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f24:	0007869b          	sext.w	a3,a5
    80005f28:	00269713          	slli	a4,a3,0x2
    80005f2c:	000f4637          	lui	a2,0xf4
    80005f30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f34:	00d70733          	add	a4,a4,a3
    80005f38:	0037979b          	slliw	a5,a5,0x3
    80005f3c:	020046b7          	lui	a3,0x2004
    80005f40:	00d787b3          	add	a5,a5,a3
    80005f44:	00c585b3          	add	a1,a1,a2
    80005f48:	00371693          	slli	a3,a4,0x3
    80005f4c:	00005717          	auipc	a4,0x5
    80005f50:	85470713          	addi	a4,a4,-1964 # 8000a7a0 <timer_scratch>
    80005f54:	00b7b023          	sd	a1,0(a5)
    80005f58:	00d70733          	add	a4,a4,a3
    80005f5c:	00f73c23          	sd	a5,24(a4)
    80005f60:	02c73023          	sd	a2,32(a4)
    80005f64:	34071073          	csrw	mscratch,a4
    80005f68:	00000797          	auipc	a5,0x0
    80005f6c:	64878793          	addi	a5,a5,1608 # 800065b0 <timervec>
    80005f70:	30579073          	csrw	mtvec,a5
    80005f74:	300027f3          	csrr	a5,mstatus
    80005f78:	0087e793          	ori	a5,a5,8
    80005f7c:	30079073          	csrw	mstatus,a5
    80005f80:	304027f3          	csrr	a5,mie
    80005f84:	0807e793          	ori	a5,a5,128
    80005f88:	30479073          	csrw	mie,a5
    80005f8c:	00813403          	ld	s0,8(sp)
    80005f90:	01010113          	addi	sp,sp,16
    80005f94:	00008067          	ret

0000000080005f98 <system_main>:
    80005f98:	fe010113          	addi	sp,sp,-32
    80005f9c:	00813823          	sd	s0,16(sp)
    80005fa0:	00913423          	sd	s1,8(sp)
    80005fa4:	00113c23          	sd	ra,24(sp)
    80005fa8:	02010413          	addi	s0,sp,32
    80005fac:	00000097          	auipc	ra,0x0
    80005fb0:	0c4080e7          	jalr	196(ra) # 80006070 <cpuid>
    80005fb4:	00004497          	auipc	s1,0x4
    80005fb8:	73c48493          	addi	s1,s1,1852 # 8000a6f0 <started>
    80005fbc:	02050263          	beqz	a0,80005fe0 <system_main+0x48>
    80005fc0:	0004a783          	lw	a5,0(s1)
    80005fc4:	0007879b          	sext.w	a5,a5
    80005fc8:	fe078ce3          	beqz	a5,80005fc0 <system_main+0x28>
    80005fcc:	0ff0000f          	fence
    80005fd0:	00002517          	auipc	a0,0x2
    80005fd4:	5d850513          	addi	a0,a0,1496 # 800085a8 <CONSOLE_STATUS+0x598>
    80005fd8:	00001097          	auipc	ra,0x1
    80005fdc:	a74080e7          	jalr	-1420(ra) # 80006a4c <panic>
    80005fe0:	00001097          	auipc	ra,0x1
    80005fe4:	9c8080e7          	jalr	-1592(ra) # 800069a8 <consoleinit>
    80005fe8:	00001097          	auipc	ra,0x1
    80005fec:	154080e7          	jalr	340(ra) # 8000713c <printfinit>
    80005ff0:	00002517          	auipc	a0,0x2
    80005ff4:	4b050513          	addi	a0,a0,1200 # 800084a0 <CONSOLE_STATUS+0x490>
    80005ff8:	00001097          	auipc	ra,0x1
    80005ffc:	ab0080e7          	jalr	-1360(ra) # 80006aa8 <__printf>
    80006000:	00002517          	auipc	a0,0x2
    80006004:	57850513          	addi	a0,a0,1400 # 80008578 <CONSOLE_STATUS+0x568>
    80006008:	00001097          	auipc	ra,0x1
    8000600c:	aa0080e7          	jalr	-1376(ra) # 80006aa8 <__printf>
    80006010:	00002517          	auipc	a0,0x2
    80006014:	49050513          	addi	a0,a0,1168 # 800084a0 <CONSOLE_STATUS+0x490>
    80006018:	00001097          	auipc	ra,0x1
    8000601c:	a90080e7          	jalr	-1392(ra) # 80006aa8 <__printf>
    80006020:	00001097          	auipc	ra,0x1
    80006024:	4a8080e7          	jalr	1192(ra) # 800074c8 <kinit>
    80006028:	00000097          	auipc	ra,0x0
    8000602c:	148080e7          	jalr	328(ra) # 80006170 <trapinit>
    80006030:	00000097          	auipc	ra,0x0
    80006034:	16c080e7          	jalr	364(ra) # 8000619c <trapinithart>
    80006038:	00000097          	auipc	ra,0x0
    8000603c:	5b8080e7          	jalr	1464(ra) # 800065f0 <plicinit>
    80006040:	00000097          	auipc	ra,0x0
    80006044:	5d8080e7          	jalr	1496(ra) # 80006618 <plicinithart>
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	078080e7          	jalr	120(ra) # 800060c0 <userinit>
    80006050:	0ff0000f          	fence
    80006054:	00100793          	li	a5,1
    80006058:	00002517          	auipc	a0,0x2
    8000605c:	53850513          	addi	a0,a0,1336 # 80008590 <CONSOLE_STATUS+0x580>
    80006060:	00f4a023          	sw	a5,0(s1)
    80006064:	00001097          	auipc	ra,0x1
    80006068:	a44080e7          	jalr	-1468(ra) # 80006aa8 <__printf>
    8000606c:	0000006f          	j	8000606c <system_main+0xd4>

0000000080006070 <cpuid>:
    80006070:	ff010113          	addi	sp,sp,-16
    80006074:	00813423          	sd	s0,8(sp)
    80006078:	01010413          	addi	s0,sp,16
    8000607c:	00020513          	mv	a0,tp
    80006080:	00813403          	ld	s0,8(sp)
    80006084:	0005051b          	sext.w	a0,a0
    80006088:	01010113          	addi	sp,sp,16
    8000608c:	00008067          	ret

0000000080006090 <mycpu>:
    80006090:	ff010113          	addi	sp,sp,-16
    80006094:	00813423          	sd	s0,8(sp)
    80006098:	01010413          	addi	s0,sp,16
    8000609c:	00020793          	mv	a5,tp
    800060a0:	00813403          	ld	s0,8(sp)
    800060a4:	0007879b          	sext.w	a5,a5
    800060a8:	00779793          	slli	a5,a5,0x7
    800060ac:	00005517          	auipc	a0,0x5
    800060b0:	72450513          	addi	a0,a0,1828 # 8000b7d0 <cpus>
    800060b4:	00f50533          	add	a0,a0,a5
    800060b8:	01010113          	addi	sp,sp,16
    800060bc:	00008067          	ret

00000000800060c0 <userinit>:
    800060c0:	ff010113          	addi	sp,sp,-16
    800060c4:	00813423          	sd	s0,8(sp)
    800060c8:	01010413          	addi	s0,sp,16
    800060cc:	00813403          	ld	s0,8(sp)
    800060d0:	01010113          	addi	sp,sp,16
    800060d4:	ffffb317          	auipc	t1,0xffffb
    800060d8:	78830067          	jr	1928(t1) # 8000185c <main>

00000000800060dc <either_copyout>:
    800060dc:	ff010113          	addi	sp,sp,-16
    800060e0:	00813023          	sd	s0,0(sp)
    800060e4:	00113423          	sd	ra,8(sp)
    800060e8:	01010413          	addi	s0,sp,16
    800060ec:	02051663          	bnez	a0,80006118 <either_copyout+0x3c>
    800060f0:	00058513          	mv	a0,a1
    800060f4:	00060593          	mv	a1,a2
    800060f8:	0006861b          	sext.w	a2,a3
    800060fc:	00002097          	auipc	ra,0x2
    80006100:	c58080e7          	jalr	-936(ra) # 80007d54 <__memmove>
    80006104:	00813083          	ld	ra,8(sp)
    80006108:	00013403          	ld	s0,0(sp)
    8000610c:	00000513          	li	a0,0
    80006110:	01010113          	addi	sp,sp,16
    80006114:	00008067          	ret
    80006118:	00002517          	auipc	a0,0x2
    8000611c:	4b850513          	addi	a0,a0,1208 # 800085d0 <CONSOLE_STATUS+0x5c0>
    80006120:	00001097          	auipc	ra,0x1
    80006124:	92c080e7          	jalr	-1748(ra) # 80006a4c <panic>

0000000080006128 <either_copyin>:
    80006128:	ff010113          	addi	sp,sp,-16
    8000612c:	00813023          	sd	s0,0(sp)
    80006130:	00113423          	sd	ra,8(sp)
    80006134:	01010413          	addi	s0,sp,16
    80006138:	02059463          	bnez	a1,80006160 <either_copyin+0x38>
    8000613c:	00060593          	mv	a1,a2
    80006140:	0006861b          	sext.w	a2,a3
    80006144:	00002097          	auipc	ra,0x2
    80006148:	c10080e7          	jalr	-1008(ra) # 80007d54 <__memmove>
    8000614c:	00813083          	ld	ra,8(sp)
    80006150:	00013403          	ld	s0,0(sp)
    80006154:	00000513          	li	a0,0
    80006158:	01010113          	addi	sp,sp,16
    8000615c:	00008067          	ret
    80006160:	00002517          	auipc	a0,0x2
    80006164:	49850513          	addi	a0,a0,1176 # 800085f8 <CONSOLE_STATUS+0x5e8>
    80006168:	00001097          	auipc	ra,0x1
    8000616c:	8e4080e7          	jalr	-1820(ra) # 80006a4c <panic>

0000000080006170 <trapinit>:
    80006170:	ff010113          	addi	sp,sp,-16
    80006174:	00813423          	sd	s0,8(sp)
    80006178:	01010413          	addi	s0,sp,16
    8000617c:	00813403          	ld	s0,8(sp)
    80006180:	00002597          	auipc	a1,0x2
    80006184:	4a058593          	addi	a1,a1,1184 # 80008620 <CONSOLE_STATUS+0x610>
    80006188:	00005517          	auipc	a0,0x5
    8000618c:	6c850513          	addi	a0,a0,1736 # 8000b850 <tickslock>
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00001317          	auipc	t1,0x1
    80006198:	5c430067          	jr	1476(t1) # 80007758 <initlock>

000000008000619c <trapinithart>:
    8000619c:	ff010113          	addi	sp,sp,-16
    800061a0:	00813423          	sd	s0,8(sp)
    800061a4:	01010413          	addi	s0,sp,16
    800061a8:	00000797          	auipc	a5,0x0
    800061ac:	2f878793          	addi	a5,a5,760 # 800064a0 <kernelvec>
    800061b0:	10579073          	csrw	stvec,a5
    800061b4:	00813403          	ld	s0,8(sp)
    800061b8:	01010113          	addi	sp,sp,16
    800061bc:	00008067          	ret

00000000800061c0 <usertrap>:
    800061c0:	ff010113          	addi	sp,sp,-16
    800061c4:	00813423          	sd	s0,8(sp)
    800061c8:	01010413          	addi	s0,sp,16
    800061cc:	00813403          	ld	s0,8(sp)
    800061d0:	01010113          	addi	sp,sp,16
    800061d4:	00008067          	ret

00000000800061d8 <usertrapret>:
    800061d8:	ff010113          	addi	sp,sp,-16
    800061dc:	00813423          	sd	s0,8(sp)
    800061e0:	01010413          	addi	s0,sp,16
    800061e4:	00813403          	ld	s0,8(sp)
    800061e8:	01010113          	addi	sp,sp,16
    800061ec:	00008067          	ret

00000000800061f0 <kerneltrap>:
    800061f0:	fe010113          	addi	sp,sp,-32
    800061f4:	00813823          	sd	s0,16(sp)
    800061f8:	00113c23          	sd	ra,24(sp)
    800061fc:	00913423          	sd	s1,8(sp)
    80006200:	02010413          	addi	s0,sp,32
    80006204:	142025f3          	csrr	a1,scause
    80006208:	100027f3          	csrr	a5,sstatus
    8000620c:	0027f793          	andi	a5,a5,2
    80006210:	10079c63          	bnez	a5,80006328 <kerneltrap+0x138>
    80006214:	142027f3          	csrr	a5,scause
    80006218:	0207ce63          	bltz	a5,80006254 <kerneltrap+0x64>
    8000621c:	00002517          	auipc	a0,0x2
    80006220:	44c50513          	addi	a0,a0,1100 # 80008668 <CONSOLE_STATUS+0x658>
    80006224:	00001097          	auipc	ra,0x1
    80006228:	884080e7          	jalr	-1916(ra) # 80006aa8 <__printf>
    8000622c:	141025f3          	csrr	a1,sepc
    80006230:	14302673          	csrr	a2,stval
    80006234:	00002517          	auipc	a0,0x2
    80006238:	44450513          	addi	a0,a0,1092 # 80008678 <CONSOLE_STATUS+0x668>
    8000623c:	00001097          	auipc	ra,0x1
    80006240:	86c080e7          	jalr	-1940(ra) # 80006aa8 <__printf>
    80006244:	00002517          	auipc	a0,0x2
    80006248:	44c50513          	addi	a0,a0,1100 # 80008690 <CONSOLE_STATUS+0x680>
    8000624c:	00001097          	auipc	ra,0x1
    80006250:	800080e7          	jalr	-2048(ra) # 80006a4c <panic>
    80006254:	0ff7f713          	andi	a4,a5,255
    80006258:	00900693          	li	a3,9
    8000625c:	04d70063          	beq	a4,a3,8000629c <kerneltrap+0xac>
    80006260:	fff00713          	li	a4,-1
    80006264:	03f71713          	slli	a4,a4,0x3f
    80006268:	00170713          	addi	a4,a4,1
    8000626c:	fae798e3          	bne	a5,a4,8000621c <kerneltrap+0x2c>
    80006270:	00000097          	auipc	ra,0x0
    80006274:	e00080e7          	jalr	-512(ra) # 80006070 <cpuid>
    80006278:	06050663          	beqz	a0,800062e4 <kerneltrap+0xf4>
    8000627c:	144027f3          	csrr	a5,sip
    80006280:	ffd7f793          	andi	a5,a5,-3
    80006284:	14479073          	csrw	sip,a5
    80006288:	01813083          	ld	ra,24(sp)
    8000628c:	01013403          	ld	s0,16(sp)
    80006290:	00813483          	ld	s1,8(sp)
    80006294:	02010113          	addi	sp,sp,32
    80006298:	00008067          	ret
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	3c8080e7          	jalr	968(ra) # 80006664 <plic_claim>
    800062a4:	00a00793          	li	a5,10
    800062a8:	00050493          	mv	s1,a0
    800062ac:	06f50863          	beq	a0,a5,8000631c <kerneltrap+0x12c>
    800062b0:	fc050ce3          	beqz	a0,80006288 <kerneltrap+0x98>
    800062b4:	00050593          	mv	a1,a0
    800062b8:	00002517          	auipc	a0,0x2
    800062bc:	39050513          	addi	a0,a0,912 # 80008648 <CONSOLE_STATUS+0x638>
    800062c0:	00000097          	auipc	ra,0x0
    800062c4:	7e8080e7          	jalr	2024(ra) # 80006aa8 <__printf>
    800062c8:	01013403          	ld	s0,16(sp)
    800062cc:	01813083          	ld	ra,24(sp)
    800062d0:	00048513          	mv	a0,s1
    800062d4:	00813483          	ld	s1,8(sp)
    800062d8:	02010113          	addi	sp,sp,32
    800062dc:	00000317          	auipc	t1,0x0
    800062e0:	3c030067          	jr	960(t1) # 8000669c <plic_complete>
    800062e4:	00005517          	auipc	a0,0x5
    800062e8:	56c50513          	addi	a0,a0,1388 # 8000b850 <tickslock>
    800062ec:	00001097          	auipc	ra,0x1
    800062f0:	490080e7          	jalr	1168(ra) # 8000777c <acquire>
    800062f4:	00004717          	auipc	a4,0x4
    800062f8:	40070713          	addi	a4,a4,1024 # 8000a6f4 <ticks>
    800062fc:	00072783          	lw	a5,0(a4)
    80006300:	00005517          	auipc	a0,0x5
    80006304:	55050513          	addi	a0,a0,1360 # 8000b850 <tickslock>
    80006308:	0017879b          	addiw	a5,a5,1
    8000630c:	00f72023          	sw	a5,0(a4)
    80006310:	00001097          	auipc	ra,0x1
    80006314:	538080e7          	jalr	1336(ra) # 80007848 <release>
    80006318:	f65ff06f          	j	8000627c <kerneltrap+0x8c>
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	094080e7          	jalr	148(ra) # 800073b0 <uartintr>
    80006324:	fa5ff06f          	j	800062c8 <kerneltrap+0xd8>
    80006328:	00002517          	auipc	a0,0x2
    8000632c:	30050513          	addi	a0,a0,768 # 80008628 <CONSOLE_STATUS+0x618>
    80006330:	00000097          	auipc	ra,0x0
    80006334:	71c080e7          	jalr	1820(ra) # 80006a4c <panic>

0000000080006338 <clockintr>:
    80006338:	fe010113          	addi	sp,sp,-32
    8000633c:	00813823          	sd	s0,16(sp)
    80006340:	00913423          	sd	s1,8(sp)
    80006344:	00113c23          	sd	ra,24(sp)
    80006348:	02010413          	addi	s0,sp,32
    8000634c:	00005497          	auipc	s1,0x5
    80006350:	50448493          	addi	s1,s1,1284 # 8000b850 <tickslock>
    80006354:	00048513          	mv	a0,s1
    80006358:	00001097          	auipc	ra,0x1
    8000635c:	424080e7          	jalr	1060(ra) # 8000777c <acquire>
    80006360:	00004717          	auipc	a4,0x4
    80006364:	39470713          	addi	a4,a4,916 # 8000a6f4 <ticks>
    80006368:	00072783          	lw	a5,0(a4)
    8000636c:	01013403          	ld	s0,16(sp)
    80006370:	01813083          	ld	ra,24(sp)
    80006374:	00048513          	mv	a0,s1
    80006378:	0017879b          	addiw	a5,a5,1
    8000637c:	00813483          	ld	s1,8(sp)
    80006380:	00f72023          	sw	a5,0(a4)
    80006384:	02010113          	addi	sp,sp,32
    80006388:	00001317          	auipc	t1,0x1
    8000638c:	4c030067          	jr	1216(t1) # 80007848 <release>

0000000080006390 <devintr>:
    80006390:	142027f3          	csrr	a5,scause
    80006394:	00000513          	li	a0,0
    80006398:	0007c463          	bltz	a5,800063a0 <devintr+0x10>
    8000639c:	00008067          	ret
    800063a0:	fe010113          	addi	sp,sp,-32
    800063a4:	00813823          	sd	s0,16(sp)
    800063a8:	00113c23          	sd	ra,24(sp)
    800063ac:	00913423          	sd	s1,8(sp)
    800063b0:	02010413          	addi	s0,sp,32
    800063b4:	0ff7f713          	andi	a4,a5,255
    800063b8:	00900693          	li	a3,9
    800063bc:	04d70c63          	beq	a4,a3,80006414 <devintr+0x84>
    800063c0:	fff00713          	li	a4,-1
    800063c4:	03f71713          	slli	a4,a4,0x3f
    800063c8:	00170713          	addi	a4,a4,1
    800063cc:	00e78c63          	beq	a5,a4,800063e4 <devintr+0x54>
    800063d0:	01813083          	ld	ra,24(sp)
    800063d4:	01013403          	ld	s0,16(sp)
    800063d8:	00813483          	ld	s1,8(sp)
    800063dc:	02010113          	addi	sp,sp,32
    800063e0:	00008067          	ret
    800063e4:	00000097          	auipc	ra,0x0
    800063e8:	c8c080e7          	jalr	-884(ra) # 80006070 <cpuid>
    800063ec:	06050663          	beqz	a0,80006458 <devintr+0xc8>
    800063f0:	144027f3          	csrr	a5,sip
    800063f4:	ffd7f793          	andi	a5,a5,-3
    800063f8:	14479073          	csrw	sip,a5
    800063fc:	01813083          	ld	ra,24(sp)
    80006400:	01013403          	ld	s0,16(sp)
    80006404:	00813483          	ld	s1,8(sp)
    80006408:	00200513          	li	a0,2
    8000640c:	02010113          	addi	sp,sp,32
    80006410:	00008067          	ret
    80006414:	00000097          	auipc	ra,0x0
    80006418:	250080e7          	jalr	592(ra) # 80006664 <plic_claim>
    8000641c:	00a00793          	li	a5,10
    80006420:	00050493          	mv	s1,a0
    80006424:	06f50663          	beq	a0,a5,80006490 <devintr+0x100>
    80006428:	00100513          	li	a0,1
    8000642c:	fa0482e3          	beqz	s1,800063d0 <devintr+0x40>
    80006430:	00048593          	mv	a1,s1
    80006434:	00002517          	auipc	a0,0x2
    80006438:	21450513          	addi	a0,a0,532 # 80008648 <CONSOLE_STATUS+0x638>
    8000643c:	00000097          	auipc	ra,0x0
    80006440:	66c080e7          	jalr	1644(ra) # 80006aa8 <__printf>
    80006444:	00048513          	mv	a0,s1
    80006448:	00000097          	auipc	ra,0x0
    8000644c:	254080e7          	jalr	596(ra) # 8000669c <plic_complete>
    80006450:	00100513          	li	a0,1
    80006454:	f7dff06f          	j	800063d0 <devintr+0x40>
    80006458:	00005517          	auipc	a0,0x5
    8000645c:	3f850513          	addi	a0,a0,1016 # 8000b850 <tickslock>
    80006460:	00001097          	auipc	ra,0x1
    80006464:	31c080e7          	jalr	796(ra) # 8000777c <acquire>
    80006468:	00004717          	auipc	a4,0x4
    8000646c:	28c70713          	addi	a4,a4,652 # 8000a6f4 <ticks>
    80006470:	00072783          	lw	a5,0(a4)
    80006474:	00005517          	auipc	a0,0x5
    80006478:	3dc50513          	addi	a0,a0,988 # 8000b850 <tickslock>
    8000647c:	0017879b          	addiw	a5,a5,1
    80006480:	00f72023          	sw	a5,0(a4)
    80006484:	00001097          	auipc	ra,0x1
    80006488:	3c4080e7          	jalr	964(ra) # 80007848 <release>
    8000648c:	f65ff06f          	j	800063f0 <devintr+0x60>
    80006490:	00001097          	auipc	ra,0x1
    80006494:	f20080e7          	jalr	-224(ra) # 800073b0 <uartintr>
    80006498:	fadff06f          	j	80006444 <devintr+0xb4>
    8000649c:	0000                	unimp
	...

00000000800064a0 <kernelvec>:
    800064a0:	f0010113          	addi	sp,sp,-256
    800064a4:	00113023          	sd	ra,0(sp)
    800064a8:	00213423          	sd	sp,8(sp)
    800064ac:	00313823          	sd	gp,16(sp)
    800064b0:	00413c23          	sd	tp,24(sp)
    800064b4:	02513023          	sd	t0,32(sp)
    800064b8:	02613423          	sd	t1,40(sp)
    800064bc:	02713823          	sd	t2,48(sp)
    800064c0:	02813c23          	sd	s0,56(sp)
    800064c4:	04913023          	sd	s1,64(sp)
    800064c8:	04a13423          	sd	a0,72(sp)
    800064cc:	04b13823          	sd	a1,80(sp)
    800064d0:	04c13c23          	sd	a2,88(sp)
    800064d4:	06d13023          	sd	a3,96(sp)
    800064d8:	06e13423          	sd	a4,104(sp)
    800064dc:	06f13823          	sd	a5,112(sp)
    800064e0:	07013c23          	sd	a6,120(sp)
    800064e4:	09113023          	sd	a7,128(sp)
    800064e8:	09213423          	sd	s2,136(sp)
    800064ec:	09313823          	sd	s3,144(sp)
    800064f0:	09413c23          	sd	s4,152(sp)
    800064f4:	0b513023          	sd	s5,160(sp)
    800064f8:	0b613423          	sd	s6,168(sp)
    800064fc:	0b713823          	sd	s7,176(sp)
    80006500:	0b813c23          	sd	s8,184(sp)
    80006504:	0d913023          	sd	s9,192(sp)
    80006508:	0da13423          	sd	s10,200(sp)
    8000650c:	0db13823          	sd	s11,208(sp)
    80006510:	0dc13c23          	sd	t3,216(sp)
    80006514:	0fd13023          	sd	t4,224(sp)
    80006518:	0fe13423          	sd	t5,232(sp)
    8000651c:	0ff13823          	sd	t6,240(sp)
    80006520:	cd1ff0ef          	jal	ra,800061f0 <kerneltrap>
    80006524:	00013083          	ld	ra,0(sp)
    80006528:	00813103          	ld	sp,8(sp)
    8000652c:	01013183          	ld	gp,16(sp)
    80006530:	02013283          	ld	t0,32(sp)
    80006534:	02813303          	ld	t1,40(sp)
    80006538:	03013383          	ld	t2,48(sp)
    8000653c:	03813403          	ld	s0,56(sp)
    80006540:	04013483          	ld	s1,64(sp)
    80006544:	04813503          	ld	a0,72(sp)
    80006548:	05013583          	ld	a1,80(sp)
    8000654c:	05813603          	ld	a2,88(sp)
    80006550:	06013683          	ld	a3,96(sp)
    80006554:	06813703          	ld	a4,104(sp)
    80006558:	07013783          	ld	a5,112(sp)
    8000655c:	07813803          	ld	a6,120(sp)
    80006560:	08013883          	ld	a7,128(sp)
    80006564:	08813903          	ld	s2,136(sp)
    80006568:	09013983          	ld	s3,144(sp)
    8000656c:	09813a03          	ld	s4,152(sp)
    80006570:	0a013a83          	ld	s5,160(sp)
    80006574:	0a813b03          	ld	s6,168(sp)
    80006578:	0b013b83          	ld	s7,176(sp)
    8000657c:	0b813c03          	ld	s8,184(sp)
    80006580:	0c013c83          	ld	s9,192(sp)
    80006584:	0c813d03          	ld	s10,200(sp)
    80006588:	0d013d83          	ld	s11,208(sp)
    8000658c:	0d813e03          	ld	t3,216(sp)
    80006590:	0e013e83          	ld	t4,224(sp)
    80006594:	0e813f03          	ld	t5,232(sp)
    80006598:	0f013f83          	ld	t6,240(sp)
    8000659c:	10010113          	addi	sp,sp,256
    800065a0:	10200073          	sret
    800065a4:	00000013          	nop
    800065a8:	00000013          	nop
    800065ac:	00000013          	nop

00000000800065b0 <timervec>:
    800065b0:	34051573          	csrrw	a0,mscratch,a0
    800065b4:	00b53023          	sd	a1,0(a0)
    800065b8:	00c53423          	sd	a2,8(a0)
    800065bc:	00d53823          	sd	a3,16(a0)
    800065c0:	01853583          	ld	a1,24(a0)
    800065c4:	02053603          	ld	a2,32(a0)
    800065c8:	0005b683          	ld	a3,0(a1)
    800065cc:	00c686b3          	add	a3,a3,a2
    800065d0:	00d5b023          	sd	a3,0(a1)
    800065d4:	00200593          	li	a1,2
    800065d8:	14459073          	csrw	sip,a1
    800065dc:	01053683          	ld	a3,16(a0)
    800065e0:	00853603          	ld	a2,8(a0)
    800065e4:	00053583          	ld	a1,0(a0)
    800065e8:	34051573          	csrrw	a0,mscratch,a0
    800065ec:	30200073          	mret

00000000800065f0 <plicinit>:
    800065f0:	ff010113          	addi	sp,sp,-16
    800065f4:	00813423          	sd	s0,8(sp)
    800065f8:	01010413          	addi	s0,sp,16
    800065fc:	00813403          	ld	s0,8(sp)
    80006600:	0c0007b7          	lui	a5,0xc000
    80006604:	00100713          	li	a4,1
    80006608:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000660c:	00e7a223          	sw	a4,4(a5)
    80006610:	01010113          	addi	sp,sp,16
    80006614:	00008067          	ret

0000000080006618 <plicinithart>:
    80006618:	ff010113          	addi	sp,sp,-16
    8000661c:	00813023          	sd	s0,0(sp)
    80006620:	00113423          	sd	ra,8(sp)
    80006624:	01010413          	addi	s0,sp,16
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	a48080e7          	jalr	-1464(ra) # 80006070 <cpuid>
    80006630:	0085171b          	slliw	a4,a0,0x8
    80006634:	0c0027b7          	lui	a5,0xc002
    80006638:	00e787b3          	add	a5,a5,a4
    8000663c:	40200713          	li	a4,1026
    80006640:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006644:	00813083          	ld	ra,8(sp)
    80006648:	00013403          	ld	s0,0(sp)
    8000664c:	00d5151b          	slliw	a0,a0,0xd
    80006650:	0c2017b7          	lui	a5,0xc201
    80006654:	00a78533          	add	a0,a5,a0
    80006658:	00052023          	sw	zero,0(a0)
    8000665c:	01010113          	addi	sp,sp,16
    80006660:	00008067          	ret

0000000080006664 <plic_claim>:
    80006664:	ff010113          	addi	sp,sp,-16
    80006668:	00813023          	sd	s0,0(sp)
    8000666c:	00113423          	sd	ra,8(sp)
    80006670:	01010413          	addi	s0,sp,16
    80006674:	00000097          	auipc	ra,0x0
    80006678:	9fc080e7          	jalr	-1540(ra) # 80006070 <cpuid>
    8000667c:	00813083          	ld	ra,8(sp)
    80006680:	00013403          	ld	s0,0(sp)
    80006684:	00d5151b          	slliw	a0,a0,0xd
    80006688:	0c2017b7          	lui	a5,0xc201
    8000668c:	00a78533          	add	a0,a5,a0
    80006690:	00452503          	lw	a0,4(a0)
    80006694:	01010113          	addi	sp,sp,16
    80006698:	00008067          	ret

000000008000669c <plic_complete>:
    8000669c:	fe010113          	addi	sp,sp,-32
    800066a0:	00813823          	sd	s0,16(sp)
    800066a4:	00913423          	sd	s1,8(sp)
    800066a8:	00113c23          	sd	ra,24(sp)
    800066ac:	02010413          	addi	s0,sp,32
    800066b0:	00050493          	mv	s1,a0
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	9bc080e7          	jalr	-1604(ra) # 80006070 <cpuid>
    800066bc:	01813083          	ld	ra,24(sp)
    800066c0:	01013403          	ld	s0,16(sp)
    800066c4:	00d5179b          	slliw	a5,a0,0xd
    800066c8:	0c201737          	lui	a4,0xc201
    800066cc:	00f707b3          	add	a5,a4,a5
    800066d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800066d4:	00813483          	ld	s1,8(sp)
    800066d8:	02010113          	addi	sp,sp,32
    800066dc:	00008067          	ret

00000000800066e0 <consolewrite>:
    800066e0:	fb010113          	addi	sp,sp,-80
    800066e4:	04813023          	sd	s0,64(sp)
    800066e8:	04113423          	sd	ra,72(sp)
    800066ec:	02913c23          	sd	s1,56(sp)
    800066f0:	03213823          	sd	s2,48(sp)
    800066f4:	03313423          	sd	s3,40(sp)
    800066f8:	03413023          	sd	s4,32(sp)
    800066fc:	01513c23          	sd	s5,24(sp)
    80006700:	05010413          	addi	s0,sp,80
    80006704:	06c05c63          	blez	a2,8000677c <consolewrite+0x9c>
    80006708:	00060993          	mv	s3,a2
    8000670c:	00050a13          	mv	s4,a0
    80006710:	00058493          	mv	s1,a1
    80006714:	00000913          	li	s2,0
    80006718:	fff00a93          	li	s5,-1
    8000671c:	01c0006f          	j	80006738 <consolewrite+0x58>
    80006720:	fbf44503          	lbu	a0,-65(s0)
    80006724:	0019091b          	addiw	s2,s2,1
    80006728:	00148493          	addi	s1,s1,1
    8000672c:	00001097          	auipc	ra,0x1
    80006730:	a9c080e7          	jalr	-1380(ra) # 800071c8 <uartputc>
    80006734:	03298063          	beq	s3,s2,80006754 <consolewrite+0x74>
    80006738:	00048613          	mv	a2,s1
    8000673c:	00100693          	li	a3,1
    80006740:	000a0593          	mv	a1,s4
    80006744:	fbf40513          	addi	a0,s0,-65
    80006748:	00000097          	auipc	ra,0x0
    8000674c:	9e0080e7          	jalr	-1568(ra) # 80006128 <either_copyin>
    80006750:	fd5518e3          	bne	a0,s5,80006720 <consolewrite+0x40>
    80006754:	04813083          	ld	ra,72(sp)
    80006758:	04013403          	ld	s0,64(sp)
    8000675c:	03813483          	ld	s1,56(sp)
    80006760:	02813983          	ld	s3,40(sp)
    80006764:	02013a03          	ld	s4,32(sp)
    80006768:	01813a83          	ld	s5,24(sp)
    8000676c:	00090513          	mv	a0,s2
    80006770:	03013903          	ld	s2,48(sp)
    80006774:	05010113          	addi	sp,sp,80
    80006778:	00008067          	ret
    8000677c:	00000913          	li	s2,0
    80006780:	fd5ff06f          	j	80006754 <consolewrite+0x74>

0000000080006784 <consoleread>:
    80006784:	f9010113          	addi	sp,sp,-112
    80006788:	06813023          	sd	s0,96(sp)
    8000678c:	04913c23          	sd	s1,88(sp)
    80006790:	05213823          	sd	s2,80(sp)
    80006794:	05313423          	sd	s3,72(sp)
    80006798:	05413023          	sd	s4,64(sp)
    8000679c:	03513c23          	sd	s5,56(sp)
    800067a0:	03613823          	sd	s6,48(sp)
    800067a4:	03713423          	sd	s7,40(sp)
    800067a8:	03813023          	sd	s8,32(sp)
    800067ac:	06113423          	sd	ra,104(sp)
    800067b0:	01913c23          	sd	s9,24(sp)
    800067b4:	07010413          	addi	s0,sp,112
    800067b8:	00060b93          	mv	s7,a2
    800067bc:	00050913          	mv	s2,a0
    800067c0:	00058c13          	mv	s8,a1
    800067c4:	00060b1b          	sext.w	s6,a2
    800067c8:	00005497          	auipc	s1,0x5
    800067cc:	0b048493          	addi	s1,s1,176 # 8000b878 <cons>
    800067d0:	00400993          	li	s3,4
    800067d4:	fff00a13          	li	s4,-1
    800067d8:	00a00a93          	li	s5,10
    800067dc:	05705e63          	blez	s7,80006838 <consoleread+0xb4>
    800067e0:	09c4a703          	lw	a4,156(s1)
    800067e4:	0984a783          	lw	a5,152(s1)
    800067e8:	0007071b          	sext.w	a4,a4
    800067ec:	08e78463          	beq	a5,a4,80006874 <consoleread+0xf0>
    800067f0:	07f7f713          	andi	a4,a5,127
    800067f4:	00e48733          	add	a4,s1,a4
    800067f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800067fc:	0017869b          	addiw	a3,a5,1
    80006800:	08d4ac23          	sw	a3,152(s1)
    80006804:	00070c9b          	sext.w	s9,a4
    80006808:	0b370663          	beq	a4,s3,800068b4 <consoleread+0x130>
    8000680c:	00100693          	li	a3,1
    80006810:	f9f40613          	addi	a2,s0,-97
    80006814:	000c0593          	mv	a1,s8
    80006818:	00090513          	mv	a0,s2
    8000681c:	f8e40fa3          	sb	a4,-97(s0)
    80006820:	00000097          	auipc	ra,0x0
    80006824:	8bc080e7          	jalr	-1860(ra) # 800060dc <either_copyout>
    80006828:	01450863          	beq	a0,s4,80006838 <consoleread+0xb4>
    8000682c:	001c0c13          	addi	s8,s8,1
    80006830:	fffb8b9b          	addiw	s7,s7,-1
    80006834:	fb5c94e3          	bne	s9,s5,800067dc <consoleread+0x58>
    80006838:	000b851b          	sext.w	a0,s7
    8000683c:	06813083          	ld	ra,104(sp)
    80006840:	06013403          	ld	s0,96(sp)
    80006844:	05813483          	ld	s1,88(sp)
    80006848:	05013903          	ld	s2,80(sp)
    8000684c:	04813983          	ld	s3,72(sp)
    80006850:	04013a03          	ld	s4,64(sp)
    80006854:	03813a83          	ld	s5,56(sp)
    80006858:	02813b83          	ld	s7,40(sp)
    8000685c:	02013c03          	ld	s8,32(sp)
    80006860:	01813c83          	ld	s9,24(sp)
    80006864:	40ab053b          	subw	a0,s6,a0
    80006868:	03013b03          	ld	s6,48(sp)
    8000686c:	07010113          	addi	sp,sp,112
    80006870:	00008067          	ret
    80006874:	00001097          	auipc	ra,0x1
    80006878:	1d8080e7          	jalr	472(ra) # 80007a4c <push_on>
    8000687c:	0984a703          	lw	a4,152(s1)
    80006880:	09c4a783          	lw	a5,156(s1)
    80006884:	0007879b          	sext.w	a5,a5
    80006888:	fef70ce3          	beq	a4,a5,80006880 <consoleread+0xfc>
    8000688c:	00001097          	auipc	ra,0x1
    80006890:	234080e7          	jalr	564(ra) # 80007ac0 <pop_on>
    80006894:	0984a783          	lw	a5,152(s1)
    80006898:	07f7f713          	andi	a4,a5,127
    8000689c:	00e48733          	add	a4,s1,a4
    800068a0:	01874703          	lbu	a4,24(a4)
    800068a4:	0017869b          	addiw	a3,a5,1
    800068a8:	08d4ac23          	sw	a3,152(s1)
    800068ac:	00070c9b          	sext.w	s9,a4
    800068b0:	f5371ee3          	bne	a4,s3,8000680c <consoleread+0x88>
    800068b4:	000b851b          	sext.w	a0,s7
    800068b8:	f96bf2e3          	bgeu	s7,s6,8000683c <consoleread+0xb8>
    800068bc:	08f4ac23          	sw	a5,152(s1)
    800068c0:	f7dff06f          	j	8000683c <consoleread+0xb8>

00000000800068c4 <consputc>:
    800068c4:	10000793          	li	a5,256
    800068c8:	00f50663          	beq	a0,a5,800068d4 <consputc+0x10>
    800068cc:	00001317          	auipc	t1,0x1
    800068d0:	9f430067          	jr	-1548(t1) # 800072c0 <uartputc_sync>
    800068d4:	ff010113          	addi	sp,sp,-16
    800068d8:	00113423          	sd	ra,8(sp)
    800068dc:	00813023          	sd	s0,0(sp)
    800068e0:	01010413          	addi	s0,sp,16
    800068e4:	00800513          	li	a0,8
    800068e8:	00001097          	auipc	ra,0x1
    800068ec:	9d8080e7          	jalr	-1576(ra) # 800072c0 <uartputc_sync>
    800068f0:	02000513          	li	a0,32
    800068f4:	00001097          	auipc	ra,0x1
    800068f8:	9cc080e7          	jalr	-1588(ra) # 800072c0 <uartputc_sync>
    800068fc:	00013403          	ld	s0,0(sp)
    80006900:	00813083          	ld	ra,8(sp)
    80006904:	00800513          	li	a0,8
    80006908:	01010113          	addi	sp,sp,16
    8000690c:	00001317          	auipc	t1,0x1
    80006910:	9b430067          	jr	-1612(t1) # 800072c0 <uartputc_sync>

0000000080006914 <consoleintr>:
    80006914:	fe010113          	addi	sp,sp,-32
    80006918:	00813823          	sd	s0,16(sp)
    8000691c:	00913423          	sd	s1,8(sp)
    80006920:	01213023          	sd	s2,0(sp)
    80006924:	00113c23          	sd	ra,24(sp)
    80006928:	02010413          	addi	s0,sp,32
    8000692c:	00005917          	auipc	s2,0x5
    80006930:	f4c90913          	addi	s2,s2,-180 # 8000b878 <cons>
    80006934:	00050493          	mv	s1,a0
    80006938:	00090513          	mv	a0,s2
    8000693c:	00001097          	auipc	ra,0x1
    80006940:	e40080e7          	jalr	-448(ra) # 8000777c <acquire>
    80006944:	02048c63          	beqz	s1,8000697c <consoleintr+0x68>
    80006948:	0a092783          	lw	a5,160(s2)
    8000694c:	09892703          	lw	a4,152(s2)
    80006950:	07f00693          	li	a3,127
    80006954:	40e7873b          	subw	a4,a5,a4
    80006958:	02e6e263          	bltu	a3,a4,8000697c <consoleintr+0x68>
    8000695c:	00d00713          	li	a4,13
    80006960:	04e48063          	beq	s1,a4,800069a0 <consoleintr+0x8c>
    80006964:	07f7f713          	andi	a4,a5,127
    80006968:	00e90733          	add	a4,s2,a4
    8000696c:	0017879b          	addiw	a5,a5,1
    80006970:	0af92023          	sw	a5,160(s2)
    80006974:	00970c23          	sb	s1,24(a4)
    80006978:	08f92e23          	sw	a5,156(s2)
    8000697c:	01013403          	ld	s0,16(sp)
    80006980:	01813083          	ld	ra,24(sp)
    80006984:	00813483          	ld	s1,8(sp)
    80006988:	00013903          	ld	s2,0(sp)
    8000698c:	00005517          	auipc	a0,0x5
    80006990:	eec50513          	addi	a0,a0,-276 # 8000b878 <cons>
    80006994:	02010113          	addi	sp,sp,32
    80006998:	00001317          	auipc	t1,0x1
    8000699c:	eb030067          	jr	-336(t1) # 80007848 <release>
    800069a0:	00a00493          	li	s1,10
    800069a4:	fc1ff06f          	j	80006964 <consoleintr+0x50>

00000000800069a8 <consoleinit>:
    800069a8:	fe010113          	addi	sp,sp,-32
    800069ac:	00113c23          	sd	ra,24(sp)
    800069b0:	00813823          	sd	s0,16(sp)
    800069b4:	00913423          	sd	s1,8(sp)
    800069b8:	02010413          	addi	s0,sp,32
    800069bc:	00005497          	auipc	s1,0x5
    800069c0:	ebc48493          	addi	s1,s1,-324 # 8000b878 <cons>
    800069c4:	00048513          	mv	a0,s1
    800069c8:	00002597          	auipc	a1,0x2
    800069cc:	cd858593          	addi	a1,a1,-808 # 800086a0 <CONSOLE_STATUS+0x690>
    800069d0:	00001097          	auipc	ra,0x1
    800069d4:	d88080e7          	jalr	-632(ra) # 80007758 <initlock>
    800069d8:	00000097          	auipc	ra,0x0
    800069dc:	7ac080e7          	jalr	1964(ra) # 80007184 <uartinit>
    800069e0:	01813083          	ld	ra,24(sp)
    800069e4:	01013403          	ld	s0,16(sp)
    800069e8:	00000797          	auipc	a5,0x0
    800069ec:	d9c78793          	addi	a5,a5,-612 # 80006784 <consoleread>
    800069f0:	0af4bc23          	sd	a5,184(s1)
    800069f4:	00000797          	auipc	a5,0x0
    800069f8:	cec78793          	addi	a5,a5,-788 # 800066e0 <consolewrite>
    800069fc:	0cf4b023          	sd	a5,192(s1)
    80006a00:	00813483          	ld	s1,8(sp)
    80006a04:	02010113          	addi	sp,sp,32
    80006a08:	00008067          	ret

0000000080006a0c <console_read>:
    80006a0c:	ff010113          	addi	sp,sp,-16
    80006a10:	00813423          	sd	s0,8(sp)
    80006a14:	01010413          	addi	s0,sp,16
    80006a18:	00813403          	ld	s0,8(sp)
    80006a1c:	00005317          	auipc	t1,0x5
    80006a20:	f1433303          	ld	t1,-236(t1) # 8000b930 <devsw+0x10>
    80006a24:	01010113          	addi	sp,sp,16
    80006a28:	00030067          	jr	t1

0000000080006a2c <console_write>:
    80006a2c:	ff010113          	addi	sp,sp,-16
    80006a30:	00813423          	sd	s0,8(sp)
    80006a34:	01010413          	addi	s0,sp,16
    80006a38:	00813403          	ld	s0,8(sp)
    80006a3c:	00005317          	auipc	t1,0x5
    80006a40:	efc33303          	ld	t1,-260(t1) # 8000b938 <devsw+0x18>
    80006a44:	01010113          	addi	sp,sp,16
    80006a48:	00030067          	jr	t1

0000000080006a4c <panic>:
    80006a4c:	fe010113          	addi	sp,sp,-32
    80006a50:	00113c23          	sd	ra,24(sp)
    80006a54:	00813823          	sd	s0,16(sp)
    80006a58:	00913423          	sd	s1,8(sp)
    80006a5c:	02010413          	addi	s0,sp,32
    80006a60:	00050493          	mv	s1,a0
    80006a64:	00002517          	auipc	a0,0x2
    80006a68:	c4450513          	addi	a0,a0,-956 # 800086a8 <CONSOLE_STATUS+0x698>
    80006a6c:	00005797          	auipc	a5,0x5
    80006a70:	f607a623          	sw	zero,-148(a5) # 8000b9d8 <pr+0x18>
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	034080e7          	jalr	52(ra) # 80006aa8 <__printf>
    80006a7c:	00048513          	mv	a0,s1
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	028080e7          	jalr	40(ra) # 80006aa8 <__printf>
    80006a88:	00002517          	auipc	a0,0x2
    80006a8c:	a1850513          	addi	a0,a0,-1512 # 800084a0 <CONSOLE_STATUS+0x490>
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	018080e7          	jalr	24(ra) # 80006aa8 <__printf>
    80006a98:	00100793          	li	a5,1
    80006a9c:	00004717          	auipc	a4,0x4
    80006aa0:	c4f72e23          	sw	a5,-932(a4) # 8000a6f8 <panicked>
    80006aa4:	0000006f          	j	80006aa4 <panic+0x58>

0000000080006aa8 <__printf>:
    80006aa8:	f3010113          	addi	sp,sp,-208
    80006aac:	08813023          	sd	s0,128(sp)
    80006ab0:	07313423          	sd	s3,104(sp)
    80006ab4:	09010413          	addi	s0,sp,144
    80006ab8:	05813023          	sd	s8,64(sp)
    80006abc:	08113423          	sd	ra,136(sp)
    80006ac0:	06913c23          	sd	s1,120(sp)
    80006ac4:	07213823          	sd	s2,112(sp)
    80006ac8:	07413023          	sd	s4,96(sp)
    80006acc:	05513c23          	sd	s5,88(sp)
    80006ad0:	05613823          	sd	s6,80(sp)
    80006ad4:	05713423          	sd	s7,72(sp)
    80006ad8:	03913c23          	sd	s9,56(sp)
    80006adc:	03a13823          	sd	s10,48(sp)
    80006ae0:	03b13423          	sd	s11,40(sp)
    80006ae4:	00005317          	auipc	t1,0x5
    80006ae8:	edc30313          	addi	t1,t1,-292 # 8000b9c0 <pr>
    80006aec:	01832c03          	lw	s8,24(t1)
    80006af0:	00b43423          	sd	a1,8(s0)
    80006af4:	00c43823          	sd	a2,16(s0)
    80006af8:	00d43c23          	sd	a3,24(s0)
    80006afc:	02e43023          	sd	a4,32(s0)
    80006b00:	02f43423          	sd	a5,40(s0)
    80006b04:	03043823          	sd	a6,48(s0)
    80006b08:	03143c23          	sd	a7,56(s0)
    80006b0c:	00050993          	mv	s3,a0
    80006b10:	4a0c1663          	bnez	s8,80006fbc <__printf+0x514>
    80006b14:	60098c63          	beqz	s3,8000712c <__printf+0x684>
    80006b18:	0009c503          	lbu	a0,0(s3)
    80006b1c:	00840793          	addi	a5,s0,8
    80006b20:	f6f43c23          	sd	a5,-136(s0)
    80006b24:	00000493          	li	s1,0
    80006b28:	22050063          	beqz	a0,80006d48 <__printf+0x2a0>
    80006b2c:	00002a37          	lui	s4,0x2
    80006b30:	00018ab7          	lui	s5,0x18
    80006b34:	000f4b37          	lui	s6,0xf4
    80006b38:	00989bb7          	lui	s7,0x989
    80006b3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006b40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006b44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006b48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006b4c:	00148c9b          	addiw	s9,s1,1
    80006b50:	02500793          	li	a5,37
    80006b54:	01998933          	add	s2,s3,s9
    80006b58:	38f51263          	bne	a0,a5,80006edc <__printf+0x434>
    80006b5c:	00094783          	lbu	a5,0(s2)
    80006b60:	00078c9b          	sext.w	s9,a5
    80006b64:	1e078263          	beqz	a5,80006d48 <__printf+0x2a0>
    80006b68:	0024849b          	addiw	s1,s1,2
    80006b6c:	07000713          	li	a4,112
    80006b70:	00998933          	add	s2,s3,s1
    80006b74:	38e78a63          	beq	a5,a4,80006f08 <__printf+0x460>
    80006b78:	20f76863          	bltu	a4,a5,80006d88 <__printf+0x2e0>
    80006b7c:	42a78863          	beq	a5,a0,80006fac <__printf+0x504>
    80006b80:	06400713          	li	a4,100
    80006b84:	40e79663          	bne	a5,a4,80006f90 <__printf+0x4e8>
    80006b88:	f7843783          	ld	a5,-136(s0)
    80006b8c:	0007a603          	lw	a2,0(a5)
    80006b90:	00878793          	addi	a5,a5,8
    80006b94:	f6f43c23          	sd	a5,-136(s0)
    80006b98:	42064a63          	bltz	a2,80006fcc <__printf+0x524>
    80006b9c:	00a00713          	li	a4,10
    80006ba0:	02e677bb          	remuw	a5,a2,a4
    80006ba4:	00002d97          	auipc	s11,0x2
    80006ba8:	b2cd8d93          	addi	s11,s11,-1236 # 800086d0 <digits>
    80006bac:	00900593          	li	a1,9
    80006bb0:	0006051b          	sext.w	a0,a2
    80006bb4:	00000c93          	li	s9,0
    80006bb8:	02079793          	slli	a5,a5,0x20
    80006bbc:	0207d793          	srli	a5,a5,0x20
    80006bc0:	00fd87b3          	add	a5,s11,a5
    80006bc4:	0007c783          	lbu	a5,0(a5)
    80006bc8:	02e656bb          	divuw	a3,a2,a4
    80006bcc:	f8f40023          	sb	a5,-128(s0)
    80006bd0:	14c5d863          	bge	a1,a2,80006d20 <__printf+0x278>
    80006bd4:	06300593          	li	a1,99
    80006bd8:	00100c93          	li	s9,1
    80006bdc:	02e6f7bb          	remuw	a5,a3,a4
    80006be0:	02079793          	slli	a5,a5,0x20
    80006be4:	0207d793          	srli	a5,a5,0x20
    80006be8:	00fd87b3          	add	a5,s11,a5
    80006bec:	0007c783          	lbu	a5,0(a5)
    80006bf0:	02e6d73b          	divuw	a4,a3,a4
    80006bf4:	f8f400a3          	sb	a5,-127(s0)
    80006bf8:	12a5f463          	bgeu	a1,a0,80006d20 <__printf+0x278>
    80006bfc:	00a00693          	li	a3,10
    80006c00:	00900593          	li	a1,9
    80006c04:	02d777bb          	remuw	a5,a4,a3
    80006c08:	02079793          	slli	a5,a5,0x20
    80006c0c:	0207d793          	srli	a5,a5,0x20
    80006c10:	00fd87b3          	add	a5,s11,a5
    80006c14:	0007c503          	lbu	a0,0(a5)
    80006c18:	02d757bb          	divuw	a5,a4,a3
    80006c1c:	f8a40123          	sb	a0,-126(s0)
    80006c20:	48e5f263          	bgeu	a1,a4,800070a4 <__printf+0x5fc>
    80006c24:	06300513          	li	a0,99
    80006c28:	02d7f5bb          	remuw	a1,a5,a3
    80006c2c:	02059593          	slli	a1,a1,0x20
    80006c30:	0205d593          	srli	a1,a1,0x20
    80006c34:	00bd85b3          	add	a1,s11,a1
    80006c38:	0005c583          	lbu	a1,0(a1)
    80006c3c:	02d7d7bb          	divuw	a5,a5,a3
    80006c40:	f8b401a3          	sb	a1,-125(s0)
    80006c44:	48e57263          	bgeu	a0,a4,800070c8 <__printf+0x620>
    80006c48:	3e700513          	li	a0,999
    80006c4c:	02d7f5bb          	remuw	a1,a5,a3
    80006c50:	02059593          	slli	a1,a1,0x20
    80006c54:	0205d593          	srli	a1,a1,0x20
    80006c58:	00bd85b3          	add	a1,s11,a1
    80006c5c:	0005c583          	lbu	a1,0(a1)
    80006c60:	02d7d7bb          	divuw	a5,a5,a3
    80006c64:	f8b40223          	sb	a1,-124(s0)
    80006c68:	46e57663          	bgeu	a0,a4,800070d4 <__printf+0x62c>
    80006c6c:	02d7f5bb          	remuw	a1,a5,a3
    80006c70:	02059593          	slli	a1,a1,0x20
    80006c74:	0205d593          	srli	a1,a1,0x20
    80006c78:	00bd85b3          	add	a1,s11,a1
    80006c7c:	0005c583          	lbu	a1,0(a1)
    80006c80:	02d7d7bb          	divuw	a5,a5,a3
    80006c84:	f8b402a3          	sb	a1,-123(s0)
    80006c88:	46ea7863          	bgeu	s4,a4,800070f8 <__printf+0x650>
    80006c8c:	02d7f5bb          	remuw	a1,a5,a3
    80006c90:	02059593          	slli	a1,a1,0x20
    80006c94:	0205d593          	srli	a1,a1,0x20
    80006c98:	00bd85b3          	add	a1,s11,a1
    80006c9c:	0005c583          	lbu	a1,0(a1)
    80006ca0:	02d7d7bb          	divuw	a5,a5,a3
    80006ca4:	f8b40323          	sb	a1,-122(s0)
    80006ca8:	3eeaf863          	bgeu	s5,a4,80007098 <__printf+0x5f0>
    80006cac:	02d7f5bb          	remuw	a1,a5,a3
    80006cb0:	02059593          	slli	a1,a1,0x20
    80006cb4:	0205d593          	srli	a1,a1,0x20
    80006cb8:	00bd85b3          	add	a1,s11,a1
    80006cbc:	0005c583          	lbu	a1,0(a1)
    80006cc0:	02d7d7bb          	divuw	a5,a5,a3
    80006cc4:	f8b403a3          	sb	a1,-121(s0)
    80006cc8:	42eb7e63          	bgeu	s6,a4,80007104 <__printf+0x65c>
    80006ccc:	02d7f5bb          	remuw	a1,a5,a3
    80006cd0:	02059593          	slli	a1,a1,0x20
    80006cd4:	0205d593          	srli	a1,a1,0x20
    80006cd8:	00bd85b3          	add	a1,s11,a1
    80006cdc:	0005c583          	lbu	a1,0(a1)
    80006ce0:	02d7d7bb          	divuw	a5,a5,a3
    80006ce4:	f8b40423          	sb	a1,-120(s0)
    80006ce8:	42ebfc63          	bgeu	s7,a4,80007120 <__printf+0x678>
    80006cec:	02079793          	slli	a5,a5,0x20
    80006cf0:	0207d793          	srli	a5,a5,0x20
    80006cf4:	00fd8db3          	add	s11,s11,a5
    80006cf8:	000dc703          	lbu	a4,0(s11)
    80006cfc:	00a00793          	li	a5,10
    80006d00:	00900c93          	li	s9,9
    80006d04:	f8e404a3          	sb	a4,-119(s0)
    80006d08:	00065c63          	bgez	a2,80006d20 <__printf+0x278>
    80006d0c:	f9040713          	addi	a4,s0,-112
    80006d10:	00f70733          	add	a4,a4,a5
    80006d14:	02d00693          	li	a3,45
    80006d18:	fed70823          	sb	a3,-16(a4)
    80006d1c:	00078c93          	mv	s9,a5
    80006d20:	f8040793          	addi	a5,s0,-128
    80006d24:	01978cb3          	add	s9,a5,s9
    80006d28:	f7f40d13          	addi	s10,s0,-129
    80006d2c:	000cc503          	lbu	a0,0(s9)
    80006d30:	fffc8c93          	addi	s9,s9,-1
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	b90080e7          	jalr	-1136(ra) # 800068c4 <consputc>
    80006d3c:	ffac98e3          	bne	s9,s10,80006d2c <__printf+0x284>
    80006d40:	00094503          	lbu	a0,0(s2)
    80006d44:	e00514e3          	bnez	a0,80006b4c <__printf+0xa4>
    80006d48:	1a0c1663          	bnez	s8,80006ef4 <__printf+0x44c>
    80006d4c:	08813083          	ld	ra,136(sp)
    80006d50:	08013403          	ld	s0,128(sp)
    80006d54:	07813483          	ld	s1,120(sp)
    80006d58:	07013903          	ld	s2,112(sp)
    80006d5c:	06813983          	ld	s3,104(sp)
    80006d60:	06013a03          	ld	s4,96(sp)
    80006d64:	05813a83          	ld	s5,88(sp)
    80006d68:	05013b03          	ld	s6,80(sp)
    80006d6c:	04813b83          	ld	s7,72(sp)
    80006d70:	04013c03          	ld	s8,64(sp)
    80006d74:	03813c83          	ld	s9,56(sp)
    80006d78:	03013d03          	ld	s10,48(sp)
    80006d7c:	02813d83          	ld	s11,40(sp)
    80006d80:	0d010113          	addi	sp,sp,208
    80006d84:	00008067          	ret
    80006d88:	07300713          	li	a4,115
    80006d8c:	1ce78a63          	beq	a5,a4,80006f60 <__printf+0x4b8>
    80006d90:	07800713          	li	a4,120
    80006d94:	1ee79e63          	bne	a5,a4,80006f90 <__printf+0x4e8>
    80006d98:	f7843783          	ld	a5,-136(s0)
    80006d9c:	0007a703          	lw	a4,0(a5)
    80006da0:	00878793          	addi	a5,a5,8
    80006da4:	f6f43c23          	sd	a5,-136(s0)
    80006da8:	28074263          	bltz	a4,8000702c <__printf+0x584>
    80006dac:	00002d97          	auipc	s11,0x2
    80006db0:	924d8d93          	addi	s11,s11,-1756 # 800086d0 <digits>
    80006db4:	00f77793          	andi	a5,a4,15
    80006db8:	00fd87b3          	add	a5,s11,a5
    80006dbc:	0007c683          	lbu	a3,0(a5)
    80006dc0:	00f00613          	li	a2,15
    80006dc4:	0007079b          	sext.w	a5,a4
    80006dc8:	f8d40023          	sb	a3,-128(s0)
    80006dcc:	0047559b          	srliw	a1,a4,0x4
    80006dd0:	0047569b          	srliw	a3,a4,0x4
    80006dd4:	00000c93          	li	s9,0
    80006dd8:	0ee65063          	bge	a2,a4,80006eb8 <__printf+0x410>
    80006ddc:	00f6f693          	andi	a3,a3,15
    80006de0:	00dd86b3          	add	a3,s11,a3
    80006de4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006de8:	0087d79b          	srliw	a5,a5,0x8
    80006dec:	00100c93          	li	s9,1
    80006df0:	f8d400a3          	sb	a3,-127(s0)
    80006df4:	0cb67263          	bgeu	a2,a1,80006eb8 <__printf+0x410>
    80006df8:	00f7f693          	andi	a3,a5,15
    80006dfc:	00dd86b3          	add	a3,s11,a3
    80006e00:	0006c583          	lbu	a1,0(a3)
    80006e04:	00f00613          	li	a2,15
    80006e08:	0047d69b          	srliw	a3,a5,0x4
    80006e0c:	f8b40123          	sb	a1,-126(s0)
    80006e10:	0047d593          	srli	a1,a5,0x4
    80006e14:	28f67e63          	bgeu	a2,a5,800070b0 <__printf+0x608>
    80006e18:	00f6f693          	andi	a3,a3,15
    80006e1c:	00dd86b3          	add	a3,s11,a3
    80006e20:	0006c503          	lbu	a0,0(a3)
    80006e24:	0087d813          	srli	a6,a5,0x8
    80006e28:	0087d69b          	srliw	a3,a5,0x8
    80006e2c:	f8a401a3          	sb	a0,-125(s0)
    80006e30:	28b67663          	bgeu	a2,a1,800070bc <__printf+0x614>
    80006e34:	00f6f693          	andi	a3,a3,15
    80006e38:	00dd86b3          	add	a3,s11,a3
    80006e3c:	0006c583          	lbu	a1,0(a3)
    80006e40:	00c7d513          	srli	a0,a5,0xc
    80006e44:	00c7d69b          	srliw	a3,a5,0xc
    80006e48:	f8b40223          	sb	a1,-124(s0)
    80006e4c:	29067a63          	bgeu	a2,a6,800070e0 <__printf+0x638>
    80006e50:	00f6f693          	andi	a3,a3,15
    80006e54:	00dd86b3          	add	a3,s11,a3
    80006e58:	0006c583          	lbu	a1,0(a3)
    80006e5c:	0107d813          	srli	a6,a5,0x10
    80006e60:	0107d69b          	srliw	a3,a5,0x10
    80006e64:	f8b402a3          	sb	a1,-123(s0)
    80006e68:	28a67263          	bgeu	a2,a0,800070ec <__printf+0x644>
    80006e6c:	00f6f693          	andi	a3,a3,15
    80006e70:	00dd86b3          	add	a3,s11,a3
    80006e74:	0006c683          	lbu	a3,0(a3)
    80006e78:	0147d79b          	srliw	a5,a5,0x14
    80006e7c:	f8d40323          	sb	a3,-122(s0)
    80006e80:	21067663          	bgeu	a2,a6,8000708c <__printf+0x5e4>
    80006e84:	02079793          	slli	a5,a5,0x20
    80006e88:	0207d793          	srli	a5,a5,0x20
    80006e8c:	00fd8db3          	add	s11,s11,a5
    80006e90:	000dc683          	lbu	a3,0(s11)
    80006e94:	00800793          	li	a5,8
    80006e98:	00700c93          	li	s9,7
    80006e9c:	f8d403a3          	sb	a3,-121(s0)
    80006ea0:	00075c63          	bgez	a4,80006eb8 <__printf+0x410>
    80006ea4:	f9040713          	addi	a4,s0,-112
    80006ea8:	00f70733          	add	a4,a4,a5
    80006eac:	02d00693          	li	a3,45
    80006eb0:	fed70823          	sb	a3,-16(a4)
    80006eb4:	00078c93          	mv	s9,a5
    80006eb8:	f8040793          	addi	a5,s0,-128
    80006ebc:	01978cb3          	add	s9,a5,s9
    80006ec0:	f7f40d13          	addi	s10,s0,-129
    80006ec4:	000cc503          	lbu	a0,0(s9)
    80006ec8:	fffc8c93          	addi	s9,s9,-1
    80006ecc:	00000097          	auipc	ra,0x0
    80006ed0:	9f8080e7          	jalr	-1544(ra) # 800068c4 <consputc>
    80006ed4:	ff9d18e3          	bne	s10,s9,80006ec4 <__printf+0x41c>
    80006ed8:	0100006f          	j	80006ee8 <__printf+0x440>
    80006edc:	00000097          	auipc	ra,0x0
    80006ee0:	9e8080e7          	jalr	-1560(ra) # 800068c4 <consputc>
    80006ee4:	000c8493          	mv	s1,s9
    80006ee8:	00094503          	lbu	a0,0(s2)
    80006eec:	c60510e3          	bnez	a0,80006b4c <__printf+0xa4>
    80006ef0:	e40c0ee3          	beqz	s8,80006d4c <__printf+0x2a4>
    80006ef4:	00005517          	auipc	a0,0x5
    80006ef8:	acc50513          	addi	a0,a0,-1332 # 8000b9c0 <pr>
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	94c080e7          	jalr	-1716(ra) # 80007848 <release>
    80006f04:	e49ff06f          	j	80006d4c <__printf+0x2a4>
    80006f08:	f7843783          	ld	a5,-136(s0)
    80006f0c:	03000513          	li	a0,48
    80006f10:	01000d13          	li	s10,16
    80006f14:	00878713          	addi	a4,a5,8
    80006f18:	0007bc83          	ld	s9,0(a5)
    80006f1c:	f6e43c23          	sd	a4,-136(s0)
    80006f20:	00000097          	auipc	ra,0x0
    80006f24:	9a4080e7          	jalr	-1628(ra) # 800068c4 <consputc>
    80006f28:	07800513          	li	a0,120
    80006f2c:	00000097          	auipc	ra,0x0
    80006f30:	998080e7          	jalr	-1640(ra) # 800068c4 <consputc>
    80006f34:	00001d97          	auipc	s11,0x1
    80006f38:	79cd8d93          	addi	s11,s11,1948 # 800086d0 <digits>
    80006f3c:	03ccd793          	srli	a5,s9,0x3c
    80006f40:	00fd87b3          	add	a5,s11,a5
    80006f44:	0007c503          	lbu	a0,0(a5)
    80006f48:	fffd0d1b          	addiw	s10,s10,-1
    80006f4c:	004c9c93          	slli	s9,s9,0x4
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	974080e7          	jalr	-1676(ra) # 800068c4 <consputc>
    80006f58:	fe0d12e3          	bnez	s10,80006f3c <__printf+0x494>
    80006f5c:	f8dff06f          	j	80006ee8 <__printf+0x440>
    80006f60:	f7843783          	ld	a5,-136(s0)
    80006f64:	0007bc83          	ld	s9,0(a5)
    80006f68:	00878793          	addi	a5,a5,8
    80006f6c:	f6f43c23          	sd	a5,-136(s0)
    80006f70:	000c9a63          	bnez	s9,80006f84 <__printf+0x4dc>
    80006f74:	1080006f          	j	8000707c <__printf+0x5d4>
    80006f78:	001c8c93          	addi	s9,s9,1
    80006f7c:	00000097          	auipc	ra,0x0
    80006f80:	948080e7          	jalr	-1720(ra) # 800068c4 <consputc>
    80006f84:	000cc503          	lbu	a0,0(s9)
    80006f88:	fe0518e3          	bnez	a0,80006f78 <__printf+0x4d0>
    80006f8c:	f5dff06f          	j	80006ee8 <__printf+0x440>
    80006f90:	02500513          	li	a0,37
    80006f94:	00000097          	auipc	ra,0x0
    80006f98:	930080e7          	jalr	-1744(ra) # 800068c4 <consputc>
    80006f9c:	000c8513          	mv	a0,s9
    80006fa0:	00000097          	auipc	ra,0x0
    80006fa4:	924080e7          	jalr	-1756(ra) # 800068c4 <consputc>
    80006fa8:	f41ff06f          	j	80006ee8 <__printf+0x440>
    80006fac:	02500513          	li	a0,37
    80006fb0:	00000097          	auipc	ra,0x0
    80006fb4:	914080e7          	jalr	-1772(ra) # 800068c4 <consputc>
    80006fb8:	f31ff06f          	j	80006ee8 <__printf+0x440>
    80006fbc:	00030513          	mv	a0,t1
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	7bc080e7          	jalr	1980(ra) # 8000777c <acquire>
    80006fc8:	b4dff06f          	j	80006b14 <__printf+0x6c>
    80006fcc:	40c0053b          	negw	a0,a2
    80006fd0:	00a00713          	li	a4,10
    80006fd4:	02e576bb          	remuw	a3,a0,a4
    80006fd8:	00001d97          	auipc	s11,0x1
    80006fdc:	6f8d8d93          	addi	s11,s11,1784 # 800086d0 <digits>
    80006fe0:	ff700593          	li	a1,-9
    80006fe4:	02069693          	slli	a3,a3,0x20
    80006fe8:	0206d693          	srli	a3,a3,0x20
    80006fec:	00dd86b3          	add	a3,s11,a3
    80006ff0:	0006c683          	lbu	a3,0(a3)
    80006ff4:	02e557bb          	divuw	a5,a0,a4
    80006ff8:	f8d40023          	sb	a3,-128(s0)
    80006ffc:	10b65e63          	bge	a2,a1,80007118 <__printf+0x670>
    80007000:	06300593          	li	a1,99
    80007004:	02e7f6bb          	remuw	a3,a5,a4
    80007008:	02069693          	slli	a3,a3,0x20
    8000700c:	0206d693          	srli	a3,a3,0x20
    80007010:	00dd86b3          	add	a3,s11,a3
    80007014:	0006c683          	lbu	a3,0(a3)
    80007018:	02e7d73b          	divuw	a4,a5,a4
    8000701c:	00200793          	li	a5,2
    80007020:	f8d400a3          	sb	a3,-127(s0)
    80007024:	bca5ece3          	bltu	a1,a0,80006bfc <__printf+0x154>
    80007028:	ce5ff06f          	j	80006d0c <__printf+0x264>
    8000702c:	40e007bb          	negw	a5,a4
    80007030:	00001d97          	auipc	s11,0x1
    80007034:	6a0d8d93          	addi	s11,s11,1696 # 800086d0 <digits>
    80007038:	00f7f693          	andi	a3,a5,15
    8000703c:	00dd86b3          	add	a3,s11,a3
    80007040:	0006c583          	lbu	a1,0(a3)
    80007044:	ff100613          	li	a2,-15
    80007048:	0047d69b          	srliw	a3,a5,0x4
    8000704c:	f8b40023          	sb	a1,-128(s0)
    80007050:	0047d59b          	srliw	a1,a5,0x4
    80007054:	0ac75e63          	bge	a4,a2,80007110 <__printf+0x668>
    80007058:	00f6f693          	andi	a3,a3,15
    8000705c:	00dd86b3          	add	a3,s11,a3
    80007060:	0006c603          	lbu	a2,0(a3)
    80007064:	00f00693          	li	a3,15
    80007068:	0087d79b          	srliw	a5,a5,0x8
    8000706c:	f8c400a3          	sb	a2,-127(s0)
    80007070:	d8b6e4e3          	bltu	a3,a1,80006df8 <__printf+0x350>
    80007074:	00200793          	li	a5,2
    80007078:	e2dff06f          	j	80006ea4 <__printf+0x3fc>
    8000707c:	00001c97          	auipc	s9,0x1
    80007080:	634c8c93          	addi	s9,s9,1588 # 800086b0 <CONSOLE_STATUS+0x6a0>
    80007084:	02800513          	li	a0,40
    80007088:	ef1ff06f          	j	80006f78 <__printf+0x4d0>
    8000708c:	00700793          	li	a5,7
    80007090:	00600c93          	li	s9,6
    80007094:	e0dff06f          	j	80006ea0 <__printf+0x3f8>
    80007098:	00700793          	li	a5,7
    8000709c:	00600c93          	li	s9,6
    800070a0:	c69ff06f          	j	80006d08 <__printf+0x260>
    800070a4:	00300793          	li	a5,3
    800070a8:	00200c93          	li	s9,2
    800070ac:	c5dff06f          	j	80006d08 <__printf+0x260>
    800070b0:	00300793          	li	a5,3
    800070b4:	00200c93          	li	s9,2
    800070b8:	de9ff06f          	j	80006ea0 <__printf+0x3f8>
    800070bc:	00400793          	li	a5,4
    800070c0:	00300c93          	li	s9,3
    800070c4:	dddff06f          	j	80006ea0 <__printf+0x3f8>
    800070c8:	00400793          	li	a5,4
    800070cc:	00300c93          	li	s9,3
    800070d0:	c39ff06f          	j	80006d08 <__printf+0x260>
    800070d4:	00500793          	li	a5,5
    800070d8:	00400c93          	li	s9,4
    800070dc:	c2dff06f          	j	80006d08 <__printf+0x260>
    800070e0:	00500793          	li	a5,5
    800070e4:	00400c93          	li	s9,4
    800070e8:	db9ff06f          	j	80006ea0 <__printf+0x3f8>
    800070ec:	00600793          	li	a5,6
    800070f0:	00500c93          	li	s9,5
    800070f4:	dadff06f          	j	80006ea0 <__printf+0x3f8>
    800070f8:	00600793          	li	a5,6
    800070fc:	00500c93          	li	s9,5
    80007100:	c09ff06f          	j	80006d08 <__printf+0x260>
    80007104:	00800793          	li	a5,8
    80007108:	00700c93          	li	s9,7
    8000710c:	bfdff06f          	j	80006d08 <__printf+0x260>
    80007110:	00100793          	li	a5,1
    80007114:	d91ff06f          	j	80006ea4 <__printf+0x3fc>
    80007118:	00100793          	li	a5,1
    8000711c:	bf1ff06f          	j	80006d0c <__printf+0x264>
    80007120:	00900793          	li	a5,9
    80007124:	00800c93          	li	s9,8
    80007128:	be1ff06f          	j	80006d08 <__printf+0x260>
    8000712c:	00001517          	auipc	a0,0x1
    80007130:	58c50513          	addi	a0,a0,1420 # 800086b8 <CONSOLE_STATUS+0x6a8>
    80007134:	00000097          	auipc	ra,0x0
    80007138:	918080e7          	jalr	-1768(ra) # 80006a4c <panic>

000000008000713c <printfinit>:
    8000713c:	fe010113          	addi	sp,sp,-32
    80007140:	00813823          	sd	s0,16(sp)
    80007144:	00913423          	sd	s1,8(sp)
    80007148:	00113c23          	sd	ra,24(sp)
    8000714c:	02010413          	addi	s0,sp,32
    80007150:	00005497          	auipc	s1,0x5
    80007154:	87048493          	addi	s1,s1,-1936 # 8000b9c0 <pr>
    80007158:	00048513          	mv	a0,s1
    8000715c:	00001597          	auipc	a1,0x1
    80007160:	56c58593          	addi	a1,a1,1388 # 800086c8 <CONSOLE_STATUS+0x6b8>
    80007164:	00000097          	auipc	ra,0x0
    80007168:	5f4080e7          	jalr	1524(ra) # 80007758 <initlock>
    8000716c:	01813083          	ld	ra,24(sp)
    80007170:	01013403          	ld	s0,16(sp)
    80007174:	0004ac23          	sw	zero,24(s1)
    80007178:	00813483          	ld	s1,8(sp)
    8000717c:	02010113          	addi	sp,sp,32
    80007180:	00008067          	ret

0000000080007184 <uartinit>:
    80007184:	ff010113          	addi	sp,sp,-16
    80007188:	00813423          	sd	s0,8(sp)
    8000718c:	01010413          	addi	s0,sp,16
    80007190:	100007b7          	lui	a5,0x10000
    80007194:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007198:	f8000713          	li	a4,-128
    8000719c:	00e781a3          	sb	a4,3(a5)
    800071a0:	00300713          	li	a4,3
    800071a4:	00e78023          	sb	a4,0(a5)
    800071a8:	000780a3          	sb	zero,1(a5)
    800071ac:	00e781a3          	sb	a4,3(a5)
    800071b0:	00700693          	li	a3,7
    800071b4:	00d78123          	sb	a3,2(a5)
    800071b8:	00e780a3          	sb	a4,1(a5)
    800071bc:	00813403          	ld	s0,8(sp)
    800071c0:	01010113          	addi	sp,sp,16
    800071c4:	00008067          	ret

00000000800071c8 <uartputc>:
    800071c8:	00003797          	auipc	a5,0x3
    800071cc:	5307a783          	lw	a5,1328(a5) # 8000a6f8 <panicked>
    800071d0:	00078463          	beqz	a5,800071d8 <uartputc+0x10>
    800071d4:	0000006f          	j	800071d4 <uartputc+0xc>
    800071d8:	fd010113          	addi	sp,sp,-48
    800071dc:	02813023          	sd	s0,32(sp)
    800071e0:	00913c23          	sd	s1,24(sp)
    800071e4:	01213823          	sd	s2,16(sp)
    800071e8:	01313423          	sd	s3,8(sp)
    800071ec:	02113423          	sd	ra,40(sp)
    800071f0:	03010413          	addi	s0,sp,48
    800071f4:	00003917          	auipc	s2,0x3
    800071f8:	50c90913          	addi	s2,s2,1292 # 8000a700 <uart_tx_r>
    800071fc:	00093783          	ld	a5,0(s2)
    80007200:	00003497          	auipc	s1,0x3
    80007204:	50848493          	addi	s1,s1,1288 # 8000a708 <uart_tx_w>
    80007208:	0004b703          	ld	a4,0(s1)
    8000720c:	02078693          	addi	a3,a5,32
    80007210:	00050993          	mv	s3,a0
    80007214:	02e69c63          	bne	a3,a4,8000724c <uartputc+0x84>
    80007218:	00001097          	auipc	ra,0x1
    8000721c:	834080e7          	jalr	-1996(ra) # 80007a4c <push_on>
    80007220:	00093783          	ld	a5,0(s2)
    80007224:	0004b703          	ld	a4,0(s1)
    80007228:	02078793          	addi	a5,a5,32
    8000722c:	00e79463          	bne	a5,a4,80007234 <uartputc+0x6c>
    80007230:	0000006f          	j	80007230 <uartputc+0x68>
    80007234:	00001097          	auipc	ra,0x1
    80007238:	88c080e7          	jalr	-1908(ra) # 80007ac0 <pop_on>
    8000723c:	00093783          	ld	a5,0(s2)
    80007240:	0004b703          	ld	a4,0(s1)
    80007244:	02078693          	addi	a3,a5,32
    80007248:	fce688e3          	beq	a3,a4,80007218 <uartputc+0x50>
    8000724c:	01f77693          	andi	a3,a4,31
    80007250:	00004597          	auipc	a1,0x4
    80007254:	79058593          	addi	a1,a1,1936 # 8000b9e0 <uart_tx_buf>
    80007258:	00d586b3          	add	a3,a1,a3
    8000725c:	00170713          	addi	a4,a4,1
    80007260:	01368023          	sb	s3,0(a3)
    80007264:	00e4b023          	sd	a4,0(s1)
    80007268:	10000637          	lui	a2,0x10000
    8000726c:	02f71063          	bne	a4,a5,8000728c <uartputc+0xc4>
    80007270:	0340006f          	j	800072a4 <uartputc+0xdc>
    80007274:	00074703          	lbu	a4,0(a4)
    80007278:	00f93023          	sd	a5,0(s2)
    8000727c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007280:	00093783          	ld	a5,0(s2)
    80007284:	0004b703          	ld	a4,0(s1)
    80007288:	00f70e63          	beq	a4,a5,800072a4 <uartputc+0xdc>
    8000728c:	00564683          	lbu	a3,5(a2)
    80007290:	01f7f713          	andi	a4,a5,31
    80007294:	00e58733          	add	a4,a1,a4
    80007298:	0206f693          	andi	a3,a3,32
    8000729c:	00178793          	addi	a5,a5,1
    800072a0:	fc069ae3          	bnez	a3,80007274 <uartputc+0xac>
    800072a4:	02813083          	ld	ra,40(sp)
    800072a8:	02013403          	ld	s0,32(sp)
    800072ac:	01813483          	ld	s1,24(sp)
    800072b0:	01013903          	ld	s2,16(sp)
    800072b4:	00813983          	ld	s3,8(sp)
    800072b8:	03010113          	addi	sp,sp,48
    800072bc:	00008067          	ret

00000000800072c0 <uartputc_sync>:
    800072c0:	ff010113          	addi	sp,sp,-16
    800072c4:	00813423          	sd	s0,8(sp)
    800072c8:	01010413          	addi	s0,sp,16
    800072cc:	00003717          	auipc	a4,0x3
    800072d0:	42c72703          	lw	a4,1068(a4) # 8000a6f8 <panicked>
    800072d4:	02071663          	bnez	a4,80007300 <uartputc_sync+0x40>
    800072d8:	00050793          	mv	a5,a0
    800072dc:	100006b7          	lui	a3,0x10000
    800072e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800072e4:	02077713          	andi	a4,a4,32
    800072e8:	fe070ce3          	beqz	a4,800072e0 <uartputc_sync+0x20>
    800072ec:	0ff7f793          	andi	a5,a5,255
    800072f0:	00f68023          	sb	a5,0(a3)
    800072f4:	00813403          	ld	s0,8(sp)
    800072f8:	01010113          	addi	sp,sp,16
    800072fc:	00008067          	ret
    80007300:	0000006f          	j	80007300 <uartputc_sync+0x40>

0000000080007304 <uartstart>:
    80007304:	ff010113          	addi	sp,sp,-16
    80007308:	00813423          	sd	s0,8(sp)
    8000730c:	01010413          	addi	s0,sp,16
    80007310:	00003617          	auipc	a2,0x3
    80007314:	3f060613          	addi	a2,a2,1008 # 8000a700 <uart_tx_r>
    80007318:	00003517          	auipc	a0,0x3
    8000731c:	3f050513          	addi	a0,a0,1008 # 8000a708 <uart_tx_w>
    80007320:	00063783          	ld	a5,0(a2)
    80007324:	00053703          	ld	a4,0(a0)
    80007328:	04f70263          	beq	a4,a5,8000736c <uartstart+0x68>
    8000732c:	100005b7          	lui	a1,0x10000
    80007330:	00004817          	auipc	a6,0x4
    80007334:	6b080813          	addi	a6,a6,1712 # 8000b9e0 <uart_tx_buf>
    80007338:	01c0006f          	j	80007354 <uartstart+0x50>
    8000733c:	0006c703          	lbu	a4,0(a3)
    80007340:	00f63023          	sd	a5,0(a2)
    80007344:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007348:	00063783          	ld	a5,0(a2)
    8000734c:	00053703          	ld	a4,0(a0)
    80007350:	00f70e63          	beq	a4,a5,8000736c <uartstart+0x68>
    80007354:	01f7f713          	andi	a4,a5,31
    80007358:	00e806b3          	add	a3,a6,a4
    8000735c:	0055c703          	lbu	a4,5(a1)
    80007360:	00178793          	addi	a5,a5,1
    80007364:	02077713          	andi	a4,a4,32
    80007368:	fc071ae3          	bnez	a4,8000733c <uartstart+0x38>
    8000736c:	00813403          	ld	s0,8(sp)
    80007370:	01010113          	addi	sp,sp,16
    80007374:	00008067          	ret

0000000080007378 <uartgetc>:
    80007378:	ff010113          	addi	sp,sp,-16
    8000737c:	00813423          	sd	s0,8(sp)
    80007380:	01010413          	addi	s0,sp,16
    80007384:	10000737          	lui	a4,0x10000
    80007388:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000738c:	0017f793          	andi	a5,a5,1
    80007390:	00078c63          	beqz	a5,800073a8 <uartgetc+0x30>
    80007394:	00074503          	lbu	a0,0(a4)
    80007398:	0ff57513          	andi	a0,a0,255
    8000739c:	00813403          	ld	s0,8(sp)
    800073a0:	01010113          	addi	sp,sp,16
    800073a4:	00008067          	ret
    800073a8:	fff00513          	li	a0,-1
    800073ac:	ff1ff06f          	j	8000739c <uartgetc+0x24>

00000000800073b0 <uartintr>:
    800073b0:	100007b7          	lui	a5,0x10000
    800073b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800073b8:	0017f793          	andi	a5,a5,1
    800073bc:	0a078463          	beqz	a5,80007464 <uartintr+0xb4>
    800073c0:	fe010113          	addi	sp,sp,-32
    800073c4:	00813823          	sd	s0,16(sp)
    800073c8:	00913423          	sd	s1,8(sp)
    800073cc:	00113c23          	sd	ra,24(sp)
    800073d0:	02010413          	addi	s0,sp,32
    800073d4:	100004b7          	lui	s1,0x10000
    800073d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800073dc:	0ff57513          	andi	a0,a0,255
    800073e0:	fffff097          	auipc	ra,0xfffff
    800073e4:	534080e7          	jalr	1332(ra) # 80006914 <consoleintr>
    800073e8:	0054c783          	lbu	a5,5(s1)
    800073ec:	0017f793          	andi	a5,a5,1
    800073f0:	fe0794e3          	bnez	a5,800073d8 <uartintr+0x28>
    800073f4:	00003617          	auipc	a2,0x3
    800073f8:	30c60613          	addi	a2,a2,780 # 8000a700 <uart_tx_r>
    800073fc:	00003517          	auipc	a0,0x3
    80007400:	30c50513          	addi	a0,a0,780 # 8000a708 <uart_tx_w>
    80007404:	00063783          	ld	a5,0(a2)
    80007408:	00053703          	ld	a4,0(a0)
    8000740c:	04f70263          	beq	a4,a5,80007450 <uartintr+0xa0>
    80007410:	100005b7          	lui	a1,0x10000
    80007414:	00004817          	auipc	a6,0x4
    80007418:	5cc80813          	addi	a6,a6,1484 # 8000b9e0 <uart_tx_buf>
    8000741c:	01c0006f          	j	80007438 <uartintr+0x88>
    80007420:	0006c703          	lbu	a4,0(a3)
    80007424:	00f63023          	sd	a5,0(a2)
    80007428:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000742c:	00063783          	ld	a5,0(a2)
    80007430:	00053703          	ld	a4,0(a0)
    80007434:	00f70e63          	beq	a4,a5,80007450 <uartintr+0xa0>
    80007438:	01f7f713          	andi	a4,a5,31
    8000743c:	00e806b3          	add	a3,a6,a4
    80007440:	0055c703          	lbu	a4,5(a1)
    80007444:	00178793          	addi	a5,a5,1
    80007448:	02077713          	andi	a4,a4,32
    8000744c:	fc071ae3          	bnez	a4,80007420 <uartintr+0x70>
    80007450:	01813083          	ld	ra,24(sp)
    80007454:	01013403          	ld	s0,16(sp)
    80007458:	00813483          	ld	s1,8(sp)
    8000745c:	02010113          	addi	sp,sp,32
    80007460:	00008067          	ret
    80007464:	00003617          	auipc	a2,0x3
    80007468:	29c60613          	addi	a2,a2,668 # 8000a700 <uart_tx_r>
    8000746c:	00003517          	auipc	a0,0x3
    80007470:	29c50513          	addi	a0,a0,668 # 8000a708 <uart_tx_w>
    80007474:	00063783          	ld	a5,0(a2)
    80007478:	00053703          	ld	a4,0(a0)
    8000747c:	04f70263          	beq	a4,a5,800074c0 <uartintr+0x110>
    80007480:	100005b7          	lui	a1,0x10000
    80007484:	00004817          	auipc	a6,0x4
    80007488:	55c80813          	addi	a6,a6,1372 # 8000b9e0 <uart_tx_buf>
    8000748c:	01c0006f          	j	800074a8 <uartintr+0xf8>
    80007490:	0006c703          	lbu	a4,0(a3)
    80007494:	00f63023          	sd	a5,0(a2)
    80007498:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000749c:	00063783          	ld	a5,0(a2)
    800074a0:	00053703          	ld	a4,0(a0)
    800074a4:	02f70063          	beq	a4,a5,800074c4 <uartintr+0x114>
    800074a8:	01f7f713          	andi	a4,a5,31
    800074ac:	00e806b3          	add	a3,a6,a4
    800074b0:	0055c703          	lbu	a4,5(a1)
    800074b4:	00178793          	addi	a5,a5,1
    800074b8:	02077713          	andi	a4,a4,32
    800074bc:	fc071ae3          	bnez	a4,80007490 <uartintr+0xe0>
    800074c0:	00008067          	ret
    800074c4:	00008067          	ret

00000000800074c8 <kinit>:
    800074c8:	fc010113          	addi	sp,sp,-64
    800074cc:	02913423          	sd	s1,40(sp)
    800074d0:	fffff7b7          	lui	a5,0xfffff
    800074d4:	00005497          	auipc	s1,0x5
    800074d8:	52b48493          	addi	s1,s1,1323 # 8000c9ff <end+0xfff>
    800074dc:	02813823          	sd	s0,48(sp)
    800074e0:	01313c23          	sd	s3,24(sp)
    800074e4:	00f4f4b3          	and	s1,s1,a5
    800074e8:	02113c23          	sd	ra,56(sp)
    800074ec:	03213023          	sd	s2,32(sp)
    800074f0:	01413823          	sd	s4,16(sp)
    800074f4:	01513423          	sd	s5,8(sp)
    800074f8:	04010413          	addi	s0,sp,64
    800074fc:	000017b7          	lui	a5,0x1
    80007500:	01100993          	li	s3,17
    80007504:	00f487b3          	add	a5,s1,a5
    80007508:	01b99993          	slli	s3,s3,0x1b
    8000750c:	06f9e063          	bltu	s3,a5,8000756c <kinit+0xa4>
    80007510:	00004a97          	auipc	s5,0x4
    80007514:	4f0a8a93          	addi	s5,s5,1264 # 8000ba00 <end>
    80007518:	0754ec63          	bltu	s1,s5,80007590 <kinit+0xc8>
    8000751c:	0734fa63          	bgeu	s1,s3,80007590 <kinit+0xc8>
    80007520:	00088a37          	lui	s4,0x88
    80007524:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007528:	00003917          	auipc	s2,0x3
    8000752c:	1e890913          	addi	s2,s2,488 # 8000a710 <kmem>
    80007530:	00ca1a13          	slli	s4,s4,0xc
    80007534:	0140006f          	j	80007548 <kinit+0x80>
    80007538:	000017b7          	lui	a5,0x1
    8000753c:	00f484b3          	add	s1,s1,a5
    80007540:	0554e863          	bltu	s1,s5,80007590 <kinit+0xc8>
    80007544:	0534f663          	bgeu	s1,s3,80007590 <kinit+0xc8>
    80007548:	00001637          	lui	a2,0x1
    8000754c:	00100593          	li	a1,1
    80007550:	00048513          	mv	a0,s1
    80007554:	00000097          	auipc	ra,0x0
    80007558:	5e4080e7          	jalr	1508(ra) # 80007b38 <__memset>
    8000755c:	00093783          	ld	a5,0(s2)
    80007560:	00f4b023          	sd	a5,0(s1)
    80007564:	00993023          	sd	s1,0(s2)
    80007568:	fd4498e3          	bne	s1,s4,80007538 <kinit+0x70>
    8000756c:	03813083          	ld	ra,56(sp)
    80007570:	03013403          	ld	s0,48(sp)
    80007574:	02813483          	ld	s1,40(sp)
    80007578:	02013903          	ld	s2,32(sp)
    8000757c:	01813983          	ld	s3,24(sp)
    80007580:	01013a03          	ld	s4,16(sp)
    80007584:	00813a83          	ld	s5,8(sp)
    80007588:	04010113          	addi	sp,sp,64
    8000758c:	00008067          	ret
    80007590:	00001517          	auipc	a0,0x1
    80007594:	15850513          	addi	a0,a0,344 # 800086e8 <digits+0x18>
    80007598:	fffff097          	auipc	ra,0xfffff
    8000759c:	4b4080e7          	jalr	1204(ra) # 80006a4c <panic>

00000000800075a0 <freerange>:
    800075a0:	fc010113          	addi	sp,sp,-64
    800075a4:	000017b7          	lui	a5,0x1
    800075a8:	02913423          	sd	s1,40(sp)
    800075ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800075b0:	009504b3          	add	s1,a0,s1
    800075b4:	fffff537          	lui	a0,0xfffff
    800075b8:	02813823          	sd	s0,48(sp)
    800075bc:	02113c23          	sd	ra,56(sp)
    800075c0:	03213023          	sd	s2,32(sp)
    800075c4:	01313c23          	sd	s3,24(sp)
    800075c8:	01413823          	sd	s4,16(sp)
    800075cc:	01513423          	sd	s5,8(sp)
    800075d0:	01613023          	sd	s6,0(sp)
    800075d4:	04010413          	addi	s0,sp,64
    800075d8:	00a4f4b3          	and	s1,s1,a0
    800075dc:	00f487b3          	add	a5,s1,a5
    800075e0:	06f5e463          	bltu	a1,a5,80007648 <freerange+0xa8>
    800075e4:	00004a97          	auipc	s5,0x4
    800075e8:	41ca8a93          	addi	s5,s5,1052 # 8000ba00 <end>
    800075ec:	0954e263          	bltu	s1,s5,80007670 <freerange+0xd0>
    800075f0:	01100993          	li	s3,17
    800075f4:	01b99993          	slli	s3,s3,0x1b
    800075f8:	0734fc63          	bgeu	s1,s3,80007670 <freerange+0xd0>
    800075fc:	00058a13          	mv	s4,a1
    80007600:	00003917          	auipc	s2,0x3
    80007604:	11090913          	addi	s2,s2,272 # 8000a710 <kmem>
    80007608:	00002b37          	lui	s6,0x2
    8000760c:	0140006f          	j	80007620 <freerange+0x80>
    80007610:	000017b7          	lui	a5,0x1
    80007614:	00f484b3          	add	s1,s1,a5
    80007618:	0554ec63          	bltu	s1,s5,80007670 <freerange+0xd0>
    8000761c:	0534fa63          	bgeu	s1,s3,80007670 <freerange+0xd0>
    80007620:	00001637          	lui	a2,0x1
    80007624:	00100593          	li	a1,1
    80007628:	00048513          	mv	a0,s1
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	50c080e7          	jalr	1292(ra) # 80007b38 <__memset>
    80007634:	00093703          	ld	a4,0(s2)
    80007638:	016487b3          	add	a5,s1,s6
    8000763c:	00e4b023          	sd	a4,0(s1)
    80007640:	00993023          	sd	s1,0(s2)
    80007644:	fcfa76e3          	bgeu	s4,a5,80007610 <freerange+0x70>
    80007648:	03813083          	ld	ra,56(sp)
    8000764c:	03013403          	ld	s0,48(sp)
    80007650:	02813483          	ld	s1,40(sp)
    80007654:	02013903          	ld	s2,32(sp)
    80007658:	01813983          	ld	s3,24(sp)
    8000765c:	01013a03          	ld	s4,16(sp)
    80007660:	00813a83          	ld	s5,8(sp)
    80007664:	00013b03          	ld	s6,0(sp)
    80007668:	04010113          	addi	sp,sp,64
    8000766c:	00008067          	ret
    80007670:	00001517          	auipc	a0,0x1
    80007674:	07850513          	addi	a0,a0,120 # 800086e8 <digits+0x18>
    80007678:	fffff097          	auipc	ra,0xfffff
    8000767c:	3d4080e7          	jalr	980(ra) # 80006a4c <panic>

0000000080007680 <kfree>:
    80007680:	fe010113          	addi	sp,sp,-32
    80007684:	00813823          	sd	s0,16(sp)
    80007688:	00113c23          	sd	ra,24(sp)
    8000768c:	00913423          	sd	s1,8(sp)
    80007690:	02010413          	addi	s0,sp,32
    80007694:	03451793          	slli	a5,a0,0x34
    80007698:	04079c63          	bnez	a5,800076f0 <kfree+0x70>
    8000769c:	00004797          	auipc	a5,0x4
    800076a0:	36478793          	addi	a5,a5,868 # 8000ba00 <end>
    800076a4:	00050493          	mv	s1,a0
    800076a8:	04f56463          	bltu	a0,a5,800076f0 <kfree+0x70>
    800076ac:	01100793          	li	a5,17
    800076b0:	01b79793          	slli	a5,a5,0x1b
    800076b4:	02f57e63          	bgeu	a0,a5,800076f0 <kfree+0x70>
    800076b8:	00001637          	lui	a2,0x1
    800076bc:	00100593          	li	a1,1
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	478080e7          	jalr	1144(ra) # 80007b38 <__memset>
    800076c8:	00003797          	auipc	a5,0x3
    800076cc:	04878793          	addi	a5,a5,72 # 8000a710 <kmem>
    800076d0:	0007b703          	ld	a4,0(a5)
    800076d4:	01813083          	ld	ra,24(sp)
    800076d8:	01013403          	ld	s0,16(sp)
    800076dc:	00e4b023          	sd	a4,0(s1)
    800076e0:	0097b023          	sd	s1,0(a5)
    800076e4:	00813483          	ld	s1,8(sp)
    800076e8:	02010113          	addi	sp,sp,32
    800076ec:	00008067          	ret
    800076f0:	00001517          	auipc	a0,0x1
    800076f4:	ff850513          	addi	a0,a0,-8 # 800086e8 <digits+0x18>
    800076f8:	fffff097          	auipc	ra,0xfffff
    800076fc:	354080e7          	jalr	852(ra) # 80006a4c <panic>

0000000080007700 <kalloc>:
    80007700:	fe010113          	addi	sp,sp,-32
    80007704:	00813823          	sd	s0,16(sp)
    80007708:	00913423          	sd	s1,8(sp)
    8000770c:	00113c23          	sd	ra,24(sp)
    80007710:	02010413          	addi	s0,sp,32
    80007714:	00003797          	auipc	a5,0x3
    80007718:	ffc78793          	addi	a5,a5,-4 # 8000a710 <kmem>
    8000771c:	0007b483          	ld	s1,0(a5)
    80007720:	02048063          	beqz	s1,80007740 <kalloc+0x40>
    80007724:	0004b703          	ld	a4,0(s1)
    80007728:	00001637          	lui	a2,0x1
    8000772c:	00500593          	li	a1,5
    80007730:	00048513          	mv	a0,s1
    80007734:	00e7b023          	sd	a4,0(a5)
    80007738:	00000097          	auipc	ra,0x0
    8000773c:	400080e7          	jalr	1024(ra) # 80007b38 <__memset>
    80007740:	01813083          	ld	ra,24(sp)
    80007744:	01013403          	ld	s0,16(sp)
    80007748:	00048513          	mv	a0,s1
    8000774c:	00813483          	ld	s1,8(sp)
    80007750:	02010113          	addi	sp,sp,32
    80007754:	00008067          	ret

0000000080007758 <initlock>:
    80007758:	ff010113          	addi	sp,sp,-16
    8000775c:	00813423          	sd	s0,8(sp)
    80007760:	01010413          	addi	s0,sp,16
    80007764:	00813403          	ld	s0,8(sp)
    80007768:	00b53423          	sd	a1,8(a0)
    8000776c:	00052023          	sw	zero,0(a0)
    80007770:	00053823          	sd	zero,16(a0)
    80007774:	01010113          	addi	sp,sp,16
    80007778:	00008067          	ret

000000008000777c <acquire>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	00113c23          	sd	ra,24(sp)
    8000778c:	01213023          	sd	s2,0(sp)
    80007790:	02010413          	addi	s0,sp,32
    80007794:	00050493          	mv	s1,a0
    80007798:	10002973          	csrr	s2,sstatus
    8000779c:	100027f3          	csrr	a5,sstatus
    800077a0:	ffd7f793          	andi	a5,a5,-3
    800077a4:	10079073          	csrw	sstatus,a5
    800077a8:	fffff097          	auipc	ra,0xfffff
    800077ac:	8e8080e7          	jalr	-1816(ra) # 80006090 <mycpu>
    800077b0:	07852783          	lw	a5,120(a0)
    800077b4:	06078e63          	beqz	a5,80007830 <acquire+0xb4>
    800077b8:	fffff097          	auipc	ra,0xfffff
    800077bc:	8d8080e7          	jalr	-1832(ra) # 80006090 <mycpu>
    800077c0:	07852783          	lw	a5,120(a0)
    800077c4:	0004a703          	lw	a4,0(s1)
    800077c8:	0017879b          	addiw	a5,a5,1
    800077cc:	06f52c23          	sw	a5,120(a0)
    800077d0:	04071063          	bnez	a4,80007810 <acquire+0x94>
    800077d4:	00100713          	li	a4,1
    800077d8:	00070793          	mv	a5,a4
    800077dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800077e0:	0007879b          	sext.w	a5,a5
    800077e4:	fe079ae3          	bnez	a5,800077d8 <acquire+0x5c>
    800077e8:	0ff0000f          	fence
    800077ec:	fffff097          	auipc	ra,0xfffff
    800077f0:	8a4080e7          	jalr	-1884(ra) # 80006090 <mycpu>
    800077f4:	01813083          	ld	ra,24(sp)
    800077f8:	01013403          	ld	s0,16(sp)
    800077fc:	00a4b823          	sd	a0,16(s1)
    80007800:	00013903          	ld	s2,0(sp)
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	02010113          	addi	sp,sp,32
    8000780c:	00008067          	ret
    80007810:	0104b903          	ld	s2,16(s1)
    80007814:	fffff097          	auipc	ra,0xfffff
    80007818:	87c080e7          	jalr	-1924(ra) # 80006090 <mycpu>
    8000781c:	faa91ce3          	bne	s2,a0,800077d4 <acquire+0x58>
    80007820:	00001517          	auipc	a0,0x1
    80007824:	ed050513          	addi	a0,a0,-304 # 800086f0 <digits+0x20>
    80007828:	fffff097          	auipc	ra,0xfffff
    8000782c:	224080e7          	jalr	548(ra) # 80006a4c <panic>
    80007830:	00195913          	srli	s2,s2,0x1
    80007834:	fffff097          	auipc	ra,0xfffff
    80007838:	85c080e7          	jalr	-1956(ra) # 80006090 <mycpu>
    8000783c:	00197913          	andi	s2,s2,1
    80007840:	07252e23          	sw	s2,124(a0)
    80007844:	f75ff06f          	j	800077b8 <acquire+0x3c>

0000000080007848 <release>:
    80007848:	fe010113          	addi	sp,sp,-32
    8000784c:	00813823          	sd	s0,16(sp)
    80007850:	00113c23          	sd	ra,24(sp)
    80007854:	00913423          	sd	s1,8(sp)
    80007858:	01213023          	sd	s2,0(sp)
    8000785c:	02010413          	addi	s0,sp,32
    80007860:	00052783          	lw	a5,0(a0)
    80007864:	00079a63          	bnez	a5,80007878 <release+0x30>
    80007868:	00001517          	auipc	a0,0x1
    8000786c:	e9050513          	addi	a0,a0,-368 # 800086f8 <digits+0x28>
    80007870:	fffff097          	auipc	ra,0xfffff
    80007874:	1dc080e7          	jalr	476(ra) # 80006a4c <panic>
    80007878:	01053903          	ld	s2,16(a0)
    8000787c:	00050493          	mv	s1,a0
    80007880:	fffff097          	auipc	ra,0xfffff
    80007884:	810080e7          	jalr	-2032(ra) # 80006090 <mycpu>
    80007888:	fea910e3          	bne	s2,a0,80007868 <release+0x20>
    8000788c:	0004b823          	sd	zero,16(s1)
    80007890:	0ff0000f          	fence
    80007894:	0f50000f          	fence	iorw,ow
    80007898:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000789c:	ffffe097          	auipc	ra,0xffffe
    800078a0:	7f4080e7          	jalr	2036(ra) # 80006090 <mycpu>
    800078a4:	100027f3          	csrr	a5,sstatus
    800078a8:	0027f793          	andi	a5,a5,2
    800078ac:	04079a63          	bnez	a5,80007900 <release+0xb8>
    800078b0:	07852783          	lw	a5,120(a0)
    800078b4:	02f05e63          	blez	a5,800078f0 <release+0xa8>
    800078b8:	fff7871b          	addiw	a4,a5,-1
    800078bc:	06e52c23          	sw	a4,120(a0)
    800078c0:	00071c63          	bnez	a4,800078d8 <release+0x90>
    800078c4:	07c52783          	lw	a5,124(a0)
    800078c8:	00078863          	beqz	a5,800078d8 <release+0x90>
    800078cc:	100027f3          	csrr	a5,sstatus
    800078d0:	0027e793          	ori	a5,a5,2
    800078d4:	10079073          	csrw	sstatus,a5
    800078d8:	01813083          	ld	ra,24(sp)
    800078dc:	01013403          	ld	s0,16(sp)
    800078e0:	00813483          	ld	s1,8(sp)
    800078e4:	00013903          	ld	s2,0(sp)
    800078e8:	02010113          	addi	sp,sp,32
    800078ec:	00008067          	ret
    800078f0:	00001517          	auipc	a0,0x1
    800078f4:	e2850513          	addi	a0,a0,-472 # 80008718 <digits+0x48>
    800078f8:	fffff097          	auipc	ra,0xfffff
    800078fc:	154080e7          	jalr	340(ra) # 80006a4c <panic>
    80007900:	00001517          	auipc	a0,0x1
    80007904:	e0050513          	addi	a0,a0,-512 # 80008700 <digits+0x30>
    80007908:	fffff097          	auipc	ra,0xfffff
    8000790c:	144080e7          	jalr	324(ra) # 80006a4c <panic>

0000000080007910 <holding>:
    80007910:	00052783          	lw	a5,0(a0)
    80007914:	00079663          	bnez	a5,80007920 <holding+0x10>
    80007918:	00000513          	li	a0,0
    8000791c:	00008067          	ret
    80007920:	fe010113          	addi	sp,sp,-32
    80007924:	00813823          	sd	s0,16(sp)
    80007928:	00913423          	sd	s1,8(sp)
    8000792c:	00113c23          	sd	ra,24(sp)
    80007930:	02010413          	addi	s0,sp,32
    80007934:	01053483          	ld	s1,16(a0)
    80007938:	ffffe097          	auipc	ra,0xffffe
    8000793c:	758080e7          	jalr	1880(ra) # 80006090 <mycpu>
    80007940:	01813083          	ld	ra,24(sp)
    80007944:	01013403          	ld	s0,16(sp)
    80007948:	40a48533          	sub	a0,s1,a0
    8000794c:	00153513          	seqz	a0,a0
    80007950:	00813483          	ld	s1,8(sp)
    80007954:	02010113          	addi	sp,sp,32
    80007958:	00008067          	ret

000000008000795c <push_off>:
    8000795c:	fe010113          	addi	sp,sp,-32
    80007960:	00813823          	sd	s0,16(sp)
    80007964:	00113c23          	sd	ra,24(sp)
    80007968:	00913423          	sd	s1,8(sp)
    8000796c:	02010413          	addi	s0,sp,32
    80007970:	100024f3          	csrr	s1,sstatus
    80007974:	100027f3          	csrr	a5,sstatus
    80007978:	ffd7f793          	andi	a5,a5,-3
    8000797c:	10079073          	csrw	sstatus,a5
    80007980:	ffffe097          	auipc	ra,0xffffe
    80007984:	710080e7          	jalr	1808(ra) # 80006090 <mycpu>
    80007988:	07852783          	lw	a5,120(a0)
    8000798c:	02078663          	beqz	a5,800079b8 <push_off+0x5c>
    80007990:	ffffe097          	auipc	ra,0xffffe
    80007994:	700080e7          	jalr	1792(ra) # 80006090 <mycpu>
    80007998:	07852783          	lw	a5,120(a0)
    8000799c:	01813083          	ld	ra,24(sp)
    800079a0:	01013403          	ld	s0,16(sp)
    800079a4:	0017879b          	addiw	a5,a5,1
    800079a8:	06f52c23          	sw	a5,120(a0)
    800079ac:	00813483          	ld	s1,8(sp)
    800079b0:	02010113          	addi	sp,sp,32
    800079b4:	00008067          	ret
    800079b8:	0014d493          	srli	s1,s1,0x1
    800079bc:	ffffe097          	auipc	ra,0xffffe
    800079c0:	6d4080e7          	jalr	1748(ra) # 80006090 <mycpu>
    800079c4:	0014f493          	andi	s1,s1,1
    800079c8:	06952e23          	sw	s1,124(a0)
    800079cc:	fc5ff06f          	j	80007990 <push_off+0x34>

00000000800079d0 <pop_off>:
    800079d0:	ff010113          	addi	sp,sp,-16
    800079d4:	00813023          	sd	s0,0(sp)
    800079d8:	00113423          	sd	ra,8(sp)
    800079dc:	01010413          	addi	s0,sp,16
    800079e0:	ffffe097          	auipc	ra,0xffffe
    800079e4:	6b0080e7          	jalr	1712(ra) # 80006090 <mycpu>
    800079e8:	100027f3          	csrr	a5,sstatus
    800079ec:	0027f793          	andi	a5,a5,2
    800079f0:	04079663          	bnez	a5,80007a3c <pop_off+0x6c>
    800079f4:	07852783          	lw	a5,120(a0)
    800079f8:	02f05a63          	blez	a5,80007a2c <pop_off+0x5c>
    800079fc:	fff7871b          	addiw	a4,a5,-1
    80007a00:	06e52c23          	sw	a4,120(a0)
    80007a04:	00071c63          	bnez	a4,80007a1c <pop_off+0x4c>
    80007a08:	07c52783          	lw	a5,124(a0)
    80007a0c:	00078863          	beqz	a5,80007a1c <pop_off+0x4c>
    80007a10:	100027f3          	csrr	a5,sstatus
    80007a14:	0027e793          	ori	a5,a5,2
    80007a18:	10079073          	csrw	sstatus,a5
    80007a1c:	00813083          	ld	ra,8(sp)
    80007a20:	00013403          	ld	s0,0(sp)
    80007a24:	01010113          	addi	sp,sp,16
    80007a28:	00008067          	ret
    80007a2c:	00001517          	auipc	a0,0x1
    80007a30:	cec50513          	addi	a0,a0,-788 # 80008718 <digits+0x48>
    80007a34:	fffff097          	auipc	ra,0xfffff
    80007a38:	018080e7          	jalr	24(ra) # 80006a4c <panic>
    80007a3c:	00001517          	auipc	a0,0x1
    80007a40:	cc450513          	addi	a0,a0,-828 # 80008700 <digits+0x30>
    80007a44:	fffff097          	auipc	ra,0xfffff
    80007a48:	008080e7          	jalr	8(ra) # 80006a4c <panic>

0000000080007a4c <push_on>:
    80007a4c:	fe010113          	addi	sp,sp,-32
    80007a50:	00813823          	sd	s0,16(sp)
    80007a54:	00113c23          	sd	ra,24(sp)
    80007a58:	00913423          	sd	s1,8(sp)
    80007a5c:	02010413          	addi	s0,sp,32
    80007a60:	100024f3          	csrr	s1,sstatus
    80007a64:	100027f3          	csrr	a5,sstatus
    80007a68:	0027e793          	ori	a5,a5,2
    80007a6c:	10079073          	csrw	sstatus,a5
    80007a70:	ffffe097          	auipc	ra,0xffffe
    80007a74:	620080e7          	jalr	1568(ra) # 80006090 <mycpu>
    80007a78:	07852783          	lw	a5,120(a0)
    80007a7c:	02078663          	beqz	a5,80007aa8 <push_on+0x5c>
    80007a80:	ffffe097          	auipc	ra,0xffffe
    80007a84:	610080e7          	jalr	1552(ra) # 80006090 <mycpu>
    80007a88:	07852783          	lw	a5,120(a0)
    80007a8c:	01813083          	ld	ra,24(sp)
    80007a90:	01013403          	ld	s0,16(sp)
    80007a94:	0017879b          	addiw	a5,a5,1
    80007a98:	06f52c23          	sw	a5,120(a0)
    80007a9c:	00813483          	ld	s1,8(sp)
    80007aa0:	02010113          	addi	sp,sp,32
    80007aa4:	00008067          	ret
    80007aa8:	0014d493          	srli	s1,s1,0x1
    80007aac:	ffffe097          	auipc	ra,0xffffe
    80007ab0:	5e4080e7          	jalr	1508(ra) # 80006090 <mycpu>
    80007ab4:	0014f493          	andi	s1,s1,1
    80007ab8:	06952e23          	sw	s1,124(a0)
    80007abc:	fc5ff06f          	j	80007a80 <push_on+0x34>

0000000080007ac0 <pop_on>:
    80007ac0:	ff010113          	addi	sp,sp,-16
    80007ac4:	00813023          	sd	s0,0(sp)
    80007ac8:	00113423          	sd	ra,8(sp)
    80007acc:	01010413          	addi	s0,sp,16
    80007ad0:	ffffe097          	auipc	ra,0xffffe
    80007ad4:	5c0080e7          	jalr	1472(ra) # 80006090 <mycpu>
    80007ad8:	100027f3          	csrr	a5,sstatus
    80007adc:	0027f793          	andi	a5,a5,2
    80007ae0:	04078463          	beqz	a5,80007b28 <pop_on+0x68>
    80007ae4:	07852783          	lw	a5,120(a0)
    80007ae8:	02f05863          	blez	a5,80007b18 <pop_on+0x58>
    80007aec:	fff7879b          	addiw	a5,a5,-1
    80007af0:	06f52c23          	sw	a5,120(a0)
    80007af4:	07853783          	ld	a5,120(a0)
    80007af8:	00079863          	bnez	a5,80007b08 <pop_on+0x48>
    80007afc:	100027f3          	csrr	a5,sstatus
    80007b00:	ffd7f793          	andi	a5,a5,-3
    80007b04:	10079073          	csrw	sstatus,a5
    80007b08:	00813083          	ld	ra,8(sp)
    80007b0c:	00013403          	ld	s0,0(sp)
    80007b10:	01010113          	addi	sp,sp,16
    80007b14:	00008067          	ret
    80007b18:	00001517          	auipc	a0,0x1
    80007b1c:	c2850513          	addi	a0,a0,-984 # 80008740 <digits+0x70>
    80007b20:	fffff097          	auipc	ra,0xfffff
    80007b24:	f2c080e7          	jalr	-212(ra) # 80006a4c <panic>
    80007b28:	00001517          	auipc	a0,0x1
    80007b2c:	bf850513          	addi	a0,a0,-1032 # 80008720 <digits+0x50>
    80007b30:	fffff097          	auipc	ra,0xfffff
    80007b34:	f1c080e7          	jalr	-228(ra) # 80006a4c <panic>

0000000080007b38 <__memset>:
    80007b38:	ff010113          	addi	sp,sp,-16
    80007b3c:	00813423          	sd	s0,8(sp)
    80007b40:	01010413          	addi	s0,sp,16
    80007b44:	1a060e63          	beqz	a2,80007d00 <__memset+0x1c8>
    80007b48:	40a007b3          	neg	a5,a0
    80007b4c:	0077f793          	andi	a5,a5,7
    80007b50:	00778693          	addi	a3,a5,7
    80007b54:	00b00813          	li	a6,11
    80007b58:	0ff5f593          	andi	a1,a1,255
    80007b5c:	fff6071b          	addiw	a4,a2,-1
    80007b60:	1b06e663          	bltu	a3,a6,80007d0c <__memset+0x1d4>
    80007b64:	1cd76463          	bltu	a4,a3,80007d2c <__memset+0x1f4>
    80007b68:	1a078e63          	beqz	a5,80007d24 <__memset+0x1ec>
    80007b6c:	00b50023          	sb	a1,0(a0)
    80007b70:	00100713          	li	a4,1
    80007b74:	1ae78463          	beq	a5,a4,80007d1c <__memset+0x1e4>
    80007b78:	00b500a3          	sb	a1,1(a0)
    80007b7c:	00200713          	li	a4,2
    80007b80:	1ae78a63          	beq	a5,a4,80007d34 <__memset+0x1fc>
    80007b84:	00b50123          	sb	a1,2(a0)
    80007b88:	00300713          	li	a4,3
    80007b8c:	18e78463          	beq	a5,a4,80007d14 <__memset+0x1dc>
    80007b90:	00b501a3          	sb	a1,3(a0)
    80007b94:	00400713          	li	a4,4
    80007b98:	1ae78263          	beq	a5,a4,80007d3c <__memset+0x204>
    80007b9c:	00b50223          	sb	a1,4(a0)
    80007ba0:	00500713          	li	a4,5
    80007ba4:	1ae78063          	beq	a5,a4,80007d44 <__memset+0x20c>
    80007ba8:	00b502a3          	sb	a1,5(a0)
    80007bac:	00700713          	li	a4,7
    80007bb0:	18e79e63          	bne	a5,a4,80007d4c <__memset+0x214>
    80007bb4:	00b50323          	sb	a1,6(a0)
    80007bb8:	00700e93          	li	t4,7
    80007bbc:	00859713          	slli	a4,a1,0x8
    80007bc0:	00e5e733          	or	a4,a1,a4
    80007bc4:	01059e13          	slli	t3,a1,0x10
    80007bc8:	01c76e33          	or	t3,a4,t3
    80007bcc:	01859313          	slli	t1,a1,0x18
    80007bd0:	006e6333          	or	t1,t3,t1
    80007bd4:	02059893          	slli	a7,a1,0x20
    80007bd8:	40f60e3b          	subw	t3,a2,a5
    80007bdc:	011368b3          	or	a7,t1,a7
    80007be0:	02859813          	slli	a6,a1,0x28
    80007be4:	0108e833          	or	a6,a7,a6
    80007be8:	03059693          	slli	a3,a1,0x30
    80007bec:	003e589b          	srliw	a7,t3,0x3
    80007bf0:	00d866b3          	or	a3,a6,a3
    80007bf4:	03859713          	slli	a4,a1,0x38
    80007bf8:	00389813          	slli	a6,a7,0x3
    80007bfc:	00f507b3          	add	a5,a0,a5
    80007c00:	00e6e733          	or	a4,a3,a4
    80007c04:	000e089b          	sext.w	a7,t3
    80007c08:	00f806b3          	add	a3,a6,a5
    80007c0c:	00e7b023          	sd	a4,0(a5)
    80007c10:	00878793          	addi	a5,a5,8
    80007c14:	fed79ce3          	bne	a5,a3,80007c0c <__memset+0xd4>
    80007c18:	ff8e7793          	andi	a5,t3,-8
    80007c1c:	0007871b          	sext.w	a4,a5
    80007c20:	01d787bb          	addw	a5,a5,t4
    80007c24:	0ce88e63          	beq	a7,a4,80007d00 <__memset+0x1c8>
    80007c28:	00f50733          	add	a4,a0,a5
    80007c2c:	00b70023          	sb	a1,0(a4)
    80007c30:	0017871b          	addiw	a4,a5,1
    80007c34:	0cc77663          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c38:	00e50733          	add	a4,a0,a4
    80007c3c:	00b70023          	sb	a1,0(a4)
    80007c40:	0027871b          	addiw	a4,a5,2
    80007c44:	0ac77e63          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c48:	00e50733          	add	a4,a0,a4
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0037871b          	addiw	a4,a5,3
    80007c54:	0ac77663          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0047871b          	addiw	a4,a5,4
    80007c64:	08c77e63          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	0057871b          	addiw	a4,a5,5
    80007c74:	08c77663          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	0067871b          	addiw	a4,a5,6
    80007c84:	06c77e63          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0077871b          	addiw	a4,a5,7
    80007c94:	06c77663          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0087871b          	addiw	a4,a5,8
    80007ca4:	04c77e63          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	0097871b          	addiw	a4,a5,9
    80007cb4:	04c77663          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	00a7871b          	addiw	a4,a5,10
    80007cc4:	02c77e63          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	00b7871b          	addiw	a4,a5,11
    80007cd4:	02c77663          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	00c7871b          	addiw	a4,a5,12
    80007ce4:	00c77e63          	bgeu	a4,a2,80007d00 <__memset+0x1c8>
    80007ce8:	00e50733          	add	a4,a0,a4
    80007cec:	00b70023          	sb	a1,0(a4)
    80007cf0:	00d7879b          	addiw	a5,a5,13
    80007cf4:	00c7f663          	bgeu	a5,a2,80007d00 <__memset+0x1c8>
    80007cf8:	00f507b3          	add	a5,a0,a5
    80007cfc:	00b78023          	sb	a1,0(a5)
    80007d00:	00813403          	ld	s0,8(sp)
    80007d04:	01010113          	addi	sp,sp,16
    80007d08:	00008067          	ret
    80007d0c:	00b00693          	li	a3,11
    80007d10:	e55ff06f          	j	80007b64 <__memset+0x2c>
    80007d14:	00300e93          	li	t4,3
    80007d18:	ea5ff06f          	j	80007bbc <__memset+0x84>
    80007d1c:	00100e93          	li	t4,1
    80007d20:	e9dff06f          	j	80007bbc <__memset+0x84>
    80007d24:	00000e93          	li	t4,0
    80007d28:	e95ff06f          	j	80007bbc <__memset+0x84>
    80007d2c:	00000793          	li	a5,0
    80007d30:	ef9ff06f          	j	80007c28 <__memset+0xf0>
    80007d34:	00200e93          	li	t4,2
    80007d38:	e85ff06f          	j	80007bbc <__memset+0x84>
    80007d3c:	00400e93          	li	t4,4
    80007d40:	e7dff06f          	j	80007bbc <__memset+0x84>
    80007d44:	00500e93          	li	t4,5
    80007d48:	e75ff06f          	j	80007bbc <__memset+0x84>
    80007d4c:	00600e93          	li	t4,6
    80007d50:	e6dff06f          	j	80007bbc <__memset+0x84>

0000000080007d54 <__memmove>:
    80007d54:	ff010113          	addi	sp,sp,-16
    80007d58:	00813423          	sd	s0,8(sp)
    80007d5c:	01010413          	addi	s0,sp,16
    80007d60:	0e060863          	beqz	a2,80007e50 <__memmove+0xfc>
    80007d64:	fff6069b          	addiw	a3,a2,-1
    80007d68:	0006881b          	sext.w	a6,a3
    80007d6c:	0ea5e863          	bltu	a1,a0,80007e5c <__memmove+0x108>
    80007d70:	00758713          	addi	a4,a1,7
    80007d74:	00a5e7b3          	or	a5,a1,a0
    80007d78:	40a70733          	sub	a4,a4,a0
    80007d7c:	0077f793          	andi	a5,a5,7
    80007d80:	00f73713          	sltiu	a4,a4,15
    80007d84:	00174713          	xori	a4,a4,1
    80007d88:	0017b793          	seqz	a5,a5
    80007d8c:	00e7f7b3          	and	a5,a5,a4
    80007d90:	10078863          	beqz	a5,80007ea0 <__memmove+0x14c>
    80007d94:	00900793          	li	a5,9
    80007d98:	1107f463          	bgeu	a5,a6,80007ea0 <__memmove+0x14c>
    80007d9c:	0036581b          	srliw	a6,a2,0x3
    80007da0:	fff8081b          	addiw	a6,a6,-1
    80007da4:	02081813          	slli	a6,a6,0x20
    80007da8:	01d85893          	srli	a7,a6,0x1d
    80007dac:	00858813          	addi	a6,a1,8
    80007db0:	00058793          	mv	a5,a1
    80007db4:	00050713          	mv	a4,a0
    80007db8:	01088833          	add	a6,a7,a6
    80007dbc:	0007b883          	ld	a7,0(a5)
    80007dc0:	00878793          	addi	a5,a5,8
    80007dc4:	00870713          	addi	a4,a4,8
    80007dc8:	ff173c23          	sd	a7,-8(a4)
    80007dcc:	ff0798e3          	bne	a5,a6,80007dbc <__memmove+0x68>
    80007dd0:	ff867713          	andi	a4,a2,-8
    80007dd4:	02071793          	slli	a5,a4,0x20
    80007dd8:	0207d793          	srli	a5,a5,0x20
    80007ddc:	00f585b3          	add	a1,a1,a5
    80007de0:	40e686bb          	subw	a3,a3,a4
    80007de4:	00f507b3          	add	a5,a0,a5
    80007de8:	06e60463          	beq	a2,a4,80007e50 <__memmove+0xfc>
    80007dec:	0005c703          	lbu	a4,0(a1)
    80007df0:	00e78023          	sb	a4,0(a5)
    80007df4:	04068e63          	beqz	a3,80007e50 <__memmove+0xfc>
    80007df8:	0015c603          	lbu	a2,1(a1)
    80007dfc:	00100713          	li	a4,1
    80007e00:	00c780a3          	sb	a2,1(a5)
    80007e04:	04e68663          	beq	a3,a4,80007e50 <__memmove+0xfc>
    80007e08:	0025c603          	lbu	a2,2(a1)
    80007e0c:	00200713          	li	a4,2
    80007e10:	00c78123          	sb	a2,2(a5)
    80007e14:	02e68e63          	beq	a3,a4,80007e50 <__memmove+0xfc>
    80007e18:	0035c603          	lbu	a2,3(a1)
    80007e1c:	00300713          	li	a4,3
    80007e20:	00c781a3          	sb	a2,3(a5)
    80007e24:	02e68663          	beq	a3,a4,80007e50 <__memmove+0xfc>
    80007e28:	0045c603          	lbu	a2,4(a1)
    80007e2c:	00400713          	li	a4,4
    80007e30:	00c78223          	sb	a2,4(a5)
    80007e34:	00e68e63          	beq	a3,a4,80007e50 <__memmove+0xfc>
    80007e38:	0055c603          	lbu	a2,5(a1)
    80007e3c:	00500713          	li	a4,5
    80007e40:	00c782a3          	sb	a2,5(a5)
    80007e44:	00e68663          	beq	a3,a4,80007e50 <__memmove+0xfc>
    80007e48:	0065c703          	lbu	a4,6(a1)
    80007e4c:	00e78323          	sb	a4,6(a5)
    80007e50:	00813403          	ld	s0,8(sp)
    80007e54:	01010113          	addi	sp,sp,16
    80007e58:	00008067          	ret
    80007e5c:	02061713          	slli	a4,a2,0x20
    80007e60:	02075713          	srli	a4,a4,0x20
    80007e64:	00e587b3          	add	a5,a1,a4
    80007e68:	f0f574e3          	bgeu	a0,a5,80007d70 <__memmove+0x1c>
    80007e6c:	02069613          	slli	a2,a3,0x20
    80007e70:	02065613          	srli	a2,a2,0x20
    80007e74:	fff64613          	not	a2,a2
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00c78633          	add	a2,a5,a2
    80007e80:	fff7c683          	lbu	a3,-1(a5)
    80007e84:	fff78793          	addi	a5,a5,-1
    80007e88:	fff70713          	addi	a4,a4,-1
    80007e8c:	00d70023          	sb	a3,0(a4)
    80007e90:	fec798e3          	bne	a5,a2,80007e80 <__memmove+0x12c>
    80007e94:	00813403          	ld	s0,8(sp)
    80007e98:	01010113          	addi	sp,sp,16
    80007e9c:	00008067          	ret
    80007ea0:	02069713          	slli	a4,a3,0x20
    80007ea4:	02075713          	srli	a4,a4,0x20
    80007ea8:	00170713          	addi	a4,a4,1
    80007eac:	00e50733          	add	a4,a0,a4
    80007eb0:	00050793          	mv	a5,a0
    80007eb4:	0005c683          	lbu	a3,0(a1)
    80007eb8:	00178793          	addi	a5,a5,1
    80007ebc:	00158593          	addi	a1,a1,1
    80007ec0:	fed78fa3          	sb	a3,-1(a5)
    80007ec4:	fee798e3          	bne	a5,a4,80007eb4 <__memmove+0x160>
    80007ec8:	f89ff06f          	j	80007e50 <__memmove+0xfc>

0000000080007ecc <__putc>:
    80007ecc:	fe010113          	addi	sp,sp,-32
    80007ed0:	00813823          	sd	s0,16(sp)
    80007ed4:	00113c23          	sd	ra,24(sp)
    80007ed8:	02010413          	addi	s0,sp,32
    80007edc:	00050793          	mv	a5,a0
    80007ee0:	fef40593          	addi	a1,s0,-17
    80007ee4:	00100613          	li	a2,1
    80007ee8:	00000513          	li	a0,0
    80007eec:	fef407a3          	sb	a5,-17(s0)
    80007ef0:	fffff097          	auipc	ra,0xfffff
    80007ef4:	b3c080e7          	jalr	-1220(ra) # 80006a2c <console_write>
    80007ef8:	01813083          	ld	ra,24(sp)
    80007efc:	01013403          	ld	s0,16(sp)
    80007f00:	02010113          	addi	sp,sp,32
    80007f04:	00008067          	ret

0000000080007f08 <__getc>:
    80007f08:	fe010113          	addi	sp,sp,-32
    80007f0c:	00813823          	sd	s0,16(sp)
    80007f10:	00113c23          	sd	ra,24(sp)
    80007f14:	02010413          	addi	s0,sp,32
    80007f18:	fe840593          	addi	a1,s0,-24
    80007f1c:	00100613          	li	a2,1
    80007f20:	00000513          	li	a0,0
    80007f24:	fffff097          	auipc	ra,0xfffff
    80007f28:	ae8080e7          	jalr	-1304(ra) # 80006a0c <console_read>
    80007f2c:	fe844503          	lbu	a0,-24(s0)
    80007f30:	01813083          	ld	ra,24(sp)
    80007f34:	01013403          	ld	s0,16(sp)
    80007f38:	02010113          	addi	sp,sp,32
    80007f3c:	00008067          	ret

0000000080007f40 <console_handler>:
    80007f40:	fe010113          	addi	sp,sp,-32
    80007f44:	00813823          	sd	s0,16(sp)
    80007f48:	00113c23          	sd	ra,24(sp)
    80007f4c:	00913423          	sd	s1,8(sp)
    80007f50:	02010413          	addi	s0,sp,32
    80007f54:	14202773          	csrr	a4,scause
    80007f58:	100027f3          	csrr	a5,sstatus
    80007f5c:	0027f793          	andi	a5,a5,2
    80007f60:	06079e63          	bnez	a5,80007fdc <console_handler+0x9c>
    80007f64:	00074c63          	bltz	a4,80007f7c <console_handler+0x3c>
    80007f68:	01813083          	ld	ra,24(sp)
    80007f6c:	01013403          	ld	s0,16(sp)
    80007f70:	00813483          	ld	s1,8(sp)
    80007f74:	02010113          	addi	sp,sp,32
    80007f78:	00008067          	ret
    80007f7c:	0ff77713          	andi	a4,a4,255
    80007f80:	00900793          	li	a5,9
    80007f84:	fef712e3          	bne	a4,a5,80007f68 <console_handler+0x28>
    80007f88:	ffffe097          	auipc	ra,0xffffe
    80007f8c:	6dc080e7          	jalr	1756(ra) # 80006664 <plic_claim>
    80007f90:	00a00793          	li	a5,10
    80007f94:	00050493          	mv	s1,a0
    80007f98:	02f50c63          	beq	a0,a5,80007fd0 <console_handler+0x90>
    80007f9c:	fc0506e3          	beqz	a0,80007f68 <console_handler+0x28>
    80007fa0:	00050593          	mv	a1,a0
    80007fa4:	00000517          	auipc	a0,0x0
    80007fa8:	6a450513          	addi	a0,a0,1700 # 80008648 <CONSOLE_STATUS+0x638>
    80007fac:	fffff097          	auipc	ra,0xfffff
    80007fb0:	afc080e7          	jalr	-1284(ra) # 80006aa8 <__printf>
    80007fb4:	01013403          	ld	s0,16(sp)
    80007fb8:	01813083          	ld	ra,24(sp)
    80007fbc:	00048513          	mv	a0,s1
    80007fc0:	00813483          	ld	s1,8(sp)
    80007fc4:	02010113          	addi	sp,sp,32
    80007fc8:	ffffe317          	auipc	t1,0xffffe
    80007fcc:	6d430067          	jr	1748(t1) # 8000669c <plic_complete>
    80007fd0:	fffff097          	auipc	ra,0xfffff
    80007fd4:	3e0080e7          	jalr	992(ra) # 800073b0 <uartintr>
    80007fd8:	fddff06f          	j	80007fb4 <console_handler+0x74>
    80007fdc:	00000517          	auipc	a0,0x0
    80007fe0:	76c50513          	addi	a0,a0,1900 # 80008748 <digits+0x78>
    80007fe4:	fffff097          	auipc	ra,0xfffff
    80007fe8:	a68080e7          	jalr	-1432(ra) # 80006a4c <panic>
	...
