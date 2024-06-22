
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	00813103          	ld	sp,8(sp) # 80006008 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3a5020ef          	jal	ra,80002bc0 <start>

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
    80001184:	310010ef          	jal	ra,80002494 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001400 <_ZL9fibonaccim>:
        if(i == 10) thread_exit();
    }
}

static uint64 fibonacci(uint64 n)
{
    80001400:	fe010113          	addi	sp,sp,-32
    80001404:	00113c23          	sd	ra,24(sp)
    80001408:	00813823          	sd	s0,16(sp)
    8000140c:	00913423          	sd	s1,8(sp)
    80001410:	01213023          	sd	s2,0(sp)
    80001414:	02010413          	addi	s0,sp,32
    80001418:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000141c:	00100793          	li	a5,1
    80001420:	02a7f863          	bgeu	a5,a0,80001450 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001424:	00a00793          	li	a5,10
    80001428:	02f577b3          	remu	a5,a0,a5
    8000142c:	02078e63          	beqz	a5,80001468 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001430:	fff48513          	addi	a0,s1,-1
    80001434:	00000097          	auipc	ra,0x0
    80001438:	fcc080e7          	jalr	-52(ra) # 80001400 <_ZL9fibonaccim>
    8000143c:	00050913          	mv	s2,a0
    80001440:	ffe48513          	addi	a0,s1,-2
    80001444:	00000097          	auipc	ra,0x0
    80001448:	fbc080e7          	jalr	-68(ra) # 80001400 <_ZL9fibonaccim>
    8000144c:	00a90533          	add	a0,s2,a0
}
    80001450:	01813083          	ld	ra,24(sp)
    80001454:	01013403          	ld	s0,16(sp)
    80001458:	00813483          	ld	s1,8(sp)
    8000145c:	00013903          	ld	s2,0(sp)
    80001460:	02010113          	addi	sp,sp,32
    80001464:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	a30080e7          	jalr	-1488(ra) # 80001e98 <_ZN3TCB5yieldEv>
    80001470:	fc1ff06f          	j	80001430 <_ZL9fibonaccim+0x30>

0000000080001474 <_Z11workerBodyAPv>:
{
    80001474:	fe010113          	addi	sp,sp,-32
    80001478:	00113c23          	sd	ra,24(sp)
    8000147c:	00813823          	sd	s0,16(sp)
    80001480:	00913423          	sd	s1,8(sp)
    80001484:	01213023          	sd	s2,0(sp)
    80001488:	02010413          	addi	s0,sp,32
    8000148c:	00050913          	mv	s2,a0
    sem_wait(s);
    80001490:	00000097          	auipc	ra,0x0
    80001494:	f18080e7          	jalr	-232(ra) # 800013a8 <_Z8sem_waitP3sem>
    for (uint64 i = 0; i < 10; i++)
    80001498:	00000493          	li	s1,0
    8000149c:	0300006f          	j	800014cc <_Z11workerBodyAPv+0x58>
        for (uint64 j = 0; j < 10000; j++)
    800014a0:	00168693          	addi	a3,a3,1
    800014a4:	000027b7          	lui	a5,0x2
    800014a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014ac:	00d7ee63          	bltu	a5,a3,800014c8 <_Z11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++)
    800014b0:	00000713          	li	a4,0
    800014b4:	000077b7          	lui	a5,0x7
    800014b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014bc:	fee7e2e3          	bltu	a5,a4,800014a0 <_Z11workerBodyAPv+0x2c>
    800014c0:	00170713          	addi	a4,a4,1
    800014c4:	ff1ff06f          	j	800014b4 <_Z11workerBodyAPv+0x40>
    for (uint64 i = 0; i < 10; i++)
    800014c8:	00148493          	addi	s1,s1,1
    800014cc:	00900793          	li	a5,9
    800014d0:	0297ec63          	bltu	a5,s1,80001508 <_Z11workerBodyAPv+0x94>
        printString("A: i=");
    800014d4:	00004517          	auipc	a0,0x4
    800014d8:	b4c50513          	addi	a0,a0,-1204 # 80005020 <CONSOLE_STATUS+0x10>
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	5b8080e7          	jalr	1464(ra) # 80002a94 <_Z11printStringPKc>
        printInteger(i);
    800014e4:	00048513          	mv	a0,s1
    800014e8:	00001097          	auipc	ra,0x1
    800014ec:	61c080e7          	jalr	1564(ra) # 80002b04 <_Z12printIntegerm>
        printString("\n");
    800014f0:	00004517          	auipc	a0,0x4
    800014f4:	c0050513          	addi	a0,a0,-1024 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	59c080e7          	jalr	1436(ra) # 80002a94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001500:	00000693          	li	a3,0
    80001504:	fa1ff06f          	j	800014a4 <_Z11workerBodyAPv+0x30>
    sem_close(s);
    80001508:	00090513          	mv	a0,s2
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	e70080e7          	jalr	-400(ra) # 8000137c <_Z9sem_closeP3sem>
    sem_signal(s);
    80001514:	00090513          	mv	a0,s2
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	ebc080e7          	jalr	-324(ra) # 800013d4 <_Z10sem_signalP3sem>
}
    80001520:	01813083          	ld	ra,24(sp)
    80001524:	01013403          	ld	s0,16(sp)
    80001528:	00813483          	ld	s1,8(sp)
    8000152c:	00013903          	ld	s2,0(sp)
    80001530:	02010113          	addi	sp,sp,32
    80001534:	00008067          	ret

0000000080001538 <_Z11workerBodyBPv>:
{
    80001538:	fe010113          	addi	sp,sp,-32
    8000153c:	00113c23          	sd	ra,24(sp)
    80001540:	00813823          	sd	s0,16(sp)
    80001544:	00913423          	sd	s1,8(sp)
    80001548:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    8000154c:	00000493          	li	s1,0
    80001550:	0380006f          	j	80001588 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001554:	00168693          	addi	a3,a3,1
    80001558:	000027b7          	lui	a5,0x2
    8000155c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001560:	00d7ee63          	bltu	a5,a3,8000157c <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001564:	00000713          	li	a4,0
    80001568:	000077b7          	lui	a5,0x7
    8000156c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001570:	fee7e2e3          	bltu	a5,a4,80001554 <_Z11workerBodyBPv+0x1c>
    80001574:	00170713          	addi	a4,a4,1
    80001578:	ff1ff06f          	j	80001568 <_Z11workerBodyBPv+0x30>
        if(i == 10) thread_exit();
    8000157c:	00a00793          	li	a5,10
    80001580:	04f48263          	beq	s1,a5,800015c4 <_Z11workerBodyBPv+0x8c>
    for (uint64 i = 0; i < 16; i++)
    80001584:	00148493          	addi	s1,s1,1
    80001588:	00f00793          	li	a5,15
    8000158c:	0497e263          	bltu	a5,s1,800015d0 <_Z11workerBodyBPv+0x98>
        printString("B: i=");
    80001590:	00004517          	auipc	a0,0x4
    80001594:	a9850513          	addi	a0,a0,-1384 # 80005028 <CONSOLE_STATUS+0x18>
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	4fc080e7          	jalr	1276(ra) # 80002a94 <_Z11printStringPKc>
        printInteger(i);
    800015a0:	00048513          	mv	a0,s1
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	560080e7          	jalr	1376(ra) # 80002b04 <_Z12printIntegerm>
        printString("\n");
    800015ac:	00004517          	auipc	a0,0x4
    800015b0:	b4450513          	addi	a0,a0,-1212 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	4e0080e7          	jalr	1248(ra) # 80002a94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800015bc:	00000693          	li	a3,0
    800015c0:	f99ff06f          	j	80001558 <_Z11workerBodyBPv+0x20>
        if(i == 10) thread_exit();
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	ce4080e7          	jalr	-796(ra) # 800012a8 <_Z11thread_exitv>
    800015cc:	fb9ff06f          	j	80001584 <_Z11workerBodyBPv+0x4c>
}
    800015d0:	01813083          	ld	ra,24(sp)
    800015d4:	01013403          	ld	s0,16(sp)
    800015d8:	00813483          	ld	s1,8(sp)
    800015dc:	02010113          	addi	sp,sp,32
    800015e0:	00008067          	ret

00000000800015e4 <_Z11workerBodyCPv>:

void workerBodyC(void* g)
{
    800015e4:	fd010113          	addi	sp,sp,-48
    800015e8:	02113423          	sd	ra,40(sp)
    800015ec:	02813023          	sd	s0,32(sp)
    800015f0:	00913c23          	sd	s1,24(sp)
    800015f4:	01213823          	sd	s2,16(sp)
    800015f8:	01313423          	sd	s3,8(sp)
    800015fc:	03010413          	addi	s0,sp,48
    80001600:	00050913          	mv	s2,a0
   sem* s = (sem*) g;
    sem_wait(s);
    80001604:	00000097          	auipc	ra,0x0
    80001608:	da4080e7          	jalr	-604(ra) # 800013a8 <_Z8sem_waitP3sem>
    uint8 i = 0;
    8000160c:	00000493          	li	s1,0
    80001610:	0380006f          	j	80001648 <_Z11workerBodyCPv+0x64>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001614:	00004517          	auipc	a0,0x4
    80001618:	a1c50513          	addi	a0,a0,-1508 # 80005030 <CONSOLE_STATUS+0x20>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	478080e7          	jalr	1144(ra) # 80002a94 <_Z11printStringPKc>
        printInteger(i);
    80001624:	00048513          	mv	a0,s1
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	4dc080e7          	jalr	1244(ra) # 80002b04 <_Z12printIntegerm>
        printString("\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	ac050513          	addi	a0,a0,-1344 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	45c080e7          	jalr	1116(ra) # 80002a94 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001640:	0014849b          	addiw	s1,s1,1
    80001644:	0ff4f493          	andi	s1,s1,255
    80001648:	00200793          	li	a5,2
    8000164c:	fc97f4e3          	bgeu	a5,s1,80001614 <_Z11workerBodyCPv+0x30>
    }

    printString("C: yield\n");
    80001650:	00004517          	auipc	a0,0x4
    80001654:	9e850513          	addi	a0,a0,-1560 # 80005038 <CONSOLE_STATUS+0x28>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	43c080e7          	jalr	1084(ra) # 80002a94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001660:	00700313          	li	t1,7
    thread_dispatch();
    80001664:	00000097          	auipc	ra,0x0
    80001668:	c24080e7          	jalr	-988(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000166c:	00030993          	mv	s3,t1

    printString("C: t1=");
    80001670:	00004517          	auipc	a0,0x4
    80001674:	9d850513          	addi	a0,a0,-1576 # 80005048 <CONSOLE_STATUS+0x38>
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	41c080e7          	jalr	1052(ra) # 80002a94 <_Z11printStringPKc>
    printInteger(t1);
    80001680:	00098513          	mv	a0,s3
    80001684:	00001097          	auipc	ra,0x1
    80001688:	480080e7          	jalr	1152(ra) # 80002b04 <_Z12printIntegerm>
    printString("\n");
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	a6450513          	addi	a0,a0,-1436 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001694:	00001097          	auipc	ra,0x1
    80001698:	400080e7          	jalr	1024(ra) # 80002a94 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000169c:	00c00513          	li	a0,12
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	d60080e7          	jalr	-672(ra) # 80001400 <_ZL9fibonaccim>
    800016a8:	00050993          	mv	s3,a0
    printString("C: fibonaci=");
    800016ac:	00004517          	auipc	a0,0x4
    800016b0:	9a450513          	addi	a0,a0,-1628 # 80005050 <CONSOLE_STATUS+0x40>
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	3e0080e7          	jalr	992(ra) # 80002a94 <_Z11printStringPKc>
    printInteger(result);
    800016bc:	00098513          	mv	a0,s3
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	444080e7          	jalr	1092(ra) # 80002b04 <_Z12printIntegerm>
    printString("\n");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	a2850513          	addi	a0,a0,-1496 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	3c4080e7          	jalr	964(ra) # 80002a94 <_Z11printStringPKc>
    800016d8:	0380006f          	j	80001710 <_Z11workerBodyCPv+0x12c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800016dc:	00004517          	auipc	a0,0x4
    800016e0:	95450513          	addi	a0,a0,-1708 # 80005030 <CONSOLE_STATUS+0x20>
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	3b0080e7          	jalr	944(ra) # 80002a94 <_Z11printStringPKc>
        printInteger(i);
    800016ec:	00048513          	mv	a0,s1
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	414080e7          	jalr	1044(ra) # 80002b04 <_Z12printIntegerm>
        printString("\n");
    800016f8:	00004517          	auipc	a0,0x4
    800016fc:	9f850513          	addi	a0,a0,-1544 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	394080e7          	jalr	916(ra) # 80002a94 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001708:	0014849b          	addiw	s1,s1,1
    8000170c:	0ff4f493          	andi	s1,s1,255
    80001710:	00500793          	li	a5,5
    80001714:	fc97f4e3          	bgeu	a5,s1,800016dc <_Z11workerBodyCPv+0xf8>
    }
//    TCB::yield();
    sem_signal(s);
    80001718:	00090513          	mv	a0,s2
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	cb8080e7          	jalr	-840(ra) # 800013d4 <_Z10sem_signalP3sem>
}
    80001724:	02813083          	ld	ra,40(sp)
    80001728:	02013403          	ld	s0,32(sp)
    8000172c:	01813483          	ld	s1,24(sp)
    80001730:	01013903          	ld	s2,16(sp)
    80001734:	00813983          	ld	s3,8(sp)
    80001738:	03010113          	addi	sp,sp,48
    8000173c:	00008067          	ret

0000000080001740 <_Z11workerBodyDPv>:

void workerBodyD(void* g)
{
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001758:	00a00493          	li	s1,10
    8000175c:	0380006f          	j	80001794 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001760:	00004517          	auipc	a0,0x4
    80001764:	90050513          	addi	a0,a0,-1792 # 80005060 <CONSOLE_STATUS+0x50>
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	32c080e7          	jalr	812(ra) # 80002a94 <_Z11printStringPKc>
        printInteger(i);
    80001770:	00048513          	mv	a0,s1
    80001774:	00001097          	auipc	ra,0x1
    80001778:	390080e7          	jalr	912(ra) # 80002b04 <_Z12printIntegerm>
        printString("\n");
    8000177c:	00004517          	auipc	a0,0x4
    80001780:	97450513          	addi	a0,a0,-1676 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001784:	00001097          	auipc	ra,0x1
    80001788:	310080e7          	jalr	784(ra) # 80002a94 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000178c:	0014849b          	addiw	s1,s1,1
    80001790:	0ff4f493          	andi	s1,s1,255
    80001794:	00c00793          	li	a5,12
    80001798:	fc97f4e3          	bgeu	a5,s1,80001760 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    8000179c:	00004517          	auipc	a0,0x4
    800017a0:	8cc50513          	addi	a0,a0,-1844 # 80005068 <CONSOLE_STATUS+0x58>
    800017a4:	00001097          	auipc	ra,0x1
    800017a8:	2f0080e7          	jalr	752(ra) # 80002a94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800017ac:	00500313          	li	t1,5
    thread_dispatch();
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	ad8080e7          	jalr	-1320(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800017b8:	01000513          	li	a0,16
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	c44080e7          	jalr	-956(ra) # 80001400 <_ZL9fibonaccim>
    800017c4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800017c8:	00004517          	auipc	a0,0x4
    800017cc:	8b050513          	addi	a0,a0,-1872 # 80005078 <CONSOLE_STATUS+0x68>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	2c4080e7          	jalr	708(ra) # 80002a94 <_Z11printStringPKc>
    printInteger(result);
    800017d8:	00090513          	mv	a0,s2
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	328080e7          	jalr	808(ra) # 80002b04 <_Z12printIntegerm>
    printString("\n");
    800017e4:	00004517          	auipc	a0,0x4
    800017e8:	90c50513          	addi	a0,a0,-1780 # 800050f0 <CONSOLE_STATUS+0xe0>
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	2a8080e7          	jalr	680(ra) # 80002a94 <_Z11printStringPKc>
    800017f4:	0380006f          	j	8000182c <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	86850513          	addi	a0,a0,-1944 # 80005060 <CONSOLE_STATUS+0x50>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	294080e7          	jalr	660(ra) # 80002a94 <_Z11printStringPKc>
        printInteger(i);
    80001808:	00048513          	mv	a0,s1
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	2f8080e7          	jalr	760(ra) # 80002b04 <_Z12printIntegerm>
        printString("\n");
    80001814:	00004517          	auipc	a0,0x4
    80001818:	8dc50513          	addi	a0,a0,-1828 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	278080e7          	jalr	632(ra) # 80002a94 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001824:	0014849b          	addiw	s1,s1,1
    80001828:	0ff4f493          	andi	s1,s1,255
    8000182c:	00f00793          	li	a5,15
    80001830:	fc97f4e3          	bgeu	a5,s1,800017f8 <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    80001834:	01813083          	ld	ra,24(sp)
    80001838:	01013403          	ld	s0,16(sp)
    8000183c:	00813483          	ld	s1,8(sp)
    80001840:	00013903          	ld	s2,0(sp)
    80001844:	02010113          	addi	sp,sp,32
    80001848:	00008067          	ret

000000008000184c <_ZN3semnwEm>:
//

#include "../h/semaphore.hpp"

void *sem::operator new(size_t n)
{
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00113423          	sd	ra,8(sp)
    80001854:	00813023          	sd	s0,0(sp)
    80001858:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	008080e7          	jalr	8(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001864:	00813083          	ld	ra,8(sp)
    80001868:	00013403          	ld	s0,0(sp)
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <_ZN3semnaEm>:

void *sem::operator new[](size_t n)
{
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00113423          	sd	ra,8(sp)
    8000187c:	00813023          	sd	s0,0(sp)
    80001880:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001884:	00001097          	auipc	ra,0x1
    80001888:	fe0080e7          	jalr	-32(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000188c:	00813083          	ld	ra,8(sp)
    80001890:	00013403          	ld	s0,0(sp)
    80001894:	01010113          	addi	sp,sp,16
    80001898:	00008067          	ret

000000008000189c <_ZN3semdlEPv>:

void sem::operator delete(void *p) noexcept
{
    8000189c:	ff010113          	addi	sp,sp,-16
    800018a0:	00113423          	sd	ra,8(sp)
    800018a4:	00813023          	sd	s0,0(sp)
    800018a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	10c080e7          	jalr	268(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_ZN3semdaEPv>:

void sem::operator delete[](void *p) noexcept
{
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00113423          	sd	ra,8(sp)
    800018cc:	00813023          	sd	s0,0(sp)
    800018d0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	0e4080e7          	jalr	228(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_ZN3sem13openSemaphoreEi>:

sem *sem::openSemaphore(int val) {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	02010413          	addi	s0,sp,32
    80001900:	00050493          	mv	s1,a0
    return new sem(val);
    80001904:	01800513          	li	a0,24
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f44080e7          	jalr	-188(ra) # 8000184c <_ZN3semnwEm>
    int trywait();
    int timed_wait();


private:
    explicit sem(int val = 1): value(val), closed(false){};
    80001910:	00952023          	sw	s1,0(a0)
    80001914:	00050223          	sb	zero,4(a0)
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    80001918:	00053423          	sd	zero,8(a0)
    8000191c:	00053823          	sd	zero,16(a0)
}
    80001920:	01813083          	ld	ra,24(sp)
    80001924:	01013403          	ld	s0,16(sp)
    80001928:	00813483          	ld	s1,8(sp)
    8000192c:	02010113          	addi	sp,sp,32
    80001930:	00008067          	ret

0000000080001934 <_ZN3sem7trywaitEv>:
       unblock();
    }
    return 0;
}

int sem::trywait() {
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813423          	sd	s0,8(sp)
    8000193c:	01010413          	addi	s0,sp,16

    if(this->closed) return -2;
    80001940:	00454783          	lbu	a5,4(a0)
    80001944:	02079463          	bnez	a5,8000196c <_ZN3sem7trywaitEv+0x38>
    this->value--;
    80001948:	00052783          	lw	a5,0(a0)
    8000194c:	fff7879b          	addiw	a5,a5,-1
    80001950:	00f52023          	sw	a5,0(a0)
    if(this->value <0){
    80001954:	02079713          	slli	a4,a5,0x20
    80001958:	00074e63          	bltz	a4,80001974 <_ZN3sem7trywaitEv+0x40>
        return 0;
    }
    return 1;
    8000195c:	00100513          	li	a0,1

}
    80001960:	00813403          	ld	s0,8(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret
    if(this->closed) return -2;
    8000196c:	ffe00513          	li	a0,-2
    80001970:	ff1ff06f          	j	80001960 <_ZN3sem7trywaitEv+0x2c>
        return 0;
    80001974:	00000513          	li	a0,0
    80001978:	fe9ff06f          	j	80001960 <_ZN3sem7trywaitEv+0x2c>

000000008000197c <_ZN3sem10timed_waitEv>:

int sem::timed_wait() {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    return 0;
}
    80001988:	00000513          	li	a0,0
    8000198c:	00813403          	ld	s0,8(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_ZN3sem5blockEv>:

void sem::block() {
    80001998:	fe010113          	addi	sp,sp,-32
    8000199c:	00113c23          	sd	ra,24(sp)
    800019a0:	00813823          	sd	s0,16(sp)
    800019a4:	00913423          	sd	s1,8(sp)
    800019a8:	01213023          	sd	s2,0(sp)
    800019ac:	02010413          	addi	s0,sp,32
    800019b0:	00050493          	mv	s1,a0
    this->blocked.addLast(TCB::running);
    800019b4:	00004797          	auipc	a5,0x4
    800019b8:	6647b783          	ld	a5,1636(a5) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019bc:	0007b903          	ld	s2,0(a5)
        return MemoryAllocator::mem_alloc(n);
    800019c0:	01000513          	li	a0,16
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	ea0080e7          	jalr	-352(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
                head= elem;
                if(!tail) tail = head;
            }
            void addLast (T* data){
                Elem* elem = (Elem*)operator new(sizeof(Elem));
                elem->data=data;
    800019cc:	01253023          	sd	s2,0(a0)
                elem->next=0;
    800019d0:	00053423          	sd	zero,8(a0)
                if(tail){
    800019d4:	0104b783          	ld	a5,16(s1)
    800019d8:	04078863          	beqz	a5,80001a28 <_ZN3sem5blockEv+0x90>
                    tail->next = elem;
    800019dc:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    800019e0:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    800019e4:	00100593          	li	a1,1
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	6307b783          	ld	a5,1584(a5) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019f0:	0007b503          	ld	a0,0(a5)
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	6e8080e7          	jalr	1768(ra) # 800020dc <_ZN3TCB10setBlockedEb>

    TCB::timeSliceCounter=0;
    800019fc:	00004797          	auipc	a5,0x4
    80001a00:	6047b783          	ld	a5,1540(a5) # 80006000 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a04:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	50c080e7          	jalr	1292(ra) # 80001f14 <_ZN3TCB8dispatchEv>
}
    80001a10:	01813083          	ld	ra,24(sp)
    80001a14:	01013403          	ld	s0,16(sp)
    80001a18:	00813483          	ld	s1,8(sp)
    80001a1c:	00013903          	ld	s2,0(sp)
    80001a20:	02010113          	addi	sp,sp,32
    80001a24:	00008067          	ret
                }else{
                    head= tail = elem;
    80001a28:	00a4b823          	sd	a0,16(s1)
    80001a2c:	00a4b423          	sd	a0,8(s1)
    80001a30:	fb5ff06f          	j	800019e4 <_ZN3sem5blockEv+0x4c>

0000000080001a34 <_ZN3sem4waitEv>:
    if(this->closed) return -2;
    80001a34:	00454783          	lbu	a5,4(a0)
    80001a38:	04079663          	bnez	a5,80001a84 <_ZN3sem4waitEv+0x50>
    this->value--;
    80001a3c:	00052783          	lw	a5,0(a0)
    80001a40:	fff7879b          	addiw	a5,a5,-1
    80001a44:	00f52023          	sw	a5,0(a0)
    if(this->value <0){
    80001a48:	02079713          	slli	a4,a5,0x20
    80001a4c:	00074663          	bltz	a4,80001a58 <_ZN3sem4waitEv+0x24>
    return 0;
    80001a50:	00000513          	li	a0,0
}
    80001a54:	00008067          	ret
int sem::wait() {
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00113423          	sd	ra,8(sp)
    80001a60:	00813023          	sd	s0,0(sp)
    80001a64:	01010413          	addi	s0,sp,16
        block();
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	f30080e7          	jalr	-208(ra) # 80001998 <_ZN3sem5blockEv>
    return 0;
    80001a70:	00000513          	li	a0,0
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret
    if(this->closed) return -2;
    80001a84:	ffe00513          	li	a0,-2
    80001a88:	00008067          	ret

0000000080001a8c <_ZN3sem7unblockEv>:

void sem::unblock() {
    80001a8c:	fe010113          	addi	sp,sp,-32
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00813823          	sd	s0,16(sp)
    80001a98:	00913423          	sd	s1,8(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    80001aa0:	00050793          	mv	a5,a0
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001aa4:	00853503          	ld	a0,8(a0)
    80001aa8:	04050a63          	beqz	a0,80001afc <_ZN3sem7unblockEv+0x70>
                Elem *elem = head;
                head = head->next;
    80001aac:	00853703          	ld	a4,8(a0)
    80001ab0:	00e7b423          	sd	a4,8(a5)
                if(!head) tail = 0;
    80001ab4:	04070063          	beqz	a4,80001af4 <_ZN3sem7unblockEv+0x68>
                T *ret = elem->data;
    80001ab8:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	efc080e7          	jalr	-260(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
    TCB* thread = this->blocked.removeFirst();
    thread->setBlocked(false);
    80001ac4:	00000593          	li	a1,0
    80001ac8:	00048513          	mv	a0,s1
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	610080e7          	jalr	1552(ra) # 800020dc <_ZN3TCB10setBlockedEb>
    Scheduler::put(thread);
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	cec080e7          	jalr	-788(ra) # 800027c4 <_ZN9Scheduler3putEP3TCB>
}
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret
                if(!head) tail = 0;
    80001af4:	0007b823          	sd	zero,16(a5)
    80001af8:	fc1ff06f          	j	80001ab8 <_ZN3sem7unblockEv+0x2c>
                if(!head)return 0;
    80001afc:	00050493          	mv	s1,a0
    80001b00:	fc5ff06f          	j	80001ac4 <_ZN3sem7unblockEv+0x38>

0000000080001b04 <_ZN3sem14closeSemaphoreEv>:
    if(!this->closed) this->closed = true;
    80001b04:	00454783          	lbu	a5,4(a0)
    80001b08:	04079263          	bnez	a5,80001b4c <_ZN3sem14closeSemaphoreEv+0x48>
int sem::closeSemaphore() {
    80001b0c:	fe010113          	addi	sp,sp,-32
    80001b10:	00113c23          	sd	ra,24(sp)
    80001b14:	00813823          	sd	s0,16(sp)
    80001b18:	00913423          	sd	s1,8(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    80001b20:	00050493          	mv	s1,a0
    if(!this->closed) this->closed = true;
    80001b24:	00100793          	li	a5,1
    80001b28:	00f50223          	sb	a5,4(a0)
                operator delete(elem);
                return ret;
            }
            T* peekFirst(){
                if(!head) return 0;
    80001b2c:	0084b783          	ld	a5,8(s1)
    80001b30:	02078263          	beqz	a5,80001b54 <_ZN3sem14closeSemaphoreEv+0x50>
                return head->data;
    80001b34:	0007b783          	ld	a5,0(a5)
   while(this->blocked.peekFirst()){
    80001b38:	02078a63          	beqz	a5,80001b6c <_ZN3sem14closeSemaphoreEv+0x68>
       unblock();
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	f4c080e7          	jalr	-180(ra) # 80001a8c <_ZN3sem7unblockEv>
   while(this->blocked.peekFirst()){
    80001b48:	fe5ff06f          	j	80001b2c <_ZN3sem14closeSemaphoreEv+0x28>
    else return -2;
    80001b4c:	ffe00513          	li	a0,-2
}
    80001b50:	00008067          	ret
    return 0;
    80001b54:	00000513          	li	a0,0
}
    80001b58:	01813083          	ld	ra,24(sp)
    80001b5c:	01013403          	ld	s0,16(sp)
    80001b60:	00813483          	ld	s1,8(sp)
    80001b64:	02010113          	addi	sp,sp,32
    80001b68:	00008067          	ret
    return 0;
    80001b6c:	00000513          	li	a0,0
    80001b70:	fe9ff06f          	j	80001b58 <_ZN3sem14closeSemaphoreEv+0x54>

0000000080001b74 <_ZN3sem6signalEv>:
    if(this->closed) return -2;
    80001b74:	00454783          	lbu	a5,4(a0)
    80001b78:	04079663          	bnez	a5,80001bc4 <_ZN3sem6signalEv+0x50>
    this->value++;
    80001b7c:	00052783          	lw	a5,0(a0)
    80001b80:	0017879b          	addiw	a5,a5,1
    80001b84:	0007871b          	sext.w	a4,a5
    80001b88:	00f52023          	sw	a5,0(a0)
    if(this->value <=0){
    80001b8c:	00e05663          	blez	a4,80001b98 <_ZN3sem6signalEv+0x24>
    return 0;
    80001b90:	00000513          	li	a0,0
}
    80001b94:	00008067          	ret
int sem::signal() {
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00113423          	sd	ra,8(sp)
    80001ba0:	00813023          	sd	s0,0(sp)
    80001ba4:	01010413          	addi	s0,sp,16
       unblock();
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	ee4080e7          	jalr	-284(ra) # 80001a8c <_ZN3sem7unblockEv>
    return 0;
    80001bb0:	00000513          	li	a0,0
}
    80001bb4:	00813083          	ld	ra,8(sp)
    80001bb8:	00013403          	ld	s0,0(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret
    if(this->closed) return -2;
    80001bc4:	ffe00513          	li	a0,-2
    80001bc8:	00008067          	ret

0000000080001bcc <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"
#include "../h/semaphore.hpp"
int main()
{
    80001bcc:	fb010113          	addi	sp,sp,-80
    80001bd0:	04113423          	sd	ra,72(sp)
    80001bd4:	04813023          	sd	s0,64(sp)
    80001bd8:	02913c23          	sd	s1,56(sp)
    80001bdc:	05010413          	addi	s0,sp,80
    MemoryAllocator::init();
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	d40080e7          	jalr	-704(ra) # 80002920 <_ZN15MemoryAllocator4initEv>
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001be8:	00004797          	auipc	a5,0x4
    80001bec:	4107b783          	ld	a5,1040(a5) # 80005ff8 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001bf0:	10579073          	csrw	stvec,a5

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    80001bf4:	00004797          	auipc	a5,0x4
    80001bf8:	42c7b783          	ld	a5,1068(a5) # 80006020 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001bfc:	0007b503          	ld	a0,0(a5)
    80001c00:	00004797          	auipc	a5,0x4
    80001c04:	3e87b783          	ld	a5,1000(a5) # 80005fe8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c08:	0007b783          	ld	a5,0(a5)
    80001c0c:	40f50533          	sub	a0,a0,a5
    80001c10:	ff050513          	addi	a0,a0,-16
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    80001c14:	fc057513          	andi	a0,a0,-64
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	60c080e7          	jalr	1548(ra) # 80001224 <_Z9mem_allocm>
    80001c20:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    80001c24:	10050a63          	beqz	a0,80001d38 <main+0x16c>
        __putc('?');
    }
    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    80001c28:	00a00513          	li	a0,10
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	5f8080e7          	jalr	1528(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001c34:	10050a63          	beqz	a0,80001d48 <main+0x17c>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    80001c38:	00048513          	mv	a0,s1
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	d7c080e7          	jalr	-644(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
    if(status != 0) {
    80001c44:	10051a63          	bnez	a0,80001d58 <main+0x18c>
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    80001c48:	00a00513          	li	a0,10
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	5d8080e7          	jalr	1496(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001c54:	10050a63          	beqz	a0,80001d68 <main+0x19c>
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(&threads[0],nullptr, nullptr);
    80001c58:	00000613          	li	a2,0
    80001c5c:	00000593          	li	a1,0
    80001c60:	fb840513          	addi	a0,s0,-72
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	66c080e7          	jalr	1644(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = threads[0];
    80001c6c:	fb843703          	ld	a4,-72(s0)
    80001c70:	00004797          	auipc	a5,0x4
    80001c74:	3a87b783          	ld	a5,936(a5) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c78:	00e7b023          	sd	a4,0(a5)
    sem_t semafor;
    sem_open(&semafor, 1);
    80001c7c:	00100593          	li	a1,1
    80001c80:	fb040513          	addi	a0,s0,-80
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	6c8080e7          	jalr	1736(ra) # 8000134c <_Z8sem_openPP3semj>


    //threads[1] = TCB::createThread(workerBodyA, nullptr);
    thread_create(&threads[1],workerBodyA, semafor);
    80001c8c:	fb043603          	ld	a2,-80(s0)
    80001c90:	00004597          	auipc	a1,0x4
    80001c94:	3805b583          	ld	a1,896(a1) # 80006010 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c98:	fc040513          	addi	a0,s0,-64
    80001c9c:	fffff097          	auipc	ra,0xfffff
    80001ca0:	634080e7          	jalr	1588(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001ca4:	00003517          	auipc	a0,0x3
    80001ca8:	3e450513          	addi	a0,a0,996 # 80005088 <CONSOLE_STATUS+0x78>
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	de8080e7          	jalr	-536(ra) # 80002a94 <_Z11printStringPKc>
    //threads[2] = TCB::createThread(workerBodyB , nullptr);
    thread_create(&threads[2],workerBodyB, nullptr);
    80001cb4:	00000613          	li	a2,0
    80001cb8:	00004597          	auipc	a1,0x4
    80001cbc:	3705b583          	ld	a1,880(a1) # 80006028 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001cc0:	fc840513          	addi	a0,s0,-56
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	60c080e7          	jalr	1548(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001ccc:	00003517          	auipc	a0,0x3
    80001cd0:	3d450513          	addi	a0,a0,980 # 800050a0 <CONSOLE_STATUS+0x90>
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	dc0080e7          	jalr	-576(ra) # 80002a94 <_Z11printStringPKc>
    //threads[3] = TCB::createThread(workerBodyC, nullptr);
    thread_create(&threads[3],workerBodyC, semafor);
    80001cdc:	fb043603          	ld	a2,-80(s0)
    80001ce0:	00004597          	auipc	a1,0x4
    80001ce4:	3105b583          	ld	a1,784(a1) # 80005ff0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ce8:	fd040513          	addi	a0,s0,-48
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	5e4080e7          	jalr	1508(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001cf4:	00003517          	auipc	a0,0x3
    80001cf8:	3c450513          	addi	a0,a0,964 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	d98080e7          	jalr	-616(ra) # 80002a94 <_Z11printStringPKc>
    //threads[4] = TCB::createThread(workerBodyD, nullptr);
    thread_create(&threads[4],workerBodyD, nullptr);
    80001d04:	00000613          	li	a2,0
    80001d08:	00004597          	auipc	a1,0x4
    80001d0c:	3285b583          	ld	a1,808(a1) # 80006030 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d10:	fd840513          	addi	a0,s0,-40
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5bc080e7          	jalr	1468(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001d1c:	00003517          	auipc	a0,0x3
    80001d20:	3b450513          	addi	a0,a0,948 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	d70080e7          	jalr	-656(ra) # 80002a94 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d2c:	00200793          	li	a5,2
    80001d30:	1007a073          	csrs	sstatus,a5
}
    80001d34:	04c0006f          	j	80001d80 <main+0x1b4>
        __putc('?');
    80001d38:	03f00513          	li	a0,63
    80001d3c:	00003097          	auipc	ra,0x3
    80001d40:	f40080e7          	jalr	-192(ra) # 80004c7c <__putc>
    80001d44:	ee5ff06f          	j	80001c28 <main+0x5c>
        __putc('k');
    80001d48:	06b00513          	li	a0,107
    80001d4c:	00003097          	auipc	ra,0x3
    80001d50:	f30080e7          	jalr	-208(ra) # 80004c7c <__putc>
    80001d54:	ee5ff06f          	j	80001c38 <main+0x6c>
        __putc('?');
    80001d58:	03f00513          	li	a0,63
    80001d5c:	00003097          	auipc	ra,0x3
    80001d60:	f20080e7          	jalr	-224(ra) # 80004c7c <__putc>
    80001d64:	ee5ff06f          	j	80001c48 <main+0x7c>
        __putc('?');
    80001d68:	03f00513          	li	a0,63
    80001d6c:	00003097          	auipc	ra,0x3
    80001d70:	f10080e7          	jalr	-240(ra) # 80004c7c <__putc>
    80001d74:	ee5ff06f          	j	80001c58 <main+0x8c>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	510080e7          	jalr	1296(ra) # 80001288 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001d80:	fc043783          	ld	a5,-64(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    80001d84:	0307c783          	lbu	a5,48(a5)
    80001d88:	fe0788e3          	beqz	a5,80001d78 <main+0x1ac>
             threads[2]->isFinished() &&
    80001d8c:	fc843783          	ld	a5,-56(s0)
    80001d90:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001d94:	fe0782e3          	beqz	a5,80001d78 <main+0x1ac>
             threads[3]->isFinished() &&
    80001d98:	fd043783          	ld	a5,-48(s0)
    80001d9c:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    80001da0:	fc078ce3          	beqz	a5,80001d78 <main+0x1ac>
             threads[4]->isFinished()))
    80001da4:	fd843783          	ld	a5,-40(s0)
    80001da8:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001dac:	fc0786e3          	beqz	a5,80001d78 <main+0x1ac>
    80001db0:	fb840493          	addi	s1,s0,-72
    }

    for (auto &thread: threads)
    80001db4:	fe040793          	addi	a5,s0,-32
    80001db8:	00f48c63          	beq	s1,a5,80001dd0 <main+0x204>
    {
        TCB::deleteThread(thread);
    80001dbc:	0004b503          	ld	a0,0(s1)
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	294080e7          	jalr	660(ra) # 80002054 <_ZN3TCB12deleteThreadEPS_>
    for (auto &thread: threads)
    80001dc8:	00848493          	addi	s1,s1,8
    80001dcc:	fe9ff06f          	j	80001db4 <main+0x1e8>
    }
    printString("Finished\n");
    80001dd0:	00003517          	auipc	a0,0x3
    80001dd4:	31850513          	addi	a0,a0,792 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	cbc080e7          	jalr	-836(ra) # 80002a94 <_Z11printStringPKc>

    return 0;
}
    80001de0:	00000513          	li	a0,0
    80001de4:	04813083          	ld	ra,72(sp)
    80001de8:	04013403          	ld	s0,64(sp)
    80001dec:	03813483          	ld	s1,56(sp)
    80001df0:	05010113          	addi	sp,sp,80
    80001df4:	00008067          	ret

0000000080001df8 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	a5c080e7          	jalr	-1444(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00113423          	sd	ra,8(sp)
    80001e28:	00813023          	sd	s0,0(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	a34080e7          	jalr	-1484(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	00813023          	sd	s0,0(sp)
    80001e54:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	b60080e7          	jalr	-1184(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00113423          	sd	ra,8(sp)
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	b38080e7          	jalr	-1224(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813423          	sd	s0,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001ea4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001ea8:	00000073          	ecall
}
    80001eac:	00813403          	ld	s0,8(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    80001eb8:	fe010113          	addi	sp,sp,-32
    80001ebc:	00113c23          	sd	ra,24(sp)
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	5a8080e7          	jalr	1448(ra) # 80002474 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001ed4:	00004497          	auipc	s1,0x4
    80001ed8:	1ac48493          	addi	s1,s1,428 # 80006080 <_ZN3TCB7runningE>
    80001edc:	0004b783          	ld	a5,0(s1)
    80001ee0:	0007b703          	ld	a4,0(a5)
    80001ee4:	0087b503          	ld	a0,8(a5)
    80001ee8:	000700e7          	jalr	a4
    running->setFinished(true);
    80001eec:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f;}
    80001ef0:	00100713          	li	a4,1
    80001ef4:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	fa0080e7          	jalr	-96(ra) # 80001e98 <_ZN3TCB5yieldEv>
}
    80001f00:	01813083          	ld	ra,24(sp)
    80001f04:	01013403          	ld	s0,16(sp)
    80001f08:	00813483          	ld	s1,8(sp)
    80001f0c:	02010113          	addi	sp,sp,32
    80001f10:	00008067          	ret

0000000080001f14 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001f14:	fe010113          	addi	sp,sp,-32
    80001f18:	00113c23          	sd	ra,24(sp)
    80001f1c:	00813823          	sd	s0,16(sp)
    80001f20:	00913423          	sd	s1,8(sp)
    80001f24:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001f28:	00004497          	auipc	s1,0x4
    80001f2c:	1584b483          	ld	s1,344(s1) # 80006080 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001f30:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->blocked){
    80001f34:	00079663          	bnez	a5,80001f40 <_ZN3TCB8dispatchEv+0x2c>
    80001f38:	0314c783          	lbu	a5,49(s1)
    80001f3c:	02078c63          	beqz	a5,80001f74 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	81c080e7          	jalr	-2020(ra) # 8000275c <_ZN9Scheduler3getEv>
    80001f48:	00004797          	auipc	a5,0x4
    80001f4c:	12a7bc23          	sd	a0,312(a5) # 80006080 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f50:	01850593          	addi	a1,a0,24
    80001f54:	01848513          	addi	a0,s1,24
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	2b8080e7          	jalr	696(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f60:	01813083          	ld	ra,24(sp)
    80001f64:	01013403          	ld	s0,16(sp)
    80001f68:	00813483          	ld	s1,8(sp)
    80001f6c:	02010113          	addi	sp,sp,32
    80001f70:	00008067          	ret
        Scheduler::put(old);
    80001f74:	00048513          	mv	a0,s1
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	84c080e7          	jalr	-1972(ra) # 800027c4 <_ZN9Scheduler3putEP3TCB>
    80001f80:	fc1ff06f          	j	80001f40 <_ZN3TCB8dispatchEv+0x2c>

0000000080001f84 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001f84:	fd010113          	addi	sp,sp,-48
    80001f88:	02113423          	sd	ra,40(sp)
    80001f8c:	02813023          	sd	s0,32(sp)
    80001f90:	00913c23          	sd	s1,24(sp)
    80001f94:	01213823          	sd	s2,16(sp)
    80001f98:	01313423          	sd	s3,8(sp)
    80001f9c:	01413023          	sd	s4,0(sp)
    80001fa0:	03010413          	addi	s0,sp,48
    80001fa4:	00050993          	mv	s3,a0
    80001fa8:	00058a13          	mv	s4,a1
    80001fac:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001fb0:	03800513          	li	a0,56
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	e44080e7          	jalr	-444(ra) # 80001df8 <_ZN3TCBnwEm>
    80001fbc:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001fc0:	01353023          	sd	s3,0(a0)
    80001fc4:	01453423          	sd	s4,8(a0)
    80001fc8:	01253823          	sd	s2,16(a0)
    80001fcc:	00000797          	auipc	a5,0x0
    80001fd0:	eec78793          	addi	a5,a5,-276 # 80001eb8 <_ZN3TCB13threadWrapperEv>
    80001fd4:	00f53c23          	sd	a5,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001fd8:	02090a63          	beqz	s2,8000200c <_ZN3TCB12createThreadEPFvPvES0_S0_+0x88>
    80001fdc:	00008637          	lui	a2,0x8
    80001fe0:	00c90933          	add	s2,s2,a2
                blocked(false)
    80001fe4:	0324b023          	sd	s2,32(s1)
    80001fe8:	00200793          	li	a5,2
    80001fec:	02f4b423          	sd	a5,40(s1)
    80001ff0:	02048823          	sb	zero,48(s1)
    80001ff4:	020488a3          	sb	zero,49(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80001ff8:	02098c63          	beqz	s3,80002030 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xac>
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	7c4080e7          	jalr	1988(ra) # 800027c4 <_ZN9Scheduler3putEP3TCB>
    80002008:	0280006f          	j	80002030 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xac>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000200c:	00000913          	li	s2,0
    80002010:	fd5ff06f          	j	80001fe4 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x60>
    80002014:	00050913          	mv	s2,a0
    80002018:	00048513          	mv	a0,s1
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	e2c080e7          	jalr	-468(ra) # 80001e48 <_ZN3TCBdlEPv>
    80002024:	00090513          	mv	a0,s2
    80002028:	00005097          	auipc	ra,0x5
    8000202c:	150080e7          	jalr	336(ra) # 80007178 <_Unwind_Resume>
}
    80002030:	00048513          	mv	a0,s1
    80002034:	02813083          	ld	ra,40(sp)
    80002038:	02013403          	ld	s0,32(sp)
    8000203c:	01813483          	ld	s1,24(sp)
    80002040:	01013903          	ld	s2,16(sp)
    80002044:	00813983          	ld	s3,8(sp)
    80002048:	00013a03          	ld	s4,0(sp)
    8000204c:	03010113          	addi	sp,sp,48
    80002050:	00008067          	ret

0000000080002054 <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80002054:	04050463          	beqz	a0,8000209c <_ZN3TCB12deleteThreadEPS_+0x48>
void TCB::deleteThread(TCB* thread){
    80002058:	fe010113          	addi	sp,sp,-32
    8000205c:	00113c23          	sd	ra,24(sp)
    80002060:	00813823          	sd	s0,16(sp)
    80002064:	00913423          	sd	s1,8(sp)
    80002068:	02010413          	addi	s0,sp,32
    8000206c:	00050493          	mv	s1,a0
    ~TCB(){TCB::operator delete[](stack);}
    80002070:	01053503          	ld	a0,16(a0)
    80002074:	00000097          	auipc	ra,0x0
    80002078:	dfc080e7          	jalr	-516(ra) # 80001e70 <_ZN3TCBdaEPv>
    delete thread;
    8000207c:	00048513          	mv	a0,s1
    80002080:	00000097          	auipc	ra,0x0
    80002084:	dc8080e7          	jalr	-568(ra) # 80001e48 <_ZN3TCBdlEPv>
}
    80002088:	01813083          	ld	ra,24(sp)
    8000208c:	01013403          	ld	s0,16(sp)
    80002090:	00813483          	ld	s1,8(sp)
    80002094:	02010113          	addi	sp,sp,32
    80002098:	00008067          	ret
    8000209c:	00008067          	ret

00000000800020a0 <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00113423          	sd	ra,8(sp)
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { TCB::finished = f;}
    800020b0:	00004797          	auipc	a5,0x4
    800020b4:	fd07b783          	ld	a5,-48(a5) # 80006080 <_ZN3TCB7runningE>
    800020b8:	00100713          	li	a4,1
    800020bc:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	e54080e7          	jalr	-428(ra) # 80001f14 <_ZN3TCB8dispatchEv>
}
    800020c8:	00000513          	li	a0,0
    800020cc:	00813083          	ld	ra,8(sp)
    800020d0:	00013403          	ld	s0,0(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret

00000000800020dc <_ZN3TCB10setBlockedEb>:

void TCB::setBlocked(bool b) {
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16
    this->blocked = b;
    800020e8:	02b508a3          	sb	a1,49(a0)
}
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN6Thread13threadWrapperEPv>:
//protected thread
Thread::Thread() {
    myHandle= nullptr;
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
}
void Thread::threadWrapper(void *thread) {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00113423          	sd	ra,8(sp)
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80002108:	00053783          	ld	a5,0(a0)
    8000210c:	0107b783          	ld	a5,16(a5)
    80002110:	000780e7          	jalr	a5
}
    80002114:	00813083          	ld	ra,8(sp)
    80002118:	00013403          	ld	s0,0(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret

0000000080002124 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002124:	fe010113          	addi	sp,sp,-32
    80002128:	00113c23          	sd	ra,24(sp)
    8000212c:	00813823          	sd	s0,16(sp)
    80002130:	00913423          	sd	s1,8(sp)
    80002134:	02010413          	addi	s0,sp,32
    80002138:	00004797          	auipc	a5,0x4
    8000213c:	e7078793          	addi	a5,a5,-400 # 80005fa8 <_ZTV6Thread+0x10>
    80002140:	00f53023          	sd	a5,0(a0)
    myHandle->setFinished(true);
    80002144:	00853783          	ld	a5,8(a0)
    80002148:	00100713          	li	a4,1
    8000214c:	02e78823          	sb	a4,48(a5)
    _syscall_cpp::delete myHandle;
    80002150:	00853483          	ld	s1,8(a0)
    80002154:	00048e63          	beqz	s1,80002170 <_ZN6ThreadD1Ev+0x4c>
    ~TCB(){TCB::operator delete[](stack);}
    80002158:	0104b503          	ld	a0,16(s1)
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	d14080e7          	jalr	-748(ra) # 80001e70 <_ZN3TCBdaEPv>
    80002164:	00048513          	mv	a0,s1
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	2bc080e7          	jalr	700(ra) # 80002424 <_ZdlPv>
}
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00813483          	ld	s1,8(sp)
    8000217c:	02010113          	addi	sp,sp,32
    80002180:	00008067          	ret

0000000080002184 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002184:	fe010113          	addi	sp,sp,-32
    80002188:	00113c23          	sd	ra,24(sp)
    8000218c:	00813823          	sd	s0,16(sp)
    80002190:	00913423          	sd	s1,8(sp)
    80002194:	02010413          	addi	s0,sp,32
    80002198:	00050493          	mv	s1,a0
}
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	f88080e7          	jalr	-120(ra) # 80002124 <_ZN6ThreadD1Ev>
    800021a4:	00048513          	mv	a0,s1
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	27c080e7          	jalr	636(ra) # 80002424 <_ZdlPv>
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	02010113          	addi	sp,sp,32
    800021c0:	00008067          	ret

00000000800021c4 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    800021c4:	fe010113          	addi	sp,sp,-32
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	02010413          	addi	s0,sp,32
    800021d8:	00050493          	mv	s1,a0
    800021dc:	00004797          	auipc	a5,0x4
    800021e0:	df478793          	addi	a5,a5,-524 # 80005fd0 <_ZTV9Semaphore+0x10>
    800021e4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800021e8:	00853503          	ld	a0,8(a0)
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	190080e7          	jalr	400(ra) # 8000137c <_Z9sem_closeP3sem>
    ::delete myHandle;
    800021f4:	0084b503          	ld	a0,8(s1)
    800021f8:	00050663          	beqz	a0,80002204 <_ZN9SemaphoreD1Ev+0x40>
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	228080e7          	jalr	552(ra) # 80002424 <_ZdlPv>
}
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret

0000000080002218 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	02010413          	addi	s0,sp,32
    8000222c:	00050493          	mv	s1,a0
}
    80002230:	00000097          	auipc	ra,0x0
    80002234:	f94080e7          	jalr	-108(ra) # 800021c4 <_ZN9SemaphoreD1Ev>
    80002238:	00048513          	mv	a0,s1
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	1e8080e7          	jalr	488(ra) # 80002424 <_ZdlPv>
    80002244:	01813083          	ld	ra,24(sp)
    80002248:	01013403          	ld	s0,16(sp)
    8000224c:	00813483          	ld	s1,8(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	00004797          	auipc	a5,0x4
    8000226c:	d4078793          	addi	a5,a5,-704 # 80005fa8 <_ZTV6Thread+0x10>
    80002270:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002274:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80002278:	00850513          	addi	a0,a0,8
    8000227c:	fffff097          	auipc	ra,0xfffff
    80002280:	054080e7          	jalr	84(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
}//prvo mem alloc!!!
    80002284:	00813083          	ld	ra,8(sp)
    80002288:	00013403          	ld	s0,0(sp)
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret

0000000080002294 <_ZN6Thread5startEv>:
int Thread::start() {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00813423          	sd	s0,8(sp)
    8000229c:	01010413          	addi	s0,sp,16
}
    800022a0:	00000513          	li	a0,0
    800022a4:	00813403          	ld	s0,8(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	fc8080e7          	jalr	-56(ra) # 80001288 <_Z15thread_dispatchv>
}
    800022c8:	00813083          	ld	ra,8(sp)
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
    800022e8:	00004797          	auipc	a5,0x4
    800022ec:	cc078793          	addi	a5,a5,-832 # 80005fa8 <_ZTV6Thread+0x10>
    800022f0:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    800022f4:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    800022f8:	00050613          	mv	a2,a0
    800022fc:	00000597          	auipc	a1,0x0
    80002300:	dfc58593          	addi	a1,a1,-516 # 800020f8 <_ZN6Thread13threadWrapperEPv>
    80002304:	00850513          	addi	a0,a0,8
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	fc8080e7          	jalr	-56(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002310:	00813083          	ld	ra,8(sp)
    80002314:	00013403          	ld	s0,0(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00113423          	sd	ra,8(sp)
    80002328:	00813023          	sd	s0,0(sp)
    8000232c:	01010413          	addi	s0,sp,16
    80002330:	00004797          	auipc	a5,0x4
    80002334:	ca078793          	addi	a5,a5,-864 # 80005fd0 <_ZTV9Semaphore+0x10>
    80002338:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000233c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80002340:	00850513          	addi	a0,a0,8
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	008080e7          	jalr	8(ra) # 8000134c <_Z8sem_openPP3semj>
}
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    sem_wait(myHandle);
    8000236c:	00853503          	ld	a0,8(a0)
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	038080e7          	jalr	56(ra) # 800013a8 <_Z8sem_waitP3sem>
    return 0;
}
    80002378:	00000513          	li	a0,0
    8000237c:	00813083          	ld	ra,8(sp)
    80002380:	00013403          	ld	s0,0(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret

000000008000238c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00113423          	sd	ra,8(sp)
    80002394:	00813023          	sd	s0,0(sp)
    80002398:	01010413          	addi	s0,sp,16
    sem_signal(myHandle);
    8000239c:	00853503          	ld	a0,8(a0)
    800023a0:	fffff097          	auipc	ra,0xfffff
    800023a4:	034080e7          	jalr	52(ra) # 800013d4 <_Z10sem_signalP3sem>
    return 0;
}
    800023a8:	00000513          	li	a0,0
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN6Thread3runEv>:
        int start ();
        static void dispatch ();
        static int sleep (time_t);
        protected:
        Thread ();
        virtual void run () {}
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00113423          	sd	ra,8(sp)
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	e40080e7          	jalr	-448(ra) # 80001224 <_Z9mem_allocm>
}
    800023ec:	00813083          	ld	ra,8(sp)
    800023f0:	00013403          	ld	s0,0(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_Znam>:

void *operator new[](size_t n)
{
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	e18080e7          	jalr	-488(ra) # 80001224 <_Z9mem_allocm>
}
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00113423          	sd	ra,8(sp)
    8000242c:	00813023          	sd	s0,0(sp)
    80002430:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	e28080e7          	jalr	-472(ra) # 8000125c <_Z8mem_freePv>
}
    8000243c:	00813083          	ld	ra,8(sp)
    80002440:	00013403          	ld	s0,0(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	00813023          	sd	s0,0(sp)
    80002458:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	e00080e7          	jalr	-512(ra) # 8000125c <_Z8mem_freePv>
    80002464:	00813083          	ld	ra,8(sp)
    80002468:	00013403          	ld	s0,0(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00813423          	sd	s0,8(sp)
    8000247c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002480:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002484:	10200073          	sret
}
    80002488:	00813403          	ld	s0,8(sp)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002494:	f8010113          	addi	sp,sp,-128
    80002498:	06113c23          	sd	ra,120(sp)
    8000249c:	06813823          	sd	s0,112(sp)
    800024a0:	06913423          	sd	s1,104(sp)
    800024a4:	08010413          	addi	s0,sp,128

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800024a8:	00050793          	mv	a5,a0
    800024ac:	faf43423          	sd	a5,-88(s0)
    return a0;
    800024b0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800024b4:	14202773          	csrr	a4,scause
    800024b8:	fae43023          	sd	a4,-96(s0)
    return scause;
    800024bc:	fa043503          	ld	a0,-96(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    800024c0:	ff850693          	addi	a3,a0,-8
    800024c4:	00100713          	li	a4,1
    800024c8:	04d77c63          	bgeu	a4,a3,80002520 <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    800024cc:	fff00793          	li	a5,-1
    800024d0:	03f79793          	slli	a5,a5,0x3f
    800024d4:	00178793          	addi	a5,a5,1
    800024d8:	1cf50063          	beq	a0,a5,80002698 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    800024dc:	fff00793          	li	a5,-1
    800024e0:	03f79793          	slli	a5,a5,0x3f
    800024e4:	00978793          	addi	a5,a5,9
    800024e8:	22f50463          	beq	a0,a5,80002710 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	618080e7          	jalr	1560(ra) # 80002b04 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024f4:	141027f3          	csrr	a5,sepc
    800024f8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800024fc:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80002500:	00000097          	auipc	ra,0x0
    80002504:	604080e7          	jalr	1540(ra) # 80002b04 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002508:	143027f3          	csrr	a5,stval
    8000250c:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80002510:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80002514:	00000097          	auipc	ra,0x0
    80002518:	5f0080e7          	jalr	1520(ra) # 80002b04 <_Z12printIntegerm>
    }
    8000251c:	0700006f          	j	8000258c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002520:	14102773          	csrr	a4,sepc
    80002524:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80002528:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    8000252c:	00470713          	addi	a4,a4,4
    80002530:	f8e43023          	sd	a4,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002534:	10002773          	csrr	a4,sstatus
    80002538:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    8000253c:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80002540:	f8e43423          	sd	a4,-120(s0)
        switch (ra) {
    80002544:	02400713          	li	a4,36
    80002548:	02f76a63          	bltu	a4,a5,8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    8000254c:	00279793          	slli	a5,a5,0x2
    80002550:	00003717          	auipc	a4,0x3
    80002554:	ba470713          	addi	a4,a4,-1116 # 800050f4 <CONSOLE_STATUS+0xe4>
    80002558:	00e787b3          	add	a5,a5,a4
    8000255c:	0007a783          	lw	a5,0(a5)
    80002560:	00e787b3          	add	a5,a5,a4
    80002564:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1":"=r"(size));
    80002568:	00058513          	mv	a0,a1
                mallocr = MemoryAllocator::mem_alloc(size);
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	2f8080e7          	jalr	760(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80002574:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002578:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    8000257c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002580:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002584:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002588:	14179073          	csrw	sepc,a5
    8000258c:	07813083          	ld	ra,120(sp)
    80002590:	07013403          	ld	s0,112(sp)
    80002594:	06813483          	ld	s1,104(sp)
    80002598:	08010113          	addi	sp,sp,128
    8000259c:	00008067          	ret
                __asm__ volatile("mv %0, a1":"=r"(freep));
    800025a0:	00058513          	mv	a0,a1
                greska = MemoryAllocator::mem_free(freep);
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	414080e7          	jalr	1044(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    800025ac:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    800025b0:	04543823          	sd	t0,80(s0)
                break;
    800025b4:	fc9ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
    800025b8:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    800025bc:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    800025c0:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    800025c4:	07043603          	ld	a2,112(s0)
                *thandle = TCB::createThread(start_routine,arg, stek);
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	9bc080e7          	jalr	-1604(ra) # 80001f84 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800025d0:	00a4b023          	sd	a0,0(s1)
                if(*thandle != nullptr) ret =0;
    800025d4:	00050a63          	beqz	a0,800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    800025d8:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800025dc:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    800025e0:	04543823          	sd	t0,80(s0)
                break;
    800025e4:	f99ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    800025e8:	fff00793          	li	a5,-1
    800025ec:	ff1ff06f          	j	800025dc <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                ret = TCB::exitThread();
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	ab0080e7          	jalr	-1360(ra) # 800020a0 <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800025f8:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800025fc:	04542823          	sw	t0,80(s0)
                break;
    80002600:	f7dff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                TCB::timeSliceCounter=0;
    80002604:	00004797          	auipc	a5,0x4
    80002608:	9fc7b783          	ld	a5,-1540(a5) # 80006000 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000260c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002610:	00000097          	auipc	ra,0x0
    80002614:	904080e7          	jalr	-1788(ra) # 80001f14 <_ZN3TCB8dispatchEv>
                break;
    80002618:	f65ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
    8000261c:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
    80002620:	06043503          	ld	a0,96(s0)
                *shandle = sem::openSemaphore(val);
    80002624:	0005051b          	sext.w	a0,a0
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	2c4080e7          	jalr	708(ra) # 800018ec <_ZN3sem13openSemaphoreEi>
    80002630:	00a4b023          	sd	a0,0(s1)
                if(*shandle != nullptr) ret =0;
    80002634:	00050a63          	beqz	a0,80002648 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    80002638:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000263c:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80002640:	04542823          	sw	t0,80(s0)
                break;
    80002644:	f39ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    80002648:	fff00793          	li	a5,-1
    8000264c:	ff1ff06f          	j	8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002650:	05843503          	ld	a0,88(s0)
                ret = id->sem::closeSemaphore();
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	4b0080e7          	jalr	1200(ra) # 80001b04 <_ZN3sem14closeSemaphoreEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000265c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002660:	04542823          	sw	t0,80(s0)
                break;
    80002664:	f19ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002668:	05843503          	ld	a0,88(s0)
                ret = id->sem::wait();
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	3c8080e7          	jalr	968(ra) # 80001a34 <_ZN3sem4waitEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80002674:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002678:	04542823          	sw	t0,80(s0)
                break;
    8000267c:	f01ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
    80002680:	05843503          	ld	a0,88(s0)
                ret = id->sem::signal();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	4f0080e7          	jalr	1264(ra) # 80001b74 <_ZN3sem6signalEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    8000268c:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80002690:	04542823          	sw	t0,80(s0)
                break;
    80002694:	ee9ff06f          	j	8000257c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002698:	00200793          	li	a5,2
    8000269c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800026a0:	00004717          	auipc	a4,0x4
    800026a4:	96073703          	ld	a4,-1696(a4) # 80006000 <_GLOBAL_OFFSET_TABLE_+0x20>
    800026a8:	00073783          	ld	a5,0(a4)
    800026ac:	00178793          	addi	a5,a5,1
    800026b0:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800026b4:	00004717          	auipc	a4,0x4
    800026b8:	96473703          	ld	a4,-1692(a4) # 80006018 <_GLOBAL_OFFSET_TABLE_+0x38>
    800026bc:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800026c0:	02873703          	ld	a4,40(a4)
    800026c4:	ece7e4e3          	bltu	a5,a4,8000258c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800026c8:	141027f3          	csrr	a5,sepc
    800026cc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800026d0:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    800026d4:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800026d8:	100027f3          	csrr	a5,sstatus
    800026dc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800026e0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    800026e4:	f8f43c23          	sd	a5,-104(s0)
            TCB::timeSliceCounter=0;
    800026e8:	00004797          	auipc	a5,0x4
    800026ec:	9187b783          	ld	a5,-1768(a5) # 80006000 <_GLOBAL_OFFSET_TABLE_+0x20>
    800026f0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	820080e7          	jalr	-2016(ra) # 80001f14 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800026fc:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002700:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002704:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002708:	14179073          	csrw	sepc,a5
}
    8000270c:	e81ff06f          	j	8000258c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        console_handler();
    80002710:	00002097          	auipc	ra,0x2
    80002714:	5e0080e7          	jalr	1504(ra) # 80004cf0 <console_handler>
    80002718:	e75ff06f          	j	8000258c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

000000008000271c <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00813423          	sd	s0,8(sp)
    80002724:	01010413          	addi	s0,sp,16
    80002728:	00100793          	li	a5,1
    8000272c:	00f50863          	beq	a0,a5,8000273c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002730:	00813403          	ld	s0,8(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret
    8000273c:	000107b7          	lui	a5,0x10
    80002740:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002744:	fef596e3          	bne	a1,a5,80002730 <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    80002748:	00004797          	auipc	a5,0x4
    8000274c:	94878793          	addi	a5,a5,-1720 # 80006090 <_ZN9Scheduler16readyThreadQueueE>
    80002750:	0007b023          	sd	zero,0(a5)
    80002754:	0007b423          	sd	zero,8(a5)
    80002758:	fd9ff06f          	j	80002730 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000275c <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    8000275c:	fe010113          	addi	sp,sp,-32
    80002760:	00113c23          	sd	ra,24(sp)
    80002764:	00813823          	sd	s0,16(sp)
    80002768:	00913423          	sd	s1,8(sp)
    8000276c:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    80002770:	00004517          	auipc	a0,0x4
    80002774:	92053503          	ld	a0,-1760(a0) # 80006090 <_ZN9Scheduler16readyThreadQueueE>
    80002778:	04050263          	beqz	a0,800027bc <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    8000277c:	00853783          	ld	a5,8(a0)
    80002780:	00004717          	auipc	a4,0x4
    80002784:	90f73823          	sd	a5,-1776(a4) # 80006090 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80002788:	02078463          	beqz	a5,800027b0 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    8000278c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80002790:	00000097          	auipc	ra,0x0
    80002794:	228080e7          	jalr	552(ra) # 800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80002798:	00048513          	mv	a0,s1
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret
                if(!head) tail = 0;
    800027b0:	00004797          	auipc	a5,0x4
    800027b4:	8e07b423          	sd	zero,-1816(a5) # 80006098 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800027b8:	fd5ff06f          	j	8000278c <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    800027bc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800027c0:	fd9ff06f          	j	80002798 <_ZN9Scheduler3getEv+0x3c>

00000000800027c4 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00113c23          	sd	ra,24(sp)
    800027cc:	00813823          	sd	s0,16(sp)
    800027d0:	00913423          	sd	s1,8(sp)
    800027d4:	02010413          	addi	s0,sp,32
    800027d8:	00050493          	mv	s1,a0
        return MemoryAllocator::mem_alloc(n);
    800027dc:	01000513          	li	a0,16
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	084080e7          	jalr	132(ra) # 80002864 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    800027e8:	00953023          	sd	s1,0(a0)
                elem->next=0;
    800027ec:	00053423          	sd	zero,8(a0)
                if(tail){
    800027f0:	00004797          	auipc	a5,0x4
    800027f4:	8a87b783          	ld	a5,-1880(a5) # 80006098 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800027f8:	02078263          	beqz	a5,8000281c <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    800027fc:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80002800:	00004797          	auipc	a5,0x4
    80002804:	88a7bc23          	sd	a0,-1896(a5) # 80006098 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002808:	01813083          	ld	ra,24(sp)
    8000280c:	01013403          	ld	s0,16(sp)
    80002810:	00813483          	ld	s1,8(sp)
    80002814:	02010113          	addi	sp,sp,32
    80002818:	00008067          	ret
                    head= tail = elem;
    8000281c:	00004797          	auipc	a5,0x4
    80002820:	87478793          	addi	a5,a5,-1932 # 80006090 <_ZN9Scheduler16readyThreadQueueE>
    80002824:	00a7b423          	sd	a0,8(a5)
    80002828:	00a7b023          	sd	a0,0(a5)
    8000282c:	fddff06f          	j	80002808 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002830 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00113423          	sd	ra,8(sp)
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	01010413          	addi	s0,sp,16
    80002840:	000105b7          	lui	a1,0x10
    80002844:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002848:	00100513          	li	a0,1
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	ed0080e7          	jalr	-304(ra) # 8000271c <_Z41__static_initialization_and_destruction_0ii>
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00813423          	sd	s0,8(sp)
    8000286c:	01010413          	addi	s0,sp,16
    80002870:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    80002874:	00004517          	auipc	a0,0x4
    80002878:	82c53503          	ld	a0,-2004(a0) # 800060a0 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    8000287c:	03f7f713          	andi	a4,a5,63
    80002880:	00070663          	beqz	a4,8000288c <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002884:	fc07f793          	andi	a5,a5,-64
    80002888:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    8000288c:	02050863          	beqz	a0,800028bc <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002890:	00853703          	ld	a4,8(a0)
    80002894:	02f77863          	bgeu	a4,a5,800028c4 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    80002898:	00050693          	mv	a3,a0
        tek = tek->sled;
    8000289c:	00053503          	ld	a0,0(a0)
    800028a0:	00c0006f          	j	800028ac <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    800028a4:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    800028a8:	00053503          	ld	a0,0(a0)
    800028ac:	00050e63          	beqz	a0,800028c8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800028b0:	00853703          	ld	a4,8(a0)
    800028b4:	fef768e3          	bltu	a4,a5,800028a4 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800028b8:	0100006f          	j	800028c8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    800028bc:	00050693          	mv	a3,a0
    800028c0:	0080006f          	j	800028c8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800028c4:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    800028c8:	02050c63          	beqz	a0,80002900 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    800028cc:	00853703          	ld	a4,8(a0)
    800028d0:	02e7fe63          	bgeu	a5,a4,8000290c <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    800028d4:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    800028d8:	00f505b3          	add	a1,a0,a5
    800028dc:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    800028e0:	40f707b3          	sub	a5,a4,a5
    800028e4:	ff078793          	addi	a5,a5,-16
    800028e8:	00f63423          	sd	a5,8(a2) # 8008 <_entry-0x7fff7ff8>
        sledeci->sled = tek->sled;
    800028ec:	00053783          	ld	a5,0(a0)
    800028f0:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    800028f4:	02068063          	beqz	a3,80002914 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800028f8:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    800028fc:	01050513          	addi	a0,a0,16
}
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    8000290c:	00053603          	ld	a2,0(a0)
    80002910:	fe5ff06f          	j	800028f4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    80002914:	00003797          	auipc	a5,0x3
    80002918:	78c7b623          	sd	a2,1932(a5) # 800060a0 <_ZN15MemoryAllocator11freememheadE>
    8000291c:	fe1ff06f          	j	800028fc <_ZN15MemoryAllocator9mem_allocEm+0x98>

0000000080002920 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    80002920:	ff010113          	addi	sp,sp,-16
    80002924:	00813423          	sd	s0,8(sp)
    80002928:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    8000292c:	00003797          	auipc	a5,0x3
    80002930:	6bc7b783          	ld	a5,1724(a5) # 80005fe8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002934:	0007b703          	ld	a4,0(a5)
    80002938:	00003797          	auipc	a5,0x3
    8000293c:	76e7b423          	sd	a4,1896(a5) # 800060a0 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    80002940:	00003797          	auipc	a5,0x3
    80002944:	6e07b783          	ld	a5,1760(a5) # 80006020 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002948:	0007b783          	ld	a5,0(a5)
    8000294c:	40e787b3          	sub	a5,a5,a4
    80002950:	ff078793          	addi	a5,a5,-16
    80002954:	00073023          	sd	zero,0(a4)
    80002958:	00f73423          	sd	a5,8(a4)
};
    8000295c:	00813403          	ld	s0,8(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00813423          	sd	s0,8(sp)
    80002970:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002974:	00053783          	ld	a5,0(a0)
    80002978:	00078a63          	beqz	a5,8000298c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    8000297c:	00853683          	ld	a3,8(a0)
    80002980:	00d50733          	add	a4,a0,a3
    80002984:	01070713          	addi	a4,a4,16
    80002988:	00f70a63          	beq	a4,a5,8000299c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    8000298c:	00000513          	li	a0,0
    80002990:	00813403          	ld	s0,8(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    8000299c:	0087b703          	ld	a4,8(a5)
    800029a0:	00e686b3          	add	a3,a3,a4
    800029a4:	01068693          	addi	a3,a3,16
    800029a8:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    800029ac:	0007b783          	ld	a5,0(a5)
    800029b0:	00f53023          	sd	a5,0(a0)
    800029b4:	fd9ff06f          	j	8000298c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

00000000800029b8 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    800029b8:	0c050263          	beqz	a0,80002a7c <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    800029bc:	00050713          	mv	a4,a0
    800029c0:	00003797          	auipc	a5,0x3
    800029c4:	6287b783          	ld	a5,1576(a5) # 80005fe8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800029c8:	0007b783          	ld	a5,0(a5)
    800029cc:	0af56c63          	bltu	a0,a5,80002a84 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    800029d0:	00003797          	auipc	a5,0x3
    800029d4:	6507b783          	ld	a5,1616(a5) # 80006020 <_GLOBAL_OFFSET_TABLE_+0x40>
    800029d8:	0007b783          	ld	a5,0(a5)
    800029dc:	0af57863          	bgeu	a0,a5,80002a8c <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    800029e0:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    800029e4:	00003797          	auipc	a5,0x3
    800029e8:	6bc7b783          	ld	a5,1724(a5) # 800060a0 <_ZN15MemoryAllocator11freememheadE>
    800029ec:	06078063          	beqz	a5,80002a4c <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    800029f0:	fe010113          	addi	sp,sp,-32
    800029f4:	00113c23          	sd	ra,24(sp)
    800029f8:	00813823          	sd	s0,16(sp)
    800029fc:	00913423          	sd	s1,8(sp)
    80002a00:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    80002a04:	04f56e63          	bltu	a0,a5,80002a60 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    80002a08:	00078493          	mv	s1,a5
    80002a0c:	0007b783          	ld	a5,0(a5)
    80002a10:	00078463          	beqz	a5,80002a18 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    80002a14:	fea7eae3          	bltu	a5,a0,80002a08 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    80002a18:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    80002a1c:	00a4b023          	sd	a0,0(s1)
        join(tek);
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	f48080e7          	jalr	-184(ra) # 80002968 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    80002a28:	00048513          	mv	a0,s1
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	f3c080e7          	jalr	-196(ra) # 80002968 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002a34:	00000513          	li	a0,0
}
    80002a38:	01813083          	ld	ra,24(sp)
    80002a3c:	01013403          	ld	s0,16(sp)
    80002a40:	00813483          	ld	s1,8(sp)
    80002a44:	02010113          	addi	sp,sp,32
    80002a48:	00008067          	ret
        freememhead = tek;
    80002a4c:	00003797          	auipc	a5,0x3
    80002a50:	64a7ba23          	sd	a0,1620(a5) # 800060a0 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002a54:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002a58:	00000513          	li	a0,0
    80002a5c:	00008067          	ret
        tek->sled = freememhead;
    80002a60:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002a64:	00003797          	auipc	a5,0x3
    80002a68:	62a7be23          	sd	a0,1596(a5) # 800060a0 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	efc080e7          	jalr	-260(ra) # 80002968 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002a74:	00000513          	li	a0,0
    80002a78:	fc1ff06f          	j	80002a38 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002a7c:	fff00513          	li	a0,-1
    80002a80:	00008067          	ret
    80002a84:	fff00513          	li	a0,-1
    80002a88:	00008067          	ret
    80002a8c:	fff00513          	li	a0,-1
}
    80002a90:	00008067          	ret

0000000080002a94 <_Z11printStringPKc>:
//

#include "../h/print.hpp"


void printString(char const *string){
    80002a94:	fd010113          	addi	sp,sp,-48
    80002a98:	02113423          	sd	ra,40(sp)
    80002a9c:	02813023          	sd	s0,32(sp)
    80002aa0:	00913c23          	sd	s1,24(sp)
    80002aa4:	01213823          	sd	s2,16(sp)
    80002aa8:	03010413          	addi	s0,sp,48
    80002aac:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002ab0:	100027f3          	csrr	a5,sstatus
    80002ab4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002ab8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002abc:	00200793          	li	a5,2
    80002ac0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string !='\0'){
    80002ac4:	0004c503          	lbu	a0,0(s1)
    80002ac8:	00050a63          	beqz	a0,80002adc <_Z11printStringPKc+0x48>
        __putc(*string);
    80002acc:	00002097          	auipc	ra,0x2
    80002ad0:	1b0080e7          	jalr	432(ra) # 80004c7c <__putc>
        string++;
    80002ad4:	00148493          	addi	s1,s1,1
    while(*string !='\0'){
    80002ad8:	fedff06f          	j	80002ac4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002adc:	0009091b          	sext.w	s2,s2
    80002ae0:	00297913          	andi	s2,s2,2
    80002ae4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ae8:	10092073          	csrs	sstatus,s2
}
    80002aec:	02813083          	ld	ra,40(sp)
    80002af0:	02013403          	ld	s0,32(sp)
    80002af4:	01813483          	ld	s1,24(sp)
    80002af8:	01013903          	ld	s2,16(sp)
    80002afc:	03010113          	addi	sp,sp,48
    80002b00:	00008067          	ret

0000000080002b04 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002b04:	fc010113          	addi	sp,sp,-64
    80002b08:	02113c23          	sd	ra,56(sp)
    80002b0c:	02813823          	sd	s0,48(sp)
    80002b10:	02913423          	sd	s1,40(sp)
    80002b14:	03213023          	sd	s2,32(sp)
    80002b18:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b1c:	100027f3          	csrr	a5,sstatus
    80002b20:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b24:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002b28:	00200793          	li	a5,2
    80002b2c:	1007b073          	csrc	sstatus,a5

    neg = 0;
    if(integer<0){
        neg= 1;
        x= -integer;
    }else x=integer;
    80002b30:	0005051b          	sext.w	a0,a0
    i=0;
    80002b34:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x%10];
    80002b38:	00a00613          	li	a2,10
    80002b3c:	02c5773b          	remuw	a4,a0,a2
    80002b40:	02071693          	slli	a3,a4,0x20
    80002b44:	0206d693          	srli	a3,a3,0x20
    80002b48:	00002717          	auipc	a4,0x2
    80002b4c:	64070713          	addi	a4,a4,1600 # 80005188 <_ZZ12printIntegermE6digits>
    80002b50:	00d70733          	add	a4,a4,a3
    80002b54:	00074703          	lbu	a4,0(a4)
    80002b58:	fe040693          	addi	a3,s0,-32
    80002b5c:	009687b3          	add	a5,a3,s1
    80002b60:	0014849b          	addiw	s1,s1,1
    80002b64:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80002b68:	0005071b          	sext.w	a4,a0
    80002b6c:	02c5553b          	divuw	a0,a0,a2
    80002b70:	00900793          	li	a5,9
    80002b74:	fce7e2e3          	bltu	a5,a4,80002b38 <_Z12printIntegerm+0x34>
    if(neg)
        buf[i++]='-';
    while(--i >=0) __putc(buf[i]);
    80002b78:	fff4849b          	addiw	s1,s1,-1
    80002b7c:	0004ce63          	bltz	s1,80002b98 <_Z12printIntegerm+0x94>
    80002b80:	fe040793          	addi	a5,s0,-32
    80002b84:	009787b3          	add	a5,a5,s1
    80002b88:	ff07c503          	lbu	a0,-16(a5)
    80002b8c:	00002097          	auipc	ra,0x2
    80002b90:	0f0080e7          	jalr	240(ra) # 80004c7c <__putc>
    80002b94:	fe5ff06f          	j	80002b78 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002b98:	0009091b          	sext.w	s2,s2
    80002b9c:	00297913          	andi	s2,s2,2
    80002ba0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ba4:	10092073          	csrs	sstatus,s2

    80002ba8:	03813083          	ld	ra,56(sp)
    80002bac:	03013403          	ld	s0,48(sp)
    80002bb0:	02813483          	ld	s1,40(sp)
    80002bb4:	02013903          	ld	s2,32(sp)
    80002bb8:	04010113          	addi	sp,sp,64
    80002bbc:	00008067          	ret

0000000080002bc0 <start>:
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00813423          	sd	s0,8(sp)
    80002bc8:	01010413          	addi	s0,sp,16
    80002bcc:	300027f3          	csrr	a5,mstatus
    80002bd0:	ffffe737          	lui	a4,0xffffe
    80002bd4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff74ef>
    80002bd8:	00e7f7b3          	and	a5,a5,a4
    80002bdc:	00001737          	lui	a4,0x1
    80002be0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002be4:	00e7e7b3          	or	a5,a5,a4
    80002be8:	30079073          	csrw	mstatus,a5
    80002bec:	00000797          	auipc	a5,0x0
    80002bf0:	16078793          	addi	a5,a5,352 # 80002d4c <system_main>
    80002bf4:	34179073          	csrw	mepc,a5
    80002bf8:	00000793          	li	a5,0
    80002bfc:	18079073          	csrw	satp,a5
    80002c00:	000107b7          	lui	a5,0x10
    80002c04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c08:	30279073          	csrw	medeleg,a5
    80002c0c:	30379073          	csrw	mideleg,a5
    80002c10:	104027f3          	csrr	a5,sie
    80002c14:	2227e793          	ori	a5,a5,546
    80002c18:	10479073          	csrw	sie,a5
    80002c1c:	fff00793          	li	a5,-1
    80002c20:	00a7d793          	srli	a5,a5,0xa
    80002c24:	3b079073          	csrw	pmpaddr0,a5
    80002c28:	00f00793          	li	a5,15
    80002c2c:	3a079073          	csrw	pmpcfg0,a5
    80002c30:	f14027f3          	csrr	a5,mhartid
    80002c34:	0200c737          	lui	a4,0x200c
    80002c38:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c3c:	0007869b          	sext.w	a3,a5
    80002c40:	00269713          	slli	a4,a3,0x2
    80002c44:	000f4637          	lui	a2,0xf4
    80002c48:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c4c:	00d70733          	add	a4,a4,a3
    80002c50:	0037979b          	slliw	a5,a5,0x3
    80002c54:	020046b7          	lui	a3,0x2004
    80002c58:	00d787b3          	add	a5,a5,a3
    80002c5c:	00c585b3          	add	a1,a1,a2
    80002c60:	00371693          	slli	a3,a4,0x3
    80002c64:	00003717          	auipc	a4,0x3
    80002c68:	44c70713          	addi	a4,a4,1100 # 800060b0 <timer_scratch>
    80002c6c:	00b7b023          	sd	a1,0(a5)
    80002c70:	00d70733          	add	a4,a4,a3
    80002c74:	00f73c23          	sd	a5,24(a4)
    80002c78:	02c73023          	sd	a2,32(a4)
    80002c7c:	34071073          	csrw	mscratch,a4
    80002c80:	00000797          	auipc	a5,0x0
    80002c84:	6e078793          	addi	a5,a5,1760 # 80003360 <timervec>
    80002c88:	30579073          	csrw	mtvec,a5
    80002c8c:	300027f3          	csrr	a5,mstatus
    80002c90:	0087e793          	ori	a5,a5,8
    80002c94:	30079073          	csrw	mstatus,a5
    80002c98:	304027f3          	csrr	a5,mie
    80002c9c:	0807e793          	ori	a5,a5,128
    80002ca0:	30479073          	csrw	mie,a5
    80002ca4:	f14027f3          	csrr	a5,mhartid
    80002ca8:	0007879b          	sext.w	a5,a5
    80002cac:	00078213          	mv	tp,a5
    80002cb0:	30200073          	mret
    80002cb4:	00813403          	ld	s0,8(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret

0000000080002cc0 <timerinit>:
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00813423          	sd	s0,8(sp)
    80002cc8:	01010413          	addi	s0,sp,16
    80002ccc:	f14027f3          	csrr	a5,mhartid
    80002cd0:	0200c737          	lui	a4,0x200c
    80002cd4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002cd8:	0007869b          	sext.w	a3,a5
    80002cdc:	00269713          	slli	a4,a3,0x2
    80002ce0:	000f4637          	lui	a2,0xf4
    80002ce4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002ce8:	00d70733          	add	a4,a4,a3
    80002cec:	0037979b          	slliw	a5,a5,0x3
    80002cf0:	020046b7          	lui	a3,0x2004
    80002cf4:	00d787b3          	add	a5,a5,a3
    80002cf8:	00c585b3          	add	a1,a1,a2
    80002cfc:	00371693          	slli	a3,a4,0x3
    80002d00:	00003717          	auipc	a4,0x3
    80002d04:	3b070713          	addi	a4,a4,944 # 800060b0 <timer_scratch>
    80002d08:	00b7b023          	sd	a1,0(a5)
    80002d0c:	00d70733          	add	a4,a4,a3
    80002d10:	00f73c23          	sd	a5,24(a4)
    80002d14:	02c73023          	sd	a2,32(a4)
    80002d18:	34071073          	csrw	mscratch,a4
    80002d1c:	00000797          	auipc	a5,0x0
    80002d20:	64478793          	addi	a5,a5,1604 # 80003360 <timervec>
    80002d24:	30579073          	csrw	mtvec,a5
    80002d28:	300027f3          	csrr	a5,mstatus
    80002d2c:	0087e793          	ori	a5,a5,8
    80002d30:	30079073          	csrw	mstatus,a5
    80002d34:	304027f3          	csrr	a5,mie
    80002d38:	0807e793          	ori	a5,a5,128
    80002d3c:	30479073          	csrw	mie,a5
    80002d40:	00813403          	ld	s0,8(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret

0000000080002d4c <system_main>:
    80002d4c:	fe010113          	addi	sp,sp,-32
    80002d50:	00813823          	sd	s0,16(sp)
    80002d54:	00913423          	sd	s1,8(sp)
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	02010413          	addi	s0,sp,32
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	0c4080e7          	jalr	196(ra) # 80002e24 <cpuid>
    80002d68:	00003497          	auipc	s1,0x3
    80002d6c:	2e848493          	addi	s1,s1,744 # 80006050 <started>
    80002d70:	02050263          	beqz	a0,80002d94 <system_main+0x48>
    80002d74:	0004a783          	lw	a5,0(s1)
    80002d78:	0007879b          	sext.w	a5,a5
    80002d7c:	fe078ce3          	beqz	a5,80002d74 <system_main+0x28>
    80002d80:	0ff0000f          	fence
    80002d84:	00002517          	auipc	a0,0x2
    80002d88:	44450513          	addi	a0,a0,1092 # 800051c8 <_ZZ12printIntegermE6digits+0x40>
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	a70080e7          	jalr	-1424(ra) # 800037fc <panic>
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	9c4080e7          	jalr	-1596(ra) # 80003758 <consoleinit>
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	150080e7          	jalr	336(ra) # 80003eec <printfinit>
    80002da4:	00002517          	auipc	a0,0x2
    80002da8:	34c50513          	addi	a0,a0,844 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002dac:	00001097          	auipc	ra,0x1
    80002db0:	aac080e7          	jalr	-1364(ra) # 80003858 <__printf>
    80002db4:	00002517          	auipc	a0,0x2
    80002db8:	3e450513          	addi	a0,a0,996 # 80005198 <_ZZ12printIntegermE6digits+0x10>
    80002dbc:	00001097          	auipc	ra,0x1
    80002dc0:	a9c080e7          	jalr	-1380(ra) # 80003858 <__printf>
    80002dc4:	00002517          	auipc	a0,0x2
    80002dc8:	32c50513          	addi	a0,a0,812 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002dcc:	00001097          	auipc	ra,0x1
    80002dd0:	a8c080e7          	jalr	-1396(ra) # 80003858 <__printf>
    80002dd4:	00001097          	auipc	ra,0x1
    80002dd8:	4a4080e7          	jalr	1188(ra) # 80004278 <kinit>
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	148080e7          	jalr	328(ra) # 80002f24 <trapinit>
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	16c080e7          	jalr	364(ra) # 80002f50 <trapinithart>
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	5b4080e7          	jalr	1460(ra) # 800033a0 <plicinit>
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	5d4080e7          	jalr	1492(ra) # 800033c8 <plicinithart>
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	078080e7          	jalr	120(ra) # 80002e74 <userinit>
    80002e04:	0ff0000f          	fence
    80002e08:	00100793          	li	a5,1
    80002e0c:	00002517          	auipc	a0,0x2
    80002e10:	3a450513          	addi	a0,a0,932 # 800051b0 <_ZZ12printIntegermE6digits+0x28>
    80002e14:	00f4a023          	sw	a5,0(s1)
    80002e18:	00001097          	auipc	ra,0x1
    80002e1c:	a40080e7          	jalr	-1472(ra) # 80003858 <__printf>
    80002e20:	0000006f          	j	80002e20 <system_main+0xd4>

0000000080002e24 <cpuid>:
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00813423          	sd	s0,8(sp)
    80002e2c:	01010413          	addi	s0,sp,16
    80002e30:	00020513          	mv	a0,tp
    80002e34:	00813403          	ld	s0,8(sp)
    80002e38:	0005051b          	sext.w	a0,a0
    80002e3c:	01010113          	addi	sp,sp,16
    80002e40:	00008067          	ret

0000000080002e44 <mycpu>:
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    80002e50:	00020793          	mv	a5,tp
    80002e54:	00813403          	ld	s0,8(sp)
    80002e58:	0007879b          	sext.w	a5,a5
    80002e5c:	00779793          	slli	a5,a5,0x7
    80002e60:	00004517          	auipc	a0,0x4
    80002e64:	28050513          	addi	a0,a0,640 # 800070e0 <cpus>
    80002e68:	00f50533          	add	a0,a0,a5
    80002e6c:	01010113          	addi	sp,sp,16
    80002e70:	00008067          	ret

0000000080002e74 <userinit>:
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00813423          	sd	s0,8(sp)
    80002e7c:	01010413          	addi	s0,sp,16
    80002e80:	00813403          	ld	s0,8(sp)
    80002e84:	01010113          	addi	sp,sp,16
    80002e88:	fffff317          	auipc	t1,0xfffff
    80002e8c:	d4430067          	jr	-700(t1) # 80001bcc <main>

0000000080002e90 <either_copyout>:
    80002e90:	ff010113          	addi	sp,sp,-16
    80002e94:	00813023          	sd	s0,0(sp)
    80002e98:	00113423          	sd	ra,8(sp)
    80002e9c:	01010413          	addi	s0,sp,16
    80002ea0:	02051663          	bnez	a0,80002ecc <either_copyout+0x3c>
    80002ea4:	00058513          	mv	a0,a1
    80002ea8:	00060593          	mv	a1,a2
    80002eac:	0006861b          	sext.w	a2,a3
    80002eb0:	00002097          	auipc	ra,0x2
    80002eb4:	c54080e7          	jalr	-940(ra) # 80004b04 <__memmove>
    80002eb8:	00813083          	ld	ra,8(sp)
    80002ebc:	00013403          	ld	s0,0(sp)
    80002ec0:	00000513          	li	a0,0
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret
    80002ecc:	00002517          	auipc	a0,0x2
    80002ed0:	32450513          	addi	a0,a0,804 # 800051f0 <_ZZ12printIntegermE6digits+0x68>
    80002ed4:	00001097          	auipc	ra,0x1
    80002ed8:	928080e7          	jalr	-1752(ra) # 800037fc <panic>

0000000080002edc <either_copyin>:
    80002edc:	ff010113          	addi	sp,sp,-16
    80002ee0:	00813023          	sd	s0,0(sp)
    80002ee4:	00113423          	sd	ra,8(sp)
    80002ee8:	01010413          	addi	s0,sp,16
    80002eec:	02059463          	bnez	a1,80002f14 <either_copyin+0x38>
    80002ef0:	00060593          	mv	a1,a2
    80002ef4:	0006861b          	sext.w	a2,a3
    80002ef8:	00002097          	auipc	ra,0x2
    80002efc:	c0c080e7          	jalr	-1012(ra) # 80004b04 <__memmove>
    80002f00:	00813083          	ld	ra,8(sp)
    80002f04:	00013403          	ld	s0,0(sp)
    80002f08:	00000513          	li	a0,0
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret
    80002f14:	00002517          	auipc	a0,0x2
    80002f18:	30450513          	addi	a0,a0,772 # 80005218 <_ZZ12printIntegermE6digits+0x90>
    80002f1c:	00001097          	auipc	ra,0x1
    80002f20:	8e0080e7          	jalr	-1824(ra) # 800037fc <panic>

0000000080002f24 <trapinit>:
    80002f24:	ff010113          	addi	sp,sp,-16
    80002f28:	00813423          	sd	s0,8(sp)
    80002f2c:	01010413          	addi	s0,sp,16
    80002f30:	00813403          	ld	s0,8(sp)
    80002f34:	00002597          	auipc	a1,0x2
    80002f38:	30c58593          	addi	a1,a1,780 # 80005240 <_ZZ12printIntegermE6digits+0xb8>
    80002f3c:	00004517          	auipc	a0,0x4
    80002f40:	22450513          	addi	a0,a0,548 # 80007160 <tickslock>
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00001317          	auipc	t1,0x1
    80002f4c:	5c030067          	jr	1472(t1) # 80004508 <initlock>

0000000080002f50 <trapinithart>:
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
    80002f5c:	00000797          	auipc	a5,0x0
    80002f60:	2f478793          	addi	a5,a5,756 # 80003250 <kernelvec>
    80002f64:	10579073          	csrw	stvec,a5
    80002f68:	00813403          	ld	s0,8(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <usertrap>:
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00813423          	sd	s0,8(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    80002f80:	00813403          	ld	s0,8(sp)
    80002f84:	01010113          	addi	sp,sp,16
    80002f88:	00008067          	ret

0000000080002f8c <usertrapret>:
    80002f8c:	ff010113          	addi	sp,sp,-16
    80002f90:	00813423          	sd	s0,8(sp)
    80002f94:	01010413          	addi	s0,sp,16
    80002f98:	00813403          	ld	s0,8(sp)
    80002f9c:	01010113          	addi	sp,sp,16
    80002fa0:	00008067          	ret

0000000080002fa4 <kerneltrap>:
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00813823          	sd	s0,16(sp)
    80002fac:	00113c23          	sd	ra,24(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	02010413          	addi	s0,sp,32
    80002fb8:	142025f3          	csrr	a1,scause
    80002fbc:	100027f3          	csrr	a5,sstatus
    80002fc0:	0027f793          	andi	a5,a5,2
    80002fc4:	10079c63          	bnez	a5,800030dc <kerneltrap+0x138>
    80002fc8:	142027f3          	csrr	a5,scause
    80002fcc:	0207ce63          	bltz	a5,80003008 <kerneltrap+0x64>
    80002fd0:	00002517          	auipc	a0,0x2
    80002fd4:	2b850513          	addi	a0,a0,696 # 80005288 <_ZZ12printIntegermE6digits+0x100>
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	880080e7          	jalr	-1920(ra) # 80003858 <__printf>
    80002fe0:	141025f3          	csrr	a1,sepc
    80002fe4:	14302673          	csrr	a2,stval
    80002fe8:	00002517          	auipc	a0,0x2
    80002fec:	2b050513          	addi	a0,a0,688 # 80005298 <_ZZ12printIntegermE6digits+0x110>
    80002ff0:	00001097          	auipc	ra,0x1
    80002ff4:	868080e7          	jalr	-1944(ra) # 80003858 <__printf>
    80002ff8:	00002517          	auipc	a0,0x2
    80002ffc:	2b850513          	addi	a0,a0,696 # 800052b0 <_ZZ12printIntegermE6digits+0x128>
    80003000:	00000097          	auipc	ra,0x0
    80003004:	7fc080e7          	jalr	2044(ra) # 800037fc <panic>
    80003008:	0ff7f713          	andi	a4,a5,255
    8000300c:	00900693          	li	a3,9
    80003010:	04d70063          	beq	a4,a3,80003050 <kerneltrap+0xac>
    80003014:	fff00713          	li	a4,-1
    80003018:	03f71713          	slli	a4,a4,0x3f
    8000301c:	00170713          	addi	a4,a4,1
    80003020:	fae798e3          	bne	a5,a4,80002fd0 <kerneltrap+0x2c>
    80003024:	00000097          	auipc	ra,0x0
    80003028:	e00080e7          	jalr	-512(ra) # 80002e24 <cpuid>
    8000302c:	06050663          	beqz	a0,80003098 <kerneltrap+0xf4>
    80003030:	144027f3          	csrr	a5,sip
    80003034:	ffd7f793          	andi	a5,a5,-3
    80003038:	14479073          	csrw	sip,a5
    8000303c:	01813083          	ld	ra,24(sp)
    80003040:	01013403          	ld	s0,16(sp)
    80003044:	00813483          	ld	s1,8(sp)
    80003048:	02010113          	addi	sp,sp,32
    8000304c:	00008067          	ret
    80003050:	00000097          	auipc	ra,0x0
    80003054:	3c4080e7          	jalr	964(ra) # 80003414 <plic_claim>
    80003058:	00a00793          	li	a5,10
    8000305c:	00050493          	mv	s1,a0
    80003060:	06f50863          	beq	a0,a5,800030d0 <kerneltrap+0x12c>
    80003064:	fc050ce3          	beqz	a0,8000303c <kerneltrap+0x98>
    80003068:	00050593          	mv	a1,a0
    8000306c:	00002517          	auipc	a0,0x2
    80003070:	1fc50513          	addi	a0,a0,508 # 80005268 <_ZZ12printIntegermE6digits+0xe0>
    80003074:	00000097          	auipc	ra,0x0
    80003078:	7e4080e7          	jalr	2020(ra) # 80003858 <__printf>
    8000307c:	01013403          	ld	s0,16(sp)
    80003080:	01813083          	ld	ra,24(sp)
    80003084:	00048513          	mv	a0,s1
    80003088:	00813483          	ld	s1,8(sp)
    8000308c:	02010113          	addi	sp,sp,32
    80003090:	00000317          	auipc	t1,0x0
    80003094:	3bc30067          	jr	956(t1) # 8000344c <plic_complete>
    80003098:	00004517          	auipc	a0,0x4
    8000309c:	0c850513          	addi	a0,a0,200 # 80007160 <tickslock>
    800030a0:	00001097          	auipc	ra,0x1
    800030a4:	48c080e7          	jalr	1164(ra) # 8000452c <acquire>
    800030a8:	00003717          	auipc	a4,0x3
    800030ac:	fac70713          	addi	a4,a4,-84 # 80006054 <ticks>
    800030b0:	00072783          	lw	a5,0(a4)
    800030b4:	00004517          	auipc	a0,0x4
    800030b8:	0ac50513          	addi	a0,a0,172 # 80007160 <tickslock>
    800030bc:	0017879b          	addiw	a5,a5,1
    800030c0:	00f72023          	sw	a5,0(a4)
    800030c4:	00001097          	auipc	ra,0x1
    800030c8:	534080e7          	jalr	1332(ra) # 800045f8 <release>
    800030cc:	f65ff06f          	j	80003030 <kerneltrap+0x8c>
    800030d0:	00001097          	auipc	ra,0x1
    800030d4:	090080e7          	jalr	144(ra) # 80004160 <uartintr>
    800030d8:	fa5ff06f          	j	8000307c <kerneltrap+0xd8>
    800030dc:	00002517          	auipc	a0,0x2
    800030e0:	16c50513          	addi	a0,a0,364 # 80005248 <_ZZ12printIntegermE6digits+0xc0>
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	718080e7          	jalr	1816(ra) # 800037fc <panic>

00000000800030ec <clockintr>:
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00813823          	sd	s0,16(sp)
    800030f4:	00913423          	sd	s1,8(sp)
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	02010413          	addi	s0,sp,32
    80003100:	00004497          	auipc	s1,0x4
    80003104:	06048493          	addi	s1,s1,96 # 80007160 <tickslock>
    80003108:	00048513          	mv	a0,s1
    8000310c:	00001097          	auipc	ra,0x1
    80003110:	420080e7          	jalr	1056(ra) # 8000452c <acquire>
    80003114:	00003717          	auipc	a4,0x3
    80003118:	f4070713          	addi	a4,a4,-192 # 80006054 <ticks>
    8000311c:	00072783          	lw	a5,0(a4)
    80003120:	01013403          	ld	s0,16(sp)
    80003124:	01813083          	ld	ra,24(sp)
    80003128:	00048513          	mv	a0,s1
    8000312c:	0017879b          	addiw	a5,a5,1
    80003130:	00813483          	ld	s1,8(sp)
    80003134:	00f72023          	sw	a5,0(a4)
    80003138:	02010113          	addi	sp,sp,32
    8000313c:	00001317          	auipc	t1,0x1
    80003140:	4bc30067          	jr	1212(t1) # 800045f8 <release>

0000000080003144 <devintr>:
    80003144:	142027f3          	csrr	a5,scause
    80003148:	00000513          	li	a0,0
    8000314c:	0007c463          	bltz	a5,80003154 <devintr+0x10>
    80003150:	00008067          	ret
    80003154:	fe010113          	addi	sp,sp,-32
    80003158:	00813823          	sd	s0,16(sp)
    8000315c:	00113c23          	sd	ra,24(sp)
    80003160:	00913423          	sd	s1,8(sp)
    80003164:	02010413          	addi	s0,sp,32
    80003168:	0ff7f713          	andi	a4,a5,255
    8000316c:	00900693          	li	a3,9
    80003170:	04d70c63          	beq	a4,a3,800031c8 <devintr+0x84>
    80003174:	fff00713          	li	a4,-1
    80003178:	03f71713          	slli	a4,a4,0x3f
    8000317c:	00170713          	addi	a4,a4,1
    80003180:	00e78c63          	beq	a5,a4,80003198 <devintr+0x54>
    80003184:	01813083          	ld	ra,24(sp)
    80003188:	01013403          	ld	s0,16(sp)
    8000318c:	00813483          	ld	s1,8(sp)
    80003190:	02010113          	addi	sp,sp,32
    80003194:	00008067          	ret
    80003198:	00000097          	auipc	ra,0x0
    8000319c:	c8c080e7          	jalr	-884(ra) # 80002e24 <cpuid>
    800031a0:	06050663          	beqz	a0,8000320c <devintr+0xc8>
    800031a4:	144027f3          	csrr	a5,sip
    800031a8:	ffd7f793          	andi	a5,a5,-3
    800031ac:	14479073          	csrw	sip,a5
    800031b0:	01813083          	ld	ra,24(sp)
    800031b4:	01013403          	ld	s0,16(sp)
    800031b8:	00813483          	ld	s1,8(sp)
    800031bc:	00200513          	li	a0,2
    800031c0:	02010113          	addi	sp,sp,32
    800031c4:	00008067          	ret
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	24c080e7          	jalr	588(ra) # 80003414 <plic_claim>
    800031d0:	00a00793          	li	a5,10
    800031d4:	00050493          	mv	s1,a0
    800031d8:	06f50663          	beq	a0,a5,80003244 <devintr+0x100>
    800031dc:	00100513          	li	a0,1
    800031e0:	fa0482e3          	beqz	s1,80003184 <devintr+0x40>
    800031e4:	00048593          	mv	a1,s1
    800031e8:	00002517          	auipc	a0,0x2
    800031ec:	08050513          	addi	a0,a0,128 # 80005268 <_ZZ12printIntegermE6digits+0xe0>
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	668080e7          	jalr	1640(ra) # 80003858 <__printf>
    800031f8:	00048513          	mv	a0,s1
    800031fc:	00000097          	auipc	ra,0x0
    80003200:	250080e7          	jalr	592(ra) # 8000344c <plic_complete>
    80003204:	00100513          	li	a0,1
    80003208:	f7dff06f          	j	80003184 <devintr+0x40>
    8000320c:	00004517          	auipc	a0,0x4
    80003210:	f5450513          	addi	a0,a0,-172 # 80007160 <tickslock>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	318080e7          	jalr	792(ra) # 8000452c <acquire>
    8000321c:	00003717          	auipc	a4,0x3
    80003220:	e3870713          	addi	a4,a4,-456 # 80006054 <ticks>
    80003224:	00072783          	lw	a5,0(a4)
    80003228:	00004517          	auipc	a0,0x4
    8000322c:	f3850513          	addi	a0,a0,-200 # 80007160 <tickslock>
    80003230:	0017879b          	addiw	a5,a5,1
    80003234:	00f72023          	sw	a5,0(a4)
    80003238:	00001097          	auipc	ra,0x1
    8000323c:	3c0080e7          	jalr	960(ra) # 800045f8 <release>
    80003240:	f65ff06f          	j	800031a4 <devintr+0x60>
    80003244:	00001097          	auipc	ra,0x1
    80003248:	f1c080e7          	jalr	-228(ra) # 80004160 <uartintr>
    8000324c:	fadff06f          	j	800031f8 <devintr+0xb4>

0000000080003250 <kernelvec>:
    80003250:	f0010113          	addi	sp,sp,-256
    80003254:	00113023          	sd	ra,0(sp)
    80003258:	00213423          	sd	sp,8(sp)
    8000325c:	00313823          	sd	gp,16(sp)
    80003260:	00413c23          	sd	tp,24(sp)
    80003264:	02513023          	sd	t0,32(sp)
    80003268:	02613423          	sd	t1,40(sp)
    8000326c:	02713823          	sd	t2,48(sp)
    80003270:	02813c23          	sd	s0,56(sp)
    80003274:	04913023          	sd	s1,64(sp)
    80003278:	04a13423          	sd	a0,72(sp)
    8000327c:	04b13823          	sd	a1,80(sp)
    80003280:	04c13c23          	sd	a2,88(sp)
    80003284:	06d13023          	sd	a3,96(sp)
    80003288:	06e13423          	sd	a4,104(sp)
    8000328c:	06f13823          	sd	a5,112(sp)
    80003290:	07013c23          	sd	a6,120(sp)
    80003294:	09113023          	sd	a7,128(sp)
    80003298:	09213423          	sd	s2,136(sp)
    8000329c:	09313823          	sd	s3,144(sp)
    800032a0:	09413c23          	sd	s4,152(sp)
    800032a4:	0b513023          	sd	s5,160(sp)
    800032a8:	0b613423          	sd	s6,168(sp)
    800032ac:	0b713823          	sd	s7,176(sp)
    800032b0:	0b813c23          	sd	s8,184(sp)
    800032b4:	0d913023          	sd	s9,192(sp)
    800032b8:	0da13423          	sd	s10,200(sp)
    800032bc:	0db13823          	sd	s11,208(sp)
    800032c0:	0dc13c23          	sd	t3,216(sp)
    800032c4:	0fd13023          	sd	t4,224(sp)
    800032c8:	0fe13423          	sd	t5,232(sp)
    800032cc:	0ff13823          	sd	t6,240(sp)
    800032d0:	cd5ff0ef          	jal	ra,80002fa4 <kerneltrap>
    800032d4:	00013083          	ld	ra,0(sp)
    800032d8:	00813103          	ld	sp,8(sp)
    800032dc:	01013183          	ld	gp,16(sp)
    800032e0:	02013283          	ld	t0,32(sp)
    800032e4:	02813303          	ld	t1,40(sp)
    800032e8:	03013383          	ld	t2,48(sp)
    800032ec:	03813403          	ld	s0,56(sp)
    800032f0:	04013483          	ld	s1,64(sp)
    800032f4:	04813503          	ld	a0,72(sp)
    800032f8:	05013583          	ld	a1,80(sp)
    800032fc:	05813603          	ld	a2,88(sp)
    80003300:	06013683          	ld	a3,96(sp)
    80003304:	06813703          	ld	a4,104(sp)
    80003308:	07013783          	ld	a5,112(sp)
    8000330c:	07813803          	ld	a6,120(sp)
    80003310:	08013883          	ld	a7,128(sp)
    80003314:	08813903          	ld	s2,136(sp)
    80003318:	09013983          	ld	s3,144(sp)
    8000331c:	09813a03          	ld	s4,152(sp)
    80003320:	0a013a83          	ld	s5,160(sp)
    80003324:	0a813b03          	ld	s6,168(sp)
    80003328:	0b013b83          	ld	s7,176(sp)
    8000332c:	0b813c03          	ld	s8,184(sp)
    80003330:	0c013c83          	ld	s9,192(sp)
    80003334:	0c813d03          	ld	s10,200(sp)
    80003338:	0d013d83          	ld	s11,208(sp)
    8000333c:	0d813e03          	ld	t3,216(sp)
    80003340:	0e013e83          	ld	t4,224(sp)
    80003344:	0e813f03          	ld	t5,232(sp)
    80003348:	0f013f83          	ld	t6,240(sp)
    8000334c:	10010113          	addi	sp,sp,256
    80003350:	10200073          	sret
    80003354:	00000013          	nop
    80003358:	00000013          	nop
    8000335c:	00000013          	nop

0000000080003360 <timervec>:
    80003360:	34051573          	csrrw	a0,mscratch,a0
    80003364:	00b53023          	sd	a1,0(a0)
    80003368:	00c53423          	sd	a2,8(a0)
    8000336c:	00d53823          	sd	a3,16(a0)
    80003370:	01853583          	ld	a1,24(a0)
    80003374:	02053603          	ld	a2,32(a0)
    80003378:	0005b683          	ld	a3,0(a1)
    8000337c:	00c686b3          	add	a3,a3,a2
    80003380:	00d5b023          	sd	a3,0(a1)
    80003384:	00200593          	li	a1,2
    80003388:	14459073          	csrw	sip,a1
    8000338c:	01053683          	ld	a3,16(a0)
    80003390:	00853603          	ld	a2,8(a0)
    80003394:	00053583          	ld	a1,0(a0)
    80003398:	34051573          	csrrw	a0,mscratch,a0
    8000339c:	30200073          	mret

00000000800033a0 <plicinit>:
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00813423          	sd	s0,8(sp)
    800033a8:	01010413          	addi	s0,sp,16
    800033ac:	00813403          	ld	s0,8(sp)
    800033b0:	0c0007b7          	lui	a5,0xc000
    800033b4:	00100713          	li	a4,1
    800033b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800033bc:	00e7a223          	sw	a4,4(a5)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret

00000000800033c8 <plicinithart>:
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00813023          	sd	s0,0(sp)
    800033d0:	00113423          	sd	ra,8(sp)
    800033d4:	01010413          	addi	s0,sp,16
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	a4c080e7          	jalr	-1460(ra) # 80002e24 <cpuid>
    800033e0:	0085171b          	slliw	a4,a0,0x8
    800033e4:	0c0027b7          	lui	a5,0xc002
    800033e8:	00e787b3          	add	a5,a5,a4
    800033ec:	40200713          	li	a4,1026
    800033f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800033f4:	00813083          	ld	ra,8(sp)
    800033f8:	00013403          	ld	s0,0(sp)
    800033fc:	00d5151b          	slliw	a0,a0,0xd
    80003400:	0c2017b7          	lui	a5,0xc201
    80003404:	00a78533          	add	a0,a5,a0
    80003408:	00052023          	sw	zero,0(a0)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <plic_claim>:
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813023          	sd	s0,0(sp)
    8000341c:	00113423          	sd	ra,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    80003424:	00000097          	auipc	ra,0x0
    80003428:	a00080e7          	jalr	-1536(ra) # 80002e24 <cpuid>
    8000342c:	00813083          	ld	ra,8(sp)
    80003430:	00013403          	ld	s0,0(sp)
    80003434:	00d5151b          	slliw	a0,a0,0xd
    80003438:	0c2017b7          	lui	a5,0xc201
    8000343c:	00a78533          	add	a0,a5,a0
    80003440:	00452503          	lw	a0,4(a0)
    80003444:	01010113          	addi	sp,sp,16
    80003448:	00008067          	ret

000000008000344c <plic_complete>:
    8000344c:	fe010113          	addi	sp,sp,-32
    80003450:	00813823          	sd	s0,16(sp)
    80003454:	00913423          	sd	s1,8(sp)
    80003458:	00113c23          	sd	ra,24(sp)
    8000345c:	02010413          	addi	s0,sp,32
    80003460:	00050493          	mv	s1,a0
    80003464:	00000097          	auipc	ra,0x0
    80003468:	9c0080e7          	jalr	-1600(ra) # 80002e24 <cpuid>
    8000346c:	01813083          	ld	ra,24(sp)
    80003470:	01013403          	ld	s0,16(sp)
    80003474:	00d5179b          	slliw	a5,a0,0xd
    80003478:	0c201737          	lui	a4,0xc201
    8000347c:	00f707b3          	add	a5,a4,a5
    80003480:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003484:	00813483          	ld	s1,8(sp)
    80003488:	02010113          	addi	sp,sp,32
    8000348c:	00008067          	ret

0000000080003490 <consolewrite>:
    80003490:	fb010113          	addi	sp,sp,-80
    80003494:	04813023          	sd	s0,64(sp)
    80003498:	04113423          	sd	ra,72(sp)
    8000349c:	02913c23          	sd	s1,56(sp)
    800034a0:	03213823          	sd	s2,48(sp)
    800034a4:	03313423          	sd	s3,40(sp)
    800034a8:	03413023          	sd	s4,32(sp)
    800034ac:	01513c23          	sd	s5,24(sp)
    800034b0:	05010413          	addi	s0,sp,80
    800034b4:	06c05c63          	blez	a2,8000352c <consolewrite+0x9c>
    800034b8:	00060993          	mv	s3,a2
    800034bc:	00050a13          	mv	s4,a0
    800034c0:	00058493          	mv	s1,a1
    800034c4:	00000913          	li	s2,0
    800034c8:	fff00a93          	li	s5,-1
    800034cc:	01c0006f          	j	800034e8 <consolewrite+0x58>
    800034d0:	fbf44503          	lbu	a0,-65(s0)
    800034d4:	0019091b          	addiw	s2,s2,1
    800034d8:	00148493          	addi	s1,s1,1
    800034dc:	00001097          	auipc	ra,0x1
    800034e0:	a9c080e7          	jalr	-1380(ra) # 80003f78 <uartputc>
    800034e4:	03298063          	beq	s3,s2,80003504 <consolewrite+0x74>
    800034e8:	00048613          	mv	a2,s1
    800034ec:	00100693          	li	a3,1
    800034f0:	000a0593          	mv	a1,s4
    800034f4:	fbf40513          	addi	a0,s0,-65
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	9e4080e7          	jalr	-1564(ra) # 80002edc <either_copyin>
    80003500:	fd5518e3          	bne	a0,s5,800034d0 <consolewrite+0x40>
    80003504:	04813083          	ld	ra,72(sp)
    80003508:	04013403          	ld	s0,64(sp)
    8000350c:	03813483          	ld	s1,56(sp)
    80003510:	02813983          	ld	s3,40(sp)
    80003514:	02013a03          	ld	s4,32(sp)
    80003518:	01813a83          	ld	s5,24(sp)
    8000351c:	00090513          	mv	a0,s2
    80003520:	03013903          	ld	s2,48(sp)
    80003524:	05010113          	addi	sp,sp,80
    80003528:	00008067          	ret
    8000352c:	00000913          	li	s2,0
    80003530:	fd5ff06f          	j	80003504 <consolewrite+0x74>

0000000080003534 <consoleread>:
    80003534:	f9010113          	addi	sp,sp,-112
    80003538:	06813023          	sd	s0,96(sp)
    8000353c:	04913c23          	sd	s1,88(sp)
    80003540:	05213823          	sd	s2,80(sp)
    80003544:	05313423          	sd	s3,72(sp)
    80003548:	05413023          	sd	s4,64(sp)
    8000354c:	03513c23          	sd	s5,56(sp)
    80003550:	03613823          	sd	s6,48(sp)
    80003554:	03713423          	sd	s7,40(sp)
    80003558:	03813023          	sd	s8,32(sp)
    8000355c:	06113423          	sd	ra,104(sp)
    80003560:	01913c23          	sd	s9,24(sp)
    80003564:	07010413          	addi	s0,sp,112
    80003568:	00060b93          	mv	s7,a2
    8000356c:	00050913          	mv	s2,a0
    80003570:	00058c13          	mv	s8,a1
    80003574:	00060b1b          	sext.w	s6,a2
    80003578:	00004497          	auipc	s1,0x4
    8000357c:	c1048493          	addi	s1,s1,-1008 # 80007188 <cons>
    80003580:	00400993          	li	s3,4
    80003584:	fff00a13          	li	s4,-1
    80003588:	00a00a93          	li	s5,10
    8000358c:	05705e63          	blez	s7,800035e8 <consoleread+0xb4>
    80003590:	09c4a703          	lw	a4,156(s1)
    80003594:	0984a783          	lw	a5,152(s1)
    80003598:	0007071b          	sext.w	a4,a4
    8000359c:	08e78463          	beq	a5,a4,80003624 <consoleread+0xf0>
    800035a0:	07f7f713          	andi	a4,a5,127
    800035a4:	00e48733          	add	a4,s1,a4
    800035a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800035ac:	0017869b          	addiw	a3,a5,1
    800035b0:	08d4ac23          	sw	a3,152(s1)
    800035b4:	00070c9b          	sext.w	s9,a4
    800035b8:	0b370663          	beq	a4,s3,80003664 <consoleread+0x130>
    800035bc:	00100693          	li	a3,1
    800035c0:	f9f40613          	addi	a2,s0,-97
    800035c4:	000c0593          	mv	a1,s8
    800035c8:	00090513          	mv	a0,s2
    800035cc:	f8e40fa3          	sb	a4,-97(s0)
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	8c0080e7          	jalr	-1856(ra) # 80002e90 <either_copyout>
    800035d8:	01450863          	beq	a0,s4,800035e8 <consoleread+0xb4>
    800035dc:	001c0c13          	addi	s8,s8,1
    800035e0:	fffb8b9b          	addiw	s7,s7,-1
    800035e4:	fb5c94e3          	bne	s9,s5,8000358c <consoleread+0x58>
    800035e8:	000b851b          	sext.w	a0,s7
    800035ec:	06813083          	ld	ra,104(sp)
    800035f0:	06013403          	ld	s0,96(sp)
    800035f4:	05813483          	ld	s1,88(sp)
    800035f8:	05013903          	ld	s2,80(sp)
    800035fc:	04813983          	ld	s3,72(sp)
    80003600:	04013a03          	ld	s4,64(sp)
    80003604:	03813a83          	ld	s5,56(sp)
    80003608:	02813b83          	ld	s7,40(sp)
    8000360c:	02013c03          	ld	s8,32(sp)
    80003610:	01813c83          	ld	s9,24(sp)
    80003614:	40ab053b          	subw	a0,s6,a0
    80003618:	03013b03          	ld	s6,48(sp)
    8000361c:	07010113          	addi	sp,sp,112
    80003620:	00008067          	ret
    80003624:	00001097          	auipc	ra,0x1
    80003628:	1d8080e7          	jalr	472(ra) # 800047fc <push_on>
    8000362c:	0984a703          	lw	a4,152(s1)
    80003630:	09c4a783          	lw	a5,156(s1)
    80003634:	0007879b          	sext.w	a5,a5
    80003638:	fef70ce3          	beq	a4,a5,80003630 <consoleread+0xfc>
    8000363c:	00001097          	auipc	ra,0x1
    80003640:	234080e7          	jalr	564(ra) # 80004870 <pop_on>
    80003644:	0984a783          	lw	a5,152(s1)
    80003648:	07f7f713          	andi	a4,a5,127
    8000364c:	00e48733          	add	a4,s1,a4
    80003650:	01874703          	lbu	a4,24(a4)
    80003654:	0017869b          	addiw	a3,a5,1
    80003658:	08d4ac23          	sw	a3,152(s1)
    8000365c:	00070c9b          	sext.w	s9,a4
    80003660:	f5371ee3          	bne	a4,s3,800035bc <consoleread+0x88>
    80003664:	000b851b          	sext.w	a0,s7
    80003668:	f96bf2e3          	bgeu	s7,s6,800035ec <consoleread+0xb8>
    8000366c:	08f4ac23          	sw	a5,152(s1)
    80003670:	f7dff06f          	j	800035ec <consoleread+0xb8>

0000000080003674 <consputc>:
    80003674:	10000793          	li	a5,256
    80003678:	00f50663          	beq	a0,a5,80003684 <consputc+0x10>
    8000367c:	00001317          	auipc	t1,0x1
    80003680:	9f430067          	jr	-1548(t1) # 80004070 <uartputc_sync>
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00113423          	sd	ra,8(sp)
    8000368c:	00813023          	sd	s0,0(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00800513          	li	a0,8
    80003698:	00001097          	auipc	ra,0x1
    8000369c:	9d8080e7          	jalr	-1576(ra) # 80004070 <uartputc_sync>
    800036a0:	02000513          	li	a0,32
    800036a4:	00001097          	auipc	ra,0x1
    800036a8:	9cc080e7          	jalr	-1588(ra) # 80004070 <uartputc_sync>
    800036ac:	00013403          	ld	s0,0(sp)
    800036b0:	00813083          	ld	ra,8(sp)
    800036b4:	00800513          	li	a0,8
    800036b8:	01010113          	addi	sp,sp,16
    800036bc:	00001317          	auipc	t1,0x1
    800036c0:	9b430067          	jr	-1612(t1) # 80004070 <uartputc_sync>

00000000800036c4 <consoleintr>:
    800036c4:	fe010113          	addi	sp,sp,-32
    800036c8:	00813823          	sd	s0,16(sp)
    800036cc:	00913423          	sd	s1,8(sp)
    800036d0:	01213023          	sd	s2,0(sp)
    800036d4:	00113c23          	sd	ra,24(sp)
    800036d8:	02010413          	addi	s0,sp,32
    800036dc:	00004917          	auipc	s2,0x4
    800036e0:	aac90913          	addi	s2,s2,-1364 # 80007188 <cons>
    800036e4:	00050493          	mv	s1,a0
    800036e8:	00090513          	mv	a0,s2
    800036ec:	00001097          	auipc	ra,0x1
    800036f0:	e40080e7          	jalr	-448(ra) # 8000452c <acquire>
    800036f4:	02048c63          	beqz	s1,8000372c <consoleintr+0x68>
    800036f8:	0a092783          	lw	a5,160(s2)
    800036fc:	09892703          	lw	a4,152(s2)
    80003700:	07f00693          	li	a3,127
    80003704:	40e7873b          	subw	a4,a5,a4
    80003708:	02e6e263          	bltu	a3,a4,8000372c <consoleintr+0x68>
    8000370c:	00d00713          	li	a4,13
    80003710:	04e48063          	beq	s1,a4,80003750 <consoleintr+0x8c>
    80003714:	07f7f713          	andi	a4,a5,127
    80003718:	00e90733          	add	a4,s2,a4
    8000371c:	0017879b          	addiw	a5,a5,1
    80003720:	0af92023          	sw	a5,160(s2)
    80003724:	00970c23          	sb	s1,24(a4)
    80003728:	08f92e23          	sw	a5,156(s2)
    8000372c:	01013403          	ld	s0,16(sp)
    80003730:	01813083          	ld	ra,24(sp)
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	00013903          	ld	s2,0(sp)
    8000373c:	00004517          	auipc	a0,0x4
    80003740:	a4c50513          	addi	a0,a0,-1460 # 80007188 <cons>
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00001317          	auipc	t1,0x1
    8000374c:	eb030067          	jr	-336(t1) # 800045f8 <release>
    80003750:	00a00493          	li	s1,10
    80003754:	fc1ff06f          	j	80003714 <consoleintr+0x50>

0000000080003758 <consoleinit>:
    80003758:	fe010113          	addi	sp,sp,-32
    8000375c:	00113c23          	sd	ra,24(sp)
    80003760:	00813823          	sd	s0,16(sp)
    80003764:	00913423          	sd	s1,8(sp)
    80003768:	02010413          	addi	s0,sp,32
    8000376c:	00004497          	auipc	s1,0x4
    80003770:	a1c48493          	addi	s1,s1,-1508 # 80007188 <cons>
    80003774:	00048513          	mv	a0,s1
    80003778:	00002597          	auipc	a1,0x2
    8000377c:	b4858593          	addi	a1,a1,-1208 # 800052c0 <_ZZ12printIntegermE6digits+0x138>
    80003780:	00001097          	auipc	ra,0x1
    80003784:	d88080e7          	jalr	-632(ra) # 80004508 <initlock>
    80003788:	00000097          	auipc	ra,0x0
    8000378c:	7ac080e7          	jalr	1964(ra) # 80003f34 <uartinit>
    80003790:	01813083          	ld	ra,24(sp)
    80003794:	01013403          	ld	s0,16(sp)
    80003798:	00000797          	auipc	a5,0x0
    8000379c:	d9c78793          	addi	a5,a5,-612 # 80003534 <consoleread>
    800037a0:	0af4bc23          	sd	a5,184(s1)
    800037a4:	00000797          	auipc	a5,0x0
    800037a8:	cec78793          	addi	a5,a5,-788 # 80003490 <consolewrite>
    800037ac:	0cf4b023          	sd	a5,192(s1)
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	02010113          	addi	sp,sp,32
    800037b8:	00008067          	ret

00000000800037bc <console_read>:
    800037bc:	ff010113          	addi	sp,sp,-16
    800037c0:	00813423          	sd	s0,8(sp)
    800037c4:	01010413          	addi	s0,sp,16
    800037c8:	00813403          	ld	s0,8(sp)
    800037cc:	00004317          	auipc	t1,0x4
    800037d0:	a7433303          	ld	t1,-1420(t1) # 80007240 <devsw+0x10>
    800037d4:	01010113          	addi	sp,sp,16
    800037d8:	00030067          	jr	t1

00000000800037dc <console_write>:
    800037dc:	ff010113          	addi	sp,sp,-16
    800037e0:	00813423          	sd	s0,8(sp)
    800037e4:	01010413          	addi	s0,sp,16
    800037e8:	00813403          	ld	s0,8(sp)
    800037ec:	00004317          	auipc	t1,0x4
    800037f0:	a5c33303          	ld	t1,-1444(t1) # 80007248 <devsw+0x18>
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00030067          	jr	t1

00000000800037fc <panic>:
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00113c23          	sd	ra,24(sp)
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	00050493          	mv	s1,a0
    80003814:	00002517          	auipc	a0,0x2
    80003818:	ab450513          	addi	a0,a0,-1356 # 800052c8 <_ZZ12printIntegermE6digits+0x140>
    8000381c:	00004797          	auipc	a5,0x4
    80003820:	ac07a623          	sw	zero,-1332(a5) # 800072e8 <pr+0x18>
    80003824:	00000097          	auipc	ra,0x0
    80003828:	034080e7          	jalr	52(ra) # 80003858 <__printf>
    8000382c:	00048513          	mv	a0,s1
    80003830:	00000097          	auipc	ra,0x0
    80003834:	028080e7          	jalr	40(ra) # 80003858 <__printf>
    80003838:	00002517          	auipc	a0,0x2
    8000383c:	8b850513          	addi	a0,a0,-1864 # 800050f0 <CONSOLE_STATUS+0xe0>
    80003840:	00000097          	auipc	ra,0x0
    80003844:	018080e7          	jalr	24(ra) # 80003858 <__printf>
    80003848:	00100793          	li	a5,1
    8000384c:	00003717          	auipc	a4,0x3
    80003850:	80f72623          	sw	a5,-2036(a4) # 80006058 <panicked>
    80003854:	0000006f          	j	80003854 <panic+0x58>

0000000080003858 <__printf>:
    80003858:	f3010113          	addi	sp,sp,-208
    8000385c:	08813023          	sd	s0,128(sp)
    80003860:	07313423          	sd	s3,104(sp)
    80003864:	09010413          	addi	s0,sp,144
    80003868:	05813023          	sd	s8,64(sp)
    8000386c:	08113423          	sd	ra,136(sp)
    80003870:	06913c23          	sd	s1,120(sp)
    80003874:	07213823          	sd	s2,112(sp)
    80003878:	07413023          	sd	s4,96(sp)
    8000387c:	05513c23          	sd	s5,88(sp)
    80003880:	05613823          	sd	s6,80(sp)
    80003884:	05713423          	sd	s7,72(sp)
    80003888:	03913c23          	sd	s9,56(sp)
    8000388c:	03a13823          	sd	s10,48(sp)
    80003890:	03b13423          	sd	s11,40(sp)
    80003894:	00004317          	auipc	t1,0x4
    80003898:	a3c30313          	addi	t1,t1,-1476 # 800072d0 <pr>
    8000389c:	01832c03          	lw	s8,24(t1)
    800038a0:	00b43423          	sd	a1,8(s0)
    800038a4:	00c43823          	sd	a2,16(s0)
    800038a8:	00d43c23          	sd	a3,24(s0)
    800038ac:	02e43023          	sd	a4,32(s0)
    800038b0:	02f43423          	sd	a5,40(s0)
    800038b4:	03043823          	sd	a6,48(s0)
    800038b8:	03143c23          	sd	a7,56(s0)
    800038bc:	00050993          	mv	s3,a0
    800038c0:	4a0c1663          	bnez	s8,80003d6c <__printf+0x514>
    800038c4:	60098c63          	beqz	s3,80003edc <__printf+0x684>
    800038c8:	0009c503          	lbu	a0,0(s3)
    800038cc:	00840793          	addi	a5,s0,8
    800038d0:	f6f43c23          	sd	a5,-136(s0)
    800038d4:	00000493          	li	s1,0
    800038d8:	22050063          	beqz	a0,80003af8 <__printf+0x2a0>
    800038dc:	00002a37          	lui	s4,0x2
    800038e0:	00018ab7          	lui	s5,0x18
    800038e4:	000f4b37          	lui	s6,0xf4
    800038e8:	00989bb7          	lui	s7,0x989
    800038ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800038f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800038f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800038f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800038fc:	00148c9b          	addiw	s9,s1,1
    80003900:	02500793          	li	a5,37
    80003904:	01998933          	add	s2,s3,s9
    80003908:	38f51263          	bne	a0,a5,80003c8c <__printf+0x434>
    8000390c:	00094783          	lbu	a5,0(s2)
    80003910:	00078c9b          	sext.w	s9,a5
    80003914:	1e078263          	beqz	a5,80003af8 <__printf+0x2a0>
    80003918:	0024849b          	addiw	s1,s1,2
    8000391c:	07000713          	li	a4,112
    80003920:	00998933          	add	s2,s3,s1
    80003924:	38e78a63          	beq	a5,a4,80003cb8 <__printf+0x460>
    80003928:	20f76863          	bltu	a4,a5,80003b38 <__printf+0x2e0>
    8000392c:	42a78863          	beq	a5,a0,80003d5c <__printf+0x504>
    80003930:	06400713          	li	a4,100
    80003934:	40e79663          	bne	a5,a4,80003d40 <__printf+0x4e8>
    80003938:	f7843783          	ld	a5,-136(s0)
    8000393c:	0007a603          	lw	a2,0(a5)
    80003940:	00878793          	addi	a5,a5,8
    80003944:	f6f43c23          	sd	a5,-136(s0)
    80003948:	42064a63          	bltz	a2,80003d7c <__printf+0x524>
    8000394c:	00a00713          	li	a4,10
    80003950:	02e677bb          	remuw	a5,a2,a4
    80003954:	00002d97          	auipc	s11,0x2
    80003958:	99cd8d93          	addi	s11,s11,-1636 # 800052f0 <digits>
    8000395c:	00900593          	li	a1,9
    80003960:	0006051b          	sext.w	a0,a2
    80003964:	00000c93          	li	s9,0
    80003968:	02079793          	slli	a5,a5,0x20
    8000396c:	0207d793          	srli	a5,a5,0x20
    80003970:	00fd87b3          	add	a5,s11,a5
    80003974:	0007c783          	lbu	a5,0(a5)
    80003978:	02e656bb          	divuw	a3,a2,a4
    8000397c:	f8f40023          	sb	a5,-128(s0)
    80003980:	14c5d863          	bge	a1,a2,80003ad0 <__printf+0x278>
    80003984:	06300593          	li	a1,99
    80003988:	00100c93          	li	s9,1
    8000398c:	02e6f7bb          	remuw	a5,a3,a4
    80003990:	02079793          	slli	a5,a5,0x20
    80003994:	0207d793          	srli	a5,a5,0x20
    80003998:	00fd87b3          	add	a5,s11,a5
    8000399c:	0007c783          	lbu	a5,0(a5)
    800039a0:	02e6d73b          	divuw	a4,a3,a4
    800039a4:	f8f400a3          	sb	a5,-127(s0)
    800039a8:	12a5f463          	bgeu	a1,a0,80003ad0 <__printf+0x278>
    800039ac:	00a00693          	li	a3,10
    800039b0:	00900593          	li	a1,9
    800039b4:	02d777bb          	remuw	a5,a4,a3
    800039b8:	02079793          	slli	a5,a5,0x20
    800039bc:	0207d793          	srli	a5,a5,0x20
    800039c0:	00fd87b3          	add	a5,s11,a5
    800039c4:	0007c503          	lbu	a0,0(a5)
    800039c8:	02d757bb          	divuw	a5,a4,a3
    800039cc:	f8a40123          	sb	a0,-126(s0)
    800039d0:	48e5f263          	bgeu	a1,a4,80003e54 <__printf+0x5fc>
    800039d4:	06300513          	li	a0,99
    800039d8:	02d7f5bb          	remuw	a1,a5,a3
    800039dc:	02059593          	slli	a1,a1,0x20
    800039e0:	0205d593          	srli	a1,a1,0x20
    800039e4:	00bd85b3          	add	a1,s11,a1
    800039e8:	0005c583          	lbu	a1,0(a1)
    800039ec:	02d7d7bb          	divuw	a5,a5,a3
    800039f0:	f8b401a3          	sb	a1,-125(s0)
    800039f4:	48e57263          	bgeu	a0,a4,80003e78 <__printf+0x620>
    800039f8:	3e700513          	li	a0,999
    800039fc:	02d7f5bb          	remuw	a1,a5,a3
    80003a00:	02059593          	slli	a1,a1,0x20
    80003a04:	0205d593          	srli	a1,a1,0x20
    80003a08:	00bd85b3          	add	a1,s11,a1
    80003a0c:	0005c583          	lbu	a1,0(a1)
    80003a10:	02d7d7bb          	divuw	a5,a5,a3
    80003a14:	f8b40223          	sb	a1,-124(s0)
    80003a18:	46e57663          	bgeu	a0,a4,80003e84 <__printf+0x62c>
    80003a1c:	02d7f5bb          	remuw	a1,a5,a3
    80003a20:	02059593          	slli	a1,a1,0x20
    80003a24:	0205d593          	srli	a1,a1,0x20
    80003a28:	00bd85b3          	add	a1,s11,a1
    80003a2c:	0005c583          	lbu	a1,0(a1)
    80003a30:	02d7d7bb          	divuw	a5,a5,a3
    80003a34:	f8b402a3          	sb	a1,-123(s0)
    80003a38:	46ea7863          	bgeu	s4,a4,80003ea8 <__printf+0x650>
    80003a3c:	02d7f5bb          	remuw	a1,a5,a3
    80003a40:	02059593          	slli	a1,a1,0x20
    80003a44:	0205d593          	srli	a1,a1,0x20
    80003a48:	00bd85b3          	add	a1,s11,a1
    80003a4c:	0005c583          	lbu	a1,0(a1)
    80003a50:	02d7d7bb          	divuw	a5,a5,a3
    80003a54:	f8b40323          	sb	a1,-122(s0)
    80003a58:	3eeaf863          	bgeu	s5,a4,80003e48 <__printf+0x5f0>
    80003a5c:	02d7f5bb          	remuw	a1,a5,a3
    80003a60:	02059593          	slli	a1,a1,0x20
    80003a64:	0205d593          	srli	a1,a1,0x20
    80003a68:	00bd85b3          	add	a1,s11,a1
    80003a6c:	0005c583          	lbu	a1,0(a1)
    80003a70:	02d7d7bb          	divuw	a5,a5,a3
    80003a74:	f8b403a3          	sb	a1,-121(s0)
    80003a78:	42eb7e63          	bgeu	s6,a4,80003eb4 <__printf+0x65c>
    80003a7c:	02d7f5bb          	remuw	a1,a5,a3
    80003a80:	02059593          	slli	a1,a1,0x20
    80003a84:	0205d593          	srli	a1,a1,0x20
    80003a88:	00bd85b3          	add	a1,s11,a1
    80003a8c:	0005c583          	lbu	a1,0(a1)
    80003a90:	02d7d7bb          	divuw	a5,a5,a3
    80003a94:	f8b40423          	sb	a1,-120(s0)
    80003a98:	42ebfc63          	bgeu	s7,a4,80003ed0 <__printf+0x678>
    80003a9c:	02079793          	slli	a5,a5,0x20
    80003aa0:	0207d793          	srli	a5,a5,0x20
    80003aa4:	00fd8db3          	add	s11,s11,a5
    80003aa8:	000dc703          	lbu	a4,0(s11)
    80003aac:	00a00793          	li	a5,10
    80003ab0:	00900c93          	li	s9,9
    80003ab4:	f8e404a3          	sb	a4,-119(s0)
    80003ab8:	00065c63          	bgez	a2,80003ad0 <__printf+0x278>
    80003abc:	f9040713          	addi	a4,s0,-112
    80003ac0:	00f70733          	add	a4,a4,a5
    80003ac4:	02d00693          	li	a3,45
    80003ac8:	fed70823          	sb	a3,-16(a4)
    80003acc:	00078c93          	mv	s9,a5
    80003ad0:	f8040793          	addi	a5,s0,-128
    80003ad4:	01978cb3          	add	s9,a5,s9
    80003ad8:	f7f40d13          	addi	s10,s0,-129
    80003adc:	000cc503          	lbu	a0,0(s9)
    80003ae0:	fffc8c93          	addi	s9,s9,-1
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	b90080e7          	jalr	-1136(ra) # 80003674 <consputc>
    80003aec:	ffac98e3          	bne	s9,s10,80003adc <__printf+0x284>
    80003af0:	00094503          	lbu	a0,0(s2)
    80003af4:	e00514e3          	bnez	a0,800038fc <__printf+0xa4>
    80003af8:	1a0c1663          	bnez	s8,80003ca4 <__printf+0x44c>
    80003afc:	08813083          	ld	ra,136(sp)
    80003b00:	08013403          	ld	s0,128(sp)
    80003b04:	07813483          	ld	s1,120(sp)
    80003b08:	07013903          	ld	s2,112(sp)
    80003b0c:	06813983          	ld	s3,104(sp)
    80003b10:	06013a03          	ld	s4,96(sp)
    80003b14:	05813a83          	ld	s5,88(sp)
    80003b18:	05013b03          	ld	s6,80(sp)
    80003b1c:	04813b83          	ld	s7,72(sp)
    80003b20:	04013c03          	ld	s8,64(sp)
    80003b24:	03813c83          	ld	s9,56(sp)
    80003b28:	03013d03          	ld	s10,48(sp)
    80003b2c:	02813d83          	ld	s11,40(sp)
    80003b30:	0d010113          	addi	sp,sp,208
    80003b34:	00008067          	ret
    80003b38:	07300713          	li	a4,115
    80003b3c:	1ce78a63          	beq	a5,a4,80003d10 <__printf+0x4b8>
    80003b40:	07800713          	li	a4,120
    80003b44:	1ee79e63          	bne	a5,a4,80003d40 <__printf+0x4e8>
    80003b48:	f7843783          	ld	a5,-136(s0)
    80003b4c:	0007a703          	lw	a4,0(a5)
    80003b50:	00878793          	addi	a5,a5,8
    80003b54:	f6f43c23          	sd	a5,-136(s0)
    80003b58:	28074263          	bltz	a4,80003ddc <__printf+0x584>
    80003b5c:	00001d97          	auipc	s11,0x1
    80003b60:	794d8d93          	addi	s11,s11,1940 # 800052f0 <digits>
    80003b64:	00f77793          	andi	a5,a4,15
    80003b68:	00fd87b3          	add	a5,s11,a5
    80003b6c:	0007c683          	lbu	a3,0(a5)
    80003b70:	00f00613          	li	a2,15
    80003b74:	0007079b          	sext.w	a5,a4
    80003b78:	f8d40023          	sb	a3,-128(s0)
    80003b7c:	0047559b          	srliw	a1,a4,0x4
    80003b80:	0047569b          	srliw	a3,a4,0x4
    80003b84:	00000c93          	li	s9,0
    80003b88:	0ee65063          	bge	a2,a4,80003c68 <__printf+0x410>
    80003b8c:	00f6f693          	andi	a3,a3,15
    80003b90:	00dd86b3          	add	a3,s11,a3
    80003b94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003b98:	0087d79b          	srliw	a5,a5,0x8
    80003b9c:	00100c93          	li	s9,1
    80003ba0:	f8d400a3          	sb	a3,-127(s0)
    80003ba4:	0cb67263          	bgeu	a2,a1,80003c68 <__printf+0x410>
    80003ba8:	00f7f693          	andi	a3,a5,15
    80003bac:	00dd86b3          	add	a3,s11,a3
    80003bb0:	0006c583          	lbu	a1,0(a3)
    80003bb4:	00f00613          	li	a2,15
    80003bb8:	0047d69b          	srliw	a3,a5,0x4
    80003bbc:	f8b40123          	sb	a1,-126(s0)
    80003bc0:	0047d593          	srli	a1,a5,0x4
    80003bc4:	28f67e63          	bgeu	a2,a5,80003e60 <__printf+0x608>
    80003bc8:	00f6f693          	andi	a3,a3,15
    80003bcc:	00dd86b3          	add	a3,s11,a3
    80003bd0:	0006c503          	lbu	a0,0(a3)
    80003bd4:	0087d813          	srli	a6,a5,0x8
    80003bd8:	0087d69b          	srliw	a3,a5,0x8
    80003bdc:	f8a401a3          	sb	a0,-125(s0)
    80003be0:	28b67663          	bgeu	a2,a1,80003e6c <__printf+0x614>
    80003be4:	00f6f693          	andi	a3,a3,15
    80003be8:	00dd86b3          	add	a3,s11,a3
    80003bec:	0006c583          	lbu	a1,0(a3)
    80003bf0:	00c7d513          	srli	a0,a5,0xc
    80003bf4:	00c7d69b          	srliw	a3,a5,0xc
    80003bf8:	f8b40223          	sb	a1,-124(s0)
    80003bfc:	29067a63          	bgeu	a2,a6,80003e90 <__printf+0x638>
    80003c00:	00f6f693          	andi	a3,a3,15
    80003c04:	00dd86b3          	add	a3,s11,a3
    80003c08:	0006c583          	lbu	a1,0(a3)
    80003c0c:	0107d813          	srli	a6,a5,0x10
    80003c10:	0107d69b          	srliw	a3,a5,0x10
    80003c14:	f8b402a3          	sb	a1,-123(s0)
    80003c18:	28a67263          	bgeu	a2,a0,80003e9c <__printf+0x644>
    80003c1c:	00f6f693          	andi	a3,a3,15
    80003c20:	00dd86b3          	add	a3,s11,a3
    80003c24:	0006c683          	lbu	a3,0(a3)
    80003c28:	0147d79b          	srliw	a5,a5,0x14
    80003c2c:	f8d40323          	sb	a3,-122(s0)
    80003c30:	21067663          	bgeu	a2,a6,80003e3c <__printf+0x5e4>
    80003c34:	02079793          	slli	a5,a5,0x20
    80003c38:	0207d793          	srli	a5,a5,0x20
    80003c3c:	00fd8db3          	add	s11,s11,a5
    80003c40:	000dc683          	lbu	a3,0(s11)
    80003c44:	00800793          	li	a5,8
    80003c48:	00700c93          	li	s9,7
    80003c4c:	f8d403a3          	sb	a3,-121(s0)
    80003c50:	00075c63          	bgez	a4,80003c68 <__printf+0x410>
    80003c54:	f9040713          	addi	a4,s0,-112
    80003c58:	00f70733          	add	a4,a4,a5
    80003c5c:	02d00693          	li	a3,45
    80003c60:	fed70823          	sb	a3,-16(a4)
    80003c64:	00078c93          	mv	s9,a5
    80003c68:	f8040793          	addi	a5,s0,-128
    80003c6c:	01978cb3          	add	s9,a5,s9
    80003c70:	f7f40d13          	addi	s10,s0,-129
    80003c74:	000cc503          	lbu	a0,0(s9)
    80003c78:	fffc8c93          	addi	s9,s9,-1
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	9f8080e7          	jalr	-1544(ra) # 80003674 <consputc>
    80003c84:	ff9d18e3          	bne	s10,s9,80003c74 <__printf+0x41c>
    80003c88:	0100006f          	j	80003c98 <__printf+0x440>
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	9e8080e7          	jalr	-1560(ra) # 80003674 <consputc>
    80003c94:	000c8493          	mv	s1,s9
    80003c98:	00094503          	lbu	a0,0(s2)
    80003c9c:	c60510e3          	bnez	a0,800038fc <__printf+0xa4>
    80003ca0:	e40c0ee3          	beqz	s8,80003afc <__printf+0x2a4>
    80003ca4:	00003517          	auipc	a0,0x3
    80003ca8:	62c50513          	addi	a0,a0,1580 # 800072d0 <pr>
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	94c080e7          	jalr	-1716(ra) # 800045f8 <release>
    80003cb4:	e49ff06f          	j	80003afc <__printf+0x2a4>
    80003cb8:	f7843783          	ld	a5,-136(s0)
    80003cbc:	03000513          	li	a0,48
    80003cc0:	01000d13          	li	s10,16
    80003cc4:	00878713          	addi	a4,a5,8
    80003cc8:	0007bc83          	ld	s9,0(a5)
    80003ccc:	f6e43c23          	sd	a4,-136(s0)
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	9a4080e7          	jalr	-1628(ra) # 80003674 <consputc>
    80003cd8:	07800513          	li	a0,120
    80003cdc:	00000097          	auipc	ra,0x0
    80003ce0:	998080e7          	jalr	-1640(ra) # 80003674 <consputc>
    80003ce4:	00001d97          	auipc	s11,0x1
    80003ce8:	60cd8d93          	addi	s11,s11,1548 # 800052f0 <digits>
    80003cec:	03ccd793          	srli	a5,s9,0x3c
    80003cf0:	00fd87b3          	add	a5,s11,a5
    80003cf4:	0007c503          	lbu	a0,0(a5)
    80003cf8:	fffd0d1b          	addiw	s10,s10,-1
    80003cfc:	004c9c93          	slli	s9,s9,0x4
    80003d00:	00000097          	auipc	ra,0x0
    80003d04:	974080e7          	jalr	-1676(ra) # 80003674 <consputc>
    80003d08:	fe0d12e3          	bnez	s10,80003cec <__printf+0x494>
    80003d0c:	f8dff06f          	j	80003c98 <__printf+0x440>
    80003d10:	f7843783          	ld	a5,-136(s0)
    80003d14:	0007bc83          	ld	s9,0(a5)
    80003d18:	00878793          	addi	a5,a5,8
    80003d1c:	f6f43c23          	sd	a5,-136(s0)
    80003d20:	000c9a63          	bnez	s9,80003d34 <__printf+0x4dc>
    80003d24:	1080006f          	j	80003e2c <__printf+0x5d4>
    80003d28:	001c8c93          	addi	s9,s9,1
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	948080e7          	jalr	-1720(ra) # 80003674 <consputc>
    80003d34:	000cc503          	lbu	a0,0(s9)
    80003d38:	fe0518e3          	bnez	a0,80003d28 <__printf+0x4d0>
    80003d3c:	f5dff06f          	j	80003c98 <__printf+0x440>
    80003d40:	02500513          	li	a0,37
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	930080e7          	jalr	-1744(ra) # 80003674 <consputc>
    80003d4c:	000c8513          	mv	a0,s9
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	924080e7          	jalr	-1756(ra) # 80003674 <consputc>
    80003d58:	f41ff06f          	j	80003c98 <__printf+0x440>
    80003d5c:	02500513          	li	a0,37
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	914080e7          	jalr	-1772(ra) # 80003674 <consputc>
    80003d68:	f31ff06f          	j	80003c98 <__printf+0x440>
    80003d6c:	00030513          	mv	a0,t1
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	7bc080e7          	jalr	1980(ra) # 8000452c <acquire>
    80003d78:	b4dff06f          	j	800038c4 <__printf+0x6c>
    80003d7c:	40c0053b          	negw	a0,a2
    80003d80:	00a00713          	li	a4,10
    80003d84:	02e576bb          	remuw	a3,a0,a4
    80003d88:	00001d97          	auipc	s11,0x1
    80003d8c:	568d8d93          	addi	s11,s11,1384 # 800052f0 <digits>
    80003d90:	ff700593          	li	a1,-9
    80003d94:	02069693          	slli	a3,a3,0x20
    80003d98:	0206d693          	srli	a3,a3,0x20
    80003d9c:	00dd86b3          	add	a3,s11,a3
    80003da0:	0006c683          	lbu	a3,0(a3)
    80003da4:	02e557bb          	divuw	a5,a0,a4
    80003da8:	f8d40023          	sb	a3,-128(s0)
    80003dac:	10b65e63          	bge	a2,a1,80003ec8 <__printf+0x670>
    80003db0:	06300593          	li	a1,99
    80003db4:	02e7f6bb          	remuw	a3,a5,a4
    80003db8:	02069693          	slli	a3,a3,0x20
    80003dbc:	0206d693          	srli	a3,a3,0x20
    80003dc0:	00dd86b3          	add	a3,s11,a3
    80003dc4:	0006c683          	lbu	a3,0(a3)
    80003dc8:	02e7d73b          	divuw	a4,a5,a4
    80003dcc:	00200793          	li	a5,2
    80003dd0:	f8d400a3          	sb	a3,-127(s0)
    80003dd4:	bca5ece3          	bltu	a1,a0,800039ac <__printf+0x154>
    80003dd8:	ce5ff06f          	j	80003abc <__printf+0x264>
    80003ddc:	40e007bb          	negw	a5,a4
    80003de0:	00001d97          	auipc	s11,0x1
    80003de4:	510d8d93          	addi	s11,s11,1296 # 800052f0 <digits>
    80003de8:	00f7f693          	andi	a3,a5,15
    80003dec:	00dd86b3          	add	a3,s11,a3
    80003df0:	0006c583          	lbu	a1,0(a3)
    80003df4:	ff100613          	li	a2,-15
    80003df8:	0047d69b          	srliw	a3,a5,0x4
    80003dfc:	f8b40023          	sb	a1,-128(s0)
    80003e00:	0047d59b          	srliw	a1,a5,0x4
    80003e04:	0ac75e63          	bge	a4,a2,80003ec0 <__printf+0x668>
    80003e08:	00f6f693          	andi	a3,a3,15
    80003e0c:	00dd86b3          	add	a3,s11,a3
    80003e10:	0006c603          	lbu	a2,0(a3)
    80003e14:	00f00693          	li	a3,15
    80003e18:	0087d79b          	srliw	a5,a5,0x8
    80003e1c:	f8c400a3          	sb	a2,-127(s0)
    80003e20:	d8b6e4e3          	bltu	a3,a1,80003ba8 <__printf+0x350>
    80003e24:	00200793          	li	a5,2
    80003e28:	e2dff06f          	j	80003c54 <__printf+0x3fc>
    80003e2c:	00001c97          	auipc	s9,0x1
    80003e30:	4a4c8c93          	addi	s9,s9,1188 # 800052d0 <_ZZ12printIntegermE6digits+0x148>
    80003e34:	02800513          	li	a0,40
    80003e38:	ef1ff06f          	j	80003d28 <__printf+0x4d0>
    80003e3c:	00700793          	li	a5,7
    80003e40:	00600c93          	li	s9,6
    80003e44:	e0dff06f          	j	80003c50 <__printf+0x3f8>
    80003e48:	00700793          	li	a5,7
    80003e4c:	00600c93          	li	s9,6
    80003e50:	c69ff06f          	j	80003ab8 <__printf+0x260>
    80003e54:	00300793          	li	a5,3
    80003e58:	00200c93          	li	s9,2
    80003e5c:	c5dff06f          	j	80003ab8 <__printf+0x260>
    80003e60:	00300793          	li	a5,3
    80003e64:	00200c93          	li	s9,2
    80003e68:	de9ff06f          	j	80003c50 <__printf+0x3f8>
    80003e6c:	00400793          	li	a5,4
    80003e70:	00300c93          	li	s9,3
    80003e74:	dddff06f          	j	80003c50 <__printf+0x3f8>
    80003e78:	00400793          	li	a5,4
    80003e7c:	00300c93          	li	s9,3
    80003e80:	c39ff06f          	j	80003ab8 <__printf+0x260>
    80003e84:	00500793          	li	a5,5
    80003e88:	00400c93          	li	s9,4
    80003e8c:	c2dff06f          	j	80003ab8 <__printf+0x260>
    80003e90:	00500793          	li	a5,5
    80003e94:	00400c93          	li	s9,4
    80003e98:	db9ff06f          	j	80003c50 <__printf+0x3f8>
    80003e9c:	00600793          	li	a5,6
    80003ea0:	00500c93          	li	s9,5
    80003ea4:	dadff06f          	j	80003c50 <__printf+0x3f8>
    80003ea8:	00600793          	li	a5,6
    80003eac:	00500c93          	li	s9,5
    80003eb0:	c09ff06f          	j	80003ab8 <__printf+0x260>
    80003eb4:	00800793          	li	a5,8
    80003eb8:	00700c93          	li	s9,7
    80003ebc:	bfdff06f          	j	80003ab8 <__printf+0x260>
    80003ec0:	00100793          	li	a5,1
    80003ec4:	d91ff06f          	j	80003c54 <__printf+0x3fc>
    80003ec8:	00100793          	li	a5,1
    80003ecc:	bf1ff06f          	j	80003abc <__printf+0x264>
    80003ed0:	00900793          	li	a5,9
    80003ed4:	00800c93          	li	s9,8
    80003ed8:	be1ff06f          	j	80003ab8 <__printf+0x260>
    80003edc:	00001517          	auipc	a0,0x1
    80003ee0:	3fc50513          	addi	a0,a0,1020 # 800052d8 <_ZZ12printIntegermE6digits+0x150>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	918080e7          	jalr	-1768(ra) # 800037fc <panic>

0000000080003eec <printfinit>:
    80003eec:	fe010113          	addi	sp,sp,-32
    80003ef0:	00813823          	sd	s0,16(sp)
    80003ef4:	00913423          	sd	s1,8(sp)
    80003ef8:	00113c23          	sd	ra,24(sp)
    80003efc:	02010413          	addi	s0,sp,32
    80003f00:	00003497          	auipc	s1,0x3
    80003f04:	3d048493          	addi	s1,s1,976 # 800072d0 <pr>
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	00001597          	auipc	a1,0x1
    80003f10:	3dc58593          	addi	a1,a1,988 # 800052e8 <_ZZ12printIntegermE6digits+0x160>
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	5f4080e7          	jalr	1524(ra) # 80004508 <initlock>
    80003f1c:	01813083          	ld	ra,24(sp)
    80003f20:	01013403          	ld	s0,16(sp)
    80003f24:	0004ac23          	sw	zero,24(s1)
    80003f28:	00813483          	ld	s1,8(sp)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00008067          	ret

0000000080003f34 <uartinit>:
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00813423          	sd	s0,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	100007b7          	lui	a5,0x10000
    80003f44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003f48:	f8000713          	li	a4,-128
    80003f4c:	00e781a3          	sb	a4,3(a5)
    80003f50:	00300713          	li	a4,3
    80003f54:	00e78023          	sb	a4,0(a5)
    80003f58:	000780a3          	sb	zero,1(a5)
    80003f5c:	00e781a3          	sb	a4,3(a5)
    80003f60:	00700693          	li	a3,7
    80003f64:	00d78123          	sb	a3,2(a5)
    80003f68:	00e780a3          	sb	a4,1(a5)
    80003f6c:	00813403          	ld	s0,8(sp)
    80003f70:	01010113          	addi	sp,sp,16
    80003f74:	00008067          	ret

0000000080003f78 <uartputc>:
    80003f78:	00002797          	auipc	a5,0x2
    80003f7c:	0e07a783          	lw	a5,224(a5) # 80006058 <panicked>
    80003f80:	00078463          	beqz	a5,80003f88 <uartputc+0x10>
    80003f84:	0000006f          	j	80003f84 <uartputc+0xc>
    80003f88:	fd010113          	addi	sp,sp,-48
    80003f8c:	02813023          	sd	s0,32(sp)
    80003f90:	00913c23          	sd	s1,24(sp)
    80003f94:	01213823          	sd	s2,16(sp)
    80003f98:	01313423          	sd	s3,8(sp)
    80003f9c:	02113423          	sd	ra,40(sp)
    80003fa0:	03010413          	addi	s0,sp,48
    80003fa4:	00002917          	auipc	s2,0x2
    80003fa8:	0bc90913          	addi	s2,s2,188 # 80006060 <uart_tx_r>
    80003fac:	00093783          	ld	a5,0(s2)
    80003fb0:	00002497          	auipc	s1,0x2
    80003fb4:	0b848493          	addi	s1,s1,184 # 80006068 <uart_tx_w>
    80003fb8:	0004b703          	ld	a4,0(s1)
    80003fbc:	02078693          	addi	a3,a5,32
    80003fc0:	00050993          	mv	s3,a0
    80003fc4:	02e69c63          	bne	a3,a4,80003ffc <uartputc+0x84>
    80003fc8:	00001097          	auipc	ra,0x1
    80003fcc:	834080e7          	jalr	-1996(ra) # 800047fc <push_on>
    80003fd0:	00093783          	ld	a5,0(s2)
    80003fd4:	0004b703          	ld	a4,0(s1)
    80003fd8:	02078793          	addi	a5,a5,32
    80003fdc:	00e79463          	bne	a5,a4,80003fe4 <uartputc+0x6c>
    80003fe0:	0000006f          	j	80003fe0 <uartputc+0x68>
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	88c080e7          	jalr	-1908(ra) # 80004870 <pop_on>
    80003fec:	00093783          	ld	a5,0(s2)
    80003ff0:	0004b703          	ld	a4,0(s1)
    80003ff4:	02078693          	addi	a3,a5,32
    80003ff8:	fce688e3          	beq	a3,a4,80003fc8 <uartputc+0x50>
    80003ffc:	01f77693          	andi	a3,a4,31
    80004000:	00003597          	auipc	a1,0x3
    80004004:	2f058593          	addi	a1,a1,752 # 800072f0 <uart_tx_buf>
    80004008:	00d586b3          	add	a3,a1,a3
    8000400c:	00170713          	addi	a4,a4,1
    80004010:	01368023          	sb	s3,0(a3)
    80004014:	00e4b023          	sd	a4,0(s1)
    80004018:	10000637          	lui	a2,0x10000
    8000401c:	02f71063          	bne	a4,a5,8000403c <uartputc+0xc4>
    80004020:	0340006f          	j	80004054 <uartputc+0xdc>
    80004024:	00074703          	lbu	a4,0(a4)
    80004028:	00f93023          	sd	a5,0(s2)
    8000402c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004030:	00093783          	ld	a5,0(s2)
    80004034:	0004b703          	ld	a4,0(s1)
    80004038:	00f70e63          	beq	a4,a5,80004054 <uartputc+0xdc>
    8000403c:	00564683          	lbu	a3,5(a2)
    80004040:	01f7f713          	andi	a4,a5,31
    80004044:	00e58733          	add	a4,a1,a4
    80004048:	0206f693          	andi	a3,a3,32
    8000404c:	00178793          	addi	a5,a5,1
    80004050:	fc069ae3          	bnez	a3,80004024 <uartputc+0xac>
    80004054:	02813083          	ld	ra,40(sp)
    80004058:	02013403          	ld	s0,32(sp)
    8000405c:	01813483          	ld	s1,24(sp)
    80004060:	01013903          	ld	s2,16(sp)
    80004064:	00813983          	ld	s3,8(sp)
    80004068:	03010113          	addi	sp,sp,48
    8000406c:	00008067          	ret

0000000080004070 <uartputc_sync>:
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00813423          	sd	s0,8(sp)
    80004078:	01010413          	addi	s0,sp,16
    8000407c:	00002717          	auipc	a4,0x2
    80004080:	fdc72703          	lw	a4,-36(a4) # 80006058 <panicked>
    80004084:	02071663          	bnez	a4,800040b0 <uartputc_sync+0x40>
    80004088:	00050793          	mv	a5,a0
    8000408c:	100006b7          	lui	a3,0x10000
    80004090:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004094:	02077713          	andi	a4,a4,32
    80004098:	fe070ce3          	beqz	a4,80004090 <uartputc_sync+0x20>
    8000409c:	0ff7f793          	andi	a5,a5,255
    800040a0:	00f68023          	sb	a5,0(a3)
    800040a4:	00813403          	ld	s0,8(sp)
    800040a8:	01010113          	addi	sp,sp,16
    800040ac:	00008067          	ret
    800040b0:	0000006f          	j	800040b0 <uartputc_sync+0x40>

00000000800040b4 <uartstart>:
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00813423          	sd	s0,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
    800040c0:	00002617          	auipc	a2,0x2
    800040c4:	fa060613          	addi	a2,a2,-96 # 80006060 <uart_tx_r>
    800040c8:	00002517          	auipc	a0,0x2
    800040cc:	fa050513          	addi	a0,a0,-96 # 80006068 <uart_tx_w>
    800040d0:	00063783          	ld	a5,0(a2)
    800040d4:	00053703          	ld	a4,0(a0)
    800040d8:	04f70263          	beq	a4,a5,8000411c <uartstart+0x68>
    800040dc:	100005b7          	lui	a1,0x10000
    800040e0:	00003817          	auipc	a6,0x3
    800040e4:	21080813          	addi	a6,a6,528 # 800072f0 <uart_tx_buf>
    800040e8:	01c0006f          	j	80004104 <uartstart+0x50>
    800040ec:	0006c703          	lbu	a4,0(a3)
    800040f0:	00f63023          	sd	a5,0(a2)
    800040f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040f8:	00063783          	ld	a5,0(a2)
    800040fc:	00053703          	ld	a4,0(a0)
    80004100:	00f70e63          	beq	a4,a5,8000411c <uartstart+0x68>
    80004104:	01f7f713          	andi	a4,a5,31
    80004108:	00e806b3          	add	a3,a6,a4
    8000410c:	0055c703          	lbu	a4,5(a1)
    80004110:	00178793          	addi	a5,a5,1
    80004114:	02077713          	andi	a4,a4,32
    80004118:	fc071ae3          	bnez	a4,800040ec <uartstart+0x38>
    8000411c:	00813403          	ld	s0,8(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <uartgetc>:
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00813423          	sd	s0,8(sp)
    80004130:	01010413          	addi	s0,sp,16
    80004134:	10000737          	lui	a4,0x10000
    80004138:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000413c:	0017f793          	andi	a5,a5,1
    80004140:	00078c63          	beqz	a5,80004158 <uartgetc+0x30>
    80004144:	00074503          	lbu	a0,0(a4)
    80004148:	0ff57513          	andi	a0,a0,255
    8000414c:	00813403          	ld	s0,8(sp)
    80004150:	01010113          	addi	sp,sp,16
    80004154:	00008067          	ret
    80004158:	fff00513          	li	a0,-1
    8000415c:	ff1ff06f          	j	8000414c <uartgetc+0x24>

0000000080004160 <uartintr>:
    80004160:	100007b7          	lui	a5,0x10000
    80004164:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004168:	0017f793          	andi	a5,a5,1
    8000416c:	0a078463          	beqz	a5,80004214 <uartintr+0xb4>
    80004170:	fe010113          	addi	sp,sp,-32
    80004174:	00813823          	sd	s0,16(sp)
    80004178:	00913423          	sd	s1,8(sp)
    8000417c:	00113c23          	sd	ra,24(sp)
    80004180:	02010413          	addi	s0,sp,32
    80004184:	100004b7          	lui	s1,0x10000
    80004188:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000418c:	0ff57513          	andi	a0,a0,255
    80004190:	fffff097          	auipc	ra,0xfffff
    80004194:	534080e7          	jalr	1332(ra) # 800036c4 <consoleintr>
    80004198:	0054c783          	lbu	a5,5(s1)
    8000419c:	0017f793          	andi	a5,a5,1
    800041a0:	fe0794e3          	bnez	a5,80004188 <uartintr+0x28>
    800041a4:	00002617          	auipc	a2,0x2
    800041a8:	ebc60613          	addi	a2,a2,-324 # 80006060 <uart_tx_r>
    800041ac:	00002517          	auipc	a0,0x2
    800041b0:	ebc50513          	addi	a0,a0,-324 # 80006068 <uart_tx_w>
    800041b4:	00063783          	ld	a5,0(a2)
    800041b8:	00053703          	ld	a4,0(a0)
    800041bc:	04f70263          	beq	a4,a5,80004200 <uartintr+0xa0>
    800041c0:	100005b7          	lui	a1,0x10000
    800041c4:	00003817          	auipc	a6,0x3
    800041c8:	12c80813          	addi	a6,a6,300 # 800072f0 <uart_tx_buf>
    800041cc:	01c0006f          	j	800041e8 <uartintr+0x88>
    800041d0:	0006c703          	lbu	a4,0(a3)
    800041d4:	00f63023          	sd	a5,0(a2)
    800041d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041dc:	00063783          	ld	a5,0(a2)
    800041e0:	00053703          	ld	a4,0(a0)
    800041e4:	00f70e63          	beq	a4,a5,80004200 <uartintr+0xa0>
    800041e8:	01f7f713          	andi	a4,a5,31
    800041ec:	00e806b3          	add	a3,a6,a4
    800041f0:	0055c703          	lbu	a4,5(a1)
    800041f4:	00178793          	addi	a5,a5,1
    800041f8:	02077713          	andi	a4,a4,32
    800041fc:	fc071ae3          	bnez	a4,800041d0 <uartintr+0x70>
    80004200:	01813083          	ld	ra,24(sp)
    80004204:	01013403          	ld	s0,16(sp)
    80004208:	00813483          	ld	s1,8(sp)
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret
    80004214:	00002617          	auipc	a2,0x2
    80004218:	e4c60613          	addi	a2,a2,-436 # 80006060 <uart_tx_r>
    8000421c:	00002517          	auipc	a0,0x2
    80004220:	e4c50513          	addi	a0,a0,-436 # 80006068 <uart_tx_w>
    80004224:	00063783          	ld	a5,0(a2)
    80004228:	00053703          	ld	a4,0(a0)
    8000422c:	04f70263          	beq	a4,a5,80004270 <uartintr+0x110>
    80004230:	100005b7          	lui	a1,0x10000
    80004234:	00003817          	auipc	a6,0x3
    80004238:	0bc80813          	addi	a6,a6,188 # 800072f0 <uart_tx_buf>
    8000423c:	01c0006f          	j	80004258 <uartintr+0xf8>
    80004240:	0006c703          	lbu	a4,0(a3)
    80004244:	00f63023          	sd	a5,0(a2)
    80004248:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000424c:	00063783          	ld	a5,0(a2)
    80004250:	00053703          	ld	a4,0(a0)
    80004254:	02f70063          	beq	a4,a5,80004274 <uartintr+0x114>
    80004258:	01f7f713          	andi	a4,a5,31
    8000425c:	00e806b3          	add	a3,a6,a4
    80004260:	0055c703          	lbu	a4,5(a1)
    80004264:	00178793          	addi	a5,a5,1
    80004268:	02077713          	andi	a4,a4,32
    8000426c:	fc071ae3          	bnez	a4,80004240 <uartintr+0xe0>
    80004270:	00008067          	ret
    80004274:	00008067          	ret

0000000080004278 <kinit>:
    80004278:	fc010113          	addi	sp,sp,-64
    8000427c:	02913423          	sd	s1,40(sp)
    80004280:	fffff7b7          	lui	a5,0xfffff
    80004284:	00004497          	auipc	s1,0x4
    80004288:	08b48493          	addi	s1,s1,139 # 8000830f <end+0xfff>
    8000428c:	02813823          	sd	s0,48(sp)
    80004290:	01313c23          	sd	s3,24(sp)
    80004294:	00f4f4b3          	and	s1,s1,a5
    80004298:	02113c23          	sd	ra,56(sp)
    8000429c:	03213023          	sd	s2,32(sp)
    800042a0:	01413823          	sd	s4,16(sp)
    800042a4:	01513423          	sd	s5,8(sp)
    800042a8:	04010413          	addi	s0,sp,64
    800042ac:	000017b7          	lui	a5,0x1
    800042b0:	01100993          	li	s3,17
    800042b4:	00f487b3          	add	a5,s1,a5
    800042b8:	01b99993          	slli	s3,s3,0x1b
    800042bc:	06f9e063          	bltu	s3,a5,8000431c <kinit+0xa4>
    800042c0:	00003a97          	auipc	s5,0x3
    800042c4:	050a8a93          	addi	s5,s5,80 # 80007310 <end>
    800042c8:	0754ec63          	bltu	s1,s5,80004340 <kinit+0xc8>
    800042cc:	0734fa63          	bgeu	s1,s3,80004340 <kinit+0xc8>
    800042d0:	00088a37          	lui	s4,0x88
    800042d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800042d8:	00002917          	auipc	s2,0x2
    800042dc:	d9890913          	addi	s2,s2,-616 # 80006070 <kmem>
    800042e0:	00ca1a13          	slli	s4,s4,0xc
    800042e4:	0140006f          	j	800042f8 <kinit+0x80>
    800042e8:	000017b7          	lui	a5,0x1
    800042ec:	00f484b3          	add	s1,s1,a5
    800042f0:	0554e863          	bltu	s1,s5,80004340 <kinit+0xc8>
    800042f4:	0534f663          	bgeu	s1,s3,80004340 <kinit+0xc8>
    800042f8:	00001637          	lui	a2,0x1
    800042fc:	00100593          	li	a1,1
    80004300:	00048513          	mv	a0,s1
    80004304:	00000097          	auipc	ra,0x0
    80004308:	5e4080e7          	jalr	1508(ra) # 800048e8 <__memset>
    8000430c:	00093783          	ld	a5,0(s2)
    80004310:	00f4b023          	sd	a5,0(s1)
    80004314:	00993023          	sd	s1,0(s2)
    80004318:	fd4498e3          	bne	s1,s4,800042e8 <kinit+0x70>
    8000431c:	03813083          	ld	ra,56(sp)
    80004320:	03013403          	ld	s0,48(sp)
    80004324:	02813483          	ld	s1,40(sp)
    80004328:	02013903          	ld	s2,32(sp)
    8000432c:	01813983          	ld	s3,24(sp)
    80004330:	01013a03          	ld	s4,16(sp)
    80004334:	00813a83          	ld	s5,8(sp)
    80004338:	04010113          	addi	sp,sp,64
    8000433c:	00008067          	ret
    80004340:	00001517          	auipc	a0,0x1
    80004344:	fc850513          	addi	a0,a0,-56 # 80005308 <digits+0x18>
    80004348:	fffff097          	auipc	ra,0xfffff
    8000434c:	4b4080e7          	jalr	1204(ra) # 800037fc <panic>

0000000080004350 <freerange>:
    80004350:	fc010113          	addi	sp,sp,-64
    80004354:	000017b7          	lui	a5,0x1
    80004358:	02913423          	sd	s1,40(sp)
    8000435c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004360:	009504b3          	add	s1,a0,s1
    80004364:	fffff537          	lui	a0,0xfffff
    80004368:	02813823          	sd	s0,48(sp)
    8000436c:	02113c23          	sd	ra,56(sp)
    80004370:	03213023          	sd	s2,32(sp)
    80004374:	01313c23          	sd	s3,24(sp)
    80004378:	01413823          	sd	s4,16(sp)
    8000437c:	01513423          	sd	s5,8(sp)
    80004380:	01613023          	sd	s6,0(sp)
    80004384:	04010413          	addi	s0,sp,64
    80004388:	00a4f4b3          	and	s1,s1,a0
    8000438c:	00f487b3          	add	a5,s1,a5
    80004390:	06f5e463          	bltu	a1,a5,800043f8 <freerange+0xa8>
    80004394:	00003a97          	auipc	s5,0x3
    80004398:	f7ca8a93          	addi	s5,s5,-132 # 80007310 <end>
    8000439c:	0954e263          	bltu	s1,s5,80004420 <freerange+0xd0>
    800043a0:	01100993          	li	s3,17
    800043a4:	01b99993          	slli	s3,s3,0x1b
    800043a8:	0734fc63          	bgeu	s1,s3,80004420 <freerange+0xd0>
    800043ac:	00058a13          	mv	s4,a1
    800043b0:	00002917          	auipc	s2,0x2
    800043b4:	cc090913          	addi	s2,s2,-832 # 80006070 <kmem>
    800043b8:	00002b37          	lui	s6,0x2
    800043bc:	0140006f          	j	800043d0 <freerange+0x80>
    800043c0:	000017b7          	lui	a5,0x1
    800043c4:	00f484b3          	add	s1,s1,a5
    800043c8:	0554ec63          	bltu	s1,s5,80004420 <freerange+0xd0>
    800043cc:	0534fa63          	bgeu	s1,s3,80004420 <freerange+0xd0>
    800043d0:	00001637          	lui	a2,0x1
    800043d4:	00100593          	li	a1,1
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00000097          	auipc	ra,0x0
    800043e0:	50c080e7          	jalr	1292(ra) # 800048e8 <__memset>
    800043e4:	00093703          	ld	a4,0(s2)
    800043e8:	016487b3          	add	a5,s1,s6
    800043ec:	00e4b023          	sd	a4,0(s1)
    800043f0:	00993023          	sd	s1,0(s2)
    800043f4:	fcfa76e3          	bgeu	s4,a5,800043c0 <freerange+0x70>
    800043f8:	03813083          	ld	ra,56(sp)
    800043fc:	03013403          	ld	s0,48(sp)
    80004400:	02813483          	ld	s1,40(sp)
    80004404:	02013903          	ld	s2,32(sp)
    80004408:	01813983          	ld	s3,24(sp)
    8000440c:	01013a03          	ld	s4,16(sp)
    80004410:	00813a83          	ld	s5,8(sp)
    80004414:	00013b03          	ld	s6,0(sp)
    80004418:	04010113          	addi	sp,sp,64
    8000441c:	00008067          	ret
    80004420:	00001517          	auipc	a0,0x1
    80004424:	ee850513          	addi	a0,a0,-280 # 80005308 <digits+0x18>
    80004428:	fffff097          	auipc	ra,0xfffff
    8000442c:	3d4080e7          	jalr	980(ra) # 800037fc <panic>

0000000080004430 <kfree>:
    80004430:	fe010113          	addi	sp,sp,-32
    80004434:	00813823          	sd	s0,16(sp)
    80004438:	00113c23          	sd	ra,24(sp)
    8000443c:	00913423          	sd	s1,8(sp)
    80004440:	02010413          	addi	s0,sp,32
    80004444:	03451793          	slli	a5,a0,0x34
    80004448:	04079c63          	bnez	a5,800044a0 <kfree+0x70>
    8000444c:	00003797          	auipc	a5,0x3
    80004450:	ec478793          	addi	a5,a5,-316 # 80007310 <end>
    80004454:	00050493          	mv	s1,a0
    80004458:	04f56463          	bltu	a0,a5,800044a0 <kfree+0x70>
    8000445c:	01100793          	li	a5,17
    80004460:	01b79793          	slli	a5,a5,0x1b
    80004464:	02f57e63          	bgeu	a0,a5,800044a0 <kfree+0x70>
    80004468:	00001637          	lui	a2,0x1
    8000446c:	00100593          	li	a1,1
    80004470:	00000097          	auipc	ra,0x0
    80004474:	478080e7          	jalr	1144(ra) # 800048e8 <__memset>
    80004478:	00002797          	auipc	a5,0x2
    8000447c:	bf878793          	addi	a5,a5,-1032 # 80006070 <kmem>
    80004480:	0007b703          	ld	a4,0(a5)
    80004484:	01813083          	ld	ra,24(sp)
    80004488:	01013403          	ld	s0,16(sp)
    8000448c:	00e4b023          	sd	a4,0(s1)
    80004490:	0097b023          	sd	s1,0(a5)
    80004494:	00813483          	ld	s1,8(sp)
    80004498:	02010113          	addi	sp,sp,32
    8000449c:	00008067          	ret
    800044a0:	00001517          	auipc	a0,0x1
    800044a4:	e6850513          	addi	a0,a0,-408 # 80005308 <digits+0x18>
    800044a8:	fffff097          	auipc	ra,0xfffff
    800044ac:	354080e7          	jalr	852(ra) # 800037fc <panic>

00000000800044b0 <kalloc>:
    800044b0:	fe010113          	addi	sp,sp,-32
    800044b4:	00813823          	sd	s0,16(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	00113c23          	sd	ra,24(sp)
    800044c0:	02010413          	addi	s0,sp,32
    800044c4:	00002797          	auipc	a5,0x2
    800044c8:	bac78793          	addi	a5,a5,-1108 # 80006070 <kmem>
    800044cc:	0007b483          	ld	s1,0(a5)
    800044d0:	02048063          	beqz	s1,800044f0 <kalloc+0x40>
    800044d4:	0004b703          	ld	a4,0(s1)
    800044d8:	00001637          	lui	a2,0x1
    800044dc:	00500593          	li	a1,5
    800044e0:	00048513          	mv	a0,s1
    800044e4:	00e7b023          	sd	a4,0(a5)
    800044e8:	00000097          	auipc	ra,0x0
    800044ec:	400080e7          	jalr	1024(ra) # 800048e8 <__memset>
    800044f0:	01813083          	ld	ra,24(sp)
    800044f4:	01013403          	ld	s0,16(sp)
    800044f8:	00048513          	mv	a0,s1
    800044fc:	00813483          	ld	s1,8(sp)
    80004500:	02010113          	addi	sp,sp,32
    80004504:	00008067          	ret

0000000080004508 <initlock>:
    80004508:	ff010113          	addi	sp,sp,-16
    8000450c:	00813423          	sd	s0,8(sp)
    80004510:	01010413          	addi	s0,sp,16
    80004514:	00813403          	ld	s0,8(sp)
    80004518:	00b53423          	sd	a1,8(a0)
    8000451c:	00052023          	sw	zero,0(a0)
    80004520:	00053823          	sd	zero,16(a0)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <acquire>:
    8000452c:	fe010113          	addi	sp,sp,-32
    80004530:	00813823          	sd	s0,16(sp)
    80004534:	00913423          	sd	s1,8(sp)
    80004538:	00113c23          	sd	ra,24(sp)
    8000453c:	01213023          	sd	s2,0(sp)
    80004540:	02010413          	addi	s0,sp,32
    80004544:	00050493          	mv	s1,a0
    80004548:	10002973          	csrr	s2,sstatus
    8000454c:	100027f3          	csrr	a5,sstatus
    80004550:	ffd7f793          	andi	a5,a5,-3
    80004554:	10079073          	csrw	sstatus,a5
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	8ec080e7          	jalr	-1812(ra) # 80002e44 <mycpu>
    80004560:	07852783          	lw	a5,120(a0)
    80004564:	06078e63          	beqz	a5,800045e0 <acquire+0xb4>
    80004568:	fffff097          	auipc	ra,0xfffff
    8000456c:	8dc080e7          	jalr	-1828(ra) # 80002e44 <mycpu>
    80004570:	07852783          	lw	a5,120(a0)
    80004574:	0004a703          	lw	a4,0(s1)
    80004578:	0017879b          	addiw	a5,a5,1
    8000457c:	06f52c23          	sw	a5,120(a0)
    80004580:	04071063          	bnez	a4,800045c0 <acquire+0x94>
    80004584:	00100713          	li	a4,1
    80004588:	00070793          	mv	a5,a4
    8000458c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004590:	0007879b          	sext.w	a5,a5
    80004594:	fe079ae3          	bnez	a5,80004588 <acquire+0x5c>
    80004598:	0ff0000f          	fence
    8000459c:	fffff097          	auipc	ra,0xfffff
    800045a0:	8a8080e7          	jalr	-1880(ra) # 80002e44 <mycpu>
    800045a4:	01813083          	ld	ra,24(sp)
    800045a8:	01013403          	ld	s0,16(sp)
    800045ac:	00a4b823          	sd	a0,16(s1)
    800045b0:	00013903          	ld	s2,0(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret
    800045c0:	0104b903          	ld	s2,16(s1)
    800045c4:	fffff097          	auipc	ra,0xfffff
    800045c8:	880080e7          	jalr	-1920(ra) # 80002e44 <mycpu>
    800045cc:	faa91ce3          	bne	s2,a0,80004584 <acquire+0x58>
    800045d0:	00001517          	auipc	a0,0x1
    800045d4:	d4050513          	addi	a0,a0,-704 # 80005310 <digits+0x20>
    800045d8:	fffff097          	auipc	ra,0xfffff
    800045dc:	224080e7          	jalr	548(ra) # 800037fc <panic>
    800045e0:	00195913          	srli	s2,s2,0x1
    800045e4:	fffff097          	auipc	ra,0xfffff
    800045e8:	860080e7          	jalr	-1952(ra) # 80002e44 <mycpu>
    800045ec:	00197913          	andi	s2,s2,1
    800045f0:	07252e23          	sw	s2,124(a0)
    800045f4:	f75ff06f          	j	80004568 <acquire+0x3c>

00000000800045f8 <release>:
    800045f8:	fe010113          	addi	sp,sp,-32
    800045fc:	00813823          	sd	s0,16(sp)
    80004600:	00113c23          	sd	ra,24(sp)
    80004604:	00913423          	sd	s1,8(sp)
    80004608:	01213023          	sd	s2,0(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	00052783          	lw	a5,0(a0)
    80004614:	00079a63          	bnez	a5,80004628 <release+0x30>
    80004618:	00001517          	auipc	a0,0x1
    8000461c:	d0050513          	addi	a0,a0,-768 # 80005318 <digits+0x28>
    80004620:	fffff097          	auipc	ra,0xfffff
    80004624:	1dc080e7          	jalr	476(ra) # 800037fc <panic>
    80004628:	01053903          	ld	s2,16(a0)
    8000462c:	00050493          	mv	s1,a0
    80004630:	fffff097          	auipc	ra,0xfffff
    80004634:	814080e7          	jalr	-2028(ra) # 80002e44 <mycpu>
    80004638:	fea910e3          	bne	s2,a0,80004618 <release+0x20>
    8000463c:	0004b823          	sd	zero,16(s1)
    80004640:	0ff0000f          	fence
    80004644:	0f50000f          	fence	iorw,ow
    80004648:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	7f8080e7          	jalr	2040(ra) # 80002e44 <mycpu>
    80004654:	100027f3          	csrr	a5,sstatus
    80004658:	0027f793          	andi	a5,a5,2
    8000465c:	04079a63          	bnez	a5,800046b0 <release+0xb8>
    80004660:	07852783          	lw	a5,120(a0)
    80004664:	02f05e63          	blez	a5,800046a0 <release+0xa8>
    80004668:	fff7871b          	addiw	a4,a5,-1
    8000466c:	06e52c23          	sw	a4,120(a0)
    80004670:	00071c63          	bnez	a4,80004688 <release+0x90>
    80004674:	07c52783          	lw	a5,124(a0)
    80004678:	00078863          	beqz	a5,80004688 <release+0x90>
    8000467c:	100027f3          	csrr	a5,sstatus
    80004680:	0027e793          	ori	a5,a5,2
    80004684:	10079073          	csrw	sstatus,a5
    80004688:	01813083          	ld	ra,24(sp)
    8000468c:	01013403          	ld	s0,16(sp)
    80004690:	00813483          	ld	s1,8(sp)
    80004694:	00013903          	ld	s2,0(sp)
    80004698:	02010113          	addi	sp,sp,32
    8000469c:	00008067          	ret
    800046a0:	00001517          	auipc	a0,0x1
    800046a4:	c9850513          	addi	a0,a0,-872 # 80005338 <digits+0x48>
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	154080e7          	jalr	340(ra) # 800037fc <panic>
    800046b0:	00001517          	auipc	a0,0x1
    800046b4:	c7050513          	addi	a0,a0,-912 # 80005320 <digits+0x30>
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	144080e7          	jalr	324(ra) # 800037fc <panic>

00000000800046c0 <holding>:
    800046c0:	00052783          	lw	a5,0(a0)
    800046c4:	00079663          	bnez	a5,800046d0 <holding+0x10>
    800046c8:	00000513          	li	a0,0
    800046cc:	00008067          	ret
    800046d0:	fe010113          	addi	sp,sp,-32
    800046d4:	00813823          	sd	s0,16(sp)
    800046d8:	00913423          	sd	s1,8(sp)
    800046dc:	00113c23          	sd	ra,24(sp)
    800046e0:	02010413          	addi	s0,sp,32
    800046e4:	01053483          	ld	s1,16(a0)
    800046e8:	ffffe097          	auipc	ra,0xffffe
    800046ec:	75c080e7          	jalr	1884(ra) # 80002e44 <mycpu>
    800046f0:	01813083          	ld	ra,24(sp)
    800046f4:	01013403          	ld	s0,16(sp)
    800046f8:	40a48533          	sub	a0,s1,a0
    800046fc:	00153513          	seqz	a0,a0
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	02010113          	addi	sp,sp,32
    80004708:	00008067          	ret

000000008000470c <push_off>:
    8000470c:	fe010113          	addi	sp,sp,-32
    80004710:	00813823          	sd	s0,16(sp)
    80004714:	00113c23          	sd	ra,24(sp)
    80004718:	00913423          	sd	s1,8(sp)
    8000471c:	02010413          	addi	s0,sp,32
    80004720:	100024f3          	csrr	s1,sstatus
    80004724:	100027f3          	csrr	a5,sstatus
    80004728:	ffd7f793          	andi	a5,a5,-3
    8000472c:	10079073          	csrw	sstatus,a5
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	714080e7          	jalr	1812(ra) # 80002e44 <mycpu>
    80004738:	07852783          	lw	a5,120(a0)
    8000473c:	02078663          	beqz	a5,80004768 <push_off+0x5c>
    80004740:	ffffe097          	auipc	ra,0xffffe
    80004744:	704080e7          	jalr	1796(ra) # 80002e44 <mycpu>
    80004748:	07852783          	lw	a5,120(a0)
    8000474c:	01813083          	ld	ra,24(sp)
    80004750:	01013403          	ld	s0,16(sp)
    80004754:	0017879b          	addiw	a5,a5,1
    80004758:	06f52c23          	sw	a5,120(a0)
    8000475c:	00813483          	ld	s1,8(sp)
    80004760:	02010113          	addi	sp,sp,32
    80004764:	00008067          	ret
    80004768:	0014d493          	srli	s1,s1,0x1
    8000476c:	ffffe097          	auipc	ra,0xffffe
    80004770:	6d8080e7          	jalr	1752(ra) # 80002e44 <mycpu>
    80004774:	0014f493          	andi	s1,s1,1
    80004778:	06952e23          	sw	s1,124(a0)
    8000477c:	fc5ff06f          	j	80004740 <push_off+0x34>

0000000080004780 <pop_off>:
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00813023          	sd	s0,0(sp)
    80004788:	00113423          	sd	ra,8(sp)
    8000478c:	01010413          	addi	s0,sp,16
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	6b4080e7          	jalr	1716(ra) # 80002e44 <mycpu>
    80004798:	100027f3          	csrr	a5,sstatus
    8000479c:	0027f793          	andi	a5,a5,2
    800047a0:	04079663          	bnez	a5,800047ec <pop_off+0x6c>
    800047a4:	07852783          	lw	a5,120(a0)
    800047a8:	02f05a63          	blez	a5,800047dc <pop_off+0x5c>
    800047ac:	fff7871b          	addiw	a4,a5,-1
    800047b0:	06e52c23          	sw	a4,120(a0)
    800047b4:	00071c63          	bnez	a4,800047cc <pop_off+0x4c>
    800047b8:	07c52783          	lw	a5,124(a0)
    800047bc:	00078863          	beqz	a5,800047cc <pop_off+0x4c>
    800047c0:	100027f3          	csrr	a5,sstatus
    800047c4:	0027e793          	ori	a5,a5,2
    800047c8:	10079073          	csrw	sstatus,a5
    800047cc:	00813083          	ld	ra,8(sp)
    800047d0:	00013403          	ld	s0,0(sp)
    800047d4:	01010113          	addi	sp,sp,16
    800047d8:	00008067          	ret
    800047dc:	00001517          	auipc	a0,0x1
    800047e0:	b5c50513          	addi	a0,a0,-1188 # 80005338 <digits+0x48>
    800047e4:	fffff097          	auipc	ra,0xfffff
    800047e8:	018080e7          	jalr	24(ra) # 800037fc <panic>
    800047ec:	00001517          	auipc	a0,0x1
    800047f0:	b3450513          	addi	a0,a0,-1228 # 80005320 <digits+0x30>
    800047f4:	fffff097          	auipc	ra,0xfffff
    800047f8:	008080e7          	jalr	8(ra) # 800037fc <panic>

00000000800047fc <push_on>:
    800047fc:	fe010113          	addi	sp,sp,-32
    80004800:	00813823          	sd	s0,16(sp)
    80004804:	00113c23          	sd	ra,24(sp)
    80004808:	00913423          	sd	s1,8(sp)
    8000480c:	02010413          	addi	s0,sp,32
    80004810:	100024f3          	csrr	s1,sstatus
    80004814:	100027f3          	csrr	a5,sstatus
    80004818:	0027e793          	ori	a5,a5,2
    8000481c:	10079073          	csrw	sstatus,a5
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	624080e7          	jalr	1572(ra) # 80002e44 <mycpu>
    80004828:	07852783          	lw	a5,120(a0)
    8000482c:	02078663          	beqz	a5,80004858 <push_on+0x5c>
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	614080e7          	jalr	1556(ra) # 80002e44 <mycpu>
    80004838:	07852783          	lw	a5,120(a0)
    8000483c:	01813083          	ld	ra,24(sp)
    80004840:	01013403          	ld	s0,16(sp)
    80004844:	0017879b          	addiw	a5,a5,1
    80004848:	06f52c23          	sw	a5,120(a0)
    8000484c:	00813483          	ld	s1,8(sp)
    80004850:	02010113          	addi	sp,sp,32
    80004854:	00008067          	ret
    80004858:	0014d493          	srli	s1,s1,0x1
    8000485c:	ffffe097          	auipc	ra,0xffffe
    80004860:	5e8080e7          	jalr	1512(ra) # 80002e44 <mycpu>
    80004864:	0014f493          	andi	s1,s1,1
    80004868:	06952e23          	sw	s1,124(a0)
    8000486c:	fc5ff06f          	j	80004830 <push_on+0x34>

0000000080004870 <pop_on>:
    80004870:	ff010113          	addi	sp,sp,-16
    80004874:	00813023          	sd	s0,0(sp)
    80004878:	00113423          	sd	ra,8(sp)
    8000487c:	01010413          	addi	s0,sp,16
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	5c4080e7          	jalr	1476(ra) # 80002e44 <mycpu>
    80004888:	100027f3          	csrr	a5,sstatus
    8000488c:	0027f793          	andi	a5,a5,2
    80004890:	04078463          	beqz	a5,800048d8 <pop_on+0x68>
    80004894:	07852783          	lw	a5,120(a0)
    80004898:	02f05863          	blez	a5,800048c8 <pop_on+0x58>
    8000489c:	fff7879b          	addiw	a5,a5,-1
    800048a0:	06f52c23          	sw	a5,120(a0)
    800048a4:	07853783          	ld	a5,120(a0)
    800048a8:	00079863          	bnez	a5,800048b8 <pop_on+0x48>
    800048ac:	100027f3          	csrr	a5,sstatus
    800048b0:	ffd7f793          	andi	a5,a5,-3
    800048b4:	10079073          	csrw	sstatus,a5
    800048b8:	00813083          	ld	ra,8(sp)
    800048bc:	00013403          	ld	s0,0(sp)
    800048c0:	01010113          	addi	sp,sp,16
    800048c4:	00008067          	ret
    800048c8:	00001517          	auipc	a0,0x1
    800048cc:	a9850513          	addi	a0,a0,-1384 # 80005360 <digits+0x70>
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	f2c080e7          	jalr	-212(ra) # 800037fc <panic>
    800048d8:	00001517          	auipc	a0,0x1
    800048dc:	a6850513          	addi	a0,a0,-1432 # 80005340 <digits+0x50>
    800048e0:	fffff097          	auipc	ra,0xfffff
    800048e4:	f1c080e7          	jalr	-228(ra) # 800037fc <panic>

00000000800048e8 <__memset>:
    800048e8:	ff010113          	addi	sp,sp,-16
    800048ec:	00813423          	sd	s0,8(sp)
    800048f0:	01010413          	addi	s0,sp,16
    800048f4:	1a060e63          	beqz	a2,80004ab0 <__memset+0x1c8>
    800048f8:	40a007b3          	neg	a5,a0
    800048fc:	0077f793          	andi	a5,a5,7
    80004900:	00778693          	addi	a3,a5,7
    80004904:	00b00813          	li	a6,11
    80004908:	0ff5f593          	andi	a1,a1,255
    8000490c:	fff6071b          	addiw	a4,a2,-1
    80004910:	1b06e663          	bltu	a3,a6,80004abc <__memset+0x1d4>
    80004914:	1cd76463          	bltu	a4,a3,80004adc <__memset+0x1f4>
    80004918:	1a078e63          	beqz	a5,80004ad4 <__memset+0x1ec>
    8000491c:	00b50023          	sb	a1,0(a0)
    80004920:	00100713          	li	a4,1
    80004924:	1ae78463          	beq	a5,a4,80004acc <__memset+0x1e4>
    80004928:	00b500a3          	sb	a1,1(a0)
    8000492c:	00200713          	li	a4,2
    80004930:	1ae78a63          	beq	a5,a4,80004ae4 <__memset+0x1fc>
    80004934:	00b50123          	sb	a1,2(a0)
    80004938:	00300713          	li	a4,3
    8000493c:	18e78463          	beq	a5,a4,80004ac4 <__memset+0x1dc>
    80004940:	00b501a3          	sb	a1,3(a0)
    80004944:	00400713          	li	a4,4
    80004948:	1ae78263          	beq	a5,a4,80004aec <__memset+0x204>
    8000494c:	00b50223          	sb	a1,4(a0)
    80004950:	00500713          	li	a4,5
    80004954:	1ae78063          	beq	a5,a4,80004af4 <__memset+0x20c>
    80004958:	00b502a3          	sb	a1,5(a0)
    8000495c:	00700713          	li	a4,7
    80004960:	18e79e63          	bne	a5,a4,80004afc <__memset+0x214>
    80004964:	00b50323          	sb	a1,6(a0)
    80004968:	00700e93          	li	t4,7
    8000496c:	00859713          	slli	a4,a1,0x8
    80004970:	00e5e733          	or	a4,a1,a4
    80004974:	01059e13          	slli	t3,a1,0x10
    80004978:	01c76e33          	or	t3,a4,t3
    8000497c:	01859313          	slli	t1,a1,0x18
    80004980:	006e6333          	or	t1,t3,t1
    80004984:	02059893          	slli	a7,a1,0x20
    80004988:	40f60e3b          	subw	t3,a2,a5
    8000498c:	011368b3          	or	a7,t1,a7
    80004990:	02859813          	slli	a6,a1,0x28
    80004994:	0108e833          	or	a6,a7,a6
    80004998:	03059693          	slli	a3,a1,0x30
    8000499c:	003e589b          	srliw	a7,t3,0x3
    800049a0:	00d866b3          	or	a3,a6,a3
    800049a4:	03859713          	slli	a4,a1,0x38
    800049a8:	00389813          	slli	a6,a7,0x3
    800049ac:	00f507b3          	add	a5,a0,a5
    800049b0:	00e6e733          	or	a4,a3,a4
    800049b4:	000e089b          	sext.w	a7,t3
    800049b8:	00f806b3          	add	a3,a6,a5
    800049bc:	00e7b023          	sd	a4,0(a5)
    800049c0:	00878793          	addi	a5,a5,8
    800049c4:	fed79ce3          	bne	a5,a3,800049bc <__memset+0xd4>
    800049c8:	ff8e7793          	andi	a5,t3,-8
    800049cc:	0007871b          	sext.w	a4,a5
    800049d0:	01d787bb          	addw	a5,a5,t4
    800049d4:	0ce88e63          	beq	a7,a4,80004ab0 <__memset+0x1c8>
    800049d8:	00f50733          	add	a4,a0,a5
    800049dc:	00b70023          	sb	a1,0(a4)
    800049e0:	0017871b          	addiw	a4,a5,1
    800049e4:	0cc77663          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    800049e8:	00e50733          	add	a4,a0,a4
    800049ec:	00b70023          	sb	a1,0(a4)
    800049f0:	0027871b          	addiw	a4,a5,2
    800049f4:	0ac77e63          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    800049f8:	00e50733          	add	a4,a0,a4
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	0037871b          	addiw	a4,a5,3
    80004a04:	0ac77663          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	0047871b          	addiw	a4,a5,4
    80004a14:	08c77e63          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	0057871b          	addiw	a4,a5,5
    80004a24:	08c77663          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a28:	00e50733          	add	a4,a0,a4
    80004a2c:	00b70023          	sb	a1,0(a4)
    80004a30:	0067871b          	addiw	a4,a5,6
    80004a34:	06c77e63          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	0077871b          	addiw	a4,a5,7
    80004a44:	06c77663          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	0087871b          	addiw	a4,a5,8
    80004a54:	04c77e63          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	0097871b          	addiw	a4,a5,9
    80004a64:	04c77663          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	00a7871b          	addiw	a4,a5,10
    80004a74:	02c77e63          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a78:	00e50733          	add	a4,a0,a4
    80004a7c:	00b70023          	sb	a1,0(a4)
    80004a80:	00b7871b          	addiw	a4,a5,11
    80004a84:	02c77663          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	00c7871b          	addiw	a4,a5,12
    80004a94:	00c77e63          	bgeu	a4,a2,80004ab0 <__memset+0x1c8>
    80004a98:	00e50733          	add	a4,a0,a4
    80004a9c:	00b70023          	sb	a1,0(a4)
    80004aa0:	00d7879b          	addiw	a5,a5,13
    80004aa4:	00c7f663          	bgeu	a5,a2,80004ab0 <__memset+0x1c8>
    80004aa8:	00f507b3          	add	a5,a0,a5
    80004aac:	00b78023          	sb	a1,0(a5)
    80004ab0:	00813403          	ld	s0,8(sp)
    80004ab4:	01010113          	addi	sp,sp,16
    80004ab8:	00008067          	ret
    80004abc:	00b00693          	li	a3,11
    80004ac0:	e55ff06f          	j	80004914 <__memset+0x2c>
    80004ac4:	00300e93          	li	t4,3
    80004ac8:	ea5ff06f          	j	8000496c <__memset+0x84>
    80004acc:	00100e93          	li	t4,1
    80004ad0:	e9dff06f          	j	8000496c <__memset+0x84>
    80004ad4:	00000e93          	li	t4,0
    80004ad8:	e95ff06f          	j	8000496c <__memset+0x84>
    80004adc:	00000793          	li	a5,0
    80004ae0:	ef9ff06f          	j	800049d8 <__memset+0xf0>
    80004ae4:	00200e93          	li	t4,2
    80004ae8:	e85ff06f          	j	8000496c <__memset+0x84>
    80004aec:	00400e93          	li	t4,4
    80004af0:	e7dff06f          	j	8000496c <__memset+0x84>
    80004af4:	00500e93          	li	t4,5
    80004af8:	e75ff06f          	j	8000496c <__memset+0x84>
    80004afc:	00600e93          	li	t4,6
    80004b00:	e6dff06f          	j	8000496c <__memset+0x84>

0000000080004b04 <__memmove>:
    80004b04:	ff010113          	addi	sp,sp,-16
    80004b08:	00813423          	sd	s0,8(sp)
    80004b0c:	01010413          	addi	s0,sp,16
    80004b10:	0e060863          	beqz	a2,80004c00 <__memmove+0xfc>
    80004b14:	fff6069b          	addiw	a3,a2,-1
    80004b18:	0006881b          	sext.w	a6,a3
    80004b1c:	0ea5e863          	bltu	a1,a0,80004c0c <__memmove+0x108>
    80004b20:	00758713          	addi	a4,a1,7
    80004b24:	00a5e7b3          	or	a5,a1,a0
    80004b28:	40a70733          	sub	a4,a4,a0
    80004b2c:	0077f793          	andi	a5,a5,7
    80004b30:	00f73713          	sltiu	a4,a4,15
    80004b34:	00174713          	xori	a4,a4,1
    80004b38:	0017b793          	seqz	a5,a5
    80004b3c:	00e7f7b3          	and	a5,a5,a4
    80004b40:	10078863          	beqz	a5,80004c50 <__memmove+0x14c>
    80004b44:	00900793          	li	a5,9
    80004b48:	1107f463          	bgeu	a5,a6,80004c50 <__memmove+0x14c>
    80004b4c:	0036581b          	srliw	a6,a2,0x3
    80004b50:	fff8081b          	addiw	a6,a6,-1
    80004b54:	02081813          	slli	a6,a6,0x20
    80004b58:	01d85893          	srli	a7,a6,0x1d
    80004b5c:	00858813          	addi	a6,a1,8
    80004b60:	00058793          	mv	a5,a1
    80004b64:	00050713          	mv	a4,a0
    80004b68:	01088833          	add	a6,a7,a6
    80004b6c:	0007b883          	ld	a7,0(a5)
    80004b70:	00878793          	addi	a5,a5,8
    80004b74:	00870713          	addi	a4,a4,8
    80004b78:	ff173c23          	sd	a7,-8(a4)
    80004b7c:	ff0798e3          	bne	a5,a6,80004b6c <__memmove+0x68>
    80004b80:	ff867713          	andi	a4,a2,-8
    80004b84:	02071793          	slli	a5,a4,0x20
    80004b88:	0207d793          	srli	a5,a5,0x20
    80004b8c:	00f585b3          	add	a1,a1,a5
    80004b90:	40e686bb          	subw	a3,a3,a4
    80004b94:	00f507b3          	add	a5,a0,a5
    80004b98:	06e60463          	beq	a2,a4,80004c00 <__memmove+0xfc>
    80004b9c:	0005c703          	lbu	a4,0(a1)
    80004ba0:	00e78023          	sb	a4,0(a5)
    80004ba4:	04068e63          	beqz	a3,80004c00 <__memmove+0xfc>
    80004ba8:	0015c603          	lbu	a2,1(a1)
    80004bac:	00100713          	li	a4,1
    80004bb0:	00c780a3          	sb	a2,1(a5)
    80004bb4:	04e68663          	beq	a3,a4,80004c00 <__memmove+0xfc>
    80004bb8:	0025c603          	lbu	a2,2(a1)
    80004bbc:	00200713          	li	a4,2
    80004bc0:	00c78123          	sb	a2,2(a5)
    80004bc4:	02e68e63          	beq	a3,a4,80004c00 <__memmove+0xfc>
    80004bc8:	0035c603          	lbu	a2,3(a1)
    80004bcc:	00300713          	li	a4,3
    80004bd0:	00c781a3          	sb	a2,3(a5)
    80004bd4:	02e68663          	beq	a3,a4,80004c00 <__memmove+0xfc>
    80004bd8:	0045c603          	lbu	a2,4(a1)
    80004bdc:	00400713          	li	a4,4
    80004be0:	00c78223          	sb	a2,4(a5)
    80004be4:	00e68e63          	beq	a3,a4,80004c00 <__memmove+0xfc>
    80004be8:	0055c603          	lbu	a2,5(a1)
    80004bec:	00500713          	li	a4,5
    80004bf0:	00c782a3          	sb	a2,5(a5)
    80004bf4:	00e68663          	beq	a3,a4,80004c00 <__memmove+0xfc>
    80004bf8:	0065c703          	lbu	a4,6(a1)
    80004bfc:	00e78323          	sb	a4,6(a5)
    80004c00:	00813403          	ld	s0,8(sp)
    80004c04:	01010113          	addi	sp,sp,16
    80004c08:	00008067          	ret
    80004c0c:	02061713          	slli	a4,a2,0x20
    80004c10:	02075713          	srli	a4,a4,0x20
    80004c14:	00e587b3          	add	a5,a1,a4
    80004c18:	f0f574e3          	bgeu	a0,a5,80004b20 <__memmove+0x1c>
    80004c1c:	02069613          	slli	a2,a3,0x20
    80004c20:	02065613          	srli	a2,a2,0x20
    80004c24:	fff64613          	not	a2,a2
    80004c28:	00e50733          	add	a4,a0,a4
    80004c2c:	00c78633          	add	a2,a5,a2
    80004c30:	fff7c683          	lbu	a3,-1(a5)
    80004c34:	fff78793          	addi	a5,a5,-1
    80004c38:	fff70713          	addi	a4,a4,-1
    80004c3c:	00d70023          	sb	a3,0(a4)
    80004c40:	fec798e3          	bne	a5,a2,80004c30 <__memmove+0x12c>
    80004c44:	00813403          	ld	s0,8(sp)
    80004c48:	01010113          	addi	sp,sp,16
    80004c4c:	00008067          	ret
    80004c50:	02069713          	slli	a4,a3,0x20
    80004c54:	02075713          	srli	a4,a4,0x20
    80004c58:	00170713          	addi	a4,a4,1
    80004c5c:	00e50733          	add	a4,a0,a4
    80004c60:	00050793          	mv	a5,a0
    80004c64:	0005c683          	lbu	a3,0(a1)
    80004c68:	00178793          	addi	a5,a5,1
    80004c6c:	00158593          	addi	a1,a1,1
    80004c70:	fed78fa3          	sb	a3,-1(a5)
    80004c74:	fee798e3          	bne	a5,a4,80004c64 <__memmove+0x160>
    80004c78:	f89ff06f          	j	80004c00 <__memmove+0xfc>

0000000080004c7c <__putc>:
    80004c7c:	fe010113          	addi	sp,sp,-32
    80004c80:	00813823          	sd	s0,16(sp)
    80004c84:	00113c23          	sd	ra,24(sp)
    80004c88:	02010413          	addi	s0,sp,32
    80004c8c:	00050793          	mv	a5,a0
    80004c90:	fef40593          	addi	a1,s0,-17
    80004c94:	00100613          	li	a2,1
    80004c98:	00000513          	li	a0,0
    80004c9c:	fef407a3          	sb	a5,-17(s0)
    80004ca0:	fffff097          	auipc	ra,0xfffff
    80004ca4:	b3c080e7          	jalr	-1220(ra) # 800037dc <console_write>
    80004ca8:	01813083          	ld	ra,24(sp)
    80004cac:	01013403          	ld	s0,16(sp)
    80004cb0:	02010113          	addi	sp,sp,32
    80004cb4:	00008067          	ret

0000000080004cb8 <__getc>:
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00813823          	sd	s0,16(sp)
    80004cc0:	00113c23          	sd	ra,24(sp)
    80004cc4:	02010413          	addi	s0,sp,32
    80004cc8:	fe840593          	addi	a1,s0,-24
    80004ccc:	00100613          	li	a2,1
    80004cd0:	00000513          	li	a0,0
    80004cd4:	fffff097          	auipc	ra,0xfffff
    80004cd8:	ae8080e7          	jalr	-1304(ra) # 800037bc <console_read>
    80004cdc:	fe844503          	lbu	a0,-24(s0)
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	02010113          	addi	sp,sp,32
    80004cec:	00008067          	ret

0000000080004cf0 <console_handler>:
    80004cf0:	fe010113          	addi	sp,sp,-32
    80004cf4:	00813823          	sd	s0,16(sp)
    80004cf8:	00113c23          	sd	ra,24(sp)
    80004cfc:	00913423          	sd	s1,8(sp)
    80004d00:	02010413          	addi	s0,sp,32
    80004d04:	14202773          	csrr	a4,scause
    80004d08:	100027f3          	csrr	a5,sstatus
    80004d0c:	0027f793          	andi	a5,a5,2
    80004d10:	06079e63          	bnez	a5,80004d8c <console_handler+0x9c>
    80004d14:	00074c63          	bltz	a4,80004d2c <console_handler+0x3c>
    80004d18:	01813083          	ld	ra,24(sp)
    80004d1c:	01013403          	ld	s0,16(sp)
    80004d20:	00813483          	ld	s1,8(sp)
    80004d24:	02010113          	addi	sp,sp,32
    80004d28:	00008067          	ret
    80004d2c:	0ff77713          	andi	a4,a4,255
    80004d30:	00900793          	li	a5,9
    80004d34:	fef712e3          	bne	a4,a5,80004d18 <console_handler+0x28>
    80004d38:	ffffe097          	auipc	ra,0xffffe
    80004d3c:	6dc080e7          	jalr	1756(ra) # 80003414 <plic_claim>
    80004d40:	00a00793          	li	a5,10
    80004d44:	00050493          	mv	s1,a0
    80004d48:	02f50c63          	beq	a0,a5,80004d80 <console_handler+0x90>
    80004d4c:	fc0506e3          	beqz	a0,80004d18 <console_handler+0x28>
    80004d50:	00050593          	mv	a1,a0
    80004d54:	00000517          	auipc	a0,0x0
    80004d58:	51450513          	addi	a0,a0,1300 # 80005268 <_ZZ12printIntegermE6digits+0xe0>
    80004d5c:	fffff097          	auipc	ra,0xfffff
    80004d60:	afc080e7          	jalr	-1284(ra) # 80003858 <__printf>
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	01813083          	ld	ra,24(sp)
    80004d6c:	00048513          	mv	a0,s1
    80004d70:	00813483          	ld	s1,8(sp)
    80004d74:	02010113          	addi	sp,sp,32
    80004d78:	ffffe317          	auipc	t1,0xffffe
    80004d7c:	6d430067          	jr	1748(t1) # 8000344c <plic_complete>
    80004d80:	fffff097          	auipc	ra,0xfffff
    80004d84:	3e0080e7          	jalr	992(ra) # 80004160 <uartintr>
    80004d88:	fddff06f          	j	80004d64 <console_handler+0x74>
    80004d8c:	00000517          	auipc	a0,0x0
    80004d90:	5dc50513          	addi	a0,a0,1500 # 80005368 <digits+0x78>
    80004d94:	fffff097          	auipc	ra,0xfffff
    80004d98:	a68080e7          	jalr	-1432(ra) # 800037fc <panic>
	...
