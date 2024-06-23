
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	05813103          	ld	sp,88(sp) # 80006058 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3b9020ef          	jal	ra,80002bd4 <start>

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
    80001184:	30c010ef          	jal	ra,80002490 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001224 <_Z9mem_allocm>:
// Created by os on 5/18/24.
//

#include "../h/syscall_c.hpp"

void* mem_alloc (size_t size){
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00813423          	sd	s0,8(sp)
    8000122c:	01010413          	addi	s0,sp,16
    size_t real;
    if(size % MEM_BLOCK_SIZE == 0)  real = size;
    80001230:	03f57793          	andi	a5,a0,63
    80001234:	00078663          	beqz	a5,80001240 <_Z9mem_allocm+0x1c>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        real = size - rem + MEM_BLOCK_SIZE;
    80001238:	fc057513          	andi	a0,a0,-64
    8000123c:	04050513          	addi	a0,a0,64
    }

    __asm__ volatile("mv a1, %0" :: "r"(real));
    80001240:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001244:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
    void* r;
    __asm__ volatile("mv %0,a0":"=r"(r));
    8000124c:	00050513          	mv	a0,a0
    return  r;
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z8mem_freePv>:
int mem_free (void* p){
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00813423          	sd	s0,8(sp)
    80001264:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0":: "r"(p));
    80001268:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    8000126c:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001270:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001274:	00050513          	mv	a0,a0
    return r;
}
    80001278:	0005051b          	sext.w	a0,a0
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001294:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001298:	00000073          	ecall
}
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z11thread_exitv>:

int thread_exit() {
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800012b4:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    800012b8:	00000073          	ecall
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    800012bc:	00050513          	mv	a0,a0
    return r;
}
    800012c0:	0005051b          	sext.w	a0,a0
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012d0:	fd010113          	addi	sp,sp,-48
    800012d4:	02113423          	sd	ra,40(sp)
    800012d8:	02813023          	sd	s0,32(sp)
    800012dc:	00913c23          	sd	s1,24(sp)
    800012e0:	01213823          	sd	s2,16(sp)
    800012e4:	01313423          	sd	s3,8(sp)
    800012e8:	03010413          	addi	s0,sp,48
    800012ec:	00050913          	mv	s2,a0
    800012f0:	00058493          	mv	s1,a1
    800012f4:	00060993          	mv	s3,a2

    void* stek;
    stek = start_routine != nullptr ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    800012f8:	04058663          	beqz	a1,80001344 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
    800012fc:	00001537          	lui	a0,0x1
    80001300:	00000097          	auipc	ra,0x0
    80001304:	f24080e7          	jalr	-220(ra) # 80001224 <_Z9mem_allocm>
    __asm__ volatile("mv a4, %0" :: "r"(stek));
    80001308:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :: "r"(arg));
    8000130c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :: "r"(start_routine));
    80001310:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001314:	00090593          	mv	a1,s2
    __asm__ volatile("li a0, 0x11");
    80001318:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    8000131c:	00000073          	ecall
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001320:	00050513          	mv	a0,a0
    return r;
}
    80001324:	0005051b          	sext.w	a0,a0
    80001328:	02813083          	ld	ra,40(sp)
    8000132c:	02013403          	ld	s0,32(sp)
    80001330:	01813483          	ld	s1,24(sp)
    80001334:	01013903          	ld	s2,16(sp)
    80001338:	00813983          	ld	s3,8(sp)
    8000133c:	03010113          	addi	sp,sp,48
    80001340:	00008067          	ret
    stek = start_routine != nullptr ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    80001344:	00000513          	li	a0,0
    80001348:	fc1ff06f          	j	80001308 <_Z13thread_createPP3TCBPFvPvES2_+0x38>

000000008000134c <_Z8sem_openPP3semj>:

int sem_open(sem_t *handle, unsigned int init) {
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00813423          	sd	s0,8(sp)
    80001354:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :: "r"(init));
    80001358:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    8000135c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001360:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    80001364:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001368:	00050513          	mv	a0,a0
    return (int)r;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z9sem_closeP3sem>:

int sem_close(sem_t handle) {
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001388:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000138c:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    80001390:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001394:	00050513          	mv	a0,a0
    return r;
}
    80001398:	0005051b          	sext.w	a0,a0
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z8sem_waitP3sem>:

int sem_wait(sem_t id) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r"(id));
    800013b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013b8:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    800013bc:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    800013c0:	00050513          	mv	a0,a0
    return r;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z10sem_signalP3sem>:

int sem_signal(sem_t id) {
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r"(id));
    800013e0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800013e4:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    800013e8:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    800013ec:	00050513          	mv	a0,a0
    return r;
}
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z11sem_trywaitP3sem>:

int sem_trywait(sem_t id) {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" :: "r"(id));
    8000140c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x26");
    80001410:	02600513          	li	a0,38
    __asm__ volatile("ecall");
    80001414:	00000073          	ecall

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001418:	00050513          	mv	a0,a0
    return r;
}
    8000141c:	0005051b          	sext.w	a0,a0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_ZL9fibonaccim>:
        if(i == 10) thread_exit();
    }
}

static uint64 fibonacci(uint64 n)
{
    8000142c:	fe010113          	addi	sp,sp,-32
    80001430:	00113c23          	sd	ra,24(sp)
    80001434:	00813823          	sd	s0,16(sp)
    80001438:	00913423          	sd	s1,8(sp)
    8000143c:	01213023          	sd	s2,0(sp)
    80001440:	02010413          	addi	s0,sp,32
    80001444:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001448:	00100793          	li	a5,1
    8000144c:	02a7f863          	bgeu	a5,a0,8000147c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001450:	00a00793          	li	a5,10
    80001454:	02f577b3          	remu	a5,a0,a5
    80001458:	02078e63          	beqz	a5,80001494 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000145c:	fff48513          	addi	a0,s1,-1
    80001460:	00000097          	auipc	ra,0x0
    80001464:	fcc080e7          	jalr	-52(ra) # 8000142c <_ZL9fibonaccim>
    80001468:	00050913          	mv	s2,a0
    8000146c:	ffe48513          	addi	a0,s1,-2
    80001470:	00000097          	auipc	ra,0x0
    80001474:	fbc080e7          	jalr	-68(ra) # 8000142c <_ZL9fibonaccim>
    80001478:	00a90533          	add	a0,s2,a0
}
    8000147c:	01813083          	ld	ra,24(sp)
    80001480:	01013403          	ld	s0,16(sp)
    80001484:	00813483          	ld	s1,8(sp)
    80001488:	00013903          	ld	s2,0(sp)
    8000148c:	02010113          	addi	sp,sp,32
    80001490:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001494:	00001097          	auipc	ra,0x1
    80001498:	a2c080e7          	jalr	-1492(ra) # 80001ec0 <_ZN3TCB5yieldEv>
    8000149c:	fc1ff06f          	j	8000145c <_ZL9fibonaccim+0x30>

00000000800014a0 <_Z11workerBodyAPv>:
{
    800014a0:	fe010113          	addi	sp,sp,-32
    800014a4:	00113c23          	sd	ra,24(sp)
    800014a8:	00813823          	sd	s0,16(sp)
    800014ac:	00913423          	sd	s1,8(sp)
    800014b0:	01213023          	sd	s2,0(sp)
    800014b4:	02010413          	addi	s0,sp,32
    800014b8:	00050913          	mv	s2,a0
    sem_wait(s);
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	eec080e7          	jalr	-276(ra) # 800013a8 <_Z8sem_waitP3sem>
    for (uint64 i = 0; i < 10; i++)
    800014c4:	00000493          	li	s1,0
    800014c8:	0300006f          	j	800014f8 <_Z11workerBodyAPv+0x58>
        for (uint64 j = 0; j < 10000; j++)
    800014cc:	00168693          	addi	a3,a3,1
    800014d0:	000027b7          	lui	a5,0x2
    800014d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014d8:	00d7ee63          	bltu	a5,a3,800014f4 <_Z11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++)
    800014dc:	00000713          	li	a4,0
    800014e0:	000077b7          	lui	a5,0x7
    800014e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014e8:	fee7e2e3          	bltu	a5,a4,800014cc <_Z11workerBodyAPv+0x2c>
    800014ec:	00170713          	addi	a4,a4,1
    800014f0:	ff1ff06f          	j	800014e0 <_Z11workerBodyAPv+0x40>
    for (uint64 i = 0; i < 10; i++)
    800014f4:	00148493          	addi	s1,s1,1
    800014f8:	00900793          	li	a5,9
    800014fc:	0297ec63          	bltu	a5,s1,80001534 <_Z11workerBodyAPv+0x94>
        printString("A: i=");
    80001500:	00004517          	auipc	a0,0x4
    80001504:	b2050513          	addi	a0,a0,-1248 # 80005020 <CONSOLE_STATUS+0x10>
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	5a0080e7          	jalr	1440(ra) # 80002aa8 <_Z11printStringPKc>
        printInteger(i);
    80001510:	00048513          	mv	a0,s1
    80001514:	00001097          	auipc	ra,0x1
    80001518:	604080e7          	jalr	1540(ra) # 80002b18 <_Z12printIntegerm>
        printString("\n");
    8000151c:	00004517          	auipc	a0,0x4
    80001520:	bd450513          	addi	a0,a0,-1068 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001524:	00001097          	auipc	ra,0x1
    80001528:	584080e7          	jalr	1412(ra) # 80002aa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000152c:	00000693          	li	a3,0
    80001530:	fa1ff06f          	j	800014d0 <_Z11workerBodyAPv+0x30>
    sem_close(s);
    80001534:	00090513          	mv	a0,s2
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	e44080e7          	jalr	-444(ra) # 8000137c <_Z9sem_closeP3sem>
    sem_signal(s);
    80001540:	00090513          	mv	a0,s2
    80001544:	00000097          	auipc	ra,0x0
    80001548:	e90080e7          	jalr	-368(ra) # 800013d4 <_Z10sem_signalP3sem>
}
    8000154c:	01813083          	ld	ra,24(sp)
    80001550:	01013403          	ld	s0,16(sp)
    80001554:	00813483          	ld	s1,8(sp)
    80001558:	00013903          	ld	s2,0(sp)
    8000155c:	02010113          	addi	sp,sp,32
    80001560:	00008067          	ret

0000000080001564 <_Z11workerBodyBPv>:
{
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001578:	00000493          	li	s1,0
    8000157c:	0380006f          	j	800015b4 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001580:	00168693          	addi	a3,a3,1
    80001584:	000027b7          	lui	a5,0x2
    80001588:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000158c:	00d7ee63          	bltu	a5,a3,800015a8 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001590:	00000713          	li	a4,0
    80001594:	000077b7          	lui	a5,0x7
    80001598:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000159c:	fee7e2e3          	bltu	a5,a4,80001580 <_Z11workerBodyBPv+0x1c>
    800015a0:	00170713          	addi	a4,a4,1
    800015a4:	ff1ff06f          	j	80001594 <_Z11workerBodyBPv+0x30>
        if(i == 10) thread_exit();
    800015a8:	00a00793          	li	a5,10
    800015ac:	04f48263          	beq	s1,a5,800015f0 <_Z11workerBodyBPv+0x8c>
    for (uint64 i = 0; i < 16; i++)
    800015b0:	00148493          	addi	s1,s1,1
    800015b4:	00f00793          	li	a5,15
    800015b8:	0497e263          	bltu	a5,s1,800015fc <_Z11workerBodyBPv+0x98>
        printString("B: i=");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	a6c50513          	addi	a0,a0,-1428 # 80005028 <CONSOLE_STATUS+0x18>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	4e4080e7          	jalr	1252(ra) # 80002aa8 <_Z11printStringPKc>
        printInteger(i);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	548080e7          	jalr	1352(ra) # 80002b18 <_Z12printIntegerm>
        printString("\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	b1850513          	addi	a0,a0,-1256 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	4c8080e7          	jalr	1224(ra) # 80002aa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800015e8:	00000693          	li	a3,0
    800015ec:	f99ff06f          	j	80001584 <_Z11workerBodyBPv+0x20>
        if(i == 10) thread_exit();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	cb8080e7          	jalr	-840(ra) # 800012a8 <_Z11thread_exitv>
    800015f8:	fb9ff06f          	j	800015b0 <_Z11workerBodyBPv+0x4c>
}
    800015fc:	01813083          	ld	ra,24(sp)
    80001600:	01013403          	ld	s0,16(sp)
    80001604:	00813483          	ld	s1,8(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <_Z11workerBodyCPv>:

void workerBodyC(void* g)
{
    80001610:	fd010113          	addi	sp,sp,-48
    80001614:	02113423          	sd	ra,40(sp)
    80001618:	02813023          	sd	s0,32(sp)
    8000161c:	00913c23          	sd	s1,24(sp)
    80001620:	01213823          	sd	s2,16(sp)
    80001624:	01313423          	sd	s3,8(sp)
    80001628:	03010413          	addi	s0,sp,48
    8000162c:	00050913          	mv	s2,a0
   sem* s = (sem*) g;
    sem_wait(s);
    80001630:	00000097          	auipc	ra,0x0
    80001634:	d78080e7          	jalr	-648(ra) # 800013a8 <_Z8sem_waitP3sem>
    uint8 i = 0;
    80001638:	00000493          	li	s1,0
    8000163c:	0380006f          	j	80001674 <_Z11workerBodyCPv+0x64>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001640:	00004517          	auipc	a0,0x4
    80001644:	9f050513          	addi	a0,a0,-1552 # 80005030 <CONSOLE_STATUS+0x20>
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	460080e7          	jalr	1120(ra) # 80002aa8 <_Z11printStringPKc>
        printInteger(i);
    80001650:	00048513          	mv	a0,s1
    80001654:	00001097          	auipc	ra,0x1
    80001658:	4c4080e7          	jalr	1220(ra) # 80002b18 <_Z12printIntegerm>
        printString("\n");
    8000165c:	00004517          	auipc	a0,0x4
    80001660:	a9450513          	addi	a0,a0,-1388 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001664:	00001097          	auipc	ra,0x1
    80001668:	444080e7          	jalr	1092(ra) # 80002aa8 <_Z11printStringPKc>
    for (; i < 3; i++)
    8000166c:	0014849b          	addiw	s1,s1,1
    80001670:	0ff4f493          	andi	s1,s1,255
    80001674:	00200793          	li	a5,2
    80001678:	fc97f4e3          	bgeu	a5,s1,80001640 <_Z11workerBodyCPv+0x30>
    }

    printString("C: yield\n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	9bc50513          	addi	a0,a0,-1604 # 80005038 <CONSOLE_STATUS+0x28>
    80001684:	00001097          	auipc	ra,0x1
    80001688:	424080e7          	jalr	1060(ra) # 80002aa8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000168c:	00700313          	li	t1,7
    thread_dispatch();
    80001690:	00000097          	auipc	ra,0x0
    80001694:	bf8080e7          	jalr	-1032(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001698:	00030993          	mv	s3,t1

    printString("C: t1=");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	9ac50513          	addi	a0,a0,-1620 # 80005048 <CONSOLE_STATUS+0x38>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	404080e7          	jalr	1028(ra) # 80002aa8 <_Z11printStringPKc>
    printInteger(t1);
    800016ac:	00098513          	mv	a0,s3
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	468080e7          	jalr	1128(ra) # 80002b18 <_Z12printIntegerm>
    printString("\n");
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	a3850513          	addi	a0,a0,-1480 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	3e8080e7          	jalr	1000(ra) # 80002aa8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800016c8:	00c00513          	li	a0,12
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	d60080e7          	jalr	-672(ra) # 8000142c <_ZL9fibonaccim>
    800016d4:	00050993          	mv	s3,a0
    printString("C: fibonaci=");
    800016d8:	00004517          	auipc	a0,0x4
    800016dc:	97850513          	addi	a0,a0,-1672 # 80005050 <CONSOLE_STATUS+0x40>
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	3c8080e7          	jalr	968(ra) # 80002aa8 <_Z11printStringPKc>
    printInteger(result);
    800016e8:	00098513          	mv	a0,s3
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	42c080e7          	jalr	1068(ra) # 80002b18 <_Z12printIntegerm>
    printString("\n");
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	9fc50513          	addi	a0,a0,-1540 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	3ac080e7          	jalr	940(ra) # 80002aa8 <_Z11printStringPKc>
    80001704:	0380006f          	j	8000173c <_Z11workerBodyCPv+0x12c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001708:	00004517          	auipc	a0,0x4
    8000170c:	92850513          	addi	a0,a0,-1752 # 80005030 <CONSOLE_STATUS+0x20>
    80001710:	00001097          	auipc	ra,0x1
    80001714:	398080e7          	jalr	920(ra) # 80002aa8 <_Z11printStringPKc>
        printInteger(i);
    80001718:	00048513          	mv	a0,s1
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	3fc080e7          	jalr	1020(ra) # 80002b18 <_Z12printIntegerm>
        printString("\n");
    80001724:	00004517          	auipc	a0,0x4
    80001728:	9cc50513          	addi	a0,a0,-1588 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	37c080e7          	jalr	892(ra) # 80002aa8 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001734:	0014849b          	addiw	s1,s1,1
    80001738:	0ff4f493          	andi	s1,s1,255
    8000173c:	00500793          	li	a5,5
    80001740:	fc97f4e3          	bgeu	a5,s1,80001708 <_Z11workerBodyCPv+0xf8>
    }
//    TCB::yield();
    sem_signal(s);
    80001744:	00090513          	mv	a0,s2
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	c8c080e7          	jalr	-884(ra) # 800013d4 <_Z10sem_signalP3sem>
}
    80001750:	02813083          	ld	ra,40(sp)
    80001754:	02013403          	ld	s0,32(sp)
    80001758:	01813483          	ld	s1,24(sp)
    8000175c:	01013903          	ld	s2,16(sp)
    80001760:	00813983          	ld	s3,8(sp)
    80001764:	03010113          	addi	sp,sp,48
    80001768:	00008067          	ret

000000008000176c <_Z11workerBodyDPv>:

void workerBodyD(void* g)
{
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	01213023          	sd	s2,0(sp)
    80001780:	02010413          	addi	s0,sp,32
    sem* s = (sem*) g;
    sem_trywait(s);
    80001784:	00000097          	auipc	ra,0x0
    80001788:	c7c080e7          	jalr	-900(ra) # 80001400 <_Z11sem_trywaitP3sem>
    uint8 i = 10;
    8000178c:	00a00493          	li	s1,10
    80001790:	0380006f          	j	800017c8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001794:	00004517          	auipc	a0,0x4
    80001798:	8cc50513          	addi	a0,a0,-1844 # 80005060 <CONSOLE_STATUS+0x50>
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	30c080e7          	jalr	780(ra) # 80002aa8 <_Z11printStringPKc>
        printInteger(i);
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	370080e7          	jalr	880(ra) # 80002b18 <_Z12printIntegerm>
        printString("\n");
    800017b0:	00004517          	auipc	a0,0x4
    800017b4:	94050513          	addi	a0,a0,-1728 # 800050f0 <CONSOLE_STATUS+0xe0>
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	2f0080e7          	jalr	752(ra) # 80002aa8 <_Z11printStringPKc>
    for (; i < 13; i++)
    800017c0:	0014849b          	addiw	s1,s1,1
    800017c4:	0ff4f493          	andi	s1,s1,255
    800017c8:	00c00793          	li	a5,12
    800017cc:	fc97f4e3          	bgeu	a5,s1,80001794 <_Z11workerBodyDPv+0x28>
    }

    printString("D: yield\n");
    800017d0:	00004517          	auipc	a0,0x4
    800017d4:	89850513          	addi	a0,a0,-1896 # 80005068 <CONSOLE_STATUS+0x58>
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	2d0080e7          	jalr	720(ra) # 80002aa8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800017e0:	00500313          	li	t1,5
    thread_dispatch();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	aa4080e7          	jalr	-1372(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800017ec:	01000513          	li	a0,16
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	c3c080e7          	jalr	-964(ra) # 8000142c <_ZL9fibonaccim>
    800017f8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800017fc:	00004517          	auipc	a0,0x4
    80001800:	87c50513          	addi	a0,a0,-1924 # 80005078 <CONSOLE_STATUS+0x68>
    80001804:	00001097          	auipc	ra,0x1
    80001808:	2a4080e7          	jalr	676(ra) # 80002aa8 <_Z11printStringPKc>
    printInteger(result);
    8000180c:	00090513          	mv	a0,s2
    80001810:	00001097          	auipc	ra,0x1
    80001814:	308080e7          	jalr	776(ra) # 80002b18 <_Z12printIntegerm>
    printString("\n");
    80001818:	00004517          	auipc	a0,0x4
    8000181c:	8d850513          	addi	a0,a0,-1832 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001820:	00001097          	auipc	ra,0x1
    80001824:	288080e7          	jalr	648(ra) # 80002aa8 <_Z11printStringPKc>
    80001828:	0380006f          	j	80001860 <_Z11workerBodyDPv+0xf4>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	83450513          	addi	a0,a0,-1996 # 80005060 <CONSOLE_STATUS+0x50>
    80001834:	00001097          	auipc	ra,0x1
    80001838:	274080e7          	jalr	628(ra) # 80002aa8 <_Z11printStringPKc>
        printInteger(i);
    8000183c:	00048513          	mv	a0,s1
    80001840:	00001097          	auipc	ra,0x1
    80001844:	2d8080e7          	jalr	728(ra) # 80002b18 <_Z12printIntegerm>
        printString("\n");
    80001848:	00004517          	auipc	a0,0x4
    8000184c:	8a850513          	addi	a0,a0,-1880 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001850:	00001097          	auipc	ra,0x1
    80001854:	258080e7          	jalr	600(ra) # 80002aa8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001858:	0014849b          	addiw	s1,s1,1
    8000185c:	0ff4f493          	andi	s1,s1,255
    80001860:	00f00793          	li	a5,15
    80001864:	fc97f4e3          	bgeu	a5,s1,8000182c <_Z11workerBodyDPv+0xc0>
    }
    //sem_signal(s);
//    TCB::yield();
    80001868:	01813083          	ld	ra,24(sp)
    8000186c:	01013403          	ld	s0,16(sp)
    80001870:	00813483          	ld	s1,8(sp)
    80001874:	00013903          	ld	s2,0(sp)
    80001878:	02010113          	addi	sp,sp,32
    8000187c:	00008067          	ret

0000000080001880 <_ZN3semnwEm>:
//

#include "../h/semaphore.hpp"

void *sem::operator new(size_t n)
{
    80001880:	ff010113          	addi	sp,sp,-16
    80001884:	00113423          	sd	ra,8(sp)
    80001888:	00813023          	sd	s0,0(sp)
    8000188c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001890:	00001097          	auipc	ra,0x1
    80001894:	fe8080e7          	jalr	-24(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001898:	00813083          	ld	ra,8(sp)
    8000189c:	00013403          	ld	s0,0(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN3semnaEm>:

void *sem::operator new[](size_t n)
{
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00113423          	sd	ra,8(sp)
    800018b0:	00813023          	sd	s0,0(sp)
    800018b4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	fc0080e7          	jalr	-64(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
}
    800018c0:	00813083          	ld	ra,8(sp)
    800018c4:	00013403          	ld	s0,0(sp)
    800018c8:	01010113          	addi	sp,sp,16
    800018cc:	00008067          	ret

00000000800018d0 <_ZN3semdlEPv>:

void sem::operator delete(void *p) noexcept
{
    800018d0:	ff010113          	addi	sp,sp,-16
    800018d4:	00113423          	sd	ra,8(sp)
    800018d8:	00813023          	sd	s0,0(sp)
    800018dc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	0ec080e7          	jalr	236(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800018e8:	00813083          	ld	ra,8(sp)
    800018ec:	00013403          	ld	s0,0(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN3semdaEPv>:

void sem::operator delete[](void *p) noexcept
{
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	0c4080e7          	jalr	196(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001910:	00813083          	ld	ra,8(sp)
    80001914:	00013403          	ld	s0,0(sp)
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <_ZN3sem13openSemaphoreEi>:

sem *sem::openSemaphore(int val) {
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	02010413          	addi	s0,sp,32
    80001934:	00050493          	mv	s1,a0
    return new sem(val);
    80001938:	01800513          	li	a0,24
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	f44080e7          	jalr	-188(ra) # 80001880 <_ZN3semnwEm>
    int trywait();
    int timed_wait();


private:
    explicit sem(int val = 1): value(val), closed(false){};
    80001944:	00952023          	sw	s1,0(a0)
    80001948:	00050223          	sb	zero,4(a0)
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    8000194c:	00053423          	sd	zero,8(a0)
    80001950:	00053823          	sd	zero,16(a0)
}
    80001954:	01813083          	ld	ra,24(sp)
    80001958:	01013403          	ld	s0,16(sp)
    8000195c:	00813483          	ld	s1,8(sp)
    80001960:	02010113          	addi	sp,sp,32
    80001964:	00008067          	ret

0000000080001968 <_ZN3sem7trywaitEv>:
       unblock();
    }
    return 0;
}

int sem::trywait() {
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00813423          	sd	s0,8(sp)
    80001970:	01010413          	addi	s0,sp,16

    if(this->closed) return -2;
    80001974:	00454783          	lbu	a5,4(a0)
    80001978:	00079e63          	bnez	a5,80001994 <_ZN3sem7trywaitEv+0x2c>
    if(this->value -1 <0){
    8000197c:	00052783          	lw	a5,0(a0)
    80001980:	00f05e63          	blez	a5,8000199c <_ZN3sem7trywaitEv+0x34>
        return 0;
    }
    return 1;
    80001984:	00100513          	li	a0,1

}
    80001988:	00813403          	ld	s0,8(sp)
    8000198c:	01010113          	addi	sp,sp,16
    80001990:	00008067          	ret
    if(this->closed) return -2;
    80001994:	ffe00513          	li	a0,-2
    80001998:	ff1ff06f          	j	80001988 <_ZN3sem7trywaitEv+0x20>
        return 0;
    8000199c:	00000513          	li	a0,0
    800019a0:	fe9ff06f          	j	80001988 <_ZN3sem7trywaitEv+0x20>

00000000800019a4 <_ZN3sem10timed_waitEv>:

int sem::timed_wait() {
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00813423          	sd	s0,8(sp)
    800019ac:	01010413          	addi	s0,sp,16
    return 0;
}
    800019b0:	00000513          	li	a0,0
    800019b4:	00813403          	ld	s0,8(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_ZN3sem5blockEv>:

void sem::block() {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	01213023          	sd	s2,0(sp)
    800019d4:	02010413          	addi	s0,sp,32
    800019d8:	00050493          	mv	s1,a0
    this->blocked.addLast(TCB::running);
    800019dc:	00004797          	auipc	a5,0x4
    800019e0:	68c7b783          	ld	a5,1676(a5) # 80006068 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019e4:	0007b903          	ld	s2,0(a5)
        return MemoryAllocator::mem_alloc(n);
    800019e8:	01000513          	li	a0,16
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	e8c080e7          	jalr	-372(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
                head= elem;
                if(!tail) tail = head;
            }
            void addLast (T* data){
                Elem* elem = (Elem*)operator new(sizeof(Elem));
                elem->data=data;
    800019f4:	01253023          	sd	s2,0(a0)
                elem->next=0;
    800019f8:	00053423          	sd	zero,8(a0)
                if(tail){
    800019fc:	0104b783          	ld	a5,16(s1)
    80001a00:	04078863          	beqz	a5,80001a50 <_ZN3sem5blockEv+0x90>
                    tail->next = elem;
    80001a04:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80001a08:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    80001a0c:	00100593          	li	a1,1
    80001a10:	00004797          	auipc	a5,0x4
    80001a14:	6587b783          	ld	a5,1624(a5) # 80006068 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a18:	0007b503          	ld	a0,0(a5)
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	6e8080e7          	jalr	1768(ra) # 80002104 <_ZN3TCB10setBlockedEb>

    TCB::timeSliceCounter=0;
    80001a24:	00004797          	auipc	a5,0x4
    80001a28:	62c7b783          	ld	a5,1580(a5) # 80006050 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a2c:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	50c080e7          	jalr	1292(ra) # 80001f3c <_ZN3TCB8dispatchEv>
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	00013903          	ld	s2,0(sp)
    80001a48:	02010113          	addi	sp,sp,32
    80001a4c:	00008067          	ret
                }else{
                    head= tail = elem;
    80001a50:	00a4b823          	sd	a0,16(s1)
    80001a54:	00a4b423          	sd	a0,8(s1)
    80001a58:	fb5ff06f          	j	80001a0c <_ZN3sem5blockEv+0x4c>

0000000080001a5c <_ZN3sem4waitEv>:
    if(this->closed) return -2;
    80001a5c:	00454783          	lbu	a5,4(a0)
    80001a60:	04079663          	bnez	a5,80001aac <_ZN3sem4waitEv+0x50>
    this->value--;
    80001a64:	00052783          	lw	a5,0(a0)
    80001a68:	fff7879b          	addiw	a5,a5,-1
    80001a6c:	00f52023          	sw	a5,0(a0)
    if(this->value <0){
    80001a70:	02079713          	slli	a4,a5,0x20
    80001a74:	00074663          	bltz	a4,80001a80 <_ZN3sem4waitEv+0x24>
    return 0;
    80001a78:	00000513          	li	a0,0
}
    80001a7c:	00008067          	ret
int sem::wait() {
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00113423          	sd	ra,8(sp)
    80001a88:	00813023          	sd	s0,0(sp)
    80001a8c:	01010413          	addi	s0,sp,16
        block();
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	f30080e7          	jalr	-208(ra) # 800019c0 <_ZN3sem5blockEv>
    return 0;
    80001a98:	00000513          	li	a0,0
}
    80001a9c:	00813083          	ld	ra,8(sp)
    80001aa0:	00013403          	ld	s0,0(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret
    if(this->closed) return -2;
    80001aac:	ffe00513          	li	a0,-2
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN3sem7unblockEv>:

void sem::unblock() {
    80001ab4:	00050793          	mv	a5,a0
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001ab8:	00853503          	ld	a0,8(a0)
    80001abc:	06050663          	beqz	a0,80001b28 <_ZN3sem7unblockEv+0x74>
    80001ac0:	fe010113          	addi	sp,sp,-32
    80001ac4:	00113c23          	sd	ra,24(sp)
    80001ac8:	00813823          	sd	s0,16(sp)
    80001acc:	00913423          	sd	s1,8(sp)
    80001ad0:	02010413          	addi	s0,sp,32
                Elem *elem = head;
                head = head->next;
    80001ad4:	00853703          	ld	a4,8(a0)
    80001ad8:	00e7b423          	sd	a4,8(a5)
                if(!head) tail = 0;
    80001adc:	04070263          	beqz	a4,80001b20 <_ZN3sem7unblockEv+0x6c>
                T *ret = elem->data;
    80001ae0:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	ee8080e7          	jalr	-280(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>

    TCB *thread = this->blocked.removeFirst();
    if (thread) {
    80001aec:	02048063          	beqz	s1,80001b0c <_ZN3sem7unblockEv+0x58>
        thread->setBlocked(false);
    80001af0:	00000593          	li	a1,0
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	60c080e7          	jalr	1548(ra) # 80002104 <_ZN3TCB10setBlockedEb>
        Scheduler::put(thread);
    80001b00:	00048513          	mv	a0,s1
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	cd4080e7          	jalr	-812(ra) # 800027d8 <_ZN9Scheduler3putEP3TCB>
    }
}
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	02010113          	addi	sp,sp,32
    80001b1c:	00008067          	ret
                if(!head) tail = 0;
    80001b20:	0007b823          	sd	zero,16(a5)
    80001b24:	fbdff06f          	j	80001ae0 <_ZN3sem7unblockEv+0x2c>
    80001b28:	00008067          	ret

0000000080001b2c <_ZN3sem14closeSemaphoreEv>:
    if(!this->closed) this->closed = true;
    80001b2c:	00454783          	lbu	a5,4(a0)
    80001b30:	04079263          	bnez	a5,80001b74 <_ZN3sem14closeSemaphoreEv+0x48>
int sem::closeSemaphore() {
    80001b34:	fe010113          	addi	sp,sp,-32
    80001b38:	00113c23          	sd	ra,24(sp)
    80001b3c:	00813823          	sd	s0,16(sp)
    80001b40:	00913423          	sd	s1,8(sp)
    80001b44:	02010413          	addi	s0,sp,32
    80001b48:	00050493          	mv	s1,a0
    if(!this->closed) this->closed = true;
    80001b4c:	00100793          	li	a5,1
    80001b50:	00f50223          	sb	a5,4(a0)
                operator delete(elem);
                return ret;
            }
            T* peekFirst(){
                if(!head) return 0;
    80001b54:	0084b783          	ld	a5,8(s1)
    80001b58:	02078263          	beqz	a5,80001b7c <_ZN3sem14closeSemaphoreEv+0x50>
                return head->data;
    80001b5c:	0007b783          	ld	a5,0(a5)
   while(this->blocked.peekFirst()){
    80001b60:	02078a63          	beqz	a5,80001b94 <_ZN3sem14closeSemaphoreEv+0x68>
       unblock();
    80001b64:	00048513          	mv	a0,s1
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	f4c080e7          	jalr	-180(ra) # 80001ab4 <_ZN3sem7unblockEv>
   while(this->blocked.peekFirst()){
    80001b70:	fe5ff06f          	j	80001b54 <_ZN3sem14closeSemaphoreEv+0x28>
    else return -2;
    80001b74:	ffe00513          	li	a0,-2
}
    80001b78:	00008067          	ret
    return 0;
    80001b7c:	00000513          	li	a0,0
}
    80001b80:	01813083          	ld	ra,24(sp)
    80001b84:	01013403          	ld	s0,16(sp)
    80001b88:	00813483          	ld	s1,8(sp)
    80001b8c:	02010113          	addi	sp,sp,32
    80001b90:	00008067          	ret
    return 0;
    80001b94:	00000513          	li	a0,0
    80001b98:	fe9ff06f          	j	80001b80 <_ZN3sem14closeSemaphoreEv+0x54>

0000000080001b9c <_ZN3sem6signalEv>:
    if(this->closed) return -2;
    80001b9c:	00454783          	lbu	a5,4(a0)
    80001ba0:	04079663          	bnez	a5,80001bec <_ZN3sem6signalEv+0x50>
    this->value++;
    80001ba4:	00052783          	lw	a5,0(a0)
    80001ba8:	0017879b          	addiw	a5,a5,1
    80001bac:	0007871b          	sext.w	a4,a5
    80001bb0:	00f52023          	sw	a5,0(a0)
    if(this->value <=0){
    80001bb4:	00e05663          	blez	a4,80001bc0 <_ZN3sem6signalEv+0x24>
    return 0;
    80001bb8:	00000513          	li	a0,0
}
    80001bbc:	00008067          	ret
int sem::signal() {
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00113423          	sd	ra,8(sp)
    80001bc8:	00813023          	sd	s0,0(sp)
    80001bcc:	01010413          	addi	s0,sp,16
       unblock();
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	ee4080e7          	jalr	-284(ra) # 80001ab4 <_ZN3sem7unblockEv>
    return 0;
    80001bd8:	00000513          	li	a0,0
}
    80001bdc:	00813083          	ld	ra,8(sp)
    80001be0:	00013403          	ld	s0,0(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret
    if(this->closed) return -2;
    80001bec:	ffe00513          	li	a0,-2
    80001bf0:	00008067          	ret

0000000080001bf4 <main>:

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"
int main()
{
    80001bf4:	fb010113          	addi	sp,sp,-80
    80001bf8:	04113423          	sd	ra,72(sp)
    80001bfc:	04813023          	sd	s0,64(sp)
    80001c00:	02913c23          	sd	s1,56(sp)
    80001c04:	05010413          	addi	s0,sp,80
    MemoryAllocator::init();
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	d2c080e7          	jalr	-724(ra) # 80002934 <_ZN15MemoryAllocator4initEv>
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001c10:	00004797          	auipc	a5,0x4
    80001c14:	4387b783          	ld	a5,1080(a5) # 80006048 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c18:	10579073          	csrw	stvec,a5

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    80001c1c:	00004797          	auipc	a5,0x4
    80001c20:	4547b783          	ld	a5,1108(a5) # 80006070 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c24:	0007b503          	ld	a0,0(a5)
    80001c28:	00004797          	auipc	a5,0x4
    80001c2c:	4107b783          	ld	a5,1040(a5) # 80006038 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c30:	0007b783          	ld	a5,0(a5)
    80001c34:	40f50533          	sub	a0,a0,a5
    80001c38:	ff050513          	addi	a0,a0,-16
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    80001c3c:	fc057513          	andi	a0,a0,-64
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	5e4080e7          	jalr	1508(ra) # 80001224 <_Z9mem_allocm>
    80001c48:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    80001c4c:	10050a63          	beqz	a0,80001d60 <main+0x16c>
        __putc('?');
    }
    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    80001c50:	00a00513          	li	a0,10
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	5d0080e7          	jalr	1488(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001c5c:	10050a63          	beqz	a0,80001d70 <main+0x17c>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    80001c60:	00048513          	mv	a0,s1
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	d68080e7          	jalr	-664(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
    if(status != 0) {
    80001c6c:	10051a63          	bnez	a0,80001d80 <main+0x18c>
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    80001c70:	00a00513          	li	a0,10
    80001c74:	fffff097          	auipc	ra,0xfffff
    80001c78:	5b0080e7          	jalr	1456(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001c7c:	10050a63          	beqz	a0,80001d90 <main+0x19c>
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(&threads[0],nullptr, nullptr);
    80001c80:	00000613          	li	a2,0
    80001c84:	00000593          	li	a1,0
    80001c88:	fb840513          	addi	a0,s0,-72
    80001c8c:	fffff097          	auipc	ra,0xfffff
    80001c90:	644080e7          	jalr	1604(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = threads[0];
    80001c94:	fb843703          	ld	a4,-72(s0)
    80001c98:	00004797          	auipc	a5,0x4
    80001c9c:	3d07b783          	ld	a5,976(a5) # 80006068 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001ca0:	00e7b023          	sd	a4,0(a5)
    sem_t semafor;
    sem_open(&semafor, 1);
    80001ca4:	00100593          	li	a1,1
    80001ca8:	fb040513          	addi	a0,s0,-80
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	6a0080e7          	jalr	1696(ra) # 8000134c <_Z8sem_openPP3semj>


    //threads[1] = TCB::createThread(workerBodyA, nullptr);
    thread_create(&threads[1],workerBodyA, semafor);
    80001cb4:	fb043603          	ld	a2,-80(s0)
    80001cb8:	00004597          	auipc	a1,0x4
    80001cbc:	3a85b583          	ld	a1,936(a1) # 80006060 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cc0:	fc040513          	addi	a0,s0,-64
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	60c080e7          	jalr	1548(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001ccc:	00003517          	auipc	a0,0x3
    80001cd0:	3bc50513          	addi	a0,a0,956 # 80005088 <CONSOLE_STATUS+0x78>
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	dd4080e7          	jalr	-556(ra) # 80002aa8 <_Z11printStringPKc>
    //threads[2] = TCB::createThread(workerBodyB , nullptr);
    thread_create(&threads[2],workerBodyB, nullptr);
    80001cdc:	00000613          	li	a2,0
    80001ce0:	00004597          	auipc	a1,0x4
    80001ce4:	3985b583          	ld	a1,920(a1) # 80006078 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001ce8:	fc840513          	addi	a0,s0,-56
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	5e4080e7          	jalr	1508(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001cf4:	00003517          	auipc	a0,0x3
    80001cf8:	3ac50513          	addi	a0,a0,940 # 800050a0 <CONSOLE_STATUS+0x90>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	dac080e7          	jalr	-596(ra) # 80002aa8 <_Z11printStringPKc>
    //threads[3] = TCB::createThread(workerBodyC, nullptr);
    thread_create(&threads[3],workerBodyC, semafor);
    80001d04:	fb043603          	ld	a2,-80(s0)
    80001d08:	00004597          	auipc	a1,0x4
    80001d0c:	3385b583          	ld	a1,824(a1) # 80006040 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d10:	fd040513          	addi	a0,s0,-48
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5bc080e7          	jalr	1468(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001d1c:	00003517          	auipc	a0,0x3
    80001d20:	39c50513          	addi	a0,a0,924 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	d84080e7          	jalr	-636(ra) # 80002aa8 <_Z11printStringPKc>
    //threads[4] = TCB::createThread(workerBodyD, nullptr);
    thread_create(&threads[4],workerBodyD, semafor);
    80001d2c:	fb043603          	ld	a2,-80(s0)
    80001d30:	00004597          	auipc	a1,0x4
    80001d34:	3505b583          	ld	a1,848(a1) # 80006080 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d38:	fd840513          	addi	a0,s0,-40
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	594080e7          	jalr	1428(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001d44:	00003517          	auipc	a0,0x3
    80001d48:	38c50513          	addi	a0,a0,908 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	d5c080e7          	jalr	-676(ra) # 80002aa8 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d54:	00200793          	li	a5,2
    80001d58:	1007a073          	csrs	sstatus,a5
}
    80001d5c:	04c0006f          	j	80001da8 <main+0x1b4>
        __putc('?');
    80001d60:	03f00513          	li	a0,63
    80001d64:	00003097          	auipc	ra,0x3
    80001d68:	f38080e7          	jalr	-200(ra) # 80004c9c <__putc>
    80001d6c:	ee5ff06f          	j	80001c50 <main+0x5c>
        __putc('k');
    80001d70:	06b00513          	li	a0,107
    80001d74:	00003097          	auipc	ra,0x3
    80001d78:	f28080e7          	jalr	-216(ra) # 80004c9c <__putc>
    80001d7c:	ee5ff06f          	j	80001c60 <main+0x6c>
        __putc('?');
    80001d80:	03f00513          	li	a0,63
    80001d84:	00003097          	auipc	ra,0x3
    80001d88:	f18080e7          	jalr	-232(ra) # 80004c9c <__putc>
    80001d8c:	ee5ff06f          	j	80001c70 <main+0x7c>
        __putc('?');
    80001d90:	03f00513          	li	a0,63
    80001d94:	00003097          	auipc	ra,0x3
    80001d98:	f08080e7          	jalr	-248(ra) # 80004c9c <__putc>
    80001d9c:	ee5ff06f          	j	80001c80 <main+0x8c>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    80001da0:	fffff097          	auipc	ra,0xfffff
    80001da4:	4e8080e7          	jalr	1256(ra) # 80001288 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001da8:	fc043783          	ld	a5,-64(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    80001dac:	0307c783          	lbu	a5,48(a5)
    80001db0:	fe0788e3          	beqz	a5,80001da0 <main+0x1ac>
             threads[2]->isFinished() &&
    80001db4:	fc843783          	ld	a5,-56(s0)
    80001db8:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001dbc:	fe0782e3          	beqz	a5,80001da0 <main+0x1ac>
             threads[3]->isFinished() &&
    80001dc0:	fd043783          	ld	a5,-48(s0)
    80001dc4:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    80001dc8:	fc078ce3          	beqz	a5,80001da0 <main+0x1ac>
             threads[4]->isFinished()))
    80001dcc:	fd843783          	ld	a5,-40(s0)
    80001dd0:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001dd4:	fc0786e3          	beqz	a5,80001da0 <main+0x1ac>
    80001dd8:	fb840493          	addi	s1,s0,-72
    }

    for (auto &thread: threads)
    80001ddc:	fe040793          	addi	a5,s0,-32
    80001de0:	00f48c63          	beq	s1,a5,80001df8 <main+0x204>
    {
        TCB::deleteThread(thread);
    80001de4:	0004b503          	ld	a0,0(s1)
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	294080e7          	jalr	660(ra) # 8000207c <_ZN3TCB12deleteThreadEPS_>
    for (auto &thread: threads)
    80001df0:	00848493          	addi	s1,s1,8
    80001df4:	fe9ff06f          	j	80001ddc <main+0x1e8>
    }
    printString("Finished\n");
    80001df8:	00003517          	auipc	a0,0x3
    80001dfc:	2f050513          	addi	a0,a0,752 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	ca8080e7          	jalr	-856(ra) # 80002aa8 <_Z11printStringPKc>

    return 0;
}
    80001e08:	00000513          	li	a0,0
    80001e0c:	04813083          	ld	ra,72(sp)
    80001e10:	04013403          	ld	s0,64(sp)
    80001e14:	03813483          	ld	s1,56(sp)
    80001e18:	05010113          	addi	sp,sp,80
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00113423          	sd	ra,8(sp)
    80001e28:	00813023          	sd	s0,0(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	a48080e7          	jalr	-1464(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	00813023          	sd	s0,0(sp)
    80001e54:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	a20080e7          	jalr	-1504(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00113423          	sd	ra,8(sp)
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	b4c080e7          	jalr	-1204(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	00813023          	sd	s0,0(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	b24080e7          	jalr	-1244(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00813423          	sd	s0,8(sp)
    80001ec8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001ecc:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001ed0:	00000073          	ecall
}
    80001ed4:	00813403          	ld	s0,8(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    80001ee0:	fe010113          	addi	sp,sp,-32
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	00813823          	sd	s0,16(sp)
    80001eec:	00913423          	sd	s1,8(sp)
    80001ef0:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	57c080e7          	jalr	1404(ra) # 80002470 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001efc:	00004497          	auipc	s1,0x4
    80001f00:	1d448493          	addi	s1,s1,468 # 800060d0 <_ZN3TCB7runningE>
    80001f04:	0004b783          	ld	a5,0(s1)
    80001f08:	0007b703          	ld	a4,0(a5)
    80001f0c:	0087b503          	ld	a0,8(a5)
    80001f10:	000700e7          	jalr	a4
    running->setFinished(true);
    80001f14:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f;}
    80001f18:	00100713          	li	a4,1
    80001f1c:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	fa0080e7          	jalr	-96(ra) # 80001ec0 <_ZN3TCB5yieldEv>
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	02010113          	addi	sp,sp,32
    80001f38:	00008067          	ret

0000000080001f3c <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00113c23          	sd	ra,24(sp)
    80001f44:	00813823          	sd	s0,16(sp)
    80001f48:	00913423          	sd	s1,8(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001f50:	00004497          	auipc	s1,0x4
    80001f54:	1804b483          	ld	s1,384(s1) # 800060d0 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001f58:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->blocked){
    80001f5c:	00079663          	bnez	a5,80001f68 <_ZN3TCB8dispatchEv+0x2c>
    80001f60:	0314c783          	lbu	a5,49(s1)
    80001f64:	02078c63          	beqz	a5,80001f9c <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	808080e7          	jalr	-2040(ra) # 80002770 <_ZN9Scheduler3getEv>
    80001f70:	00004797          	auipc	a5,0x4
    80001f74:	16a7b023          	sd	a0,352(a5) # 800060d0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f78:	01850593          	addi	a1,a0,24
    80001f7c:	01848513          	addi	a0,s1,24
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	290080e7          	jalr	656(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f88:	01813083          	ld	ra,24(sp)
    80001f8c:	01013403          	ld	s0,16(sp)
    80001f90:	00813483          	ld	s1,8(sp)
    80001f94:	02010113          	addi	sp,sp,32
    80001f98:	00008067          	ret
        Scheduler::put(old);
    80001f9c:	00048513          	mv	a0,s1
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	838080e7          	jalr	-1992(ra) # 800027d8 <_ZN9Scheduler3putEP3TCB>
    80001fa8:	fc1ff06f          	j	80001f68 <_ZN3TCB8dispatchEv+0x2c>

0000000080001fac <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001fac:	fd010113          	addi	sp,sp,-48
    80001fb0:	02113423          	sd	ra,40(sp)
    80001fb4:	02813023          	sd	s0,32(sp)
    80001fb8:	00913c23          	sd	s1,24(sp)
    80001fbc:	01213823          	sd	s2,16(sp)
    80001fc0:	01313423          	sd	s3,8(sp)
    80001fc4:	01413023          	sd	s4,0(sp)
    80001fc8:	03010413          	addi	s0,sp,48
    80001fcc:	00050993          	mv	s3,a0
    80001fd0:	00058a13          	mv	s4,a1
    80001fd4:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001fd8:	03800513          	li	a0,56
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	e44080e7          	jalr	-444(ra) # 80001e20 <_ZN3TCBnwEm>
    80001fe4:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001fe8:	01353023          	sd	s3,0(a0)
    80001fec:	01453423          	sd	s4,8(a0)
    80001ff0:	01253823          	sd	s2,16(a0)
    80001ff4:	00000797          	auipc	a5,0x0
    80001ff8:	eec78793          	addi	a5,a5,-276 # 80001ee0 <_ZN3TCB13threadWrapperEv>
    80001ffc:	00f53c23          	sd	a5,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002000:	02090a63          	beqz	s2,80002034 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x88>
    80002004:	00008637          	lui	a2,0x8
    80002008:	00c90933          	add	s2,s2,a2
                blocked(false)
    8000200c:	0324b023          	sd	s2,32(s1)
    80002010:	00200793          	li	a5,2
    80002014:	02f4b423          	sd	a5,40(s1)
    80002018:	02048823          	sb	zero,48(s1)
    8000201c:	020488a3          	sb	zero,49(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80002020:	02098c63          	beqz	s3,80002058 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xac>
    80002024:	00048513          	mv	a0,s1
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	7b0080e7          	jalr	1968(ra) # 800027d8 <_ZN9Scheduler3putEP3TCB>
    80002030:	0280006f          	j	80002058 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xac>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002034:	00000913          	li	s2,0
    80002038:	fd5ff06f          	j	8000200c <_ZN3TCB12createThreadEPFvPvES0_S0_+0x60>
    8000203c:	00050913          	mv	s2,a0
    80002040:	00048513          	mv	a0,s1
    80002044:	00000097          	auipc	ra,0x0
    80002048:	e2c080e7          	jalr	-468(ra) # 80001e70 <_ZN3TCBdlEPv>
    8000204c:	00090513          	mv	a0,s2
    80002050:	00005097          	auipc	ra,0x5
    80002054:	178080e7          	jalr	376(ra) # 800071c8 <_Unwind_Resume>
}
    80002058:	00048513          	mv	a0,s1
    8000205c:	02813083          	ld	ra,40(sp)
    80002060:	02013403          	ld	s0,32(sp)
    80002064:	01813483          	ld	s1,24(sp)
    80002068:	01013903          	ld	s2,16(sp)
    8000206c:	00813983          	ld	s3,8(sp)
    80002070:	00013a03          	ld	s4,0(sp)
    80002074:	03010113          	addi	sp,sp,48
    80002078:	00008067          	ret

000000008000207c <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    8000207c:	04050463          	beqz	a0,800020c4 <_ZN3TCB12deleteThreadEPS_+0x48>
void TCB::deleteThread(TCB* thread){
    80002080:	fe010113          	addi	sp,sp,-32
    80002084:	00113c23          	sd	ra,24(sp)
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	02010413          	addi	s0,sp,32
    80002094:	00050493          	mv	s1,a0
    ~TCB(){TCB::operator delete[](stack);}
    80002098:	01053503          	ld	a0,16(a0)
    8000209c:	00000097          	auipc	ra,0x0
    800020a0:	dfc080e7          	jalr	-516(ra) # 80001e98 <_ZN3TCBdaEPv>
    delete thread;
    800020a4:	00048513          	mv	a0,s1
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	dc8080e7          	jalr	-568(ra) # 80001e70 <_ZN3TCBdlEPv>
}
    800020b0:	01813083          	ld	ra,24(sp)
    800020b4:	01013403          	ld	s0,16(sp)
    800020b8:	00813483          	ld	s1,8(sp)
    800020bc:	02010113          	addi	sp,sp,32
    800020c0:	00008067          	ret
    800020c4:	00008067          	ret

00000000800020c8 <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { TCB::finished = f;}
    800020d8:	00004797          	auipc	a5,0x4
    800020dc:	ff87b783          	ld	a5,-8(a5) # 800060d0 <_ZN3TCB7runningE>
    800020e0:	00100713          	li	a4,1
    800020e4:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	e54080e7          	jalr	-428(ra) # 80001f3c <_ZN3TCB8dispatchEv>
}
    800020f0:	00000513          	li	a0,0
    800020f4:	00813083          	ld	ra,8(sp)
    800020f8:	00013403          	ld	s0,0(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00008067          	ret

0000000080002104 <_ZN3TCB10setBlockedEb>:

void TCB::setBlocked(bool b) {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00813423          	sd	s0,8(sp)
    8000210c:	01010413          	addi	s0,sp,16
    this->blocked = b;
    80002110:	02b508a3          	sb	a1,49(a0)
}
    80002114:	00813403          	ld	s0,8(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <_ZN6Thread13threadWrapperEPv>:
//protected thread
Thread::Thread() {
    myHandle= nullptr;
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
}
void Thread::threadWrapper(void *thread) {
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80002130:	00053783          	ld	a5,0(a0)
    80002134:	0107b783          	ld	a5,16(a5)
    80002138:	000780e7          	jalr	a5
}
    8000213c:	00813083          	ld	ra,8(sp)
    80002140:	00013403          	ld	s0,0(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret

000000008000214c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00113423          	sd	ra,8(sp)
    80002154:	00813023          	sd	s0,0(sp)
    80002158:	01010413          	addi	s0,sp,16
    8000215c:	00004797          	auipc	a5,0x4
    80002160:	e9c78793          	addi	a5,a5,-356 # 80005ff8 <_ZTV6Thread+0x10>
    80002164:	00f53023          	sd	a5,0(a0)
    thread_exit();
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	140080e7          	jalr	320(ra) # 800012a8 <_Z11thread_exitv>
}
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00013403          	ld	s0,0(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret

0000000080002180 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002180:	fe010113          	addi	sp,sp,-32
    80002184:	00113c23          	sd	ra,24(sp)
    80002188:	00813823          	sd	s0,16(sp)
    8000218c:	00913423          	sd	s1,8(sp)
    80002190:	02010413          	addi	s0,sp,32
    80002194:	00050493          	mv	s1,a0
}
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	fb4080e7          	jalr	-76(ra) # 8000214c <_ZN6ThreadD1Ev>
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	27c080e7          	jalr	636(ra) # 80002420 <_ZdlPv>
    800021ac:	01813083          	ld	ra,24(sp)
    800021b0:	01013403          	ld	s0,16(sp)
    800021b4:	00813483          	ld	s1,8(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret

00000000800021c0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	00004797          	auipc	a5,0x4
    800021d4:	e5078793          	addi	a5,a5,-432 # 80006020 <_ZTV9Semaphore+0x10>
    800021d8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800021dc:	00853503          	ld	a0,8(a0)
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	19c080e7          	jalr	412(ra) # 8000137c <_Z9sem_closeP3sem>
}
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800021f8:	fe010113          	addi	sp,sp,-32
    800021fc:	00113c23          	sd	ra,24(sp)
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00913423          	sd	s1,8(sp)
    80002208:	02010413          	addi	s0,sp,32
    8000220c:	00050493          	mv	s1,a0
}
    80002210:	00000097          	auipc	ra,0x0
    80002214:	fb0080e7          	jalr	-80(ra) # 800021c0 <_ZN9SemaphoreD1Ev>
    80002218:	00048513          	mv	a0,s1
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	204080e7          	jalr	516(ra) # 80002420 <_ZdlPv>
    80002224:	01813083          	ld	ra,24(sp)
    80002228:	01013403          	ld	s0,16(sp)
    8000222c:	00813483          	ld	s1,8(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret

0000000080002238 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	00004797          	auipc	a5,0x4
    8000224c:	db078793          	addi	a5,a5,-592 # 80005ff8 <_ZTV6Thread+0x10>
    80002250:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80002254:	00850513          	addi	a0,a0,8
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	078080e7          	jalr	120(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
}//prvo mem alloc!!!
    80002260:	00813083          	ld	ra,8(sp)
    80002264:	00013403          	ld	s0,0(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <_ZN6Thread5startEv>:
int Thread::start() {
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
}
    8000227c:	00000513          	li	a0,0
    80002280:	00813403          	ld	s0,8(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	00813023          	sd	s0,0(sp)
    80002298:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	fec080e7          	jalr	-20(ra) # 80001288 <_Z15thread_dispatchv>
}
    800022a4:	00813083          	ld	ra,8(sp)
    800022a8:	00013403          	ld	s0,0(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	00813023          	sd	s0,0(sp)
    800022c0:	01010413          	addi	s0,sp,16
    800022c4:	00004797          	auipc	a5,0x4
    800022c8:	d3478793          	addi	a5,a5,-716 # 80005ff8 <_ZTV6Thread+0x10>
    800022cc:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    800022d0:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    800022d4:	00050613          	mv	a2,a0
    800022d8:	00000597          	auipc	a1,0x0
    800022dc:	e4858593          	addi	a1,a1,-440 # 80002120 <_ZN6Thread13threadWrapperEPv>
    800022e0:	00850513          	addi	a0,a0,8
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	fec080e7          	jalr	-20(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00113423          	sd	ra,8(sp)
    80002304:	00813023          	sd	s0,0(sp)
    80002308:	01010413          	addi	s0,sp,16
    8000230c:	00004797          	auipc	a5,0x4
    80002310:	d1478793          	addi	a5,a5,-748 # 80006020 <_ZTV9Semaphore+0x10>
    80002314:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80002318:	00850513          	addi	a0,a0,8
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	030080e7          	jalr	48(ra) # 8000134c <_Z8sem_openPP3semj>
}
    80002324:	00813083          	ld	ra,8(sp)
    80002328:	00013403          	ld	s0,0(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00113423          	sd	ra,8(sp)
    8000233c:	00813023          	sd	s0,0(sp)
    80002340:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002344:	00853503          	ld	a0,8(a0)
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	060080e7          	jalr	96(ra) # 800013a8 <_Z8sem_waitP3sem>
}
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00113423          	sd	ra,8(sp)
    80002368:	00813023          	sd	s0,0(sp)
    8000236c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002370:	00853503          	ld	a0,8(a0)
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	060080e7          	jalr	96(ra) # 800013d4 <_Z10sem_signalP3sem>
}
    8000237c:	00813083          	ld	ra,8(sp)
    80002380:	00013403          	ld	s0,0(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret

000000008000238c <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00113423          	sd	ra,8(sp)
    80002394:	00813023          	sd	s0,0(sp)
    80002398:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    8000239c:	00853503          	ld	a0,8(a0)
    800023a0:	fffff097          	auipc	ra,0xfffff
    800023a4:	060080e7          	jalr	96(ra) # 80001400 <_Z11sem_trywaitP3sem>
}
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813423          	sd	s0,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	00813403          	ld	s0,8(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	e44080e7          	jalr	-444(ra) # 80001224 <_Z9mem_allocm>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_Znam>:

void *operator new[](size_t n)
{
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	e1c080e7          	jalr	-484(ra) # 80001224 <_Z9mem_allocm>
}
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00113423          	sd	ra,8(sp)
    80002428:	00813023          	sd	s0,0(sp)
    8000242c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	e2c080e7          	jalr	-468(ra) # 8000125c <_Z8mem_freePv>
}
    80002438:	00813083          	ld	ra,8(sp)
    8000243c:	00013403          	ld	s0,0(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00113423          	sd	ra,8(sp)
    80002450:	00813023          	sd	s0,0(sp)
    80002454:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002458:	fffff097          	auipc	ra,0xfffff
    8000245c:	e04080e7          	jalr	-508(ra) # 8000125c <_Z8mem_freePv>
    80002460:	00813083          	ld	ra,8(sp)
    80002464:	00013403          	ld	s0,0(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000247c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002480:	10200073          	sret
}
    80002484:	00813403          	ld	s0,8(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002490:	f8010113          	addi	sp,sp,-128
    80002494:	06113c23          	sd	ra,120(sp)
    80002498:	06813823          	sd	s0,112(sp)
    8000249c:	06913423          	sd	s1,104(sp)
    800024a0:	08010413          	addi	s0,sp,128

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800024a4:	00050793          	mv	a5,a0
    800024a8:	faf43423          	sd	a5,-88(s0)
    return a0;
    800024ac:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800024b0:	14202773          	csrr	a4,scause
    800024b4:	fae43023          	sd	a4,-96(s0)
    return scause;
    800024b8:	fa043503          	ld	a0,-96(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    800024bc:	ff850693          	addi	a3,a0,-8
    800024c0:	00100713          	li	a4,1
    800024c4:	04d77c63          	bgeu	a4,a3,8000251c <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    800024c8:	fff00793          	li	a5,-1
    800024cc:	03f79793          	slli	a5,a5,0x3f
    800024d0:	00178793          	addi	a5,a5,1
    800024d4:	1cf50c63          	beq	a0,a5,800026ac <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    800024d8:	fff00793          	li	a5,-1
    800024dc:	03f79793          	slli	a5,a5,0x3f
    800024e0:	00978793          	addi	a5,a5,9
    800024e4:	24f50063          	beq	a0,a5,80002724 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	630080e7          	jalr	1584(ra) # 80002b18 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024f0:	141027f3          	csrr	a5,sepc
    800024f4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800024f8:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	61c080e7          	jalr	1564(ra) # 80002b18 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002504:	143027f3          	csrr	a5,stval
    80002508:	fcf43823          	sd	a5,-48(s0)
    return stval;
    8000250c:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80002510:	00000097          	auipc	ra,0x0
    80002514:	608080e7          	jalr	1544(ra) # 80002b18 <_Z12printIntegerm>
    }
    80002518:	0700006f          	j	80002588 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000251c:	14102773          	csrr	a4,sepc
    80002520:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80002524:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    80002528:	00470713          	addi	a4,a4,4
    8000252c:	f8e43023          	sd	a4,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002530:	10002773          	csrr	a4,sstatus
    80002534:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    80002538:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    8000253c:	f8e43423          	sd	a4,-120(s0)
        switch (ra) {
    80002540:	02600713          	li	a4,38
    80002544:	02f76a63          	bltu	a4,a5,80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80002548:	00279793          	slli	a5,a5,0x2
    8000254c:	00003717          	auipc	a4,0x3
    80002550:	ba870713          	addi	a4,a4,-1112 # 800050f4 <CONSOLE_STATUS+0xe4>
    80002554:	00e787b3          	add	a5,a5,a4
    80002558:	0007a783          	lw	a5,0(a5)
    8000255c:	00e787b3          	add	a5,a5,a4
    80002560:	00078067          	jr	a5
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
    80002564:	05843503          	ld	a0,88(s0)
                mallocr = MemoryAllocator::mem_alloc(size);
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	310080e7          	jalr	784(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80002570:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002574:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    80002578:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000257c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002580:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002584:	14179073          	csrw	sepc,a5
    80002588:	07813083          	ld	ra,120(sp)
    8000258c:	07013403          	ld	s0,112(sp)
    80002590:	06813483          	ld	s1,104(sp)
    80002594:	08010113          	addi	sp,sp,128
    80002598:	00008067          	ret
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
    8000259c:	05843503          	ld	a0,88(s0)
                greska = MemoryAllocator::mem_free(freep);
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	42c080e7          	jalr	1068(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    800025a8:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    800025ac:	04543823          	sd	t0,80(s0)
                break;
    800025b0:	fc9ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
    800025b4:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    800025b8:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    800025bc:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    800025c0:	07043603          	ld	a2,112(s0)
                *thandle = TCB::createThread(start_routine,arg, stek);
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	9e8080e7          	jalr	-1560(ra) # 80001fac <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800025cc:	00a4b023          	sd	a0,0(s1)
                if(*thandle != nullptr) ret =0;
    800025d0:	00050a63          	beqz	a0,800025e4 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    800025d4:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800025d8:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    800025dc:	04543823          	sd	t0,80(s0)
                break;
    800025e0:	f99ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    800025e4:	fff00793          	li	a5,-1
    800025e8:	ff1ff06f          	j	800025d8 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                ret = TCB::exitThread();
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	adc080e7          	jalr	-1316(ra) # 800020c8 <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800025f4:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800025f8:	04542823          	sw	t0,80(s0)
                break;
    800025fc:	f7dff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                TCB::timeSliceCounter=0;
    80002600:	00004797          	auipc	a5,0x4
    80002604:	a507b783          	ld	a5,-1456(a5) # 80006050 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002608:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	930080e7          	jalr	-1744(ra) # 80001f3c <_ZN3TCB8dispatchEv>
                break;
    80002614:	f65ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
    80002618:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
    8000261c:	06043503          	ld	a0,96(s0)
                *shandle = sem::openSemaphore(val);
    80002620:	0005051b          	sext.w	a0,a0
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	2fc080e7          	jalr	764(ra) # 80001920 <_ZN3sem13openSemaphoreEi>
    8000262c:	00a4b023          	sd	a0,0(s1)
                if(*shandle != nullptr) ret =0;
    80002630:	00050a63          	beqz	a0,80002644 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    80002634:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002638:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    8000263c:	04542823          	sw	t0,80(s0)
                break;
    80002640:	f39ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    80002644:	fff00793          	li	a5,-1
    80002648:	ff1ff06f          	j	80002638 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    8000264c:	05843503          	ld	a0,88(s0)
                ret = id->sem::closeSemaphore();
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	4dc080e7          	jalr	1244(ra) # 80001b2c <_ZN3sem14closeSemaphoreEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002658:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    8000265c:	04542823          	sw	t0,80(s0)
                break;
    80002660:	f19ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002664:	05843503          	ld	a0,88(s0)
                ret = id->sem::wait();
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	3f4080e7          	jalr	1012(ra) # 80001a5c <_ZN3sem4waitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002670:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002674:	04542823          	sw	t0,80(s0)
                break;
    80002678:	f01ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    8000267c:	05843503          	ld	a0,88(s0)
                ret = id->sem::signal();
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	51c080e7          	jalr	1308(ra) # 80001b9c <_ZN3sem6signalEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002688:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    8000268c:	04542823          	sw	t0,80(s0)
                break;
    80002690:	ee9ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002694:	05843503          	ld	a0,88(s0)
                ret = id->sem::trywait();
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	2d0080e7          	jalr	720(ra) # 80001968 <_ZN3sem7trywaitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800026a0:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800026a4:	04542823          	sw	t0,80(s0)
                break;
    800026a8:	ed1ff06f          	j	80002578 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800026ac:	00200793          	li	a5,2
    800026b0:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800026b4:	00004717          	auipc	a4,0x4
    800026b8:	99c73703          	ld	a4,-1636(a4) # 80006050 <_GLOBAL_OFFSET_TABLE_+0x20>
    800026bc:	00073783          	ld	a5,0(a4)
    800026c0:	00178793          	addi	a5,a5,1
    800026c4:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800026c8:	00004717          	auipc	a4,0x4
    800026cc:	9a073703          	ld	a4,-1632(a4) # 80006068 <_GLOBAL_OFFSET_TABLE_+0x38>
    800026d0:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800026d4:	02873703          	ld	a4,40(a4)
    800026d8:	eae7e8e3          	bltu	a5,a4,80002588 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800026dc:	141027f3          	csrr	a5,sepc
    800026e0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800026e4:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    800026e8:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800026ec:	100027f3          	csrr	a5,sstatus
    800026f0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800026f4:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    800026f8:	f8f43c23          	sd	a5,-104(s0)
            TCB::timeSliceCounter=0;
    800026fc:	00004797          	auipc	a5,0x4
    80002700:	9547b783          	ld	a5,-1708(a5) # 80006050 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002704:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	834080e7          	jalr	-1996(ra) # 80001f3c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002710:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002714:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002718:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000271c:	14179073          	csrw	sepc,a5
}
    80002720:	e69ff06f          	j	80002588 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        console_handler();
    80002724:	00002097          	auipc	ra,0x2
    80002728:	5ec080e7          	jalr	1516(ra) # 80004d10 <console_handler>
    8000272c:	e5dff06f          	j	80002588 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

0000000080002730 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00813423          	sd	s0,8(sp)
    80002738:	01010413          	addi	s0,sp,16
    8000273c:	00100793          	li	a5,1
    80002740:	00f50863          	beq	a0,a5,80002750 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002744:	00813403          	ld	s0,8(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret
    80002750:	000107b7          	lui	a5,0x10
    80002754:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002758:	fef596e3          	bne	a1,a5,80002744 <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    8000275c:	00004797          	auipc	a5,0x4
    80002760:	98478793          	addi	a5,a5,-1660 # 800060e0 <_ZN9Scheduler16readyThreadQueueE>
    80002764:	0007b023          	sd	zero,0(a5)
    80002768:	0007b423          	sd	zero,8(a5)
    8000276c:	fd9ff06f          	j	80002744 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002770 <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    80002770:	fe010113          	addi	sp,sp,-32
    80002774:	00113c23          	sd	ra,24(sp)
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    80002784:	00004517          	auipc	a0,0x4
    80002788:	95c53503          	ld	a0,-1700(a0) # 800060e0 <_ZN9Scheduler16readyThreadQueueE>
    8000278c:	04050263          	beqz	a0,800027d0 <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    80002790:	00853783          	ld	a5,8(a0)
    80002794:	00004717          	auipc	a4,0x4
    80002798:	94f73623          	sd	a5,-1716(a4) # 800060e0 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    8000279c:	02078463          	beqz	a5,800027c4 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    800027a0:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	228080e7          	jalr	552(ra) # 800029cc <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800027ac:	00048513          	mv	a0,s1
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	01013403          	ld	s0,16(sp)
    800027b8:	00813483          	ld	s1,8(sp)
    800027bc:	02010113          	addi	sp,sp,32
    800027c0:	00008067          	ret
                if(!head) tail = 0;
    800027c4:	00004797          	auipc	a5,0x4
    800027c8:	9207b223          	sd	zero,-1756(a5) # 800060e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800027cc:	fd5ff06f          	j	800027a0 <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    800027d0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800027d4:	fd9ff06f          	j	800027ac <_ZN9Scheduler3getEv+0x3c>

00000000800027d8 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    800027d8:	fe010113          	addi	sp,sp,-32
    800027dc:	00113c23          	sd	ra,24(sp)
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	02010413          	addi	s0,sp,32
    800027ec:	00050493          	mv	s1,a0
        return MemoryAllocator::mem_alloc(n);
    800027f0:	01000513          	li	a0,16
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	084080e7          	jalr	132(ra) # 80002878 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    800027fc:	00953023          	sd	s1,0(a0)
                elem->next=0;
    80002800:	00053423          	sd	zero,8(a0)
                if(tail){
    80002804:	00004797          	auipc	a5,0x4
    80002808:	8e47b783          	ld	a5,-1820(a5) # 800060e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000280c:	02078263          	beqz	a5,80002830 <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    80002810:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80002814:	00004797          	auipc	a5,0x4
    80002818:	8ca7ba23          	sd	a0,-1836(a5) # 800060e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000281c:	01813083          	ld	ra,24(sp)
    80002820:	01013403          	ld	s0,16(sp)
    80002824:	00813483          	ld	s1,8(sp)
    80002828:	02010113          	addi	sp,sp,32
    8000282c:	00008067          	ret
                    head= tail = elem;
    80002830:	00004797          	auipc	a5,0x4
    80002834:	8b078793          	addi	a5,a5,-1872 # 800060e0 <_ZN9Scheduler16readyThreadQueueE>
    80002838:	00a7b423          	sd	a0,8(a5)
    8000283c:	00a7b023          	sd	a0,0(a5)
    80002840:	fddff06f          	j	8000281c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002844 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00113423          	sd	ra,8(sp)
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	01010413          	addi	s0,sp,16
    80002854:	000105b7          	lui	a1,0x10
    80002858:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000285c:	00100513          	li	a0,1
    80002860:	00000097          	auipc	ra,0x0
    80002864:	ed0080e7          	jalr	-304(ra) # 80002730 <_Z41__static_initialization_and_destruction_0ii>
    80002868:	00813083          	ld	ra,8(sp)
    8000286c:	00013403          	ld	s0,0(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00813423          	sd	s0,8(sp)
    80002880:	01010413          	addi	s0,sp,16
    80002884:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    80002888:	00004517          	auipc	a0,0x4
    8000288c:	86853503          	ld	a0,-1944(a0) # 800060f0 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    80002890:	03f7f713          	andi	a4,a5,63
    80002894:	00070663          	beqz	a4,800028a0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002898:	fc07f793          	andi	a5,a5,-64
    8000289c:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    800028a0:	02050863          	beqz	a0,800028d0 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    800028a4:	00853703          	ld	a4,8(a0)
    800028a8:	02f77863          	bgeu	a4,a5,800028d8 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    800028ac:	00050693          	mv	a3,a0
        tek = tek->sled;
    800028b0:	00053503          	ld	a0,0(a0)
    800028b4:	00c0006f          	j	800028c0 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    800028b8:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    800028bc:	00053503          	ld	a0,0(a0)
    800028c0:	00050e63          	beqz	a0,800028dc <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800028c4:	00853703          	ld	a4,8(a0)
    800028c8:	fef768e3          	bltu	a4,a5,800028b8 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800028cc:	0100006f          	j	800028dc <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    800028d0:	00050693          	mv	a3,a0
    800028d4:	0080006f          	j	800028dc <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800028d8:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    800028dc:	02050c63          	beqz	a0,80002914 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    800028e0:	00853703          	ld	a4,8(a0)
    800028e4:	02e7fe63          	bgeu	a5,a4,80002920 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    800028e8:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    800028ec:	00f505b3          	add	a1,a0,a5
    800028f0:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    800028f4:	40f707b3          	sub	a5,a4,a5
    800028f8:	ff078793          	addi	a5,a5,-16
    800028fc:	00f63423          	sd	a5,8(a2) # 8008 <_entry-0x7fff7ff8>
        sledeci->sled = tek->sled;
    80002900:	00053783          	ld	a5,0(a0)
    80002904:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    80002908:	02068063          	beqz	a3,80002928 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    8000290c:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    80002910:	01050513          	addi	a0,a0,16
}
    80002914:	00813403          	ld	s0,8(sp)
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    80002920:	00053603          	ld	a2,0(a0)
    80002924:	fe5ff06f          	j	80002908 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    80002928:	00003797          	auipc	a5,0x3
    8000292c:	7cc7b423          	sd	a2,1992(a5) # 800060f0 <_ZN15MemoryAllocator11freememheadE>
    80002930:	fe1ff06f          	j	80002910 <_ZN15MemoryAllocator9mem_allocEm+0x98>

0000000080002934 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00813423          	sd	s0,8(sp)
    8000293c:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    80002940:	00003797          	auipc	a5,0x3
    80002944:	6f87b783          	ld	a5,1784(a5) # 80006038 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002948:	0007b703          	ld	a4,0(a5)
    8000294c:	00003797          	auipc	a5,0x3
    80002950:	7ae7b223          	sd	a4,1956(a5) # 800060f0 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    80002954:	00003797          	auipc	a5,0x3
    80002958:	71c7b783          	ld	a5,1820(a5) # 80006070 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000295c:	0007b783          	ld	a5,0(a5)
    80002960:	40e787b3          	sub	a5,a5,a4
    80002964:	ff078793          	addi	a5,a5,-16
    80002968:	00073023          	sd	zero,0(a4)
    8000296c:	00f73423          	sd	a5,8(a4)
};
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00813423          	sd	s0,8(sp)
    80002984:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002988:	00053783          	ld	a5,0(a0)
    8000298c:	00078a63          	beqz	a5,800029a0 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    80002990:	00853683          	ld	a3,8(a0)
    80002994:	00d50733          	add	a4,a0,a3
    80002998:	01070713          	addi	a4,a4,16
    8000299c:	00f70a63          	beq	a4,a5,800029b0 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    800029a0:	00000513          	li	a0,0
    800029a4:	00813403          	ld	s0,8(sp)
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    800029b0:	0087b703          	ld	a4,8(a5)
    800029b4:	00e686b3          	add	a3,a3,a4
    800029b8:	01068693          	addi	a3,a3,16
    800029bc:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    800029c0:	0007b783          	ld	a5,0(a5)
    800029c4:	00f53023          	sd	a5,0(a0)
    800029c8:	fd9ff06f          	j	800029a0 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

00000000800029cc <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    800029cc:	0c050263          	beqz	a0,80002a90 <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    800029d0:	00050713          	mv	a4,a0
    800029d4:	00003797          	auipc	a5,0x3
    800029d8:	6647b783          	ld	a5,1636(a5) # 80006038 <_GLOBAL_OFFSET_TABLE_+0x8>
    800029dc:	0007b783          	ld	a5,0(a5)
    800029e0:	0af56c63          	bltu	a0,a5,80002a98 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    800029e4:	00003797          	auipc	a5,0x3
    800029e8:	68c7b783          	ld	a5,1676(a5) # 80006070 <_GLOBAL_OFFSET_TABLE_+0x40>
    800029ec:	0007b783          	ld	a5,0(a5)
    800029f0:	0af57863          	bgeu	a0,a5,80002aa0 <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    800029f4:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    800029f8:	00003797          	auipc	a5,0x3
    800029fc:	6f87b783          	ld	a5,1784(a5) # 800060f0 <_ZN15MemoryAllocator11freememheadE>
    80002a00:	06078063          	beqz	a5,80002a60 <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    80002a18:	04f56e63          	bltu	a0,a5,80002a74 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    80002a1c:	00078493          	mv	s1,a5
    80002a20:	0007b783          	ld	a5,0(a5)
    80002a24:	00078463          	beqz	a5,80002a2c <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    80002a28:	fea7eae3          	bltu	a5,a0,80002a1c <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    80002a2c:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    80002a30:	00a4b023          	sd	a0,0(s1)
        join(tek);
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	f48080e7          	jalr	-184(ra) # 8000297c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    80002a3c:	00048513          	mv	a0,s1
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	f3c080e7          	jalr	-196(ra) # 8000297c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002a48:	00000513          	li	a0,0
}
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret
        freememhead = tek;
    80002a60:	00003797          	auipc	a5,0x3
    80002a64:	68a7b823          	sd	a0,1680(a5) # 800060f0 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002a68:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002a6c:	00000513          	li	a0,0
    80002a70:	00008067          	ret
        tek->sled = freememhead;
    80002a74:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002a78:	00003797          	auipc	a5,0x3
    80002a7c:	66a7bc23          	sd	a0,1656(a5) # 800060f0 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	efc080e7          	jalr	-260(ra) # 8000297c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002a88:	00000513          	li	a0,0
    80002a8c:	fc1ff06f          	j	80002a4c <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002a90:	fff00513          	li	a0,-1
    80002a94:	00008067          	ret
    80002a98:	fff00513          	li	a0,-1
    80002a9c:	00008067          	ret
    80002aa0:	fff00513          	li	a0,-1
}
    80002aa4:	00008067          	ret

0000000080002aa8 <_Z11printStringPKc>:
//

#include "../h/print.hpp"


void printString(char const *string){
    80002aa8:	fd010113          	addi	sp,sp,-48
    80002aac:	02113423          	sd	ra,40(sp)
    80002ab0:	02813023          	sd	s0,32(sp)
    80002ab4:	00913c23          	sd	s1,24(sp)
    80002ab8:	01213823          	sd	s2,16(sp)
    80002abc:	03010413          	addi	s0,sp,48
    80002ac0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002ac4:	100027f3          	csrr	a5,sstatus
    80002ac8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002acc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002ad0:	00200793          	li	a5,2
    80002ad4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string !='\0'){
    80002ad8:	0004c503          	lbu	a0,0(s1)
    80002adc:	00050a63          	beqz	a0,80002af0 <_Z11printStringPKc+0x48>
        __putc(*string);
    80002ae0:	00002097          	auipc	ra,0x2
    80002ae4:	1bc080e7          	jalr	444(ra) # 80004c9c <__putc>
        string++;
    80002ae8:	00148493          	addi	s1,s1,1
    while(*string !='\0'){
    80002aec:	fedff06f          	j	80002ad8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002af0:	0009091b          	sext.w	s2,s2
    80002af4:	00297913          	andi	s2,s2,2
    80002af8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002afc:	10092073          	csrs	sstatus,s2
}
    80002b00:	02813083          	ld	ra,40(sp)
    80002b04:	02013403          	ld	s0,32(sp)
    80002b08:	01813483          	ld	s1,24(sp)
    80002b0c:	01013903          	ld	s2,16(sp)
    80002b10:	03010113          	addi	sp,sp,48
    80002b14:	00008067          	ret

0000000080002b18 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002b18:	fc010113          	addi	sp,sp,-64
    80002b1c:	02113c23          	sd	ra,56(sp)
    80002b20:	02813823          	sd	s0,48(sp)
    80002b24:	02913423          	sd	s1,40(sp)
    80002b28:	03213023          	sd	s2,32(sp)
    80002b2c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b30:	100027f3          	csrr	a5,sstatus
    80002b34:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b38:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002b3c:	00200793          	li	a5,2
    80002b40:	1007b073          	csrc	sstatus,a5

    neg = 0;
    if(integer<0){
        neg= 1;
        x= -integer;
    }else x=integer;
    80002b44:	0005051b          	sext.w	a0,a0
    i=0;
    80002b48:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x%10];
    80002b4c:	00a00613          	li	a2,10
    80002b50:	02c5773b          	remuw	a4,a0,a2
    80002b54:	02071693          	slli	a3,a4,0x20
    80002b58:	0206d693          	srli	a3,a3,0x20
    80002b5c:	00002717          	auipc	a4,0x2
    80002b60:	63470713          	addi	a4,a4,1588 # 80005190 <_ZZ12printIntegermE6digits>
    80002b64:	00d70733          	add	a4,a4,a3
    80002b68:	00074703          	lbu	a4,0(a4)
    80002b6c:	fe040693          	addi	a3,s0,-32
    80002b70:	009687b3          	add	a5,a3,s1
    80002b74:	0014849b          	addiw	s1,s1,1
    80002b78:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80002b7c:	0005071b          	sext.w	a4,a0
    80002b80:	02c5553b          	divuw	a0,a0,a2
    80002b84:	00900793          	li	a5,9
    80002b88:	fce7e2e3          	bltu	a5,a4,80002b4c <_Z12printIntegerm+0x34>
    if(neg)
        buf[i++]='-';
    while(--i >=0) __putc(buf[i]);
    80002b8c:	fff4849b          	addiw	s1,s1,-1
    80002b90:	0004ce63          	bltz	s1,80002bac <_Z12printIntegerm+0x94>
    80002b94:	fe040793          	addi	a5,s0,-32
    80002b98:	009787b3          	add	a5,a5,s1
    80002b9c:	ff07c503          	lbu	a0,-16(a5)
    80002ba0:	00002097          	auipc	ra,0x2
    80002ba4:	0fc080e7          	jalr	252(ra) # 80004c9c <__putc>
    80002ba8:	fe5ff06f          	j	80002b8c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002bac:	0009091b          	sext.w	s2,s2
    80002bb0:	00297913          	andi	s2,s2,2
    80002bb4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002bb8:	10092073          	csrs	sstatus,s2

    80002bbc:	03813083          	ld	ra,56(sp)
    80002bc0:	03013403          	ld	s0,48(sp)
    80002bc4:	02813483          	ld	s1,40(sp)
    80002bc8:	02013903          	ld	s2,32(sp)
    80002bcc:	04010113          	addi	sp,sp,64
    80002bd0:	00008067          	ret

0000000080002bd4 <start>:
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813423          	sd	s0,8(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    80002be0:	300027f3          	csrr	a5,mstatus
    80002be4:	ffffe737          	lui	a4,0xffffe
    80002be8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff749f>
    80002bec:	00e7f7b3          	and	a5,a5,a4
    80002bf0:	00001737          	lui	a4,0x1
    80002bf4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002bf8:	00e7e7b3          	or	a5,a5,a4
    80002bfc:	30079073          	csrw	mstatus,a5
    80002c00:	00000797          	auipc	a5,0x0
    80002c04:	16078793          	addi	a5,a5,352 # 80002d60 <system_main>
    80002c08:	34179073          	csrw	mepc,a5
    80002c0c:	00000793          	li	a5,0
    80002c10:	18079073          	csrw	satp,a5
    80002c14:	000107b7          	lui	a5,0x10
    80002c18:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c1c:	30279073          	csrw	medeleg,a5
    80002c20:	30379073          	csrw	mideleg,a5
    80002c24:	104027f3          	csrr	a5,sie
    80002c28:	2227e793          	ori	a5,a5,546
    80002c2c:	10479073          	csrw	sie,a5
    80002c30:	fff00793          	li	a5,-1
    80002c34:	00a7d793          	srli	a5,a5,0xa
    80002c38:	3b079073          	csrw	pmpaddr0,a5
    80002c3c:	00f00793          	li	a5,15
    80002c40:	3a079073          	csrw	pmpcfg0,a5
    80002c44:	f14027f3          	csrr	a5,mhartid
    80002c48:	0200c737          	lui	a4,0x200c
    80002c4c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c50:	0007869b          	sext.w	a3,a5
    80002c54:	00269713          	slli	a4,a3,0x2
    80002c58:	000f4637          	lui	a2,0xf4
    80002c5c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c60:	00d70733          	add	a4,a4,a3
    80002c64:	0037979b          	slliw	a5,a5,0x3
    80002c68:	020046b7          	lui	a3,0x2004
    80002c6c:	00d787b3          	add	a5,a5,a3
    80002c70:	00c585b3          	add	a1,a1,a2
    80002c74:	00371693          	slli	a3,a4,0x3
    80002c78:	00003717          	auipc	a4,0x3
    80002c7c:	48870713          	addi	a4,a4,1160 # 80006100 <timer_scratch>
    80002c80:	00b7b023          	sd	a1,0(a5)
    80002c84:	00d70733          	add	a4,a4,a3
    80002c88:	00f73c23          	sd	a5,24(a4)
    80002c8c:	02c73023          	sd	a2,32(a4)
    80002c90:	34071073          	csrw	mscratch,a4
    80002c94:	00000797          	auipc	a5,0x0
    80002c98:	6ec78793          	addi	a5,a5,1772 # 80003380 <timervec>
    80002c9c:	30579073          	csrw	mtvec,a5
    80002ca0:	300027f3          	csrr	a5,mstatus
    80002ca4:	0087e793          	ori	a5,a5,8
    80002ca8:	30079073          	csrw	mstatus,a5
    80002cac:	304027f3          	csrr	a5,mie
    80002cb0:	0807e793          	ori	a5,a5,128
    80002cb4:	30479073          	csrw	mie,a5
    80002cb8:	f14027f3          	csrr	a5,mhartid
    80002cbc:	0007879b          	sext.w	a5,a5
    80002cc0:	00078213          	mv	tp,a5
    80002cc4:	30200073          	mret
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <timerinit>:
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	f14027f3          	csrr	a5,mhartid
    80002ce4:	0200c737          	lui	a4,0x200c
    80002ce8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002cec:	0007869b          	sext.w	a3,a5
    80002cf0:	00269713          	slli	a4,a3,0x2
    80002cf4:	000f4637          	lui	a2,0xf4
    80002cf8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002cfc:	00d70733          	add	a4,a4,a3
    80002d00:	0037979b          	slliw	a5,a5,0x3
    80002d04:	020046b7          	lui	a3,0x2004
    80002d08:	00d787b3          	add	a5,a5,a3
    80002d0c:	00c585b3          	add	a1,a1,a2
    80002d10:	00371693          	slli	a3,a4,0x3
    80002d14:	00003717          	auipc	a4,0x3
    80002d18:	3ec70713          	addi	a4,a4,1004 # 80006100 <timer_scratch>
    80002d1c:	00b7b023          	sd	a1,0(a5)
    80002d20:	00d70733          	add	a4,a4,a3
    80002d24:	00f73c23          	sd	a5,24(a4)
    80002d28:	02c73023          	sd	a2,32(a4)
    80002d2c:	34071073          	csrw	mscratch,a4
    80002d30:	00000797          	auipc	a5,0x0
    80002d34:	65078793          	addi	a5,a5,1616 # 80003380 <timervec>
    80002d38:	30579073          	csrw	mtvec,a5
    80002d3c:	300027f3          	csrr	a5,mstatus
    80002d40:	0087e793          	ori	a5,a5,8
    80002d44:	30079073          	csrw	mstatus,a5
    80002d48:	304027f3          	csrr	a5,mie
    80002d4c:	0807e793          	ori	a5,a5,128
    80002d50:	30479073          	csrw	mie,a5
    80002d54:	00813403          	ld	s0,8(sp)
    80002d58:	01010113          	addi	sp,sp,16
    80002d5c:	00008067          	ret

0000000080002d60 <system_main>:
    80002d60:	fe010113          	addi	sp,sp,-32
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	00113c23          	sd	ra,24(sp)
    80002d70:	02010413          	addi	s0,sp,32
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	0c4080e7          	jalr	196(ra) # 80002e38 <cpuid>
    80002d7c:	00003497          	auipc	s1,0x3
    80002d80:	32448493          	addi	s1,s1,804 # 800060a0 <started>
    80002d84:	02050263          	beqz	a0,80002da8 <system_main+0x48>
    80002d88:	0004a783          	lw	a5,0(s1)
    80002d8c:	0007879b          	sext.w	a5,a5
    80002d90:	fe078ce3          	beqz	a5,80002d88 <system_main+0x28>
    80002d94:	0ff0000f          	fence
    80002d98:	00002517          	auipc	a0,0x2
    80002d9c:	43850513          	addi	a0,a0,1080 # 800051d0 <_ZZ12printIntegermE6digits+0x40>
    80002da0:	00001097          	auipc	ra,0x1
    80002da4:	a7c080e7          	jalr	-1412(ra) # 8000381c <panic>
    80002da8:	00001097          	auipc	ra,0x1
    80002dac:	9d0080e7          	jalr	-1584(ra) # 80003778 <consoleinit>
    80002db0:	00001097          	auipc	ra,0x1
    80002db4:	15c080e7          	jalr	348(ra) # 80003f0c <printfinit>
    80002db8:	00002517          	auipc	a0,0x2
    80002dbc:	33850513          	addi	a0,a0,824 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002dc0:	00001097          	auipc	ra,0x1
    80002dc4:	ab8080e7          	jalr	-1352(ra) # 80003878 <__printf>
    80002dc8:	00002517          	auipc	a0,0x2
    80002dcc:	3d850513          	addi	a0,a0,984 # 800051a0 <_ZZ12printIntegermE6digits+0x10>
    80002dd0:	00001097          	auipc	ra,0x1
    80002dd4:	aa8080e7          	jalr	-1368(ra) # 80003878 <__printf>
    80002dd8:	00002517          	auipc	a0,0x2
    80002ddc:	31850513          	addi	a0,a0,792 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	a98080e7          	jalr	-1384(ra) # 80003878 <__printf>
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	4b0080e7          	jalr	1200(ra) # 80004298 <kinit>
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	148080e7          	jalr	328(ra) # 80002f38 <trapinit>
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	16c080e7          	jalr	364(ra) # 80002f64 <trapinithart>
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	5c0080e7          	jalr	1472(ra) # 800033c0 <plicinit>
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	5e0080e7          	jalr	1504(ra) # 800033e8 <plicinithart>
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	078080e7          	jalr	120(ra) # 80002e88 <userinit>
    80002e18:	0ff0000f          	fence
    80002e1c:	00100793          	li	a5,1
    80002e20:	00002517          	auipc	a0,0x2
    80002e24:	39850513          	addi	a0,a0,920 # 800051b8 <_ZZ12printIntegermE6digits+0x28>
    80002e28:	00f4a023          	sw	a5,0(s1)
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	a4c080e7          	jalr	-1460(ra) # 80003878 <__printf>
    80002e34:	0000006f          	j	80002e34 <system_main+0xd4>

0000000080002e38 <cpuid>:
    80002e38:	ff010113          	addi	sp,sp,-16
    80002e3c:	00813423          	sd	s0,8(sp)
    80002e40:	01010413          	addi	s0,sp,16
    80002e44:	00020513          	mv	a0,tp
    80002e48:	00813403          	ld	s0,8(sp)
    80002e4c:	0005051b          	sext.w	a0,a0
    80002e50:	01010113          	addi	sp,sp,16
    80002e54:	00008067          	ret

0000000080002e58 <mycpu>:
    80002e58:	ff010113          	addi	sp,sp,-16
    80002e5c:	00813423          	sd	s0,8(sp)
    80002e60:	01010413          	addi	s0,sp,16
    80002e64:	00020793          	mv	a5,tp
    80002e68:	00813403          	ld	s0,8(sp)
    80002e6c:	0007879b          	sext.w	a5,a5
    80002e70:	00779793          	slli	a5,a5,0x7
    80002e74:	00004517          	auipc	a0,0x4
    80002e78:	2bc50513          	addi	a0,a0,700 # 80007130 <cpus>
    80002e7c:	00f50533          	add	a0,a0,a5
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <userinit>:
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00813423          	sd	s0,8(sp)
    80002e90:	01010413          	addi	s0,sp,16
    80002e94:	00813403          	ld	s0,8(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	fffff317          	auipc	t1,0xfffff
    80002ea0:	d5830067          	jr	-680(t1) # 80001bf4 <main>

0000000080002ea4 <either_copyout>:
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813023          	sd	s0,0(sp)
    80002eac:	00113423          	sd	ra,8(sp)
    80002eb0:	01010413          	addi	s0,sp,16
    80002eb4:	02051663          	bnez	a0,80002ee0 <either_copyout+0x3c>
    80002eb8:	00058513          	mv	a0,a1
    80002ebc:	00060593          	mv	a1,a2
    80002ec0:	0006861b          	sext.w	a2,a3
    80002ec4:	00002097          	auipc	ra,0x2
    80002ec8:	c60080e7          	jalr	-928(ra) # 80004b24 <__memmove>
    80002ecc:	00813083          	ld	ra,8(sp)
    80002ed0:	00013403          	ld	s0,0(sp)
    80002ed4:	00000513          	li	a0,0
    80002ed8:	01010113          	addi	sp,sp,16
    80002edc:	00008067          	ret
    80002ee0:	00002517          	auipc	a0,0x2
    80002ee4:	31850513          	addi	a0,a0,792 # 800051f8 <_ZZ12printIntegermE6digits+0x68>
    80002ee8:	00001097          	auipc	ra,0x1
    80002eec:	934080e7          	jalr	-1740(ra) # 8000381c <panic>

0000000080002ef0 <either_copyin>:
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00813023          	sd	s0,0(sp)
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    80002f00:	02059463          	bnez	a1,80002f28 <either_copyin+0x38>
    80002f04:	00060593          	mv	a1,a2
    80002f08:	0006861b          	sext.w	a2,a3
    80002f0c:	00002097          	auipc	ra,0x2
    80002f10:	c18080e7          	jalr	-1000(ra) # 80004b24 <__memmove>
    80002f14:	00813083          	ld	ra,8(sp)
    80002f18:	00013403          	ld	s0,0(sp)
    80002f1c:	00000513          	li	a0,0
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret
    80002f28:	00002517          	auipc	a0,0x2
    80002f2c:	2f850513          	addi	a0,a0,760 # 80005220 <_ZZ12printIntegermE6digits+0x90>
    80002f30:	00001097          	auipc	ra,0x1
    80002f34:	8ec080e7          	jalr	-1812(ra) # 8000381c <panic>

0000000080002f38 <trapinit>:
    80002f38:	ff010113          	addi	sp,sp,-16
    80002f3c:	00813423          	sd	s0,8(sp)
    80002f40:	01010413          	addi	s0,sp,16
    80002f44:	00813403          	ld	s0,8(sp)
    80002f48:	00002597          	auipc	a1,0x2
    80002f4c:	30058593          	addi	a1,a1,768 # 80005248 <_ZZ12printIntegermE6digits+0xb8>
    80002f50:	00004517          	auipc	a0,0x4
    80002f54:	26050513          	addi	a0,a0,608 # 800071b0 <tickslock>
    80002f58:	01010113          	addi	sp,sp,16
    80002f5c:	00001317          	auipc	t1,0x1
    80002f60:	5cc30067          	jr	1484(t1) # 80004528 <initlock>

0000000080002f64 <trapinithart>:
    80002f64:	ff010113          	addi	sp,sp,-16
    80002f68:	00813423          	sd	s0,8(sp)
    80002f6c:	01010413          	addi	s0,sp,16
    80002f70:	00000797          	auipc	a5,0x0
    80002f74:	30078793          	addi	a5,a5,768 # 80003270 <kernelvec>
    80002f78:	10579073          	csrw	stvec,a5
    80002f7c:	00813403          	ld	s0,8(sp)
    80002f80:	01010113          	addi	sp,sp,16
    80002f84:	00008067          	ret

0000000080002f88 <usertrap>:
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00813423          	sd	s0,8(sp)
    80002f90:	01010413          	addi	s0,sp,16
    80002f94:	00813403          	ld	s0,8(sp)
    80002f98:	01010113          	addi	sp,sp,16
    80002f9c:	00008067          	ret

0000000080002fa0 <usertrapret>:
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00813423          	sd	s0,8(sp)
    80002fa8:	01010413          	addi	s0,sp,16
    80002fac:	00813403          	ld	s0,8(sp)
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <kerneltrap>:
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00813823          	sd	s0,16(sp)
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	02010413          	addi	s0,sp,32
    80002fcc:	142025f3          	csrr	a1,scause
    80002fd0:	100027f3          	csrr	a5,sstatus
    80002fd4:	0027f793          	andi	a5,a5,2
    80002fd8:	10079c63          	bnez	a5,800030f0 <kerneltrap+0x138>
    80002fdc:	142027f3          	csrr	a5,scause
    80002fe0:	0207ce63          	bltz	a5,8000301c <kerneltrap+0x64>
    80002fe4:	00002517          	auipc	a0,0x2
    80002fe8:	2ac50513          	addi	a0,a0,684 # 80005290 <_ZZ12printIntegermE6digits+0x100>
    80002fec:	00001097          	auipc	ra,0x1
    80002ff0:	88c080e7          	jalr	-1908(ra) # 80003878 <__printf>
    80002ff4:	141025f3          	csrr	a1,sepc
    80002ff8:	14302673          	csrr	a2,stval
    80002ffc:	00002517          	auipc	a0,0x2
    80003000:	2a450513          	addi	a0,a0,676 # 800052a0 <_ZZ12printIntegermE6digits+0x110>
    80003004:	00001097          	auipc	ra,0x1
    80003008:	874080e7          	jalr	-1932(ra) # 80003878 <__printf>
    8000300c:	00002517          	auipc	a0,0x2
    80003010:	2ac50513          	addi	a0,a0,684 # 800052b8 <_ZZ12printIntegermE6digits+0x128>
    80003014:	00001097          	auipc	ra,0x1
    80003018:	808080e7          	jalr	-2040(ra) # 8000381c <panic>
    8000301c:	0ff7f713          	andi	a4,a5,255
    80003020:	00900693          	li	a3,9
    80003024:	04d70063          	beq	a4,a3,80003064 <kerneltrap+0xac>
    80003028:	fff00713          	li	a4,-1
    8000302c:	03f71713          	slli	a4,a4,0x3f
    80003030:	00170713          	addi	a4,a4,1
    80003034:	fae798e3          	bne	a5,a4,80002fe4 <kerneltrap+0x2c>
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	e00080e7          	jalr	-512(ra) # 80002e38 <cpuid>
    80003040:	06050663          	beqz	a0,800030ac <kerneltrap+0xf4>
    80003044:	144027f3          	csrr	a5,sip
    80003048:	ffd7f793          	andi	a5,a5,-3
    8000304c:	14479073          	csrw	sip,a5
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	00813483          	ld	s1,8(sp)
    8000305c:	02010113          	addi	sp,sp,32
    80003060:	00008067          	ret
    80003064:	00000097          	auipc	ra,0x0
    80003068:	3d0080e7          	jalr	976(ra) # 80003434 <plic_claim>
    8000306c:	00a00793          	li	a5,10
    80003070:	00050493          	mv	s1,a0
    80003074:	06f50863          	beq	a0,a5,800030e4 <kerneltrap+0x12c>
    80003078:	fc050ce3          	beqz	a0,80003050 <kerneltrap+0x98>
    8000307c:	00050593          	mv	a1,a0
    80003080:	00002517          	auipc	a0,0x2
    80003084:	1f050513          	addi	a0,a0,496 # 80005270 <_ZZ12printIntegermE6digits+0xe0>
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	7f0080e7          	jalr	2032(ra) # 80003878 <__printf>
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	00048513          	mv	a0,s1
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	02010113          	addi	sp,sp,32
    800030a4:	00000317          	auipc	t1,0x0
    800030a8:	3c830067          	jr	968(t1) # 8000346c <plic_complete>
    800030ac:	00004517          	auipc	a0,0x4
    800030b0:	10450513          	addi	a0,a0,260 # 800071b0 <tickslock>
    800030b4:	00001097          	auipc	ra,0x1
    800030b8:	498080e7          	jalr	1176(ra) # 8000454c <acquire>
    800030bc:	00003717          	auipc	a4,0x3
    800030c0:	fe870713          	addi	a4,a4,-24 # 800060a4 <ticks>
    800030c4:	00072783          	lw	a5,0(a4)
    800030c8:	00004517          	auipc	a0,0x4
    800030cc:	0e850513          	addi	a0,a0,232 # 800071b0 <tickslock>
    800030d0:	0017879b          	addiw	a5,a5,1
    800030d4:	00f72023          	sw	a5,0(a4)
    800030d8:	00001097          	auipc	ra,0x1
    800030dc:	540080e7          	jalr	1344(ra) # 80004618 <release>
    800030e0:	f65ff06f          	j	80003044 <kerneltrap+0x8c>
    800030e4:	00001097          	auipc	ra,0x1
    800030e8:	09c080e7          	jalr	156(ra) # 80004180 <uartintr>
    800030ec:	fa5ff06f          	j	80003090 <kerneltrap+0xd8>
    800030f0:	00002517          	auipc	a0,0x2
    800030f4:	16050513          	addi	a0,a0,352 # 80005250 <_ZZ12printIntegermE6digits+0xc0>
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	724080e7          	jalr	1828(ra) # 8000381c <panic>

0000000080003100 <clockintr>:
    80003100:	fe010113          	addi	sp,sp,-32
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	00113c23          	sd	ra,24(sp)
    80003110:	02010413          	addi	s0,sp,32
    80003114:	00004497          	auipc	s1,0x4
    80003118:	09c48493          	addi	s1,s1,156 # 800071b0 <tickslock>
    8000311c:	00048513          	mv	a0,s1
    80003120:	00001097          	auipc	ra,0x1
    80003124:	42c080e7          	jalr	1068(ra) # 8000454c <acquire>
    80003128:	00003717          	auipc	a4,0x3
    8000312c:	f7c70713          	addi	a4,a4,-132 # 800060a4 <ticks>
    80003130:	00072783          	lw	a5,0(a4)
    80003134:	01013403          	ld	s0,16(sp)
    80003138:	01813083          	ld	ra,24(sp)
    8000313c:	00048513          	mv	a0,s1
    80003140:	0017879b          	addiw	a5,a5,1
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	00f72023          	sw	a5,0(a4)
    8000314c:	02010113          	addi	sp,sp,32
    80003150:	00001317          	auipc	t1,0x1
    80003154:	4c830067          	jr	1224(t1) # 80004618 <release>

0000000080003158 <devintr>:
    80003158:	142027f3          	csrr	a5,scause
    8000315c:	00000513          	li	a0,0
    80003160:	0007c463          	bltz	a5,80003168 <devintr+0x10>
    80003164:	00008067          	ret
    80003168:	fe010113          	addi	sp,sp,-32
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00113c23          	sd	ra,24(sp)
    80003174:	00913423          	sd	s1,8(sp)
    80003178:	02010413          	addi	s0,sp,32
    8000317c:	0ff7f713          	andi	a4,a5,255
    80003180:	00900693          	li	a3,9
    80003184:	04d70c63          	beq	a4,a3,800031dc <devintr+0x84>
    80003188:	fff00713          	li	a4,-1
    8000318c:	03f71713          	slli	a4,a4,0x3f
    80003190:	00170713          	addi	a4,a4,1
    80003194:	00e78c63          	beq	a5,a4,800031ac <devintr+0x54>
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00008067          	ret
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	c8c080e7          	jalr	-884(ra) # 80002e38 <cpuid>
    800031b4:	06050663          	beqz	a0,80003220 <devintr+0xc8>
    800031b8:	144027f3          	csrr	a5,sip
    800031bc:	ffd7f793          	andi	a5,a5,-3
    800031c0:	14479073          	csrw	sip,a5
    800031c4:	01813083          	ld	ra,24(sp)
    800031c8:	01013403          	ld	s0,16(sp)
    800031cc:	00813483          	ld	s1,8(sp)
    800031d0:	00200513          	li	a0,2
    800031d4:	02010113          	addi	sp,sp,32
    800031d8:	00008067          	ret
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	258080e7          	jalr	600(ra) # 80003434 <plic_claim>
    800031e4:	00a00793          	li	a5,10
    800031e8:	00050493          	mv	s1,a0
    800031ec:	06f50663          	beq	a0,a5,80003258 <devintr+0x100>
    800031f0:	00100513          	li	a0,1
    800031f4:	fa0482e3          	beqz	s1,80003198 <devintr+0x40>
    800031f8:	00048593          	mv	a1,s1
    800031fc:	00002517          	auipc	a0,0x2
    80003200:	07450513          	addi	a0,a0,116 # 80005270 <_ZZ12printIntegermE6digits+0xe0>
    80003204:	00000097          	auipc	ra,0x0
    80003208:	674080e7          	jalr	1652(ra) # 80003878 <__printf>
    8000320c:	00048513          	mv	a0,s1
    80003210:	00000097          	auipc	ra,0x0
    80003214:	25c080e7          	jalr	604(ra) # 8000346c <plic_complete>
    80003218:	00100513          	li	a0,1
    8000321c:	f7dff06f          	j	80003198 <devintr+0x40>
    80003220:	00004517          	auipc	a0,0x4
    80003224:	f9050513          	addi	a0,a0,-112 # 800071b0 <tickslock>
    80003228:	00001097          	auipc	ra,0x1
    8000322c:	324080e7          	jalr	804(ra) # 8000454c <acquire>
    80003230:	00003717          	auipc	a4,0x3
    80003234:	e7470713          	addi	a4,a4,-396 # 800060a4 <ticks>
    80003238:	00072783          	lw	a5,0(a4)
    8000323c:	00004517          	auipc	a0,0x4
    80003240:	f7450513          	addi	a0,a0,-140 # 800071b0 <tickslock>
    80003244:	0017879b          	addiw	a5,a5,1
    80003248:	00f72023          	sw	a5,0(a4)
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	3cc080e7          	jalr	972(ra) # 80004618 <release>
    80003254:	f65ff06f          	j	800031b8 <devintr+0x60>
    80003258:	00001097          	auipc	ra,0x1
    8000325c:	f28080e7          	jalr	-216(ra) # 80004180 <uartintr>
    80003260:	fadff06f          	j	8000320c <devintr+0xb4>
	...

0000000080003270 <kernelvec>:
    80003270:	f0010113          	addi	sp,sp,-256
    80003274:	00113023          	sd	ra,0(sp)
    80003278:	00213423          	sd	sp,8(sp)
    8000327c:	00313823          	sd	gp,16(sp)
    80003280:	00413c23          	sd	tp,24(sp)
    80003284:	02513023          	sd	t0,32(sp)
    80003288:	02613423          	sd	t1,40(sp)
    8000328c:	02713823          	sd	t2,48(sp)
    80003290:	02813c23          	sd	s0,56(sp)
    80003294:	04913023          	sd	s1,64(sp)
    80003298:	04a13423          	sd	a0,72(sp)
    8000329c:	04b13823          	sd	a1,80(sp)
    800032a0:	04c13c23          	sd	a2,88(sp)
    800032a4:	06d13023          	sd	a3,96(sp)
    800032a8:	06e13423          	sd	a4,104(sp)
    800032ac:	06f13823          	sd	a5,112(sp)
    800032b0:	07013c23          	sd	a6,120(sp)
    800032b4:	09113023          	sd	a7,128(sp)
    800032b8:	09213423          	sd	s2,136(sp)
    800032bc:	09313823          	sd	s3,144(sp)
    800032c0:	09413c23          	sd	s4,152(sp)
    800032c4:	0b513023          	sd	s5,160(sp)
    800032c8:	0b613423          	sd	s6,168(sp)
    800032cc:	0b713823          	sd	s7,176(sp)
    800032d0:	0b813c23          	sd	s8,184(sp)
    800032d4:	0d913023          	sd	s9,192(sp)
    800032d8:	0da13423          	sd	s10,200(sp)
    800032dc:	0db13823          	sd	s11,208(sp)
    800032e0:	0dc13c23          	sd	t3,216(sp)
    800032e4:	0fd13023          	sd	t4,224(sp)
    800032e8:	0fe13423          	sd	t5,232(sp)
    800032ec:	0ff13823          	sd	t6,240(sp)
    800032f0:	cc9ff0ef          	jal	ra,80002fb8 <kerneltrap>
    800032f4:	00013083          	ld	ra,0(sp)
    800032f8:	00813103          	ld	sp,8(sp)
    800032fc:	01013183          	ld	gp,16(sp)
    80003300:	02013283          	ld	t0,32(sp)
    80003304:	02813303          	ld	t1,40(sp)
    80003308:	03013383          	ld	t2,48(sp)
    8000330c:	03813403          	ld	s0,56(sp)
    80003310:	04013483          	ld	s1,64(sp)
    80003314:	04813503          	ld	a0,72(sp)
    80003318:	05013583          	ld	a1,80(sp)
    8000331c:	05813603          	ld	a2,88(sp)
    80003320:	06013683          	ld	a3,96(sp)
    80003324:	06813703          	ld	a4,104(sp)
    80003328:	07013783          	ld	a5,112(sp)
    8000332c:	07813803          	ld	a6,120(sp)
    80003330:	08013883          	ld	a7,128(sp)
    80003334:	08813903          	ld	s2,136(sp)
    80003338:	09013983          	ld	s3,144(sp)
    8000333c:	09813a03          	ld	s4,152(sp)
    80003340:	0a013a83          	ld	s5,160(sp)
    80003344:	0a813b03          	ld	s6,168(sp)
    80003348:	0b013b83          	ld	s7,176(sp)
    8000334c:	0b813c03          	ld	s8,184(sp)
    80003350:	0c013c83          	ld	s9,192(sp)
    80003354:	0c813d03          	ld	s10,200(sp)
    80003358:	0d013d83          	ld	s11,208(sp)
    8000335c:	0d813e03          	ld	t3,216(sp)
    80003360:	0e013e83          	ld	t4,224(sp)
    80003364:	0e813f03          	ld	t5,232(sp)
    80003368:	0f013f83          	ld	t6,240(sp)
    8000336c:	10010113          	addi	sp,sp,256
    80003370:	10200073          	sret
    80003374:	00000013          	nop
    80003378:	00000013          	nop
    8000337c:	00000013          	nop

0000000080003380 <timervec>:
    80003380:	34051573          	csrrw	a0,mscratch,a0
    80003384:	00b53023          	sd	a1,0(a0)
    80003388:	00c53423          	sd	a2,8(a0)
    8000338c:	00d53823          	sd	a3,16(a0)
    80003390:	01853583          	ld	a1,24(a0)
    80003394:	02053603          	ld	a2,32(a0)
    80003398:	0005b683          	ld	a3,0(a1)
    8000339c:	00c686b3          	add	a3,a3,a2
    800033a0:	00d5b023          	sd	a3,0(a1)
    800033a4:	00200593          	li	a1,2
    800033a8:	14459073          	csrw	sip,a1
    800033ac:	01053683          	ld	a3,16(a0)
    800033b0:	00853603          	ld	a2,8(a0)
    800033b4:	00053583          	ld	a1,0(a0)
    800033b8:	34051573          	csrrw	a0,mscratch,a0
    800033bc:	30200073          	mret

00000000800033c0 <plicinit>:
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	0c0007b7          	lui	a5,0xc000
    800033d4:	00100713          	li	a4,1
    800033d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800033dc:	00e7a223          	sw	a4,4(a5)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <plicinithart>:
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00813023          	sd	s0,0(sp)
    800033f0:	00113423          	sd	ra,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	a40080e7          	jalr	-1472(ra) # 80002e38 <cpuid>
    80003400:	0085171b          	slliw	a4,a0,0x8
    80003404:	0c0027b7          	lui	a5,0xc002
    80003408:	00e787b3          	add	a5,a5,a4
    8000340c:	40200713          	li	a4,1026
    80003410:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003414:	00813083          	ld	ra,8(sp)
    80003418:	00013403          	ld	s0,0(sp)
    8000341c:	00d5151b          	slliw	a0,a0,0xd
    80003420:	0c2017b7          	lui	a5,0xc201
    80003424:	00a78533          	add	a0,a5,a0
    80003428:	00052023          	sw	zero,0(a0)
    8000342c:	01010113          	addi	sp,sp,16
    80003430:	00008067          	ret

0000000080003434 <plic_claim>:
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00813023          	sd	s0,0(sp)
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	01010413          	addi	s0,sp,16
    80003444:	00000097          	auipc	ra,0x0
    80003448:	9f4080e7          	jalr	-1548(ra) # 80002e38 <cpuid>
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	00d5151b          	slliw	a0,a0,0xd
    80003458:	0c2017b7          	lui	a5,0xc201
    8000345c:	00a78533          	add	a0,a5,a0
    80003460:	00452503          	lw	a0,4(a0)
    80003464:	01010113          	addi	sp,sp,16
    80003468:	00008067          	ret

000000008000346c <plic_complete>:
    8000346c:	fe010113          	addi	sp,sp,-32
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	00113c23          	sd	ra,24(sp)
    8000347c:	02010413          	addi	s0,sp,32
    80003480:	00050493          	mv	s1,a0
    80003484:	00000097          	auipc	ra,0x0
    80003488:	9b4080e7          	jalr	-1612(ra) # 80002e38 <cpuid>
    8000348c:	01813083          	ld	ra,24(sp)
    80003490:	01013403          	ld	s0,16(sp)
    80003494:	00d5179b          	slliw	a5,a0,0xd
    80003498:	0c201737          	lui	a4,0xc201
    8000349c:	00f707b3          	add	a5,a4,a5
    800034a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret

00000000800034b0 <consolewrite>:
    800034b0:	fb010113          	addi	sp,sp,-80
    800034b4:	04813023          	sd	s0,64(sp)
    800034b8:	04113423          	sd	ra,72(sp)
    800034bc:	02913c23          	sd	s1,56(sp)
    800034c0:	03213823          	sd	s2,48(sp)
    800034c4:	03313423          	sd	s3,40(sp)
    800034c8:	03413023          	sd	s4,32(sp)
    800034cc:	01513c23          	sd	s5,24(sp)
    800034d0:	05010413          	addi	s0,sp,80
    800034d4:	06c05c63          	blez	a2,8000354c <consolewrite+0x9c>
    800034d8:	00060993          	mv	s3,a2
    800034dc:	00050a13          	mv	s4,a0
    800034e0:	00058493          	mv	s1,a1
    800034e4:	00000913          	li	s2,0
    800034e8:	fff00a93          	li	s5,-1
    800034ec:	01c0006f          	j	80003508 <consolewrite+0x58>
    800034f0:	fbf44503          	lbu	a0,-65(s0)
    800034f4:	0019091b          	addiw	s2,s2,1
    800034f8:	00148493          	addi	s1,s1,1
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	a9c080e7          	jalr	-1380(ra) # 80003f98 <uartputc>
    80003504:	03298063          	beq	s3,s2,80003524 <consolewrite+0x74>
    80003508:	00048613          	mv	a2,s1
    8000350c:	00100693          	li	a3,1
    80003510:	000a0593          	mv	a1,s4
    80003514:	fbf40513          	addi	a0,s0,-65
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	9d8080e7          	jalr	-1576(ra) # 80002ef0 <either_copyin>
    80003520:	fd5518e3          	bne	a0,s5,800034f0 <consolewrite+0x40>
    80003524:	04813083          	ld	ra,72(sp)
    80003528:	04013403          	ld	s0,64(sp)
    8000352c:	03813483          	ld	s1,56(sp)
    80003530:	02813983          	ld	s3,40(sp)
    80003534:	02013a03          	ld	s4,32(sp)
    80003538:	01813a83          	ld	s5,24(sp)
    8000353c:	00090513          	mv	a0,s2
    80003540:	03013903          	ld	s2,48(sp)
    80003544:	05010113          	addi	sp,sp,80
    80003548:	00008067          	ret
    8000354c:	00000913          	li	s2,0
    80003550:	fd5ff06f          	j	80003524 <consolewrite+0x74>

0000000080003554 <consoleread>:
    80003554:	f9010113          	addi	sp,sp,-112
    80003558:	06813023          	sd	s0,96(sp)
    8000355c:	04913c23          	sd	s1,88(sp)
    80003560:	05213823          	sd	s2,80(sp)
    80003564:	05313423          	sd	s3,72(sp)
    80003568:	05413023          	sd	s4,64(sp)
    8000356c:	03513c23          	sd	s5,56(sp)
    80003570:	03613823          	sd	s6,48(sp)
    80003574:	03713423          	sd	s7,40(sp)
    80003578:	03813023          	sd	s8,32(sp)
    8000357c:	06113423          	sd	ra,104(sp)
    80003580:	01913c23          	sd	s9,24(sp)
    80003584:	07010413          	addi	s0,sp,112
    80003588:	00060b93          	mv	s7,a2
    8000358c:	00050913          	mv	s2,a0
    80003590:	00058c13          	mv	s8,a1
    80003594:	00060b1b          	sext.w	s6,a2
    80003598:	00004497          	auipc	s1,0x4
    8000359c:	c4048493          	addi	s1,s1,-960 # 800071d8 <cons>
    800035a0:	00400993          	li	s3,4
    800035a4:	fff00a13          	li	s4,-1
    800035a8:	00a00a93          	li	s5,10
    800035ac:	05705e63          	blez	s7,80003608 <consoleread+0xb4>
    800035b0:	09c4a703          	lw	a4,156(s1)
    800035b4:	0984a783          	lw	a5,152(s1)
    800035b8:	0007071b          	sext.w	a4,a4
    800035bc:	08e78463          	beq	a5,a4,80003644 <consoleread+0xf0>
    800035c0:	07f7f713          	andi	a4,a5,127
    800035c4:	00e48733          	add	a4,s1,a4
    800035c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800035cc:	0017869b          	addiw	a3,a5,1
    800035d0:	08d4ac23          	sw	a3,152(s1)
    800035d4:	00070c9b          	sext.w	s9,a4
    800035d8:	0b370663          	beq	a4,s3,80003684 <consoleread+0x130>
    800035dc:	00100693          	li	a3,1
    800035e0:	f9f40613          	addi	a2,s0,-97
    800035e4:	000c0593          	mv	a1,s8
    800035e8:	00090513          	mv	a0,s2
    800035ec:	f8e40fa3          	sb	a4,-97(s0)
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	8b4080e7          	jalr	-1868(ra) # 80002ea4 <either_copyout>
    800035f8:	01450863          	beq	a0,s4,80003608 <consoleread+0xb4>
    800035fc:	001c0c13          	addi	s8,s8,1
    80003600:	fffb8b9b          	addiw	s7,s7,-1
    80003604:	fb5c94e3          	bne	s9,s5,800035ac <consoleread+0x58>
    80003608:	000b851b          	sext.w	a0,s7
    8000360c:	06813083          	ld	ra,104(sp)
    80003610:	06013403          	ld	s0,96(sp)
    80003614:	05813483          	ld	s1,88(sp)
    80003618:	05013903          	ld	s2,80(sp)
    8000361c:	04813983          	ld	s3,72(sp)
    80003620:	04013a03          	ld	s4,64(sp)
    80003624:	03813a83          	ld	s5,56(sp)
    80003628:	02813b83          	ld	s7,40(sp)
    8000362c:	02013c03          	ld	s8,32(sp)
    80003630:	01813c83          	ld	s9,24(sp)
    80003634:	40ab053b          	subw	a0,s6,a0
    80003638:	03013b03          	ld	s6,48(sp)
    8000363c:	07010113          	addi	sp,sp,112
    80003640:	00008067          	ret
    80003644:	00001097          	auipc	ra,0x1
    80003648:	1d8080e7          	jalr	472(ra) # 8000481c <push_on>
    8000364c:	0984a703          	lw	a4,152(s1)
    80003650:	09c4a783          	lw	a5,156(s1)
    80003654:	0007879b          	sext.w	a5,a5
    80003658:	fef70ce3          	beq	a4,a5,80003650 <consoleread+0xfc>
    8000365c:	00001097          	auipc	ra,0x1
    80003660:	234080e7          	jalr	564(ra) # 80004890 <pop_on>
    80003664:	0984a783          	lw	a5,152(s1)
    80003668:	07f7f713          	andi	a4,a5,127
    8000366c:	00e48733          	add	a4,s1,a4
    80003670:	01874703          	lbu	a4,24(a4)
    80003674:	0017869b          	addiw	a3,a5,1
    80003678:	08d4ac23          	sw	a3,152(s1)
    8000367c:	00070c9b          	sext.w	s9,a4
    80003680:	f5371ee3          	bne	a4,s3,800035dc <consoleread+0x88>
    80003684:	000b851b          	sext.w	a0,s7
    80003688:	f96bf2e3          	bgeu	s7,s6,8000360c <consoleread+0xb8>
    8000368c:	08f4ac23          	sw	a5,152(s1)
    80003690:	f7dff06f          	j	8000360c <consoleread+0xb8>

0000000080003694 <consputc>:
    80003694:	10000793          	li	a5,256
    80003698:	00f50663          	beq	a0,a5,800036a4 <consputc+0x10>
    8000369c:	00001317          	auipc	t1,0x1
    800036a0:	9f430067          	jr	-1548(t1) # 80004090 <uartputc_sync>
    800036a4:	ff010113          	addi	sp,sp,-16
    800036a8:	00113423          	sd	ra,8(sp)
    800036ac:	00813023          	sd	s0,0(sp)
    800036b0:	01010413          	addi	s0,sp,16
    800036b4:	00800513          	li	a0,8
    800036b8:	00001097          	auipc	ra,0x1
    800036bc:	9d8080e7          	jalr	-1576(ra) # 80004090 <uartputc_sync>
    800036c0:	02000513          	li	a0,32
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	9cc080e7          	jalr	-1588(ra) # 80004090 <uartputc_sync>
    800036cc:	00013403          	ld	s0,0(sp)
    800036d0:	00813083          	ld	ra,8(sp)
    800036d4:	00800513          	li	a0,8
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00001317          	auipc	t1,0x1
    800036e0:	9b430067          	jr	-1612(t1) # 80004090 <uartputc_sync>

00000000800036e4 <consoleintr>:
    800036e4:	fe010113          	addi	sp,sp,-32
    800036e8:	00813823          	sd	s0,16(sp)
    800036ec:	00913423          	sd	s1,8(sp)
    800036f0:	01213023          	sd	s2,0(sp)
    800036f4:	00113c23          	sd	ra,24(sp)
    800036f8:	02010413          	addi	s0,sp,32
    800036fc:	00004917          	auipc	s2,0x4
    80003700:	adc90913          	addi	s2,s2,-1316 # 800071d8 <cons>
    80003704:	00050493          	mv	s1,a0
    80003708:	00090513          	mv	a0,s2
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	e40080e7          	jalr	-448(ra) # 8000454c <acquire>
    80003714:	02048c63          	beqz	s1,8000374c <consoleintr+0x68>
    80003718:	0a092783          	lw	a5,160(s2)
    8000371c:	09892703          	lw	a4,152(s2)
    80003720:	07f00693          	li	a3,127
    80003724:	40e7873b          	subw	a4,a5,a4
    80003728:	02e6e263          	bltu	a3,a4,8000374c <consoleintr+0x68>
    8000372c:	00d00713          	li	a4,13
    80003730:	04e48063          	beq	s1,a4,80003770 <consoleintr+0x8c>
    80003734:	07f7f713          	andi	a4,a5,127
    80003738:	00e90733          	add	a4,s2,a4
    8000373c:	0017879b          	addiw	a5,a5,1
    80003740:	0af92023          	sw	a5,160(s2)
    80003744:	00970c23          	sb	s1,24(a4)
    80003748:	08f92e23          	sw	a5,156(s2)
    8000374c:	01013403          	ld	s0,16(sp)
    80003750:	01813083          	ld	ra,24(sp)
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	00013903          	ld	s2,0(sp)
    8000375c:	00004517          	auipc	a0,0x4
    80003760:	a7c50513          	addi	a0,a0,-1412 # 800071d8 <cons>
    80003764:	02010113          	addi	sp,sp,32
    80003768:	00001317          	auipc	t1,0x1
    8000376c:	eb030067          	jr	-336(t1) # 80004618 <release>
    80003770:	00a00493          	li	s1,10
    80003774:	fc1ff06f          	j	80003734 <consoleintr+0x50>

0000000080003778 <consoleinit>:
    80003778:	fe010113          	addi	sp,sp,-32
    8000377c:	00113c23          	sd	ra,24(sp)
    80003780:	00813823          	sd	s0,16(sp)
    80003784:	00913423          	sd	s1,8(sp)
    80003788:	02010413          	addi	s0,sp,32
    8000378c:	00004497          	auipc	s1,0x4
    80003790:	a4c48493          	addi	s1,s1,-1460 # 800071d8 <cons>
    80003794:	00048513          	mv	a0,s1
    80003798:	00002597          	auipc	a1,0x2
    8000379c:	b3058593          	addi	a1,a1,-1232 # 800052c8 <_ZZ12printIntegermE6digits+0x138>
    800037a0:	00001097          	auipc	ra,0x1
    800037a4:	d88080e7          	jalr	-632(ra) # 80004528 <initlock>
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	7ac080e7          	jalr	1964(ra) # 80003f54 <uartinit>
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00000797          	auipc	a5,0x0
    800037bc:	d9c78793          	addi	a5,a5,-612 # 80003554 <consoleread>
    800037c0:	0af4bc23          	sd	a5,184(s1)
    800037c4:	00000797          	auipc	a5,0x0
    800037c8:	cec78793          	addi	a5,a5,-788 # 800034b0 <consolewrite>
    800037cc:	0cf4b023          	sd	a5,192(s1)
    800037d0:	00813483          	ld	s1,8(sp)
    800037d4:	02010113          	addi	sp,sp,32
    800037d8:	00008067          	ret

00000000800037dc <console_read>:
    800037dc:	ff010113          	addi	sp,sp,-16
    800037e0:	00813423          	sd	s0,8(sp)
    800037e4:	01010413          	addi	s0,sp,16
    800037e8:	00813403          	ld	s0,8(sp)
    800037ec:	00004317          	auipc	t1,0x4
    800037f0:	aa433303          	ld	t1,-1372(t1) # 80007290 <devsw+0x10>
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00030067          	jr	t1

00000000800037fc <console_write>:
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00813423          	sd	s0,8(sp)
    80003804:	01010413          	addi	s0,sp,16
    80003808:	00813403          	ld	s0,8(sp)
    8000380c:	00004317          	auipc	t1,0x4
    80003810:	a8c33303          	ld	t1,-1396(t1) # 80007298 <devsw+0x18>
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00030067          	jr	t1

000000008000381c <panic>:
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00113c23          	sd	ra,24(sp)
    80003824:	00813823          	sd	s0,16(sp)
    80003828:	00913423          	sd	s1,8(sp)
    8000382c:	02010413          	addi	s0,sp,32
    80003830:	00050493          	mv	s1,a0
    80003834:	00002517          	auipc	a0,0x2
    80003838:	a9c50513          	addi	a0,a0,-1380 # 800052d0 <_ZZ12printIntegermE6digits+0x140>
    8000383c:	00004797          	auipc	a5,0x4
    80003840:	ae07ae23          	sw	zero,-1284(a5) # 80007338 <pr+0x18>
    80003844:	00000097          	auipc	ra,0x0
    80003848:	034080e7          	jalr	52(ra) # 80003878 <__printf>
    8000384c:	00048513          	mv	a0,s1
    80003850:	00000097          	auipc	ra,0x0
    80003854:	028080e7          	jalr	40(ra) # 80003878 <__printf>
    80003858:	00002517          	auipc	a0,0x2
    8000385c:	89850513          	addi	a0,a0,-1896 # 800050f0 <CONSOLE_STATUS+0xe0>
    80003860:	00000097          	auipc	ra,0x0
    80003864:	018080e7          	jalr	24(ra) # 80003878 <__printf>
    80003868:	00100793          	li	a5,1
    8000386c:	00003717          	auipc	a4,0x3
    80003870:	82f72e23          	sw	a5,-1988(a4) # 800060a8 <panicked>
    80003874:	0000006f          	j	80003874 <panic+0x58>

0000000080003878 <__printf>:
    80003878:	f3010113          	addi	sp,sp,-208
    8000387c:	08813023          	sd	s0,128(sp)
    80003880:	07313423          	sd	s3,104(sp)
    80003884:	09010413          	addi	s0,sp,144
    80003888:	05813023          	sd	s8,64(sp)
    8000388c:	08113423          	sd	ra,136(sp)
    80003890:	06913c23          	sd	s1,120(sp)
    80003894:	07213823          	sd	s2,112(sp)
    80003898:	07413023          	sd	s4,96(sp)
    8000389c:	05513c23          	sd	s5,88(sp)
    800038a0:	05613823          	sd	s6,80(sp)
    800038a4:	05713423          	sd	s7,72(sp)
    800038a8:	03913c23          	sd	s9,56(sp)
    800038ac:	03a13823          	sd	s10,48(sp)
    800038b0:	03b13423          	sd	s11,40(sp)
    800038b4:	00004317          	auipc	t1,0x4
    800038b8:	a6c30313          	addi	t1,t1,-1428 # 80007320 <pr>
    800038bc:	01832c03          	lw	s8,24(t1)
    800038c0:	00b43423          	sd	a1,8(s0)
    800038c4:	00c43823          	sd	a2,16(s0)
    800038c8:	00d43c23          	sd	a3,24(s0)
    800038cc:	02e43023          	sd	a4,32(s0)
    800038d0:	02f43423          	sd	a5,40(s0)
    800038d4:	03043823          	sd	a6,48(s0)
    800038d8:	03143c23          	sd	a7,56(s0)
    800038dc:	00050993          	mv	s3,a0
    800038e0:	4a0c1663          	bnez	s8,80003d8c <__printf+0x514>
    800038e4:	60098c63          	beqz	s3,80003efc <__printf+0x684>
    800038e8:	0009c503          	lbu	a0,0(s3)
    800038ec:	00840793          	addi	a5,s0,8
    800038f0:	f6f43c23          	sd	a5,-136(s0)
    800038f4:	00000493          	li	s1,0
    800038f8:	22050063          	beqz	a0,80003b18 <__printf+0x2a0>
    800038fc:	00002a37          	lui	s4,0x2
    80003900:	00018ab7          	lui	s5,0x18
    80003904:	000f4b37          	lui	s6,0xf4
    80003908:	00989bb7          	lui	s7,0x989
    8000390c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003910:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003914:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003918:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000391c:	00148c9b          	addiw	s9,s1,1
    80003920:	02500793          	li	a5,37
    80003924:	01998933          	add	s2,s3,s9
    80003928:	38f51263          	bne	a0,a5,80003cac <__printf+0x434>
    8000392c:	00094783          	lbu	a5,0(s2)
    80003930:	00078c9b          	sext.w	s9,a5
    80003934:	1e078263          	beqz	a5,80003b18 <__printf+0x2a0>
    80003938:	0024849b          	addiw	s1,s1,2
    8000393c:	07000713          	li	a4,112
    80003940:	00998933          	add	s2,s3,s1
    80003944:	38e78a63          	beq	a5,a4,80003cd8 <__printf+0x460>
    80003948:	20f76863          	bltu	a4,a5,80003b58 <__printf+0x2e0>
    8000394c:	42a78863          	beq	a5,a0,80003d7c <__printf+0x504>
    80003950:	06400713          	li	a4,100
    80003954:	40e79663          	bne	a5,a4,80003d60 <__printf+0x4e8>
    80003958:	f7843783          	ld	a5,-136(s0)
    8000395c:	0007a603          	lw	a2,0(a5)
    80003960:	00878793          	addi	a5,a5,8
    80003964:	f6f43c23          	sd	a5,-136(s0)
    80003968:	42064a63          	bltz	a2,80003d9c <__printf+0x524>
    8000396c:	00a00713          	li	a4,10
    80003970:	02e677bb          	remuw	a5,a2,a4
    80003974:	00002d97          	auipc	s11,0x2
    80003978:	984d8d93          	addi	s11,s11,-1660 # 800052f8 <digits>
    8000397c:	00900593          	li	a1,9
    80003980:	0006051b          	sext.w	a0,a2
    80003984:	00000c93          	li	s9,0
    80003988:	02079793          	slli	a5,a5,0x20
    8000398c:	0207d793          	srli	a5,a5,0x20
    80003990:	00fd87b3          	add	a5,s11,a5
    80003994:	0007c783          	lbu	a5,0(a5)
    80003998:	02e656bb          	divuw	a3,a2,a4
    8000399c:	f8f40023          	sb	a5,-128(s0)
    800039a0:	14c5d863          	bge	a1,a2,80003af0 <__printf+0x278>
    800039a4:	06300593          	li	a1,99
    800039a8:	00100c93          	li	s9,1
    800039ac:	02e6f7bb          	remuw	a5,a3,a4
    800039b0:	02079793          	slli	a5,a5,0x20
    800039b4:	0207d793          	srli	a5,a5,0x20
    800039b8:	00fd87b3          	add	a5,s11,a5
    800039bc:	0007c783          	lbu	a5,0(a5)
    800039c0:	02e6d73b          	divuw	a4,a3,a4
    800039c4:	f8f400a3          	sb	a5,-127(s0)
    800039c8:	12a5f463          	bgeu	a1,a0,80003af0 <__printf+0x278>
    800039cc:	00a00693          	li	a3,10
    800039d0:	00900593          	li	a1,9
    800039d4:	02d777bb          	remuw	a5,a4,a3
    800039d8:	02079793          	slli	a5,a5,0x20
    800039dc:	0207d793          	srli	a5,a5,0x20
    800039e0:	00fd87b3          	add	a5,s11,a5
    800039e4:	0007c503          	lbu	a0,0(a5)
    800039e8:	02d757bb          	divuw	a5,a4,a3
    800039ec:	f8a40123          	sb	a0,-126(s0)
    800039f0:	48e5f263          	bgeu	a1,a4,80003e74 <__printf+0x5fc>
    800039f4:	06300513          	li	a0,99
    800039f8:	02d7f5bb          	remuw	a1,a5,a3
    800039fc:	02059593          	slli	a1,a1,0x20
    80003a00:	0205d593          	srli	a1,a1,0x20
    80003a04:	00bd85b3          	add	a1,s11,a1
    80003a08:	0005c583          	lbu	a1,0(a1)
    80003a0c:	02d7d7bb          	divuw	a5,a5,a3
    80003a10:	f8b401a3          	sb	a1,-125(s0)
    80003a14:	48e57263          	bgeu	a0,a4,80003e98 <__printf+0x620>
    80003a18:	3e700513          	li	a0,999
    80003a1c:	02d7f5bb          	remuw	a1,a5,a3
    80003a20:	02059593          	slli	a1,a1,0x20
    80003a24:	0205d593          	srli	a1,a1,0x20
    80003a28:	00bd85b3          	add	a1,s11,a1
    80003a2c:	0005c583          	lbu	a1,0(a1)
    80003a30:	02d7d7bb          	divuw	a5,a5,a3
    80003a34:	f8b40223          	sb	a1,-124(s0)
    80003a38:	46e57663          	bgeu	a0,a4,80003ea4 <__printf+0x62c>
    80003a3c:	02d7f5bb          	remuw	a1,a5,a3
    80003a40:	02059593          	slli	a1,a1,0x20
    80003a44:	0205d593          	srli	a1,a1,0x20
    80003a48:	00bd85b3          	add	a1,s11,a1
    80003a4c:	0005c583          	lbu	a1,0(a1)
    80003a50:	02d7d7bb          	divuw	a5,a5,a3
    80003a54:	f8b402a3          	sb	a1,-123(s0)
    80003a58:	46ea7863          	bgeu	s4,a4,80003ec8 <__printf+0x650>
    80003a5c:	02d7f5bb          	remuw	a1,a5,a3
    80003a60:	02059593          	slli	a1,a1,0x20
    80003a64:	0205d593          	srli	a1,a1,0x20
    80003a68:	00bd85b3          	add	a1,s11,a1
    80003a6c:	0005c583          	lbu	a1,0(a1)
    80003a70:	02d7d7bb          	divuw	a5,a5,a3
    80003a74:	f8b40323          	sb	a1,-122(s0)
    80003a78:	3eeaf863          	bgeu	s5,a4,80003e68 <__printf+0x5f0>
    80003a7c:	02d7f5bb          	remuw	a1,a5,a3
    80003a80:	02059593          	slli	a1,a1,0x20
    80003a84:	0205d593          	srli	a1,a1,0x20
    80003a88:	00bd85b3          	add	a1,s11,a1
    80003a8c:	0005c583          	lbu	a1,0(a1)
    80003a90:	02d7d7bb          	divuw	a5,a5,a3
    80003a94:	f8b403a3          	sb	a1,-121(s0)
    80003a98:	42eb7e63          	bgeu	s6,a4,80003ed4 <__printf+0x65c>
    80003a9c:	02d7f5bb          	remuw	a1,a5,a3
    80003aa0:	02059593          	slli	a1,a1,0x20
    80003aa4:	0205d593          	srli	a1,a1,0x20
    80003aa8:	00bd85b3          	add	a1,s11,a1
    80003aac:	0005c583          	lbu	a1,0(a1)
    80003ab0:	02d7d7bb          	divuw	a5,a5,a3
    80003ab4:	f8b40423          	sb	a1,-120(s0)
    80003ab8:	42ebfc63          	bgeu	s7,a4,80003ef0 <__printf+0x678>
    80003abc:	02079793          	slli	a5,a5,0x20
    80003ac0:	0207d793          	srli	a5,a5,0x20
    80003ac4:	00fd8db3          	add	s11,s11,a5
    80003ac8:	000dc703          	lbu	a4,0(s11)
    80003acc:	00a00793          	li	a5,10
    80003ad0:	00900c93          	li	s9,9
    80003ad4:	f8e404a3          	sb	a4,-119(s0)
    80003ad8:	00065c63          	bgez	a2,80003af0 <__printf+0x278>
    80003adc:	f9040713          	addi	a4,s0,-112
    80003ae0:	00f70733          	add	a4,a4,a5
    80003ae4:	02d00693          	li	a3,45
    80003ae8:	fed70823          	sb	a3,-16(a4)
    80003aec:	00078c93          	mv	s9,a5
    80003af0:	f8040793          	addi	a5,s0,-128
    80003af4:	01978cb3          	add	s9,a5,s9
    80003af8:	f7f40d13          	addi	s10,s0,-129
    80003afc:	000cc503          	lbu	a0,0(s9)
    80003b00:	fffc8c93          	addi	s9,s9,-1
    80003b04:	00000097          	auipc	ra,0x0
    80003b08:	b90080e7          	jalr	-1136(ra) # 80003694 <consputc>
    80003b0c:	ffac98e3          	bne	s9,s10,80003afc <__printf+0x284>
    80003b10:	00094503          	lbu	a0,0(s2)
    80003b14:	e00514e3          	bnez	a0,8000391c <__printf+0xa4>
    80003b18:	1a0c1663          	bnez	s8,80003cc4 <__printf+0x44c>
    80003b1c:	08813083          	ld	ra,136(sp)
    80003b20:	08013403          	ld	s0,128(sp)
    80003b24:	07813483          	ld	s1,120(sp)
    80003b28:	07013903          	ld	s2,112(sp)
    80003b2c:	06813983          	ld	s3,104(sp)
    80003b30:	06013a03          	ld	s4,96(sp)
    80003b34:	05813a83          	ld	s5,88(sp)
    80003b38:	05013b03          	ld	s6,80(sp)
    80003b3c:	04813b83          	ld	s7,72(sp)
    80003b40:	04013c03          	ld	s8,64(sp)
    80003b44:	03813c83          	ld	s9,56(sp)
    80003b48:	03013d03          	ld	s10,48(sp)
    80003b4c:	02813d83          	ld	s11,40(sp)
    80003b50:	0d010113          	addi	sp,sp,208
    80003b54:	00008067          	ret
    80003b58:	07300713          	li	a4,115
    80003b5c:	1ce78a63          	beq	a5,a4,80003d30 <__printf+0x4b8>
    80003b60:	07800713          	li	a4,120
    80003b64:	1ee79e63          	bne	a5,a4,80003d60 <__printf+0x4e8>
    80003b68:	f7843783          	ld	a5,-136(s0)
    80003b6c:	0007a703          	lw	a4,0(a5)
    80003b70:	00878793          	addi	a5,a5,8
    80003b74:	f6f43c23          	sd	a5,-136(s0)
    80003b78:	28074263          	bltz	a4,80003dfc <__printf+0x584>
    80003b7c:	00001d97          	auipc	s11,0x1
    80003b80:	77cd8d93          	addi	s11,s11,1916 # 800052f8 <digits>
    80003b84:	00f77793          	andi	a5,a4,15
    80003b88:	00fd87b3          	add	a5,s11,a5
    80003b8c:	0007c683          	lbu	a3,0(a5)
    80003b90:	00f00613          	li	a2,15
    80003b94:	0007079b          	sext.w	a5,a4
    80003b98:	f8d40023          	sb	a3,-128(s0)
    80003b9c:	0047559b          	srliw	a1,a4,0x4
    80003ba0:	0047569b          	srliw	a3,a4,0x4
    80003ba4:	00000c93          	li	s9,0
    80003ba8:	0ee65063          	bge	a2,a4,80003c88 <__printf+0x410>
    80003bac:	00f6f693          	andi	a3,a3,15
    80003bb0:	00dd86b3          	add	a3,s11,a3
    80003bb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003bb8:	0087d79b          	srliw	a5,a5,0x8
    80003bbc:	00100c93          	li	s9,1
    80003bc0:	f8d400a3          	sb	a3,-127(s0)
    80003bc4:	0cb67263          	bgeu	a2,a1,80003c88 <__printf+0x410>
    80003bc8:	00f7f693          	andi	a3,a5,15
    80003bcc:	00dd86b3          	add	a3,s11,a3
    80003bd0:	0006c583          	lbu	a1,0(a3)
    80003bd4:	00f00613          	li	a2,15
    80003bd8:	0047d69b          	srliw	a3,a5,0x4
    80003bdc:	f8b40123          	sb	a1,-126(s0)
    80003be0:	0047d593          	srli	a1,a5,0x4
    80003be4:	28f67e63          	bgeu	a2,a5,80003e80 <__printf+0x608>
    80003be8:	00f6f693          	andi	a3,a3,15
    80003bec:	00dd86b3          	add	a3,s11,a3
    80003bf0:	0006c503          	lbu	a0,0(a3)
    80003bf4:	0087d813          	srli	a6,a5,0x8
    80003bf8:	0087d69b          	srliw	a3,a5,0x8
    80003bfc:	f8a401a3          	sb	a0,-125(s0)
    80003c00:	28b67663          	bgeu	a2,a1,80003e8c <__printf+0x614>
    80003c04:	00f6f693          	andi	a3,a3,15
    80003c08:	00dd86b3          	add	a3,s11,a3
    80003c0c:	0006c583          	lbu	a1,0(a3)
    80003c10:	00c7d513          	srli	a0,a5,0xc
    80003c14:	00c7d69b          	srliw	a3,a5,0xc
    80003c18:	f8b40223          	sb	a1,-124(s0)
    80003c1c:	29067a63          	bgeu	a2,a6,80003eb0 <__printf+0x638>
    80003c20:	00f6f693          	andi	a3,a3,15
    80003c24:	00dd86b3          	add	a3,s11,a3
    80003c28:	0006c583          	lbu	a1,0(a3)
    80003c2c:	0107d813          	srli	a6,a5,0x10
    80003c30:	0107d69b          	srliw	a3,a5,0x10
    80003c34:	f8b402a3          	sb	a1,-123(s0)
    80003c38:	28a67263          	bgeu	a2,a0,80003ebc <__printf+0x644>
    80003c3c:	00f6f693          	andi	a3,a3,15
    80003c40:	00dd86b3          	add	a3,s11,a3
    80003c44:	0006c683          	lbu	a3,0(a3)
    80003c48:	0147d79b          	srliw	a5,a5,0x14
    80003c4c:	f8d40323          	sb	a3,-122(s0)
    80003c50:	21067663          	bgeu	a2,a6,80003e5c <__printf+0x5e4>
    80003c54:	02079793          	slli	a5,a5,0x20
    80003c58:	0207d793          	srli	a5,a5,0x20
    80003c5c:	00fd8db3          	add	s11,s11,a5
    80003c60:	000dc683          	lbu	a3,0(s11)
    80003c64:	00800793          	li	a5,8
    80003c68:	00700c93          	li	s9,7
    80003c6c:	f8d403a3          	sb	a3,-121(s0)
    80003c70:	00075c63          	bgez	a4,80003c88 <__printf+0x410>
    80003c74:	f9040713          	addi	a4,s0,-112
    80003c78:	00f70733          	add	a4,a4,a5
    80003c7c:	02d00693          	li	a3,45
    80003c80:	fed70823          	sb	a3,-16(a4)
    80003c84:	00078c93          	mv	s9,a5
    80003c88:	f8040793          	addi	a5,s0,-128
    80003c8c:	01978cb3          	add	s9,a5,s9
    80003c90:	f7f40d13          	addi	s10,s0,-129
    80003c94:	000cc503          	lbu	a0,0(s9)
    80003c98:	fffc8c93          	addi	s9,s9,-1
    80003c9c:	00000097          	auipc	ra,0x0
    80003ca0:	9f8080e7          	jalr	-1544(ra) # 80003694 <consputc>
    80003ca4:	ff9d18e3          	bne	s10,s9,80003c94 <__printf+0x41c>
    80003ca8:	0100006f          	j	80003cb8 <__printf+0x440>
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	9e8080e7          	jalr	-1560(ra) # 80003694 <consputc>
    80003cb4:	000c8493          	mv	s1,s9
    80003cb8:	00094503          	lbu	a0,0(s2)
    80003cbc:	c60510e3          	bnez	a0,8000391c <__printf+0xa4>
    80003cc0:	e40c0ee3          	beqz	s8,80003b1c <__printf+0x2a4>
    80003cc4:	00003517          	auipc	a0,0x3
    80003cc8:	65c50513          	addi	a0,a0,1628 # 80007320 <pr>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	94c080e7          	jalr	-1716(ra) # 80004618 <release>
    80003cd4:	e49ff06f          	j	80003b1c <__printf+0x2a4>
    80003cd8:	f7843783          	ld	a5,-136(s0)
    80003cdc:	03000513          	li	a0,48
    80003ce0:	01000d13          	li	s10,16
    80003ce4:	00878713          	addi	a4,a5,8
    80003ce8:	0007bc83          	ld	s9,0(a5)
    80003cec:	f6e43c23          	sd	a4,-136(s0)
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	9a4080e7          	jalr	-1628(ra) # 80003694 <consputc>
    80003cf8:	07800513          	li	a0,120
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	998080e7          	jalr	-1640(ra) # 80003694 <consputc>
    80003d04:	00001d97          	auipc	s11,0x1
    80003d08:	5f4d8d93          	addi	s11,s11,1524 # 800052f8 <digits>
    80003d0c:	03ccd793          	srli	a5,s9,0x3c
    80003d10:	00fd87b3          	add	a5,s11,a5
    80003d14:	0007c503          	lbu	a0,0(a5)
    80003d18:	fffd0d1b          	addiw	s10,s10,-1
    80003d1c:	004c9c93          	slli	s9,s9,0x4
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	974080e7          	jalr	-1676(ra) # 80003694 <consputc>
    80003d28:	fe0d12e3          	bnez	s10,80003d0c <__printf+0x494>
    80003d2c:	f8dff06f          	j	80003cb8 <__printf+0x440>
    80003d30:	f7843783          	ld	a5,-136(s0)
    80003d34:	0007bc83          	ld	s9,0(a5)
    80003d38:	00878793          	addi	a5,a5,8
    80003d3c:	f6f43c23          	sd	a5,-136(s0)
    80003d40:	000c9a63          	bnez	s9,80003d54 <__printf+0x4dc>
    80003d44:	1080006f          	j	80003e4c <__printf+0x5d4>
    80003d48:	001c8c93          	addi	s9,s9,1
    80003d4c:	00000097          	auipc	ra,0x0
    80003d50:	948080e7          	jalr	-1720(ra) # 80003694 <consputc>
    80003d54:	000cc503          	lbu	a0,0(s9)
    80003d58:	fe0518e3          	bnez	a0,80003d48 <__printf+0x4d0>
    80003d5c:	f5dff06f          	j	80003cb8 <__printf+0x440>
    80003d60:	02500513          	li	a0,37
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	930080e7          	jalr	-1744(ra) # 80003694 <consputc>
    80003d6c:	000c8513          	mv	a0,s9
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	924080e7          	jalr	-1756(ra) # 80003694 <consputc>
    80003d78:	f41ff06f          	j	80003cb8 <__printf+0x440>
    80003d7c:	02500513          	li	a0,37
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	914080e7          	jalr	-1772(ra) # 80003694 <consputc>
    80003d88:	f31ff06f          	j	80003cb8 <__printf+0x440>
    80003d8c:	00030513          	mv	a0,t1
    80003d90:	00000097          	auipc	ra,0x0
    80003d94:	7bc080e7          	jalr	1980(ra) # 8000454c <acquire>
    80003d98:	b4dff06f          	j	800038e4 <__printf+0x6c>
    80003d9c:	40c0053b          	negw	a0,a2
    80003da0:	00a00713          	li	a4,10
    80003da4:	02e576bb          	remuw	a3,a0,a4
    80003da8:	00001d97          	auipc	s11,0x1
    80003dac:	550d8d93          	addi	s11,s11,1360 # 800052f8 <digits>
    80003db0:	ff700593          	li	a1,-9
    80003db4:	02069693          	slli	a3,a3,0x20
    80003db8:	0206d693          	srli	a3,a3,0x20
    80003dbc:	00dd86b3          	add	a3,s11,a3
    80003dc0:	0006c683          	lbu	a3,0(a3)
    80003dc4:	02e557bb          	divuw	a5,a0,a4
    80003dc8:	f8d40023          	sb	a3,-128(s0)
    80003dcc:	10b65e63          	bge	a2,a1,80003ee8 <__printf+0x670>
    80003dd0:	06300593          	li	a1,99
    80003dd4:	02e7f6bb          	remuw	a3,a5,a4
    80003dd8:	02069693          	slli	a3,a3,0x20
    80003ddc:	0206d693          	srli	a3,a3,0x20
    80003de0:	00dd86b3          	add	a3,s11,a3
    80003de4:	0006c683          	lbu	a3,0(a3)
    80003de8:	02e7d73b          	divuw	a4,a5,a4
    80003dec:	00200793          	li	a5,2
    80003df0:	f8d400a3          	sb	a3,-127(s0)
    80003df4:	bca5ece3          	bltu	a1,a0,800039cc <__printf+0x154>
    80003df8:	ce5ff06f          	j	80003adc <__printf+0x264>
    80003dfc:	40e007bb          	negw	a5,a4
    80003e00:	00001d97          	auipc	s11,0x1
    80003e04:	4f8d8d93          	addi	s11,s11,1272 # 800052f8 <digits>
    80003e08:	00f7f693          	andi	a3,a5,15
    80003e0c:	00dd86b3          	add	a3,s11,a3
    80003e10:	0006c583          	lbu	a1,0(a3)
    80003e14:	ff100613          	li	a2,-15
    80003e18:	0047d69b          	srliw	a3,a5,0x4
    80003e1c:	f8b40023          	sb	a1,-128(s0)
    80003e20:	0047d59b          	srliw	a1,a5,0x4
    80003e24:	0ac75e63          	bge	a4,a2,80003ee0 <__printf+0x668>
    80003e28:	00f6f693          	andi	a3,a3,15
    80003e2c:	00dd86b3          	add	a3,s11,a3
    80003e30:	0006c603          	lbu	a2,0(a3)
    80003e34:	00f00693          	li	a3,15
    80003e38:	0087d79b          	srliw	a5,a5,0x8
    80003e3c:	f8c400a3          	sb	a2,-127(s0)
    80003e40:	d8b6e4e3          	bltu	a3,a1,80003bc8 <__printf+0x350>
    80003e44:	00200793          	li	a5,2
    80003e48:	e2dff06f          	j	80003c74 <__printf+0x3fc>
    80003e4c:	00001c97          	auipc	s9,0x1
    80003e50:	48cc8c93          	addi	s9,s9,1164 # 800052d8 <_ZZ12printIntegermE6digits+0x148>
    80003e54:	02800513          	li	a0,40
    80003e58:	ef1ff06f          	j	80003d48 <__printf+0x4d0>
    80003e5c:	00700793          	li	a5,7
    80003e60:	00600c93          	li	s9,6
    80003e64:	e0dff06f          	j	80003c70 <__printf+0x3f8>
    80003e68:	00700793          	li	a5,7
    80003e6c:	00600c93          	li	s9,6
    80003e70:	c69ff06f          	j	80003ad8 <__printf+0x260>
    80003e74:	00300793          	li	a5,3
    80003e78:	00200c93          	li	s9,2
    80003e7c:	c5dff06f          	j	80003ad8 <__printf+0x260>
    80003e80:	00300793          	li	a5,3
    80003e84:	00200c93          	li	s9,2
    80003e88:	de9ff06f          	j	80003c70 <__printf+0x3f8>
    80003e8c:	00400793          	li	a5,4
    80003e90:	00300c93          	li	s9,3
    80003e94:	dddff06f          	j	80003c70 <__printf+0x3f8>
    80003e98:	00400793          	li	a5,4
    80003e9c:	00300c93          	li	s9,3
    80003ea0:	c39ff06f          	j	80003ad8 <__printf+0x260>
    80003ea4:	00500793          	li	a5,5
    80003ea8:	00400c93          	li	s9,4
    80003eac:	c2dff06f          	j	80003ad8 <__printf+0x260>
    80003eb0:	00500793          	li	a5,5
    80003eb4:	00400c93          	li	s9,4
    80003eb8:	db9ff06f          	j	80003c70 <__printf+0x3f8>
    80003ebc:	00600793          	li	a5,6
    80003ec0:	00500c93          	li	s9,5
    80003ec4:	dadff06f          	j	80003c70 <__printf+0x3f8>
    80003ec8:	00600793          	li	a5,6
    80003ecc:	00500c93          	li	s9,5
    80003ed0:	c09ff06f          	j	80003ad8 <__printf+0x260>
    80003ed4:	00800793          	li	a5,8
    80003ed8:	00700c93          	li	s9,7
    80003edc:	bfdff06f          	j	80003ad8 <__printf+0x260>
    80003ee0:	00100793          	li	a5,1
    80003ee4:	d91ff06f          	j	80003c74 <__printf+0x3fc>
    80003ee8:	00100793          	li	a5,1
    80003eec:	bf1ff06f          	j	80003adc <__printf+0x264>
    80003ef0:	00900793          	li	a5,9
    80003ef4:	00800c93          	li	s9,8
    80003ef8:	be1ff06f          	j	80003ad8 <__printf+0x260>
    80003efc:	00001517          	auipc	a0,0x1
    80003f00:	3e450513          	addi	a0,a0,996 # 800052e0 <_ZZ12printIntegermE6digits+0x150>
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	918080e7          	jalr	-1768(ra) # 8000381c <panic>

0000000080003f0c <printfinit>:
    80003f0c:	fe010113          	addi	sp,sp,-32
    80003f10:	00813823          	sd	s0,16(sp)
    80003f14:	00913423          	sd	s1,8(sp)
    80003f18:	00113c23          	sd	ra,24(sp)
    80003f1c:	02010413          	addi	s0,sp,32
    80003f20:	00003497          	auipc	s1,0x3
    80003f24:	40048493          	addi	s1,s1,1024 # 80007320 <pr>
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	00001597          	auipc	a1,0x1
    80003f30:	3c458593          	addi	a1,a1,964 # 800052f0 <_ZZ12printIntegermE6digits+0x160>
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	5f4080e7          	jalr	1524(ra) # 80004528 <initlock>
    80003f3c:	01813083          	ld	ra,24(sp)
    80003f40:	01013403          	ld	s0,16(sp)
    80003f44:	0004ac23          	sw	zero,24(s1)
    80003f48:	00813483          	ld	s1,8(sp)
    80003f4c:	02010113          	addi	sp,sp,32
    80003f50:	00008067          	ret

0000000080003f54 <uartinit>:
    80003f54:	ff010113          	addi	sp,sp,-16
    80003f58:	00813423          	sd	s0,8(sp)
    80003f5c:	01010413          	addi	s0,sp,16
    80003f60:	100007b7          	lui	a5,0x10000
    80003f64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003f68:	f8000713          	li	a4,-128
    80003f6c:	00e781a3          	sb	a4,3(a5)
    80003f70:	00300713          	li	a4,3
    80003f74:	00e78023          	sb	a4,0(a5)
    80003f78:	000780a3          	sb	zero,1(a5)
    80003f7c:	00e781a3          	sb	a4,3(a5)
    80003f80:	00700693          	li	a3,7
    80003f84:	00d78123          	sb	a3,2(a5)
    80003f88:	00e780a3          	sb	a4,1(a5)
    80003f8c:	00813403          	ld	s0,8(sp)
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret

0000000080003f98 <uartputc>:
    80003f98:	00002797          	auipc	a5,0x2
    80003f9c:	1107a783          	lw	a5,272(a5) # 800060a8 <panicked>
    80003fa0:	00078463          	beqz	a5,80003fa8 <uartputc+0x10>
    80003fa4:	0000006f          	j	80003fa4 <uartputc+0xc>
    80003fa8:	fd010113          	addi	sp,sp,-48
    80003fac:	02813023          	sd	s0,32(sp)
    80003fb0:	00913c23          	sd	s1,24(sp)
    80003fb4:	01213823          	sd	s2,16(sp)
    80003fb8:	01313423          	sd	s3,8(sp)
    80003fbc:	02113423          	sd	ra,40(sp)
    80003fc0:	03010413          	addi	s0,sp,48
    80003fc4:	00002917          	auipc	s2,0x2
    80003fc8:	0ec90913          	addi	s2,s2,236 # 800060b0 <uart_tx_r>
    80003fcc:	00093783          	ld	a5,0(s2)
    80003fd0:	00002497          	auipc	s1,0x2
    80003fd4:	0e848493          	addi	s1,s1,232 # 800060b8 <uart_tx_w>
    80003fd8:	0004b703          	ld	a4,0(s1)
    80003fdc:	02078693          	addi	a3,a5,32
    80003fe0:	00050993          	mv	s3,a0
    80003fe4:	02e69c63          	bne	a3,a4,8000401c <uartputc+0x84>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	834080e7          	jalr	-1996(ra) # 8000481c <push_on>
    80003ff0:	00093783          	ld	a5,0(s2)
    80003ff4:	0004b703          	ld	a4,0(s1)
    80003ff8:	02078793          	addi	a5,a5,32
    80003ffc:	00e79463          	bne	a5,a4,80004004 <uartputc+0x6c>
    80004000:	0000006f          	j	80004000 <uartputc+0x68>
    80004004:	00001097          	auipc	ra,0x1
    80004008:	88c080e7          	jalr	-1908(ra) # 80004890 <pop_on>
    8000400c:	00093783          	ld	a5,0(s2)
    80004010:	0004b703          	ld	a4,0(s1)
    80004014:	02078693          	addi	a3,a5,32
    80004018:	fce688e3          	beq	a3,a4,80003fe8 <uartputc+0x50>
    8000401c:	01f77693          	andi	a3,a4,31
    80004020:	00003597          	auipc	a1,0x3
    80004024:	32058593          	addi	a1,a1,800 # 80007340 <uart_tx_buf>
    80004028:	00d586b3          	add	a3,a1,a3
    8000402c:	00170713          	addi	a4,a4,1
    80004030:	01368023          	sb	s3,0(a3)
    80004034:	00e4b023          	sd	a4,0(s1)
    80004038:	10000637          	lui	a2,0x10000
    8000403c:	02f71063          	bne	a4,a5,8000405c <uartputc+0xc4>
    80004040:	0340006f          	j	80004074 <uartputc+0xdc>
    80004044:	00074703          	lbu	a4,0(a4)
    80004048:	00f93023          	sd	a5,0(s2)
    8000404c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004050:	00093783          	ld	a5,0(s2)
    80004054:	0004b703          	ld	a4,0(s1)
    80004058:	00f70e63          	beq	a4,a5,80004074 <uartputc+0xdc>
    8000405c:	00564683          	lbu	a3,5(a2)
    80004060:	01f7f713          	andi	a4,a5,31
    80004064:	00e58733          	add	a4,a1,a4
    80004068:	0206f693          	andi	a3,a3,32
    8000406c:	00178793          	addi	a5,a5,1
    80004070:	fc069ae3          	bnez	a3,80004044 <uartputc+0xac>
    80004074:	02813083          	ld	ra,40(sp)
    80004078:	02013403          	ld	s0,32(sp)
    8000407c:	01813483          	ld	s1,24(sp)
    80004080:	01013903          	ld	s2,16(sp)
    80004084:	00813983          	ld	s3,8(sp)
    80004088:	03010113          	addi	sp,sp,48
    8000408c:	00008067          	ret

0000000080004090 <uartputc_sync>:
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00813423          	sd	s0,8(sp)
    80004098:	01010413          	addi	s0,sp,16
    8000409c:	00002717          	auipc	a4,0x2
    800040a0:	00c72703          	lw	a4,12(a4) # 800060a8 <panicked>
    800040a4:	02071663          	bnez	a4,800040d0 <uartputc_sync+0x40>
    800040a8:	00050793          	mv	a5,a0
    800040ac:	100006b7          	lui	a3,0x10000
    800040b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800040b4:	02077713          	andi	a4,a4,32
    800040b8:	fe070ce3          	beqz	a4,800040b0 <uartputc_sync+0x20>
    800040bc:	0ff7f793          	andi	a5,a5,255
    800040c0:	00f68023          	sb	a5,0(a3)
    800040c4:	00813403          	ld	s0,8(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret
    800040d0:	0000006f          	j	800040d0 <uartputc_sync+0x40>

00000000800040d4 <uartstart>:
    800040d4:	ff010113          	addi	sp,sp,-16
    800040d8:	00813423          	sd	s0,8(sp)
    800040dc:	01010413          	addi	s0,sp,16
    800040e0:	00002617          	auipc	a2,0x2
    800040e4:	fd060613          	addi	a2,a2,-48 # 800060b0 <uart_tx_r>
    800040e8:	00002517          	auipc	a0,0x2
    800040ec:	fd050513          	addi	a0,a0,-48 # 800060b8 <uart_tx_w>
    800040f0:	00063783          	ld	a5,0(a2)
    800040f4:	00053703          	ld	a4,0(a0)
    800040f8:	04f70263          	beq	a4,a5,8000413c <uartstart+0x68>
    800040fc:	100005b7          	lui	a1,0x10000
    80004100:	00003817          	auipc	a6,0x3
    80004104:	24080813          	addi	a6,a6,576 # 80007340 <uart_tx_buf>
    80004108:	01c0006f          	j	80004124 <uartstart+0x50>
    8000410c:	0006c703          	lbu	a4,0(a3)
    80004110:	00f63023          	sd	a5,0(a2)
    80004114:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004118:	00063783          	ld	a5,0(a2)
    8000411c:	00053703          	ld	a4,0(a0)
    80004120:	00f70e63          	beq	a4,a5,8000413c <uartstart+0x68>
    80004124:	01f7f713          	andi	a4,a5,31
    80004128:	00e806b3          	add	a3,a6,a4
    8000412c:	0055c703          	lbu	a4,5(a1)
    80004130:	00178793          	addi	a5,a5,1
    80004134:	02077713          	andi	a4,a4,32
    80004138:	fc071ae3          	bnez	a4,8000410c <uartstart+0x38>
    8000413c:	00813403          	ld	s0,8(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret

0000000080004148 <uartgetc>:
    80004148:	ff010113          	addi	sp,sp,-16
    8000414c:	00813423          	sd	s0,8(sp)
    80004150:	01010413          	addi	s0,sp,16
    80004154:	10000737          	lui	a4,0x10000
    80004158:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000415c:	0017f793          	andi	a5,a5,1
    80004160:	00078c63          	beqz	a5,80004178 <uartgetc+0x30>
    80004164:	00074503          	lbu	a0,0(a4)
    80004168:	0ff57513          	andi	a0,a0,255
    8000416c:	00813403          	ld	s0,8(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret
    80004178:	fff00513          	li	a0,-1
    8000417c:	ff1ff06f          	j	8000416c <uartgetc+0x24>

0000000080004180 <uartintr>:
    80004180:	100007b7          	lui	a5,0x10000
    80004184:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004188:	0017f793          	andi	a5,a5,1
    8000418c:	0a078463          	beqz	a5,80004234 <uartintr+0xb4>
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00813823          	sd	s0,16(sp)
    80004198:	00913423          	sd	s1,8(sp)
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	02010413          	addi	s0,sp,32
    800041a4:	100004b7          	lui	s1,0x10000
    800041a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800041ac:	0ff57513          	andi	a0,a0,255
    800041b0:	fffff097          	auipc	ra,0xfffff
    800041b4:	534080e7          	jalr	1332(ra) # 800036e4 <consoleintr>
    800041b8:	0054c783          	lbu	a5,5(s1)
    800041bc:	0017f793          	andi	a5,a5,1
    800041c0:	fe0794e3          	bnez	a5,800041a8 <uartintr+0x28>
    800041c4:	00002617          	auipc	a2,0x2
    800041c8:	eec60613          	addi	a2,a2,-276 # 800060b0 <uart_tx_r>
    800041cc:	00002517          	auipc	a0,0x2
    800041d0:	eec50513          	addi	a0,a0,-276 # 800060b8 <uart_tx_w>
    800041d4:	00063783          	ld	a5,0(a2)
    800041d8:	00053703          	ld	a4,0(a0)
    800041dc:	04f70263          	beq	a4,a5,80004220 <uartintr+0xa0>
    800041e0:	100005b7          	lui	a1,0x10000
    800041e4:	00003817          	auipc	a6,0x3
    800041e8:	15c80813          	addi	a6,a6,348 # 80007340 <uart_tx_buf>
    800041ec:	01c0006f          	j	80004208 <uartintr+0x88>
    800041f0:	0006c703          	lbu	a4,0(a3)
    800041f4:	00f63023          	sd	a5,0(a2)
    800041f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041fc:	00063783          	ld	a5,0(a2)
    80004200:	00053703          	ld	a4,0(a0)
    80004204:	00f70e63          	beq	a4,a5,80004220 <uartintr+0xa0>
    80004208:	01f7f713          	andi	a4,a5,31
    8000420c:	00e806b3          	add	a3,a6,a4
    80004210:	0055c703          	lbu	a4,5(a1)
    80004214:	00178793          	addi	a5,a5,1
    80004218:	02077713          	andi	a4,a4,32
    8000421c:	fc071ae3          	bnez	a4,800041f0 <uartintr+0x70>
    80004220:	01813083          	ld	ra,24(sp)
    80004224:	01013403          	ld	s0,16(sp)
    80004228:	00813483          	ld	s1,8(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret
    80004234:	00002617          	auipc	a2,0x2
    80004238:	e7c60613          	addi	a2,a2,-388 # 800060b0 <uart_tx_r>
    8000423c:	00002517          	auipc	a0,0x2
    80004240:	e7c50513          	addi	a0,a0,-388 # 800060b8 <uart_tx_w>
    80004244:	00063783          	ld	a5,0(a2)
    80004248:	00053703          	ld	a4,0(a0)
    8000424c:	04f70263          	beq	a4,a5,80004290 <uartintr+0x110>
    80004250:	100005b7          	lui	a1,0x10000
    80004254:	00003817          	auipc	a6,0x3
    80004258:	0ec80813          	addi	a6,a6,236 # 80007340 <uart_tx_buf>
    8000425c:	01c0006f          	j	80004278 <uartintr+0xf8>
    80004260:	0006c703          	lbu	a4,0(a3)
    80004264:	00f63023          	sd	a5,0(a2)
    80004268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000426c:	00063783          	ld	a5,0(a2)
    80004270:	00053703          	ld	a4,0(a0)
    80004274:	02f70063          	beq	a4,a5,80004294 <uartintr+0x114>
    80004278:	01f7f713          	andi	a4,a5,31
    8000427c:	00e806b3          	add	a3,a6,a4
    80004280:	0055c703          	lbu	a4,5(a1)
    80004284:	00178793          	addi	a5,a5,1
    80004288:	02077713          	andi	a4,a4,32
    8000428c:	fc071ae3          	bnez	a4,80004260 <uartintr+0xe0>
    80004290:	00008067          	ret
    80004294:	00008067          	ret

0000000080004298 <kinit>:
    80004298:	fc010113          	addi	sp,sp,-64
    8000429c:	02913423          	sd	s1,40(sp)
    800042a0:	fffff7b7          	lui	a5,0xfffff
    800042a4:	00004497          	auipc	s1,0x4
    800042a8:	0bb48493          	addi	s1,s1,187 # 8000835f <end+0xfff>
    800042ac:	02813823          	sd	s0,48(sp)
    800042b0:	01313c23          	sd	s3,24(sp)
    800042b4:	00f4f4b3          	and	s1,s1,a5
    800042b8:	02113c23          	sd	ra,56(sp)
    800042bc:	03213023          	sd	s2,32(sp)
    800042c0:	01413823          	sd	s4,16(sp)
    800042c4:	01513423          	sd	s5,8(sp)
    800042c8:	04010413          	addi	s0,sp,64
    800042cc:	000017b7          	lui	a5,0x1
    800042d0:	01100993          	li	s3,17
    800042d4:	00f487b3          	add	a5,s1,a5
    800042d8:	01b99993          	slli	s3,s3,0x1b
    800042dc:	06f9e063          	bltu	s3,a5,8000433c <kinit+0xa4>
    800042e0:	00003a97          	auipc	s5,0x3
    800042e4:	080a8a93          	addi	s5,s5,128 # 80007360 <end>
    800042e8:	0754ec63          	bltu	s1,s5,80004360 <kinit+0xc8>
    800042ec:	0734fa63          	bgeu	s1,s3,80004360 <kinit+0xc8>
    800042f0:	00088a37          	lui	s4,0x88
    800042f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800042f8:	00002917          	auipc	s2,0x2
    800042fc:	dc890913          	addi	s2,s2,-568 # 800060c0 <kmem>
    80004300:	00ca1a13          	slli	s4,s4,0xc
    80004304:	0140006f          	j	80004318 <kinit+0x80>
    80004308:	000017b7          	lui	a5,0x1
    8000430c:	00f484b3          	add	s1,s1,a5
    80004310:	0554e863          	bltu	s1,s5,80004360 <kinit+0xc8>
    80004314:	0534f663          	bgeu	s1,s3,80004360 <kinit+0xc8>
    80004318:	00001637          	lui	a2,0x1
    8000431c:	00100593          	li	a1,1
    80004320:	00048513          	mv	a0,s1
    80004324:	00000097          	auipc	ra,0x0
    80004328:	5e4080e7          	jalr	1508(ra) # 80004908 <__memset>
    8000432c:	00093783          	ld	a5,0(s2)
    80004330:	00f4b023          	sd	a5,0(s1)
    80004334:	00993023          	sd	s1,0(s2)
    80004338:	fd4498e3          	bne	s1,s4,80004308 <kinit+0x70>
    8000433c:	03813083          	ld	ra,56(sp)
    80004340:	03013403          	ld	s0,48(sp)
    80004344:	02813483          	ld	s1,40(sp)
    80004348:	02013903          	ld	s2,32(sp)
    8000434c:	01813983          	ld	s3,24(sp)
    80004350:	01013a03          	ld	s4,16(sp)
    80004354:	00813a83          	ld	s5,8(sp)
    80004358:	04010113          	addi	sp,sp,64
    8000435c:	00008067          	ret
    80004360:	00001517          	auipc	a0,0x1
    80004364:	fb050513          	addi	a0,a0,-80 # 80005310 <digits+0x18>
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	4b4080e7          	jalr	1204(ra) # 8000381c <panic>

0000000080004370 <freerange>:
    80004370:	fc010113          	addi	sp,sp,-64
    80004374:	000017b7          	lui	a5,0x1
    80004378:	02913423          	sd	s1,40(sp)
    8000437c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004380:	009504b3          	add	s1,a0,s1
    80004384:	fffff537          	lui	a0,0xfffff
    80004388:	02813823          	sd	s0,48(sp)
    8000438c:	02113c23          	sd	ra,56(sp)
    80004390:	03213023          	sd	s2,32(sp)
    80004394:	01313c23          	sd	s3,24(sp)
    80004398:	01413823          	sd	s4,16(sp)
    8000439c:	01513423          	sd	s5,8(sp)
    800043a0:	01613023          	sd	s6,0(sp)
    800043a4:	04010413          	addi	s0,sp,64
    800043a8:	00a4f4b3          	and	s1,s1,a0
    800043ac:	00f487b3          	add	a5,s1,a5
    800043b0:	06f5e463          	bltu	a1,a5,80004418 <freerange+0xa8>
    800043b4:	00003a97          	auipc	s5,0x3
    800043b8:	faca8a93          	addi	s5,s5,-84 # 80007360 <end>
    800043bc:	0954e263          	bltu	s1,s5,80004440 <freerange+0xd0>
    800043c0:	01100993          	li	s3,17
    800043c4:	01b99993          	slli	s3,s3,0x1b
    800043c8:	0734fc63          	bgeu	s1,s3,80004440 <freerange+0xd0>
    800043cc:	00058a13          	mv	s4,a1
    800043d0:	00002917          	auipc	s2,0x2
    800043d4:	cf090913          	addi	s2,s2,-784 # 800060c0 <kmem>
    800043d8:	00002b37          	lui	s6,0x2
    800043dc:	0140006f          	j	800043f0 <freerange+0x80>
    800043e0:	000017b7          	lui	a5,0x1
    800043e4:	00f484b3          	add	s1,s1,a5
    800043e8:	0554ec63          	bltu	s1,s5,80004440 <freerange+0xd0>
    800043ec:	0534fa63          	bgeu	s1,s3,80004440 <freerange+0xd0>
    800043f0:	00001637          	lui	a2,0x1
    800043f4:	00100593          	li	a1,1
    800043f8:	00048513          	mv	a0,s1
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	50c080e7          	jalr	1292(ra) # 80004908 <__memset>
    80004404:	00093703          	ld	a4,0(s2)
    80004408:	016487b3          	add	a5,s1,s6
    8000440c:	00e4b023          	sd	a4,0(s1)
    80004410:	00993023          	sd	s1,0(s2)
    80004414:	fcfa76e3          	bgeu	s4,a5,800043e0 <freerange+0x70>
    80004418:	03813083          	ld	ra,56(sp)
    8000441c:	03013403          	ld	s0,48(sp)
    80004420:	02813483          	ld	s1,40(sp)
    80004424:	02013903          	ld	s2,32(sp)
    80004428:	01813983          	ld	s3,24(sp)
    8000442c:	01013a03          	ld	s4,16(sp)
    80004430:	00813a83          	ld	s5,8(sp)
    80004434:	00013b03          	ld	s6,0(sp)
    80004438:	04010113          	addi	sp,sp,64
    8000443c:	00008067          	ret
    80004440:	00001517          	auipc	a0,0x1
    80004444:	ed050513          	addi	a0,a0,-304 # 80005310 <digits+0x18>
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	3d4080e7          	jalr	980(ra) # 8000381c <panic>

0000000080004450 <kfree>:
    80004450:	fe010113          	addi	sp,sp,-32
    80004454:	00813823          	sd	s0,16(sp)
    80004458:	00113c23          	sd	ra,24(sp)
    8000445c:	00913423          	sd	s1,8(sp)
    80004460:	02010413          	addi	s0,sp,32
    80004464:	03451793          	slli	a5,a0,0x34
    80004468:	04079c63          	bnez	a5,800044c0 <kfree+0x70>
    8000446c:	00003797          	auipc	a5,0x3
    80004470:	ef478793          	addi	a5,a5,-268 # 80007360 <end>
    80004474:	00050493          	mv	s1,a0
    80004478:	04f56463          	bltu	a0,a5,800044c0 <kfree+0x70>
    8000447c:	01100793          	li	a5,17
    80004480:	01b79793          	slli	a5,a5,0x1b
    80004484:	02f57e63          	bgeu	a0,a5,800044c0 <kfree+0x70>
    80004488:	00001637          	lui	a2,0x1
    8000448c:	00100593          	li	a1,1
    80004490:	00000097          	auipc	ra,0x0
    80004494:	478080e7          	jalr	1144(ra) # 80004908 <__memset>
    80004498:	00002797          	auipc	a5,0x2
    8000449c:	c2878793          	addi	a5,a5,-984 # 800060c0 <kmem>
    800044a0:	0007b703          	ld	a4,0(a5)
    800044a4:	01813083          	ld	ra,24(sp)
    800044a8:	01013403          	ld	s0,16(sp)
    800044ac:	00e4b023          	sd	a4,0(s1)
    800044b0:	0097b023          	sd	s1,0(a5)
    800044b4:	00813483          	ld	s1,8(sp)
    800044b8:	02010113          	addi	sp,sp,32
    800044bc:	00008067          	ret
    800044c0:	00001517          	auipc	a0,0x1
    800044c4:	e5050513          	addi	a0,a0,-432 # 80005310 <digits+0x18>
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	354080e7          	jalr	852(ra) # 8000381c <panic>

00000000800044d0 <kalloc>:
    800044d0:	fe010113          	addi	sp,sp,-32
    800044d4:	00813823          	sd	s0,16(sp)
    800044d8:	00913423          	sd	s1,8(sp)
    800044dc:	00113c23          	sd	ra,24(sp)
    800044e0:	02010413          	addi	s0,sp,32
    800044e4:	00002797          	auipc	a5,0x2
    800044e8:	bdc78793          	addi	a5,a5,-1060 # 800060c0 <kmem>
    800044ec:	0007b483          	ld	s1,0(a5)
    800044f0:	02048063          	beqz	s1,80004510 <kalloc+0x40>
    800044f4:	0004b703          	ld	a4,0(s1)
    800044f8:	00001637          	lui	a2,0x1
    800044fc:	00500593          	li	a1,5
    80004500:	00048513          	mv	a0,s1
    80004504:	00e7b023          	sd	a4,0(a5)
    80004508:	00000097          	auipc	ra,0x0
    8000450c:	400080e7          	jalr	1024(ra) # 80004908 <__memset>
    80004510:	01813083          	ld	ra,24(sp)
    80004514:	01013403          	ld	s0,16(sp)
    80004518:	00048513          	mv	a0,s1
    8000451c:	00813483          	ld	s1,8(sp)
    80004520:	02010113          	addi	sp,sp,32
    80004524:	00008067          	ret

0000000080004528 <initlock>:
    80004528:	ff010113          	addi	sp,sp,-16
    8000452c:	00813423          	sd	s0,8(sp)
    80004530:	01010413          	addi	s0,sp,16
    80004534:	00813403          	ld	s0,8(sp)
    80004538:	00b53423          	sd	a1,8(a0)
    8000453c:	00052023          	sw	zero,0(a0)
    80004540:	00053823          	sd	zero,16(a0)
    80004544:	01010113          	addi	sp,sp,16
    80004548:	00008067          	ret

000000008000454c <acquire>:
    8000454c:	fe010113          	addi	sp,sp,-32
    80004550:	00813823          	sd	s0,16(sp)
    80004554:	00913423          	sd	s1,8(sp)
    80004558:	00113c23          	sd	ra,24(sp)
    8000455c:	01213023          	sd	s2,0(sp)
    80004560:	02010413          	addi	s0,sp,32
    80004564:	00050493          	mv	s1,a0
    80004568:	10002973          	csrr	s2,sstatus
    8000456c:	100027f3          	csrr	a5,sstatus
    80004570:	ffd7f793          	andi	a5,a5,-3
    80004574:	10079073          	csrw	sstatus,a5
    80004578:	fffff097          	auipc	ra,0xfffff
    8000457c:	8e0080e7          	jalr	-1824(ra) # 80002e58 <mycpu>
    80004580:	07852783          	lw	a5,120(a0)
    80004584:	06078e63          	beqz	a5,80004600 <acquire+0xb4>
    80004588:	fffff097          	auipc	ra,0xfffff
    8000458c:	8d0080e7          	jalr	-1840(ra) # 80002e58 <mycpu>
    80004590:	07852783          	lw	a5,120(a0)
    80004594:	0004a703          	lw	a4,0(s1)
    80004598:	0017879b          	addiw	a5,a5,1
    8000459c:	06f52c23          	sw	a5,120(a0)
    800045a0:	04071063          	bnez	a4,800045e0 <acquire+0x94>
    800045a4:	00100713          	li	a4,1
    800045a8:	00070793          	mv	a5,a4
    800045ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800045b0:	0007879b          	sext.w	a5,a5
    800045b4:	fe079ae3          	bnez	a5,800045a8 <acquire+0x5c>
    800045b8:	0ff0000f          	fence
    800045bc:	fffff097          	auipc	ra,0xfffff
    800045c0:	89c080e7          	jalr	-1892(ra) # 80002e58 <mycpu>
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00a4b823          	sd	a0,16(s1)
    800045d0:	00013903          	ld	s2,0(sp)
    800045d4:	00813483          	ld	s1,8(sp)
    800045d8:	02010113          	addi	sp,sp,32
    800045dc:	00008067          	ret
    800045e0:	0104b903          	ld	s2,16(s1)
    800045e4:	fffff097          	auipc	ra,0xfffff
    800045e8:	874080e7          	jalr	-1932(ra) # 80002e58 <mycpu>
    800045ec:	faa91ce3          	bne	s2,a0,800045a4 <acquire+0x58>
    800045f0:	00001517          	auipc	a0,0x1
    800045f4:	d2850513          	addi	a0,a0,-728 # 80005318 <digits+0x20>
    800045f8:	fffff097          	auipc	ra,0xfffff
    800045fc:	224080e7          	jalr	548(ra) # 8000381c <panic>
    80004600:	00195913          	srli	s2,s2,0x1
    80004604:	fffff097          	auipc	ra,0xfffff
    80004608:	854080e7          	jalr	-1964(ra) # 80002e58 <mycpu>
    8000460c:	00197913          	andi	s2,s2,1
    80004610:	07252e23          	sw	s2,124(a0)
    80004614:	f75ff06f          	j	80004588 <acquire+0x3c>

0000000080004618 <release>:
    80004618:	fe010113          	addi	sp,sp,-32
    8000461c:	00813823          	sd	s0,16(sp)
    80004620:	00113c23          	sd	ra,24(sp)
    80004624:	00913423          	sd	s1,8(sp)
    80004628:	01213023          	sd	s2,0(sp)
    8000462c:	02010413          	addi	s0,sp,32
    80004630:	00052783          	lw	a5,0(a0)
    80004634:	00079a63          	bnez	a5,80004648 <release+0x30>
    80004638:	00001517          	auipc	a0,0x1
    8000463c:	ce850513          	addi	a0,a0,-792 # 80005320 <digits+0x28>
    80004640:	fffff097          	auipc	ra,0xfffff
    80004644:	1dc080e7          	jalr	476(ra) # 8000381c <panic>
    80004648:	01053903          	ld	s2,16(a0)
    8000464c:	00050493          	mv	s1,a0
    80004650:	fffff097          	auipc	ra,0xfffff
    80004654:	808080e7          	jalr	-2040(ra) # 80002e58 <mycpu>
    80004658:	fea910e3          	bne	s2,a0,80004638 <release+0x20>
    8000465c:	0004b823          	sd	zero,16(s1)
    80004660:	0ff0000f          	fence
    80004664:	0f50000f          	fence	iorw,ow
    80004668:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	7ec080e7          	jalr	2028(ra) # 80002e58 <mycpu>
    80004674:	100027f3          	csrr	a5,sstatus
    80004678:	0027f793          	andi	a5,a5,2
    8000467c:	04079a63          	bnez	a5,800046d0 <release+0xb8>
    80004680:	07852783          	lw	a5,120(a0)
    80004684:	02f05e63          	blez	a5,800046c0 <release+0xa8>
    80004688:	fff7871b          	addiw	a4,a5,-1
    8000468c:	06e52c23          	sw	a4,120(a0)
    80004690:	00071c63          	bnez	a4,800046a8 <release+0x90>
    80004694:	07c52783          	lw	a5,124(a0)
    80004698:	00078863          	beqz	a5,800046a8 <release+0x90>
    8000469c:	100027f3          	csrr	a5,sstatus
    800046a0:	0027e793          	ori	a5,a5,2
    800046a4:	10079073          	csrw	sstatus,a5
    800046a8:	01813083          	ld	ra,24(sp)
    800046ac:	01013403          	ld	s0,16(sp)
    800046b0:	00813483          	ld	s1,8(sp)
    800046b4:	00013903          	ld	s2,0(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret
    800046c0:	00001517          	auipc	a0,0x1
    800046c4:	c8050513          	addi	a0,a0,-896 # 80005340 <digits+0x48>
    800046c8:	fffff097          	auipc	ra,0xfffff
    800046cc:	154080e7          	jalr	340(ra) # 8000381c <panic>
    800046d0:	00001517          	auipc	a0,0x1
    800046d4:	c5850513          	addi	a0,a0,-936 # 80005328 <digits+0x30>
    800046d8:	fffff097          	auipc	ra,0xfffff
    800046dc:	144080e7          	jalr	324(ra) # 8000381c <panic>

00000000800046e0 <holding>:
    800046e0:	00052783          	lw	a5,0(a0)
    800046e4:	00079663          	bnez	a5,800046f0 <holding+0x10>
    800046e8:	00000513          	li	a0,0
    800046ec:	00008067          	ret
    800046f0:	fe010113          	addi	sp,sp,-32
    800046f4:	00813823          	sd	s0,16(sp)
    800046f8:	00913423          	sd	s1,8(sp)
    800046fc:	00113c23          	sd	ra,24(sp)
    80004700:	02010413          	addi	s0,sp,32
    80004704:	01053483          	ld	s1,16(a0)
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	750080e7          	jalr	1872(ra) # 80002e58 <mycpu>
    80004710:	01813083          	ld	ra,24(sp)
    80004714:	01013403          	ld	s0,16(sp)
    80004718:	40a48533          	sub	a0,s1,a0
    8000471c:	00153513          	seqz	a0,a0
    80004720:	00813483          	ld	s1,8(sp)
    80004724:	02010113          	addi	sp,sp,32
    80004728:	00008067          	ret

000000008000472c <push_off>:
    8000472c:	fe010113          	addi	sp,sp,-32
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00113c23          	sd	ra,24(sp)
    80004738:	00913423          	sd	s1,8(sp)
    8000473c:	02010413          	addi	s0,sp,32
    80004740:	100024f3          	csrr	s1,sstatus
    80004744:	100027f3          	csrr	a5,sstatus
    80004748:	ffd7f793          	andi	a5,a5,-3
    8000474c:	10079073          	csrw	sstatus,a5
    80004750:	ffffe097          	auipc	ra,0xffffe
    80004754:	708080e7          	jalr	1800(ra) # 80002e58 <mycpu>
    80004758:	07852783          	lw	a5,120(a0)
    8000475c:	02078663          	beqz	a5,80004788 <push_off+0x5c>
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	6f8080e7          	jalr	1784(ra) # 80002e58 <mycpu>
    80004768:	07852783          	lw	a5,120(a0)
    8000476c:	01813083          	ld	ra,24(sp)
    80004770:	01013403          	ld	s0,16(sp)
    80004774:	0017879b          	addiw	a5,a5,1
    80004778:	06f52c23          	sw	a5,120(a0)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret
    80004788:	0014d493          	srli	s1,s1,0x1
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	6cc080e7          	jalr	1740(ra) # 80002e58 <mycpu>
    80004794:	0014f493          	andi	s1,s1,1
    80004798:	06952e23          	sw	s1,124(a0)
    8000479c:	fc5ff06f          	j	80004760 <push_off+0x34>

00000000800047a0 <pop_off>:
    800047a0:	ff010113          	addi	sp,sp,-16
    800047a4:	00813023          	sd	s0,0(sp)
    800047a8:	00113423          	sd	ra,8(sp)
    800047ac:	01010413          	addi	s0,sp,16
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	6a8080e7          	jalr	1704(ra) # 80002e58 <mycpu>
    800047b8:	100027f3          	csrr	a5,sstatus
    800047bc:	0027f793          	andi	a5,a5,2
    800047c0:	04079663          	bnez	a5,8000480c <pop_off+0x6c>
    800047c4:	07852783          	lw	a5,120(a0)
    800047c8:	02f05a63          	blez	a5,800047fc <pop_off+0x5c>
    800047cc:	fff7871b          	addiw	a4,a5,-1
    800047d0:	06e52c23          	sw	a4,120(a0)
    800047d4:	00071c63          	bnez	a4,800047ec <pop_off+0x4c>
    800047d8:	07c52783          	lw	a5,124(a0)
    800047dc:	00078863          	beqz	a5,800047ec <pop_off+0x4c>
    800047e0:	100027f3          	csrr	a5,sstatus
    800047e4:	0027e793          	ori	a5,a5,2
    800047e8:	10079073          	csrw	sstatus,a5
    800047ec:	00813083          	ld	ra,8(sp)
    800047f0:	00013403          	ld	s0,0(sp)
    800047f4:	01010113          	addi	sp,sp,16
    800047f8:	00008067          	ret
    800047fc:	00001517          	auipc	a0,0x1
    80004800:	b4450513          	addi	a0,a0,-1212 # 80005340 <digits+0x48>
    80004804:	fffff097          	auipc	ra,0xfffff
    80004808:	018080e7          	jalr	24(ra) # 8000381c <panic>
    8000480c:	00001517          	auipc	a0,0x1
    80004810:	b1c50513          	addi	a0,a0,-1252 # 80005328 <digits+0x30>
    80004814:	fffff097          	auipc	ra,0xfffff
    80004818:	008080e7          	jalr	8(ra) # 8000381c <panic>

000000008000481c <push_on>:
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00813823          	sd	s0,16(sp)
    80004824:	00113c23          	sd	ra,24(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	02010413          	addi	s0,sp,32
    80004830:	100024f3          	csrr	s1,sstatus
    80004834:	100027f3          	csrr	a5,sstatus
    80004838:	0027e793          	ori	a5,a5,2
    8000483c:	10079073          	csrw	sstatus,a5
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	618080e7          	jalr	1560(ra) # 80002e58 <mycpu>
    80004848:	07852783          	lw	a5,120(a0)
    8000484c:	02078663          	beqz	a5,80004878 <push_on+0x5c>
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	608080e7          	jalr	1544(ra) # 80002e58 <mycpu>
    80004858:	07852783          	lw	a5,120(a0)
    8000485c:	01813083          	ld	ra,24(sp)
    80004860:	01013403          	ld	s0,16(sp)
    80004864:	0017879b          	addiw	a5,a5,1
    80004868:	06f52c23          	sw	a5,120(a0)
    8000486c:	00813483          	ld	s1,8(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret
    80004878:	0014d493          	srli	s1,s1,0x1
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	5dc080e7          	jalr	1500(ra) # 80002e58 <mycpu>
    80004884:	0014f493          	andi	s1,s1,1
    80004888:	06952e23          	sw	s1,124(a0)
    8000488c:	fc5ff06f          	j	80004850 <push_on+0x34>

0000000080004890 <pop_on>:
    80004890:	ff010113          	addi	sp,sp,-16
    80004894:	00813023          	sd	s0,0(sp)
    80004898:	00113423          	sd	ra,8(sp)
    8000489c:	01010413          	addi	s0,sp,16
    800048a0:	ffffe097          	auipc	ra,0xffffe
    800048a4:	5b8080e7          	jalr	1464(ra) # 80002e58 <mycpu>
    800048a8:	100027f3          	csrr	a5,sstatus
    800048ac:	0027f793          	andi	a5,a5,2
    800048b0:	04078463          	beqz	a5,800048f8 <pop_on+0x68>
    800048b4:	07852783          	lw	a5,120(a0)
    800048b8:	02f05863          	blez	a5,800048e8 <pop_on+0x58>
    800048bc:	fff7879b          	addiw	a5,a5,-1
    800048c0:	06f52c23          	sw	a5,120(a0)
    800048c4:	07853783          	ld	a5,120(a0)
    800048c8:	00079863          	bnez	a5,800048d8 <pop_on+0x48>
    800048cc:	100027f3          	csrr	a5,sstatus
    800048d0:	ffd7f793          	andi	a5,a5,-3
    800048d4:	10079073          	csrw	sstatus,a5
    800048d8:	00813083          	ld	ra,8(sp)
    800048dc:	00013403          	ld	s0,0(sp)
    800048e0:	01010113          	addi	sp,sp,16
    800048e4:	00008067          	ret
    800048e8:	00001517          	auipc	a0,0x1
    800048ec:	a8050513          	addi	a0,a0,-1408 # 80005368 <digits+0x70>
    800048f0:	fffff097          	auipc	ra,0xfffff
    800048f4:	f2c080e7          	jalr	-212(ra) # 8000381c <panic>
    800048f8:	00001517          	auipc	a0,0x1
    800048fc:	a5050513          	addi	a0,a0,-1456 # 80005348 <digits+0x50>
    80004900:	fffff097          	auipc	ra,0xfffff
    80004904:	f1c080e7          	jalr	-228(ra) # 8000381c <panic>

0000000080004908 <__memset>:
    80004908:	ff010113          	addi	sp,sp,-16
    8000490c:	00813423          	sd	s0,8(sp)
    80004910:	01010413          	addi	s0,sp,16
    80004914:	1a060e63          	beqz	a2,80004ad0 <__memset+0x1c8>
    80004918:	40a007b3          	neg	a5,a0
    8000491c:	0077f793          	andi	a5,a5,7
    80004920:	00778693          	addi	a3,a5,7
    80004924:	00b00813          	li	a6,11
    80004928:	0ff5f593          	andi	a1,a1,255
    8000492c:	fff6071b          	addiw	a4,a2,-1
    80004930:	1b06e663          	bltu	a3,a6,80004adc <__memset+0x1d4>
    80004934:	1cd76463          	bltu	a4,a3,80004afc <__memset+0x1f4>
    80004938:	1a078e63          	beqz	a5,80004af4 <__memset+0x1ec>
    8000493c:	00b50023          	sb	a1,0(a0)
    80004940:	00100713          	li	a4,1
    80004944:	1ae78463          	beq	a5,a4,80004aec <__memset+0x1e4>
    80004948:	00b500a3          	sb	a1,1(a0)
    8000494c:	00200713          	li	a4,2
    80004950:	1ae78a63          	beq	a5,a4,80004b04 <__memset+0x1fc>
    80004954:	00b50123          	sb	a1,2(a0)
    80004958:	00300713          	li	a4,3
    8000495c:	18e78463          	beq	a5,a4,80004ae4 <__memset+0x1dc>
    80004960:	00b501a3          	sb	a1,3(a0)
    80004964:	00400713          	li	a4,4
    80004968:	1ae78263          	beq	a5,a4,80004b0c <__memset+0x204>
    8000496c:	00b50223          	sb	a1,4(a0)
    80004970:	00500713          	li	a4,5
    80004974:	1ae78063          	beq	a5,a4,80004b14 <__memset+0x20c>
    80004978:	00b502a3          	sb	a1,5(a0)
    8000497c:	00700713          	li	a4,7
    80004980:	18e79e63          	bne	a5,a4,80004b1c <__memset+0x214>
    80004984:	00b50323          	sb	a1,6(a0)
    80004988:	00700e93          	li	t4,7
    8000498c:	00859713          	slli	a4,a1,0x8
    80004990:	00e5e733          	or	a4,a1,a4
    80004994:	01059e13          	slli	t3,a1,0x10
    80004998:	01c76e33          	or	t3,a4,t3
    8000499c:	01859313          	slli	t1,a1,0x18
    800049a0:	006e6333          	or	t1,t3,t1
    800049a4:	02059893          	slli	a7,a1,0x20
    800049a8:	40f60e3b          	subw	t3,a2,a5
    800049ac:	011368b3          	or	a7,t1,a7
    800049b0:	02859813          	slli	a6,a1,0x28
    800049b4:	0108e833          	or	a6,a7,a6
    800049b8:	03059693          	slli	a3,a1,0x30
    800049bc:	003e589b          	srliw	a7,t3,0x3
    800049c0:	00d866b3          	or	a3,a6,a3
    800049c4:	03859713          	slli	a4,a1,0x38
    800049c8:	00389813          	slli	a6,a7,0x3
    800049cc:	00f507b3          	add	a5,a0,a5
    800049d0:	00e6e733          	or	a4,a3,a4
    800049d4:	000e089b          	sext.w	a7,t3
    800049d8:	00f806b3          	add	a3,a6,a5
    800049dc:	00e7b023          	sd	a4,0(a5)
    800049e0:	00878793          	addi	a5,a5,8
    800049e4:	fed79ce3          	bne	a5,a3,800049dc <__memset+0xd4>
    800049e8:	ff8e7793          	andi	a5,t3,-8
    800049ec:	0007871b          	sext.w	a4,a5
    800049f0:	01d787bb          	addw	a5,a5,t4
    800049f4:	0ce88e63          	beq	a7,a4,80004ad0 <__memset+0x1c8>
    800049f8:	00f50733          	add	a4,a0,a5
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	0017871b          	addiw	a4,a5,1
    80004a04:	0cc77663          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	0027871b          	addiw	a4,a5,2
    80004a14:	0ac77e63          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	0037871b          	addiw	a4,a5,3
    80004a24:	0ac77663          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a28:	00e50733          	add	a4,a0,a4
    80004a2c:	00b70023          	sb	a1,0(a4)
    80004a30:	0047871b          	addiw	a4,a5,4
    80004a34:	08c77e63          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	0057871b          	addiw	a4,a5,5
    80004a44:	08c77663          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	0067871b          	addiw	a4,a5,6
    80004a54:	06c77e63          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	0077871b          	addiw	a4,a5,7
    80004a64:	06c77663          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	0087871b          	addiw	a4,a5,8
    80004a74:	04c77e63          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a78:	00e50733          	add	a4,a0,a4
    80004a7c:	00b70023          	sb	a1,0(a4)
    80004a80:	0097871b          	addiw	a4,a5,9
    80004a84:	04c77663          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	00a7871b          	addiw	a4,a5,10
    80004a94:	02c77e63          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004a98:	00e50733          	add	a4,a0,a4
    80004a9c:	00b70023          	sb	a1,0(a4)
    80004aa0:	00b7871b          	addiw	a4,a5,11
    80004aa4:	02c77663          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004aa8:	00e50733          	add	a4,a0,a4
    80004aac:	00b70023          	sb	a1,0(a4)
    80004ab0:	00c7871b          	addiw	a4,a5,12
    80004ab4:	00c77e63          	bgeu	a4,a2,80004ad0 <__memset+0x1c8>
    80004ab8:	00e50733          	add	a4,a0,a4
    80004abc:	00b70023          	sb	a1,0(a4)
    80004ac0:	00d7879b          	addiw	a5,a5,13
    80004ac4:	00c7f663          	bgeu	a5,a2,80004ad0 <__memset+0x1c8>
    80004ac8:	00f507b3          	add	a5,a0,a5
    80004acc:	00b78023          	sb	a1,0(a5)
    80004ad0:	00813403          	ld	s0,8(sp)
    80004ad4:	01010113          	addi	sp,sp,16
    80004ad8:	00008067          	ret
    80004adc:	00b00693          	li	a3,11
    80004ae0:	e55ff06f          	j	80004934 <__memset+0x2c>
    80004ae4:	00300e93          	li	t4,3
    80004ae8:	ea5ff06f          	j	8000498c <__memset+0x84>
    80004aec:	00100e93          	li	t4,1
    80004af0:	e9dff06f          	j	8000498c <__memset+0x84>
    80004af4:	00000e93          	li	t4,0
    80004af8:	e95ff06f          	j	8000498c <__memset+0x84>
    80004afc:	00000793          	li	a5,0
    80004b00:	ef9ff06f          	j	800049f8 <__memset+0xf0>
    80004b04:	00200e93          	li	t4,2
    80004b08:	e85ff06f          	j	8000498c <__memset+0x84>
    80004b0c:	00400e93          	li	t4,4
    80004b10:	e7dff06f          	j	8000498c <__memset+0x84>
    80004b14:	00500e93          	li	t4,5
    80004b18:	e75ff06f          	j	8000498c <__memset+0x84>
    80004b1c:	00600e93          	li	t4,6
    80004b20:	e6dff06f          	j	8000498c <__memset+0x84>

0000000080004b24 <__memmove>:
    80004b24:	ff010113          	addi	sp,sp,-16
    80004b28:	00813423          	sd	s0,8(sp)
    80004b2c:	01010413          	addi	s0,sp,16
    80004b30:	0e060863          	beqz	a2,80004c20 <__memmove+0xfc>
    80004b34:	fff6069b          	addiw	a3,a2,-1
    80004b38:	0006881b          	sext.w	a6,a3
    80004b3c:	0ea5e863          	bltu	a1,a0,80004c2c <__memmove+0x108>
    80004b40:	00758713          	addi	a4,a1,7
    80004b44:	00a5e7b3          	or	a5,a1,a0
    80004b48:	40a70733          	sub	a4,a4,a0
    80004b4c:	0077f793          	andi	a5,a5,7
    80004b50:	00f73713          	sltiu	a4,a4,15
    80004b54:	00174713          	xori	a4,a4,1
    80004b58:	0017b793          	seqz	a5,a5
    80004b5c:	00e7f7b3          	and	a5,a5,a4
    80004b60:	10078863          	beqz	a5,80004c70 <__memmove+0x14c>
    80004b64:	00900793          	li	a5,9
    80004b68:	1107f463          	bgeu	a5,a6,80004c70 <__memmove+0x14c>
    80004b6c:	0036581b          	srliw	a6,a2,0x3
    80004b70:	fff8081b          	addiw	a6,a6,-1
    80004b74:	02081813          	slli	a6,a6,0x20
    80004b78:	01d85893          	srli	a7,a6,0x1d
    80004b7c:	00858813          	addi	a6,a1,8
    80004b80:	00058793          	mv	a5,a1
    80004b84:	00050713          	mv	a4,a0
    80004b88:	01088833          	add	a6,a7,a6
    80004b8c:	0007b883          	ld	a7,0(a5)
    80004b90:	00878793          	addi	a5,a5,8
    80004b94:	00870713          	addi	a4,a4,8
    80004b98:	ff173c23          	sd	a7,-8(a4)
    80004b9c:	ff0798e3          	bne	a5,a6,80004b8c <__memmove+0x68>
    80004ba0:	ff867713          	andi	a4,a2,-8
    80004ba4:	02071793          	slli	a5,a4,0x20
    80004ba8:	0207d793          	srli	a5,a5,0x20
    80004bac:	00f585b3          	add	a1,a1,a5
    80004bb0:	40e686bb          	subw	a3,a3,a4
    80004bb4:	00f507b3          	add	a5,a0,a5
    80004bb8:	06e60463          	beq	a2,a4,80004c20 <__memmove+0xfc>
    80004bbc:	0005c703          	lbu	a4,0(a1)
    80004bc0:	00e78023          	sb	a4,0(a5)
    80004bc4:	04068e63          	beqz	a3,80004c20 <__memmove+0xfc>
    80004bc8:	0015c603          	lbu	a2,1(a1)
    80004bcc:	00100713          	li	a4,1
    80004bd0:	00c780a3          	sb	a2,1(a5)
    80004bd4:	04e68663          	beq	a3,a4,80004c20 <__memmove+0xfc>
    80004bd8:	0025c603          	lbu	a2,2(a1)
    80004bdc:	00200713          	li	a4,2
    80004be0:	00c78123          	sb	a2,2(a5)
    80004be4:	02e68e63          	beq	a3,a4,80004c20 <__memmove+0xfc>
    80004be8:	0035c603          	lbu	a2,3(a1)
    80004bec:	00300713          	li	a4,3
    80004bf0:	00c781a3          	sb	a2,3(a5)
    80004bf4:	02e68663          	beq	a3,a4,80004c20 <__memmove+0xfc>
    80004bf8:	0045c603          	lbu	a2,4(a1)
    80004bfc:	00400713          	li	a4,4
    80004c00:	00c78223          	sb	a2,4(a5)
    80004c04:	00e68e63          	beq	a3,a4,80004c20 <__memmove+0xfc>
    80004c08:	0055c603          	lbu	a2,5(a1)
    80004c0c:	00500713          	li	a4,5
    80004c10:	00c782a3          	sb	a2,5(a5)
    80004c14:	00e68663          	beq	a3,a4,80004c20 <__memmove+0xfc>
    80004c18:	0065c703          	lbu	a4,6(a1)
    80004c1c:	00e78323          	sb	a4,6(a5)
    80004c20:	00813403          	ld	s0,8(sp)
    80004c24:	01010113          	addi	sp,sp,16
    80004c28:	00008067          	ret
    80004c2c:	02061713          	slli	a4,a2,0x20
    80004c30:	02075713          	srli	a4,a4,0x20
    80004c34:	00e587b3          	add	a5,a1,a4
    80004c38:	f0f574e3          	bgeu	a0,a5,80004b40 <__memmove+0x1c>
    80004c3c:	02069613          	slli	a2,a3,0x20
    80004c40:	02065613          	srli	a2,a2,0x20
    80004c44:	fff64613          	not	a2,a2
    80004c48:	00e50733          	add	a4,a0,a4
    80004c4c:	00c78633          	add	a2,a5,a2
    80004c50:	fff7c683          	lbu	a3,-1(a5)
    80004c54:	fff78793          	addi	a5,a5,-1
    80004c58:	fff70713          	addi	a4,a4,-1
    80004c5c:	00d70023          	sb	a3,0(a4)
    80004c60:	fec798e3          	bne	a5,a2,80004c50 <__memmove+0x12c>
    80004c64:	00813403          	ld	s0,8(sp)
    80004c68:	01010113          	addi	sp,sp,16
    80004c6c:	00008067          	ret
    80004c70:	02069713          	slli	a4,a3,0x20
    80004c74:	02075713          	srli	a4,a4,0x20
    80004c78:	00170713          	addi	a4,a4,1
    80004c7c:	00e50733          	add	a4,a0,a4
    80004c80:	00050793          	mv	a5,a0
    80004c84:	0005c683          	lbu	a3,0(a1)
    80004c88:	00178793          	addi	a5,a5,1
    80004c8c:	00158593          	addi	a1,a1,1
    80004c90:	fed78fa3          	sb	a3,-1(a5)
    80004c94:	fee798e3          	bne	a5,a4,80004c84 <__memmove+0x160>
    80004c98:	f89ff06f          	j	80004c20 <__memmove+0xfc>

0000000080004c9c <__putc>:
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00113c23          	sd	ra,24(sp)
    80004ca8:	02010413          	addi	s0,sp,32
    80004cac:	00050793          	mv	a5,a0
    80004cb0:	fef40593          	addi	a1,s0,-17
    80004cb4:	00100613          	li	a2,1
    80004cb8:	00000513          	li	a0,0
    80004cbc:	fef407a3          	sb	a5,-17(s0)
    80004cc0:	fffff097          	auipc	ra,0xfffff
    80004cc4:	b3c080e7          	jalr	-1220(ra) # 800037fc <console_write>
    80004cc8:	01813083          	ld	ra,24(sp)
    80004ccc:	01013403          	ld	s0,16(sp)
    80004cd0:	02010113          	addi	sp,sp,32
    80004cd4:	00008067          	ret

0000000080004cd8 <__getc>:
    80004cd8:	fe010113          	addi	sp,sp,-32
    80004cdc:	00813823          	sd	s0,16(sp)
    80004ce0:	00113c23          	sd	ra,24(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    80004ce8:	fe840593          	addi	a1,s0,-24
    80004cec:	00100613          	li	a2,1
    80004cf0:	00000513          	li	a0,0
    80004cf4:	fffff097          	auipc	ra,0xfffff
    80004cf8:	ae8080e7          	jalr	-1304(ra) # 800037dc <console_read>
    80004cfc:	fe844503          	lbu	a0,-24(s0)
    80004d00:	01813083          	ld	ra,24(sp)
    80004d04:	01013403          	ld	s0,16(sp)
    80004d08:	02010113          	addi	sp,sp,32
    80004d0c:	00008067          	ret

0000000080004d10 <console_handler>:
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00113c23          	sd	ra,24(sp)
    80004d1c:	00913423          	sd	s1,8(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	14202773          	csrr	a4,scause
    80004d28:	100027f3          	csrr	a5,sstatus
    80004d2c:	0027f793          	andi	a5,a5,2
    80004d30:	06079e63          	bnez	a5,80004dac <console_handler+0x9c>
    80004d34:	00074c63          	bltz	a4,80004d4c <console_handler+0x3c>
    80004d38:	01813083          	ld	ra,24(sp)
    80004d3c:	01013403          	ld	s0,16(sp)
    80004d40:	00813483          	ld	s1,8(sp)
    80004d44:	02010113          	addi	sp,sp,32
    80004d48:	00008067          	ret
    80004d4c:	0ff77713          	andi	a4,a4,255
    80004d50:	00900793          	li	a5,9
    80004d54:	fef712e3          	bne	a4,a5,80004d38 <console_handler+0x28>
    80004d58:	ffffe097          	auipc	ra,0xffffe
    80004d5c:	6dc080e7          	jalr	1756(ra) # 80003434 <plic_claim>
    80004d60:	00a00793          	li	a5,10
    80004d64:	00050493          	mv	s1,a0
    80004d68:	02f50c63          	beq	a0,a5,80004da0 <console_handler+0x90>
    80004d6c:	fc0506e3          	beqz	a0,80004d38 <console_handler+0x28>
    80004d70:	00050593          	mv	a1,a0
    80004d74:	00000517          	auipc	a0,0x0
    80004d78:	4fc50513          	addi	a0,a0,1276 # 80005270 <_ZZ12printIntegermE6digits+0xe0>
    80004d7c:	fffff097          	auipc	ra,0xfffff
    80004d80:	afc080e7          	jalr	-1284(ra) # 80003878 <__printf>
    80004d84:	01013403          	ld	s0,16(sp)
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	02010113          	addi	sp,sp,32
    80004d98:	ffffe317          	auipc	t1,0xffffe
    80004d9c:	6d430067          	jr	1748(t1) # 8000346c <plic_complete>
    80004da0:	fffff097          	auipc	ra,0xfffff
    80004da4:	3e0080e7          	jalr	992(ra) # 80004180 <uartintr>
    80004da8:	fddff06f          	j	80004d84 <console_handler+0x74>
    80004dac:	00000517          	auipc	a0,0x0
    80004db0:	5c450513          	addi	a0,a0,1476 # 80005370 <digits+0x78>
    80004db4:	fffff097          	auipc	ra,0xfffff
    80004db8:	a68080e7          	jalr	-1432(ra) # 8000381c <panic>
	...
