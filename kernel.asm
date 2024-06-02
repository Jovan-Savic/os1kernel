
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	cb013103          	ld	sp,-848(sp) # 80005cb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6f8020ef          	jal	ra,80002714 <start>

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
    80001184:	6e1000ef          	jal	ra,80002064 <_ZN5Riscv20handleSupervisorTrapEv>

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

    uint64 r;//
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001274:	00050513          	mv	a0,a0
    return (int)r;
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
    uint64 r;//
    __asm__ volatile("mv %0, a0": "=r"(r));
    800012bc:	00050513          	mv	a0,a0
    return (int)r;
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
    uint64 r;//
    __asm__ volatile("mv %0, a0": "=r"(r));
    80001320:	00050513          	mv	a0,a0
    return (int)r;
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

000000008000134c <_ZL9fibonaccim>:
        if(i == 10) thread_exit();
    }
}

static uint64 fibonacci(uint64 n)
{
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	01213023          	sd	s2,0(sp)
    80001360:	02010413          	addi	s0,sp,32
    80001364:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001368:	00100793          	li	a5,1
    8000136c:	02a7f863          	bgeu	a5,a0,8000139c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001370:	00a00793          	li	a5,10
    80001374:	02f577b3          	remu	a5,a0,a5
    80001378:	02078e63          	beqz	a5,800013b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000137c:	fff48513          	addi	a0,s1,-1
    80001380:	00000097          	auipc	ra,0x0
    80001384:	fcc080e7          	jalr	-52(ra) # 8000134c <_ZL9fibonaccim>
    80001388:	00050913          	mv	s2,a0
    8000138c:	ffe48513          	addi	a0,s1,-2
    80001390:	00000097          	auipc	ra,0x0
    80001394:	fbc080e7          	jalr	-68(ra) # 8000134c <_ZL9fibonaccim>
    80001398:	00a90533          	add	a0,s2,a0
}
    8000139c:	01813083          	ld	ra,24(sp)
    800013a0:	01013403          	ld	s0,16(sp)
    800013a4:	00813483          	ld	s1,8(sp)
    800013a8:	00013903          	ld	s2,0(sp)
    800013ac:	02010113          	addi	sp,sp,32
    800013b0:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    800013b4:	00001097          	auipc	ra,0x1
    800013b8:	990080e7          	jalr	-1648(ra) # 80001d44 <_ZN3TCB5yieldEv>
    800013bc:	fc1ff06f          	j	8000137c <_ZL9fibonaccim+0x30>

00000000800013c0 <_Z11workerBodyAPv>:
{
    800013c0:	fe010113          	addi	sp,sp,-32
    800013c4:	00113c23          	sd	ra,24(sp)
    800013c8:	00813823          	sd	s0,16(sp)
    800013cc:	00913423          	sd	s1,8(sp)
    800013d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800013d4:	00000493          	li	s1,0
    800013d8:	0300006f          	j	80001408 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013dc:	00168693          	addi	a3,a3,1
    800013e0:	000027b7          	lui	a5,0x2
    800013e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013e8:	00d7ee63          	bltu	a5,a3,80001404 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013ec:	00000713          	li	a4,0
    800013f0:	000077b7          	lui	a5,0x7
    800013f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013f8:	fee7e2e3          	bltu	a5,a4,800013dc <_Z11workerBodyAPv+0x1c>
    800013fc:	00170713          	addi	a4,a4,1
    80001400:	ff1ff06f          	j	800013f0 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001404:	00148493          	addi	s1,s1,1
    80001408:	00900793          	li	a5,9
    8000140c:	0297ec63          	bltu	a5,s1,80001444 <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    80001410:	00004517          	auipc	a0,0x4
    80001414:	c1050513          	addi	a0,a0,-1008 # 80005020 <CONSOLE_STATUS+0x10>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	1d0080e7          	jalr	464(ra) # 800025e8 <_Z11printStringPKc>
        printInteger(i);
    80001420:	00048513          	mv	a0,s1
    80001424:	00001097          	auipc	ra,0x1
    80001428:	234080e7          	jalr	564(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    8000142c:	00004517          	auipc	a0,0x4
    80001430:	cc450513          	addi	a0,a0,-828 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001434:	00001097          	auipc	ra,0x1
    80001438:	1b4080e7          	jalr	436(ra) # 800025e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000143c:	00000693          	li	a3,0
    80001440:	fa1ff06f          	j	800013e0 <_Z11workerBodyAPv+0x20>
}
    80001444:	01813083          	ld	ra,24(sp)
    80001448:	01013403          	ld	s0,16(sp)
    8000144c:	00813483          	ld	s1,8(sp)
    80001450:	02010113          	addi	sp,sp,32
    80001454:	00008067          	ret

0000000080001458 <_Z11workerBodyBPv>:
{
    80001458:	fe010113          	addi	sp,sp,-32
    8000145c:	00113c23          	sd	ra,24(sp)
    80001460:	00813823          	sd	s0,16(sp)
    80001464:	00913423          	sd	s1,8(sp)
    80001468:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    8000146c:	00000493          	li	s1,0
    80001470:	0380006f          	j	800014a8 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001474:	00168693          	addi	a3,a3,1
    80001478:	000027b7          	lui	a5,0x2
    8000147c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001480:	00d7ee63          	bltu	a5,a3,8000149c <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001484:	00000713          	li	a4,0
    80001488:	000077b7          	lui	a5,0x7
    8000148c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001490:	fee7e2e3          	bltu	a5,a4,80001474 <_Z11workerBodyBPv+0x1c>
    80001494:	00170713          	addi	a4,a4,1
    80001498:	ff1ff06f          	j	80001488 <_Z11workerBodyBPv+0x30>
        if(i == 10) thread_exit();
    8000149c:	00a00793          	li	a5,10
    800014a0:	04f48263          	beq	s1,a5,800014e4 <_Z11workerBodyBPv+0x8c>
    for (uint64 i = 0; i < 16; i++)
    800014a4:	00148493          	addi	s1,s1,1
    800014a8:	00f00793          	li	a5,15
    800014ac:	0497e263          	bltu	a5,s1,800014f0 <_Z11workerBodyBPv+0x98>
        printString("B: i=");
    800014b0:	00004517          	auipc	a0,0x4
    800014b4:	b7850513          	addi	a0,a0,-1160 # 80005028 <CONSOLE_STATUS+0x18>
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	130080e7          	jalr	304(ra) # 800025e8 <_Z11printStringPKc>
        printInteger(i);
    800014c0:	00048513          	mv	a0,s1
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	194080e7          	jalr	404(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	c2450513          	addi	a0,a0,-988 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	114080e7          	jalr	276(ra) # 800025e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800014dc:	00000693          	li	a3,0
    800014e0:	f99ff06f          	j	80001478 <_Z11workerBodyBPv+0x20>
        if(i == 10) thread_exit();
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	dc4080e7          	jalr	-572(ra) # 800012a8 <_Z11thread_exitv>
    800014ec:	fb9ff06f          	j	800014a4 <_Z11workerBodyBPv+0x4c>
}
    800014f0:	01813083          	ld	ra,24(sp)
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	00813483          	ld	s1,8(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret

0000000080001504 <_Z11workerBodyCPv>:

void workerBodyC(void* g)
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000151c:	00000493          	li	s1,0
    80001520:	0380006f          	j	80001558 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b0c50513          	addi	a0,a0,-1268 # 80005030 <CONSOLE_STATUS+0x20>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	0bc080e7          	jalr	188(ra) # 800025e8 <_Z11printStringPKc>
        printInteger(i);
    80001534:	00048513          	mv	a0,s1
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	120080e7          	jalr	288(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	bb050513          	addi	a0,a0,-1104 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	0a0080e7          	jalr	160(ra) # 800025e8 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001550:	0014849b          	addiw	s1,s1,1
    80001554:	0ff4f493          	andi	s1,s1,255
    80001558:	00200793          	li	a5,2
    8000155c:	fc97f4e3          	bgeu	a5,s1,80001524 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001560:	00004517          	auipc	a0,0x4
    80001564:	ad850513          	addi	a0,a0,-1320 # 80005038 <CONSOLE_STATUS+0x28>
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	080080e7          	jalr	128(ra) # 800025e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001570:	00700313          	li	t1,7
    thread_dispatch();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	d14080e7          	jalr	-748(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000157c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001580:	00004517          	auipc	a0,0x4
    80001584:	ac850513          	addi	a0,a0,-1336 # 80005048 <CONSOLE_STATUS+0x38>
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	060080e7          	jalr	96(ra) # 800025e8 <_Z11printStringPKc>
    printInteger(t1);
    80001590:	00090513          	mv	a0,s2
    80001594:	00001097          	auipc	ra,0x1
    80001598:	0c4080e7          	jalr	196(ra) # 80002658 <_Z12printIntegerm>
    printString("\n");
    8000159c:	00004517          	auipc	a0,0x4
    800015a0:	b5450513          	addi	a0,a0,-1196 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	044080e7          	jalr	68(ra) # 800025e8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015ac:	00c00513          	li	a0,12
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	d9c080e7          	jalr	-612(ra) # 8000134c <_ZL9fibonaccim>
    800015b8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	a9450513          	addi	a0,a0,-1388 # 80005050 <CONSOLE_STATUS+0x40>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	024080e7          	jalr	36(ra) # 800025e8 <_Z11printStringPKc>
    printInteger(result);
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	088080e7          	jalr	136(ra) # 80002658 <_Z12printIntegerm>
    printString("\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	b1850513          	addi	a0,a0,-1256 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	008080e7          	jalr	8(ra) # 800025e8 <_Z11printStringPKc>
    800015e8:	0380006f          	j	80001620 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800015ec:	00004517          	auipc	a0,0x4
    800015f0:	a4450513          	addi	a0,a0,-1468 # 80005030 <CONSOLE_STATUS+0x20>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	ff4080e7          	jalr	-12(ra) # 800025e8 <_Z11printStringPKc>
        printInteger(i);
    800015fc:	00048513          	mv	a0,s1
    80001600:	00001097          	auipc	ra,0x1
    80001604:	058080e7          	jalr	88(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	ae850513          	addi	a0,a0,-1304 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	fd8080e7          	jalr	-40(ra) # 800025e8 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001618:	0014849b          	addiw	s1,s1,1
    8000161c:	0ff4f493          	andi	s1,s1,255
    80001620:	00500793          	li	a5,5
    80001624:	fc97f4e3          	bgeu	a5,s1,800015ec <_Z11workerBodyCPv+0xe8>
    }
//    TCB::yield();
}
    80001628:	01813083          	ld	ra,24(sp)
    8000162c:	01013403          	ld	s0,16(sp)
    80001630:	00813483          	ld	s1,8(sp)
    80001634:	00013903          	ld	s2,0(sp)
    80001638:	02010113          	addi	sp,sp,32
    8000163c:	00008067          	ret

0000000080001640 <_Z11workerBodyDPv>:

void workerBodyD(void* g)
{
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	00813823          	sd	s0,16(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	01213023          	sd	s2,0(sp)
    80001654:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001658:	00a00493          	li	s1,10
    8000165c:	0380006f          	j	80001694 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	a0050513          	addi	a0,a0,-1536 # 80005060 <CONSOLE_STATUS+0x50>
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	f80080e7          	jalr	-128(ra) # 800025e8 <_Z11printStringPKc>
        printInteger(i);
    80001670:	00048513          	mv	a0,s1
    80001674:	00001097          	auipc	ra,0x1
    80001678:	fe4080e7          	jalr	-28(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	a7450513          	addi	a0,a0,-1420 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001684:	00001097          	auipc	ra,0x1
    80001688:	f64080e7          	jalr	-156(ra) # 800025e8 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000168c:	0014849b          	addiw	s1,s1,1
    80001690:	0ff4f493          	andi	s1,s1,255
    80001694:	00c00793          	li	a5,12
    80001698:	fc97f4e3          	bgeu	a5,s1,80001660 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	9cc50513          	addi	a0,a0,-1588 # 80005068 <CONSOLE_STATUS+0x58>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	f44080e7          	jalr	-188(ra) # 800025e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800016ac:	00500313          	li	t1,5
    thread_dispatch();
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	bd8080e7          	jalr	-1064(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800016b8:	01000513          	li	a0,16
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	c90080e7          	jalr	-880(ra) # 8000134c <_ZL9fibonaccim>
    800016c4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	9b050513          	addi	a0,a0,-1616 # 80005078 <CONSOLE_STATUS+0x68>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	f18080e7          	jalr	-232(ra) # 800025e8 <_Z11printStringPKc>
    printInteger(result);
    800016d8:	00090513          	mv	a0,s2
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	f7c080e7          	jalr	-132(ra) # 80002658 <_Z12printIntegerm>
    printString("\n");
    800016e4:	00004517          	auipc	a0,0x4
    800016e8:	a0c50513          	addi	a0,a0,-1524 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	efc080e7          	jalr	-260(ra) # 800025e8 <_Z11printStringPKc>
    800016f4:	0380006f          	j	8000172c <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800016f8:	00004517          	auipc	a0,0x4
    800016fc:	96850513          	addi	a0,a0,-1688 # 80005060 <CONSOLE_STATUS+0x50>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	ee8080e7          	jalr	-280(ra) # 800025e8 <_Z11printStringPKc>
        printInteger(i);
    80001708:	00048513          	mv	a0,s1
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	f4c080e7          	jalr	-180(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    80001714:	00004517          	auipc	a0,0x4
    80001718:	9dc50513          	addi	a0,a0,-1572 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	ecc080e7          	jalr	-308(ra) # 800025e8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001724:	0014849b          	addiw	s1,s1,1
    80001728:	0ff4f493          	andi	s1,s1,255
    8000172c:	00f00793          	li	a5,15
    80001730:	fc97f4e3          	bgeu	a5,s1,800016f8 <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	00813483          	ld	s1,8(sp)
    80001740:	00013903          	ld	s2,0(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret

000000008000174c <_ZN9SemaphorenwEm>:
//

#include "../h/semaphore.hpp"

void *Semaphore::operator new(size_t n)
{
    8000174c:	ff010113          	addi	sp,sp,-16
    80001750:	00113423          	sd	ra,8(sp)
    80001754:	00813023          	sd	s0,0(sp)
    80001758:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000175c:	00001097          	auipc	ra,0x1
    80001760:	c5c080e7          	jalr	-932(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001764:	00813083          	ld	ra,8(sp)
    80001768:	00013403          	ld	s0,0(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_ZN9SemaphorenaEm>:

void *Semaphore::operator new[](size_t n)
{
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00113423          	sd	ra,8(sp)
    8000177c:	00813023          	sd	s0,0(sp)
    80001780:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001784:	00001097          	auipc	ra,0x1
    80001788:	c34080e7          	jalr	-972(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN9SemaphoredlEPv>:

void Semaphore::operator delete(void *p) noexcept
{
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	d60080e7          	jalr	-672(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800017b4:	00813083          	ld	ra,8(sp)
    800017b8:	00013403          	ld	s0,0(sp)
    800017bc:	01010113          	addi	sp,sp,16
    800017c0:	00008067          	ret

00000000800017c4 <_ZN9SemaphoredaEPv>:

void Semaphore::operator delete[](void *p) noexcept
{
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00113423          	sd	ra,8(sp)
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	d38080e7          	jalr	-712(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800017dc:	00813083          	ld	ra,8(sp)
    800017e0:	00013403          	ld	s0,0(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_ZN9Semaphore13openSemaphoreEi>:

Semaphore *Semaphore::openSemaphore(int val) {
    800017ec:	fe010113          	addi	sp,sp,-32
    800017f0:	00113c23          	sd	ra,24(sp)
    800017f4:	00813823          	sd	s0,16(sp)
    800017f8:	00913423          	sd	s1,8(sp)
    800017fc:	02010413          	addi	s0,sp,32
    80001800:	00050493          	mv	s1,a0
    return new Semaphore(val);
    80001804:	01800513          	li	a0,24
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	f44080e7          	jalr	-188(ra) # 8000174c <_ZN9SemaphorenwEm>
    int trywait();
    int timed_wait();


private:
    explicit Semaphore(int val = 1): value(val), closed(false){};
    80001810:	00952023          	sw	s1,0(a0)
    80001814:	00050223          	sb	zero,4(a0)
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    80001818:	00053423          	sd	zero,8(a0)
    8000181c:	00053823          	sd	zero,16(a0)
}
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret

0000000080001834 <_ZN9Semaphore14closeSemaphoreEv>:

int Semaphore::closeSemaphore() {
    if(!this->closed) this->closed = true;
    80001834:	00454783          	lbu	a5,4(a0)
    80001838:	06079c63          	bnez	a5,800018b0 <_ZN9Semaphore14closeSemaphoreEv+0x7c>
int Semaphore::closeSemaphore() {
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	01213023          	sd	s2,0(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    if(!this->closed) this->closed = true;
    80001858:	00100793          	li	a5,1
    8000185c:	00f50223          	sb	a5,4(a0)
    80001860:	0300006f          	j	80001890 <_ZN9Semaphore14closeSemaphoreEv+0x5c>

            T* removeFirst(){
                if(!head)return 0;
                Elem *elem = head;
                head = head->next;
                if(!head) tail = 0;
    80001864:	0004b823          	sd	zero,16(s1)
                T *ret = elem->data;
    80001868:	00053903          	ld	s2,0(a0)
        MemoryAllocator::mem_free(p);
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	ca0080e7          	jalr	-864(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
    else return -2;

   while(this->blocked.peekFirst()){
       TCB* thread = this->blocked.removeFirst();
       thread->setBlocked(false);
    80001874:	00000593          	li	a1,0
    80001878:	00090513          	mv	a0,s2
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	70c080e7          	jalr	1804(ra) # 80001f88 <_ZN3TCB10setBlockedEb>
       Scheduler::put(thread);
    80001884:	00090513          	mv	a0,s2
    80001888:	00001097          	auipc	ra,0x1
    8000188c:	a90080e7          	jalr	-1392(ra) # 80002318 <_ZN9Scheduler3putEP3TCB>
                operator delete(elem);
                return ret;
            }
            T* peekFirst(){
                if(!head) return 0;
    80001890:	0084b503          	ld	a0,8(s1)
    80001894:	02050263          	beqz	a0,800018b8 <_ZN9Semaphore14closeSemaphoreEv+0x84>
                return head->data;
    80001898:	00053783          	ld	a5,0(a0)
   while(this->blocked.peekFirst()){
    8000189c:	02078c63          	beqz	a5,800018d4 <_ZN9Semaphore14closeSemaphoreEv+0xa0>
                head = head->next;
    800018a0:	00853783          	ld	a5,8(a0)
    800018a4:	00f4b423          	sd	a5,8(s1)
                if(!head) tail = 0;
    800018a8:	fc0790e3          	bnez	a5,80001868 <_ZN9Semaphore14closeSemaphoreEv+0x34>
    800018ac:	fb9ff06f          	j	80001864 <_ZN9Semaphore14closeSemaphoreEv+0x30>
    else return -2;
    800018b0:	ffe00513          	li	a0,-2
   }
    return 0;
}
    800018b4:	00008067          	ret
    return 0;
    800018b8:	00000513          	li	a0,0
}
    800018bc:	01813083          	ld	ra,24(sp)
    800018c0:	01013403          	ld	s0,16(sp)
    800018c4:	00813483          	ld	s1,8(sp)
    800018c8:	00013903          	ld	s2,0(sp)
    800018cc:	02010113          	addi	sp,sp,32
    800018d0:	00008067          	ret
    return 0;
    800018d4:	00000513          	li	a0,0
    800018d8:	fe5ff06f          	j	800018bc <_ZN9Semaphore14closeSemaphoreEv+0x88>

00000000800018dc <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if(this->closed) return -2;
    800018dc:	00454783          	lbu	a5,4(a0)
    800018e0:	0c079063          	bnez	a5,800019a0 <_ZN9Semaphore4waitEv+0xc4>
int Semaphore::wait() {
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	00813823          	sd	s0,16(sp)
    800018f0:	00913423          	sd	s1,8(sp)
    800018f4:	01213023          	sd	s2,0(sp)
    800018f8:	02010413          	addi	s0,sp,32
    800018fc:	00050493          	mv	s1,a0
    this->value--;
    80001900:	00052783          	lw	a5,0(a0)
    80001904:	fff7879b          	addiw	a5,a5,-1
    80001908:	0007871b          	sext.w	a4,a5
    8000190c:	00f52023          	sw	a5,0(a0)
    if(this->value <=0){
    80001910:	02e05063          	blez	a4,80001930 <_ZN9Semaphore4waitEv+0x54>

        TCB::timeSliceCounter=0;
        TCB::dispatch();
    }

    return 0;
    80001914:	00000513          	li	a0,0
}
    80001918:	01813083          	ld	ra,24(sp)
    8000191c:	01013403          	ld	s0,16(sp)
    80001920:	00813483          	ld	s1,8(sp)
    80001924:	00013903          	ld	s2,0(sp)
    80001928:	02010113          	addi	sp,sp,32
    8000192c:	00008067          	ret
        this->blocked.addLast(TCB::running);
    80001930:	00004797          	auipc	a5,0x4
    80001934:	3907b783          	ld	a5,912(a5) # 80005cc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001938:	0007b903          	ld	s2,0(a5)
        return MemoryAllocator::mem_alloc(n);
    8000193c:	01000513          	li	a0,16
    80001940:	00001097          	auipc	ra,0x1
    80001944:	a78080e7          	jalr	-1416(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001948:	01253023          	sd	s2,0(a0)
                elem->next=0;
    8000194c:	00053423          	sd	zero,8(a0)
                if(tail){
    80001950:	0104b783          	ld	a5,16(s1)
    80001954:	04078063          	beqz	a5,80001994 <_ZN9Semaphore4waitEv+0xb8>
                    tail->next = elem;
    80001958:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    8000195c:	00a4b823          	sd	a0,16(s1)
        TCB::running->setBlocked(true);
    80001960:	00100593          	li	a1,1
    80001964:	00004797          	auipc	a5,0x4
    80001968:	35c7b783          	ld	a5,860(a5) # 80005cc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000196c:	0007b503          	ld	a0,0(a5)
    80001970:	00000097          	auipc	ra,0x0
    80001974:	618080e7          	jalr	1560(ra) # 80001f88 <_ZN3TCB10setBlockedEb>
        TCB::timeSliceCounter=0;
    80001978:	00004797          	auipc	a5,0x4
    8000197c:	3307b783          	ld	a5,816(a5) # 80005ca8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001980:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001984:	00000097          	auipc	ra,0x0
    80001988:	43c080e7          	jalr	1084(ra) # 80001dc0 <_ZN3TCB8dispatchEv>
    return 0;
    8000198c:	00000513          	li	a0,0
    80001990:	f89ff06f          	j	80001918 <_ZN9Semaphore4waitEv+0x3c>
                    head= tail = elem;
    80001994:	00a4b823          	sd	a0,16(s1)
    80001998:	00a4b423          	sd	a0,8(s1)
    8000199c:	fc5ff06f          	j	80001960 <_ZN9Semaphore4waitEv+0x84>
    if(this->closed) return -2;
    800019a0:	ffe00513          	li	a0,-2
}
    800019a4:	00008067          	ret

00000000800019a8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if(this->closed) return -2;
    800019a8:	00454703          	lbu	a4,4(a0)
    800019ac:	08071a63          	bnez	a4,80001a40 <_ZN9Semaphore6signalEv+0x98>
    800019b0:	00050793          	mv	a5,a0
    this->value++;
    800019b4:	00052703          	lw	a4,0(a0)
    800019b8:	0017071b          	addiw	a4,a4,1
    800019bc:	0007069b          	sext.w	a3,a4
    800019c0:	00e52023          	sw	a4,0(a0)
    if(this->value >0){
    800019c4:	08d05263          	blez	a3,80001a48 <_ZN9Semaphore6signalEv+0xa0>
int Semaphore::signal() {
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    800019dc:	00853503          	ld	a0,8(a0)
    800019e0:	04050c63          	beqz	a0,80001a38 <_ZN9Semaphore6signalEv+0x90>
                head = head->next;
    800019e4:	00853703          	ld	a4,8(a0)
    800019e8:	00e7b423          	sd	a4,8(a5)
                if(!head) tail = 0;
    800019ec:	04070263          	beqz	a4,80001a30 <_ZN9Semaphore6signalEv+0x88>
                T *ret = elem->data;
    800019f0:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	b18080e7          	jalr	-1256(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
        TCB* thread = this->blocked.removeFirst();
        thread->setBlocked(false);
    800019fc:	00000593          	li	a1,0
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	584080e7          	jalr	1412(ra) # 80001f88 <_ZN3TCB10setBlockedEb>
        Scheduler::put(thread);
    80001a0c:	00048513          	mv	a0,s1
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	908080e7          	jalr	-1784(ra) # 80002318 <_ZN9Scheduler3putEP3TCB>
    }
    return 0;
    80001a18:	00000513          	li	a0,0
}
    80001a1c:	01813083          	ld	ra,24(sp)
    80001a20:	01013403          	ld	s0,16(sp)
    80001a24:	00813483          	ld	s1,8(sp)
    80001a28:	02010113          	addi	sp,sp,32
    80001a2c:	00008067          	ret
                if(!head) tail = 0;
    80001a30:	0007b823          	sd	zero,16(a5)
    80001a34:	fbdff06f          	j	800019f0 <_ZN9Semaphore6signalEv+0x48>
                if(!head)return 0;
    80001a38:	00050493          	mv	s1,a0
    80001a3c:	fc1ff06f          	j	800019fc <_ZN9Semaphore6signalEv+0x54>
    if(this->closed) return -2;
    80001a40:	ffe00513          	li	a0,-2
    80001a44:	00008067          	ret
    return 0;
    80001a48:	00000513          	li	a0,0
}
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN9Semaphore7trywaitEv>:

int Semaphore::trywait() {
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00813423          	sd	s0,8(sp)
    80001a58:	01010413          	addi	s0,sp,16
    return 0;
}
    80001a5c:	00000513          	li	a0,0
    80001a60:	00813403          	ld	s0,8(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_ZN9Semaphore10timed_waitEv>:

int Semaphore::timed_wait() {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00813423          	sd	s0,8(sp)
    80001a74:	01010413          	addi	s0,sp,16
    return 0;
}
    80001a78:	00000513          	li	a0,0
    80001a7c:	00813403          	ld	s0,8(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001a88:	fb010113          	addi	sp,sp,-80
    80001a8c:	04113423          	sd	ra,72(sp)
    80001a90:	04813023          	sd	s0,64(sp)
    80001a94:	02913c23          	sd	s1,56(sp)
    80001a98:	05010413          	addi	s0,sp,80
    MemoryAllocator::init();
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	9d8080e7          	jalr	-1576(ra) # 80002474 <_ZN15MemoryAllocator4initEv>
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001aa4:	00004797          	auipc	a5,0x4
    80001aa8:	1fc7b783          	ld	a5,508(a5) # 80005ca0 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001aac:	10579073          	csrw	stvec,a5

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    80001ab0:	00004797          	auipc	a5,0x4
    80001ab4:	2187b783          	ld	a5,536(a5) # 80005cc8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001ab8:	0007b503          	ld	a0,0(a5)
    80001abc:	00004797          	auipc	a5,0x4
    80001ac0:	1d47b783          	ld	a5,468(a5) # 80005c90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ac4:	0007b783          	ld	a5,0(a5)
    80001ac8:	40f50533          	sub	a0,a0,a5
    80001acc:	ff050513          	addi	a0,a0,-16
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    80001ad0:	fc057513          	andi	a0,a0,-64
    80001ad4:	fffff097          	auipc	ra,0xfffff
    80001ad8:	750080e7          	jalr	1872(ra) # 80001224 <_Z9mem_allocm>
    80001adc:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    80001ae0:	10050263          	beqz	a0,80001be4 <main+0x15c>
        __putc('?');
    }

    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    80001ae4:	00a00513          	li	a0,10
    80001ae8:	fffff097          	auipc	ra,0xfffff
    80001aec:	73c080e7          	jalr	1852(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001af0:	10050263          	beqz	a0,80001bf4 <main+0x16c>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	a14080e7          	jalr	-1516(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
    if(status != 0) {
    80001b00:	10051263          	bnez	a0,80001c04 <main+0x17c>
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    80001b04:	00a00513          	li	a0,10
    80001b08:	fffff097          	auipc	ra,0xfffff
    80001b0c:	71c080e7          	jalr	1820(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001b10:	10050263          	beqz	a0,80001c14 <main+0x18c>
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(&threads[0],nullptr, nullptr);
    80001b14:	00000613          	li	a2,0
    80001b18:	00000593          	li	a1,0
    80001b1c:	fb840513          	addi	a0,s0,-72
    80001b20:	fffff097          	auipc	ra,0xfffff
    80001b24:	7b0080e7          	jalr	1968(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001b28:	fb843703          	ld	a4,-72(s0)
    80001b2c:	00004797          	auipc	a5,0x4
    80001b30:	1947b783          	ld	a5,404(a5) # 80005cc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b34:	00e7b023          	sd	a4,0(a5)

    //threads[1] = TCB::createThread(workerBodyA, nullptr);
    thread_create(&threads[1],workerBodyA, nullptr);
    80001b38:	00000613          	li	a2,0
    80001b3c:	00004597          	auipc	a1,0x4
    80001b40:	17c5b583          	ld	a1,380(a1) # 80005cb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b44:	fc040513          	addi	a0,s0,-64
    80001b48:	fffff097          	auipc	ra,0xfffff
    80001b4c:	788080e7          	jalr	1928(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001b50:	00003517          	auipc	a0,0x3
    80001b54:	53850513          	addi	a0,a0,1336 # 80005088 <CONSOLE_STATUS+0x78>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	a90080e7          	jalr	-1392(ra) # 800025e8 <_Z11printStringPKc>
    //threads[2] = TCB::createThread(workerBodyB , nullptr);
    thread_create(&threads[2],workerBodyB, nullptr);
    80001b60:	00000613          	li	a2,0
    80001b64:	00004597          	auipc	a1,0x4
    80001b68:	16c5b583          	ld	a1,364(a1) # 80005cd0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001b6c:	fc840513          	addi	a0,s0,-56
    80001b70:	fffff097          	auipc	ra,0xfffff
    80001b74:	760080e7          	jalr	1888(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001b78:	00003517          	auipc	a0,0x3
    80001b7c:	52850513          	addi	a0,a0,1320 # 800050a0 <CONSOLE_STATUS+0x90>
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	a68080e7          	jalr	-1432(ra) # 800025e8 <_Z11printStringPKc>
    //threads[3] = TCB::createThread(workerBodyC, nullptr);
    thread_create(&threads[3],workerBodyC, nullptr);
    80001b88:	00000613          	li	a2,0
    80001b8c:	00004597          	auipc	a1,0x4
    80001b90:	10c5b583          	ld	a1,268(a1) # 80005c98 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b94:	fd040513          	addi	a0,s0,-48
    80001b98:	fffff097          	auipc	ra,0xfffff
    80001b9c:	738080e7          	jalr	1848(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001ba0:	00003517          	auipc	a0,0x3
    80001ba4:	51850513          	addi	a0,a0,1304 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	a40080e7          	jalr	-1472(ra) # 800025e8 <_Z11printStringPKc>
    //threads[4] = TCB::createThread(workerBodyD, nullptr);
    thread_create(&threads[4],workerBodyD, nullptr);
    80001bb0:	00000613          	li	a2,0
    80001bb4:	00004597          	auipc	a1,0x4
    80001bb8:	1245b583          	ld	a1,292(a1) # 80005cd8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001bbc:	fd840513          	addi	a0,s0,-40
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	710080e7          	jalr	1808(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001bc8:	00003517          	auipc	a0,0x3
    80001bcc:	50850513          	addi	a0,a0,1288 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	a18080e7          	jalr	-1512(ra) # 800025e8 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001bd8:	00200793          	li	a5,2
    80001bdc:	1007a073          	csrs	sstatus,a5
}
    80001be0:	04c0006f          	j	80001c2c <main+0x1a4>
        __putc('?');
    80001be4:	03f00513          	li	a0,63
    80001be8:	00003097          	auipc	ra,0x3
    80001bec:	bf4080e7          	jalr	-1036(ra) # 800047dc <__putc>
    80001bf0:	ef5ff06f          	j	80001ae4 <main+0x5c>
        __putc('k');
    80001bf4:	06b00513          	li	a0,107
    80001bf8:	00003097          	auipc	ra,0x3
    80001bfc:	be4080e7          	jalr	-1052(ra) # 800047dc <__putc>
    80001c00:	ef5ff06f          	j	80001af4 <main+0x6c>
        __putc('?');
    80001c04:	03f00513          	li	a0,63
    80001c08:	00003097          	auipc	ra,0x3
    80001c0c:	bd4080e7          	jalr	-1068(ra) # 800047dc <__putc>
    80001c10:	ef5ff06f          	j	80001b04 <main+0x7c>
        __putc('?');
    80001c14:	03f00513          	li	a0,63
    80001c18:	00003097          	auipc	ra,0x3
    80001c1c:	bc4080e7          	jalr	-1084(ra) # 800047dc <__putc>
    80001c20:	ef5ff06f          	j	80001b14 <main+0x8c>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	664080e7          	jalr	1636(ra) # 80001288 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001c2c:	fc043783          	ld	a5,-64(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    80001c30:	0307c783          	lbu	a5,48(a5)
    80001c34:	fe0788e3          	beqz	a5,80001c24 <main+0x19c>
             threads[2]->isFinished() &&
    80001c38:	fc843783          	ld	a5,-56(s0)
    80001c3c:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001c40:	fe0782e3          	beqz	a5,80001c24 <main+0x19c>
             threads[3]->isFinished() &&
    80001c44:	fd043783          	ld	a5,-48(s0)
    80001c48:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    80001c4c:	fc078ce3          	beqz	a5,80001c24 <main+0x19c>
             threads[4]->isFinished()))
    80001c50:	fd843783          	ld	a5,-40(s0)
    80001c54:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001c58:	fc0786e3          	beqz	a5,80001c24 <main+0x19c>
    80001c5c:	fb840493          	addi	s1,s0,-72
    }

    for (auto &thread: threads)
    80001c60:	fe040793          	addi	a5,s0,-32
    80001c64:	00f48c63          	beq	s1,a5,80001c7c <main+0x1f4>
    {
        TCB::deleteThread(thread);
    80001c68:	0004b503          	ld	a0,0(s1)
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	294080e7          	jalr	660(ra) # 80001f00 <_ZN3TCB12deleteThreadEPS_>
    for (auto &thread: threads)
    80001c74:	00848493          	addi	s1,s1,8
    80001c78:	fe9ff06f          	j	80001c60 <main+0x1d8>
    }
    printString("Finished\n");
    80001c7c:	00003517          	auipc	a0,0x3
    80001c80:	46c50513          	addi	a0,a0,1132 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001c84:	00001097          	auipc	ra,0x1
    80001c88:	964080e7          	jalr	-1692(ra) # 800025e8 <_Z11printStringPKc>

    return 0;
}
    80001c8c:	00000513          	li	a0,0
    80001c90:	04813083          	ld	ra,72(sp)
    80001c94:	04013403          	ld	s0,64(sp)
    80001c98:	03813483          	ld	s1,56(sp)
    80001c9c:	05010113          	addi	sp,sp,80
    80001ca0:	00008067          	ret

0000000080001ca4 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001ca4:	ff010113          	addi	sp,sp,-16
    80001ca8:	00113423          	sd	ra,8(sp)
    80001cac:	00813023          	sd	s0,0(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	704080e7          	jalr	1796(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001cbc:	00813083          	ld	ra,8(sp)
    80001cc0:	00013403          	ld	s0,0(sp)
    80001cc4:	01010113          	addi	sp,sp,16
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00113423          	sd	ra,8(sp)
    80001cd4:	00813023          	sd	s0,0(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	6dc080e7          	jalr	1756(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ce4:	00813083          	ld	ra,8(sp)
    80001ce8:	00013403          	ld	s0,0(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00113423          	sd	ra,8(sp)
    80001cfc:	00813023          	sd	s0,0(sp)
    80001d00:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	808080e7          	jalr	-2040(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001d0c:	00813083          	ld	ra,8(sp)
    80001d10:	00013403          	ld	s0,0(sp)
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00113423          	sd	ra,8(sp)
    80001d24:	00813023          	sd	s0,0(sp)
    80001d28:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	7e0080e7          	jalr	2016(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001d34:	00813083          	ld	ra,8(sp)
    80001d38:	00013403          	ld	s0,0(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001d50:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001d54:	00000073          	ecall
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    80001d64:	fe010113          	addi	sp,sp,-32
    80001d68:	00113c23          	sd	ra,24(sp)
    80001d6c:	00813823          	sd	s0,16(sp)
    80001d70:	00913423          	sd	s1,8(sp)
    80001d74:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	2cc080e7          	jalr	716(ra) # 80002044 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001d80:	00004497          	auipc	s1,0x4
    80001d84:	fb048493          	addi	s1,s1,-80 # 80005d30 <_ZN3TCB7runningE>
    80001d88:	0004b783          	ld	a5,0(s1)
    80001d8c:	0007b703          	ld	a4,0(a5)
    80001d90:	0087b503          	ld	a0,8(a5)
    80001d94:	000700e7          	jalr	a4
    running->setFinished(true);
    80001d98:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f;}
    80001d9c:	00100713          	li	a4,1
    80001da0:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	fa0080e7          	jalr	-96(ra) # 80001d44 <_ZN3TCB5yieldEv>
}
    80001dac:	01813083          	ld	ra,24(sp)
    80001db0:	01013403          	ld	s0,16(sp)
    80001db4:	00813483          	ld	s1,8(sp)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001dd4:	00004497          	auipc	s1,0x4
    80001dd8:	f5c4b483          	ld	s1,-164(s1) # 80005d30 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001ddc:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->blocked){
    80001de0:	00079663          	bnez	a5,80001dec <_ZN3TCB8dispatchEv+0x2c>
    80001de4:	0314c783          	lbu	a5,49(s1)
    80001de8:	02078c63          	beqz	a5,80001e20 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	4c4080e7          	jalr	1220(ra) # 800022b0 <_ZN9Scheduler3getEv>
    80001df4:	00004797          	auipc	a5,0x4
    80001df8:	f2a7be23          	sd	a0,-196(a5) # 80005d30 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001dfc:	01850593          	addi	a1,a0,24
    80001e00:	01848513          	addi	a0,s1,24
    80001e04:	fffff097          	auipc	ra,0xfffff
    80001e08:	40c080e7          	jalr	1036(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e0c:	01813083          	ld	ra,24(sp)
    80001e10:	01013403          	ld	s0,16(sp)
    80001e14:	00813483          	ld	s1,8(sp)
    80001e18:	02010113          	addi	sp,sp,32
    80001e1c:	00008067          	ret
        Scheduler::put(old);
    80001e20:	00048513          	mv	a0,s1
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	4f4080e7          	jalr	1268(ra) # 80002318 <_ZN9Scheduler3putEP3TCB>
    80001e2c:	fc1ff06f          	j	80001dec <_ZN3TCB8dispatchEv+0x2c>

0000000080001e30 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001e30:	fd010113          	addi	sp,sp,-48
    80001e34:	02113423          	sd	ra,40(sp)
    80001e38:	02813023          	sd	s0,32(sp)
    80001e3c:	00913c23          	sd	s1,24(sp)
    80001e40:	01213823          	sd	s2,16(sp)
    80001e44:	01313423          	sd	s3,8(sp)
    80001e48:	01413023          	sd	s4,0(sp)
    80001e4c:	03010413          	addi	s0,sp,48
    80001e50:	00050993          	mv	s3,a0
    80001e54:	00058a13          	mv	s4,a1
    80001e58:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001e5c:	03800513          	li	a0,56
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	e44080e7          	jalr	-444(ra) # 80001ca4 <_ZN3TCBnwEm>
    80001e68:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false),
                blocked(false)
    80001e6c:	01353023          	sd	s3,0(a0)
    80001e70:	01453423          	sd	s4,8(a0)
    80001e74:	01253823          	sd	s2,16(a0)
    80001e78:	00000797          	auipc	a5,0x0
    80001e7c:	eec78793          	addi	a5,a5,-276 # 80001d64 <_ZN3TCB13threadWrapperEv>
    80001e80:	00f53c23          	sd	a5,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001e84:	02090a63          	beqz	s2,80001eb8 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x88>
    80001e88:	00008637          	lui	a2,0x8
    80001e8c:	00c90933          	add	s2,s2,a2
                blocked(false)
    80001e90:	0324b023          	sd	s2,32(s1)
    80001e94:	00200793          	li	a5,2
    80001e98:	02f4b423          	sd	a5,40(s1)
    80001e9c:	02048823          	sb	zero,48(s1)
    80001ea0:	020488a3          	sb	zero,49(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80001ea4:	02098c63          	beqz	s3,80001edc <_ZN3TCB12createThreadEPFvPvES0_S0_+0xac>
    80001ea8:	00048513          	mv	a0,s1
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	46c080e7          	jalr	1132(ra) # 80002318 <_ZN9Scheduler3putEP3TCB>
    80001eb4:	0280006f          	j	80001edc <_ZN3TCB12createThreadEPFvPvES0_S0_+0xac>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001eb8:	00000913          	li	s2,0
    80001ebc:	fd5ff06f          	j	80001e90 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x60>
    80001ec0:	00050913          	mv	s2,a0
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	e2c080e7          	jalr	-468(ra) # 80001cf4 <_ZN3TCBdlEPv>
    80001ed0:	00090513          	mv	a0,s2
    80001ed4:	00005097          	auipc	ra,0x5
    80001ed8:	f54080e7          	jalr	-172(ra) # 80006e28 <_Unwind_Resume>
}
    80001edc:	00048513          	mv	a0,s1
    80001ee0:	02813083          	ld	ra,40(sp)
    80001ee4:	02013403          	ld	s0,32(sp)
    80001ee8:	01813483          	ld	s1,24(sp)
    80001eec:	01013903          	ld	s2,16(sp)
    80001ef0:	00813983          	ld	s3,8(sp)
    80001ef4:	00013a03          	ld	s4,0(sp)
    80001ef8:	03010113          	addi	sp,sp,48
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001f00:	04050463          	beqz	a0,80001f48 <_ZN3TCB12deleteThreadEPS_+0x48>
void TCB::deleteThread(TCB* thread){
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00113c23          	sd	ra,24(sp)
    80001f0c:	00813823          	sd	s0,16(sp)
    80001f10:	00913423          	sd	s1,8(sp)
    80001f14:	02010413          	addi	s0,sp,32
    80001f18:	00050493          	mv	s1,a0
    ~TCB(){TCB::operator delete[](stack);}
    80001f1c:	01053503          	ld	a0,16(a0)
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	dfc080e7          	jalr	-516(ra) # 80001d1c <_ZN3TCBdaEPv>
    delete thread;
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	dc8080e7          	jalr	-568(ra) # 80001cf4 <_ZN3TCBdlEPv>
}
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	02010113          	addi	sp,sp,32
    80001f44:	00008067          	ret
    80001f48:	00008067          	ret

0000000080001f4c <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { TCB::finished = f;}
    80001f5c:	00004797          	auipc	a5,0x4
    80001f60:	dd47b783          	ld	a5,-556(a5) # 80005d30 <_ZN3TCB7runningE>
    80001f64:	00100713          	li	a4,1
    80001f68:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	e54080e7          	jalr	-428(ra) # 80001dc0 <_ZN3TCB8dispatchEv>
}
    80001f74:	00000513          	li	a0,0
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN3TCB10setBlockedEb>:

void TCB::setBlocked(bool b) {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    this->blocked = b;
    80001f94:	02b508a3          	sb	a1,49(a0)
}
    80001f98:	00813403          	ld	s0,8(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	270080e7          	jalr	624(ra) # 80001224 <_Z9mem_allocm>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_Znam>:

void *operator new[](size_t n)
{
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00113423          	sd	ra,8(sp)
    80001fd4:	00813023          	sd	s0,0(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001fdc:	fffff097          	auipc	ra,0xfffff
    80001fe0:	248080e7          	jalr	584(ra) # 80001224 <_Z9mem_allocm>
}
    80001fe4:	00813083          	ld	ra,8(sp)
    80001fe8:	00013403          	ld	s0,0(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00113423          	sd	ra,8(sp)
    80001ffc:	00813023          	sd	s0,0(sp)
    80002000:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002004:	fffff097          	auipc	ra,0xfffff
    80002008:	258080e7          	jalr	600(ra) # 8000125c <_Z8mem_freePv>
}
    8000200c:	00813083          	ld	ra,8(sp)
    80002010:	00013403          	ld	s0,0(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00113423          	sd	ra,8(sp)
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	230080e7          	jalr	560(ra) # 8000125c <_Z8mem_freePv>
    80002034:	00813083          	ld	ra,8(sp)
    80002038:	00013403          	ld	s0,0(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002050:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002054:	10200073          	sret
}
    80002058:	00813403          	ld	s0,8(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002064:	f8010113          	addi	sp,sp,-128
    80002068:	06113c23          	sd	ra,120(sp)
    8000206c:	06813823          	sd	s0,112(sp)
    80002070:	06913423          	sd	s1,104(sp)
    80002074:	08010413          	addi	s0,sp,128

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002078:	00050793          	mv	a5,a0
    8000207c:	faf43423          	sd	a5,-88(s0)
    return a0;
    80002080:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002084:	14202773          	csrr	a4,scause
    80002088:	fae43023          	sd	a4,-96(s0)
    return scause;
    8000208c:	fa043503          	ld	a0,-96(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    80002090:	ff850693          	addi	a3,a0,-8
    80002094:	00100713          	li	a4,1
    80002098:	04d77c63          	bgeu	a4,a3,800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    8000209c:	fff00793          	li	a5,-1
    800020a0:	03f79793          	slli	a5,a5,0x3f
    800020a4:	00178793          	addi	a5,a5,1
    800020a8:	14f50263          	beq	a0,a5,800021ec <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    800020ac:	fff00793          	li	a5,-1
    800020b0:	03f79793          	slli	a5,a5,0x3f
    800020b4:	00978793          	addi	a5,a5,9
    800020b8:	1af50663          	beq	a0,a5,80002264 <_ZN5Riscv20handleSupervisorTrapEv+0x200>
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	59c080e7          	jalr	1436(ra) # 80002658 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020c4:	141027f3          	csrr	a5,sepc
    800020c8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800020cc:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	588080e7          	jalr	1416(ra) # 80002658 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    800020d8:	143027f3          	csrr	a5,stval
    800020dc:	fcf43823          	sd	a5,-48(s0)
    return stval;
    800020e0:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	574080e7          	jalr	1396(ra) # 80002658 <_Z12printIntegerm>
    }
    800020ec:	0700006f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020f0:	14102773          	csrr	a4,sepc
    800020f4:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    800020f8:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    800020fc:	00470713          	addi	a4,a4,4
    80002100:	f8e43023          	sd	a4,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002104:	10002773          	csrr	a4,sstatus
    80002108:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    8000210c:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80002110:	f8e43423          	sd	a4,-120(s0)
        switch (ra) {
    80002114:	01300713          	li	a4,19
    80002118:	02f76a63          	bltu	a4,a5,8000214c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    8000211c:	00279793          	slli	a5,a5,0x2
    80002120:	00003717          	auipc	a4,0x3
    80002124:	fd470713          	addi	a4,a4,-44 # 800050f4 <CONSOLE_STATUS+0xe4>
    80002128:	00e787b3          	add	a5,a5,a4
    8000212c:	0007a783          	lw	a5,0(a5)
    80002130:	00e787b3          	add	a5,a5,a4
    80002134:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1":"=r"(size));
    80002138:	00058513          	mv	a0,a1
                mallocr = MemoryAllocator::mem_alloc(size);
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	27c080e7          	jalr	636(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80002144:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002148:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    8000214c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002150:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002154:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002158:	14179073          	csrw	sepc,a5
    8000215c:	07813083          	ld	ra,120(sp)
    80002160:	07013403          	ld	s0,112(sp)
    80002164:	06813483          	ld	s1,104(sp)
    80002168:	08010113          	addi	sp,sp,128
    8000216c:	00008067          	ret
                __asm__ volatile("mv %0, a1":"=r"(freep));
    80002170:	00058513          	mv	a0,a1
                greska = MemoryAllocator::mem_free(freep);
    80002174:	00000097          	auipc	ra,0x0
    80002178:	398080e7          	jalr	920(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    8000217c:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80002180:	04543823          	sd	t0,80(s0)
                break;
    80002184:	fc9ff06f          	j	8000214c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(handle));
    80002188:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    8000218c:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    80002190:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    80002194:	07043603          	ld	a2,112(s0)
                *handle = TCB::createThread(start_routine,arg, stek);
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	c98080e7          	jalr	-872(ra) # 80001e30 <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800021a0:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) ret =0;
    800021a4:	00050a63          	beqz	a0,800021b8 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    800021a8:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800021ac:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    800021b0:	04543823          	sd	t0,80(s0)
                break;
    800021b4:	f99ff06f          	j	8000214c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    800021b8:	fff00793          	li	a5,-1
    800021bc:	ff1ff06f          	j	800021ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                ret = TCB::exitThread();
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	d8c080e7          	jalr	-628(ra) # 80001f4c <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    800021c8:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    800021cc:	04542823          	sw	t0,80(s0)
                break;
    800021d0:	f7dff06f          	j	8000214c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                TCB::timeSliceCounter=0;
    800021d4:	00004797          	auipc	a5,0x4
    800021d8:	ad47b783          	ld	a5,-1324(a5) # 80005ca8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800021dc:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	be0080e7          	jalr	-1056(ra) # 80001dc0 <_ZN3TCB8dispatchEv>
                break;
    800021e8:	f65ff06f          	j	8000214c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800021ec:	00200793          	li	a5,2
    800021f0:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800021f4:	00004717          	auipc	a4,0x4
    800021f8:	ab473703          	ld	a4,-1356(a4) # 80005ca8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800021fc:	00073783          	ld	a5,0(a4)
    80002200:	00178793          	addi	a5,a5,1
    80002204:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80002208:	00004717          	auipc	a4,0x4
    8000220c:	ab873703          	ld	a4,-1352(a4) # 80005cc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002210:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002214:	02873703          	ld	a4,40(a4)
    80002218:	f4e7e2e3          	bltu	a5,a4,8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000221c:	141027f3          	csrr	a5,sepc
    80002220:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002224:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    80002228:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000222c:	100027f3          	csrr	a5,sstatus
    80002230:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002234:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    80002238:	f8f43c23          	sd	a5,-104(s0)
            TCB::timeSliceCounter=0;
    8000223c:	00004797          	auipc	a5,0x4
    80002240:	a6c7b783          	ld	a5,-1428(a5) # 80005ca8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002244:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	b78080e7          	jalr	-1160(ra) # 80001dc0 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002250:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002254:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002258:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000225c:	14179073          	csrw	sepc,a5
}
    80002260:	efdff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        console_handler();
    80002264:	00002097          	auipc	ra,0x2
    80002268:	5ec080e7          	jalr	1516(ra) # 80004850 <console_handler>
    8000226c:	ef1ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

0000000080002270 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
    8000227c:	00100793          	li	a5,1
    80002280:	00f50863          	beq	a0,a5,80002290 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret
    80002290:	000107b7          	lui	a5,0x10
    80002294:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002298:	fef596e3          	bne	a1,a5,80002284 <_Z41__static_initialization_and_destruction_0ii+0x14>
            List():head(0), tail(0){}
    8000229c:	00004797          	auipc	a5,0x4
    800022a0:	aa478793          	addi	a5,a5,-1372 # 80005d40 <_ZN9Scheduler16readyThreadQueueE>
    800022a4:	0007b023          	sd	zero,0(a5)
    800022a8:	0007b423          	sd	zero,8(a5)
    800022ac:	fd9ff06f          	j	80002284 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800022b0 <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    800022b0:	fe010113          	addi	sp,sp,-32
    800022b4:	00113c23          	sd	ra,24(sp)
    800022b8:	00813823          	sd	s0,16(sp)
    800022bc:	00913423          	sd	s1,8(sp)
    800022c0:	02010413          	addi	s0,sp,32
                if(!head)return 0;
    800022c4:	00004517          	auipc	a0,0x4
    800022c8:	a7c53503          	ld	a0,-1412(a0) # 80005d40 <_ZN9Scheduler16readyThreadQueueE>
    800022cc:	04050263          	beqz	a0,80002310 <_ZN9Scheduler3getEv+0x60>
                head = head->next;
    800022d0:	00853783          	ld	a5,8(a0)
    800022d4:	00004717          	auipc	a4,0x4
    800022d8:	a6f73623          	sd	a5,-1428(a4) # 80005d40 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    800022dc:	02078463          	beqz	a5,80002304 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    800022e0:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	228080e7          	jalr	552(ra) # 8000250c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800022ec:	00048513          	mv	a0,s1
    800022f0:	01813083          	ld	ra,24(sp)
    800022f4:	01013403          	ld	s0,16(sp)
    800022f8:	00813483          	ld	s1,8(sp)
    800022fc:	02010113          	addi	sp,sp,32
    80002300:	00008067          	ret
                if(!head) tail = 0;
    80002304:	00004797          	auipc	a5,0x4
    80002308:	a407b223          	sd	zero,-1468(a5) # 80005d48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000230c:	fd5ff06f          	j	800022e0 <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80002310:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002314:	fd9ff06f          	j	800022ec <_ZN9Scheduler3getEv+0x3c>

0000000080002318 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00113c23          	sd	ra,24(sp)
    80002320:	00813823          	sd	s0,16(sp)
    80002324:	00913423          	sd	s1,8(sp)
    80002328:	02010413          	addi	s0,sp,32
    8000232c:	00050493          	mv	s1,a0
        return MemoryAllocator::mem_alloc(n);
    80002330:	01000513          	li	a0,16
    80002334:	00000097          	auipc	ra,0x0
    80002338:	084080e7          	jalr	132(ra) # 800023b8 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    8000233c:	00953023          	sd	s1,0(a0)
                elem->next=0;
    80002340:	00053423          	sd	zero,8(a0)
                if(tail){
    80002344:	00004797          	auipc	a5,0x4
    80002348:	a047b783          	ld	a5,-1532(a5) # 80005d48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000234c:	02078263          	beqz	a5,80002370 <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    80002350:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80002354:	00004797          	auipc	a5,0x4
    80002358:	9ea7ba23          	sd	a0,-1548(a5) # 80005d48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000235c:	01813083          	ld	ra,24(sp)
    80002360:	01013403          	ld	s0,16(sp)
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	02010113          	addi	sp,sp,32
    8000236c:	00008067          	ret
                    head= tail = elem;
    80002370:	00004797          	auipc	a5,0x4
    80002374:	9d078793          	addi	a5,a5,-1584 # 80005d40 <_ZN9Scheduler16readyThreadQueueE>
    80002378:	00a7b423          	sd	a0,8(a5)
    8000237c:	00a7b023          	sd	a0,0(a5)
    80002380:	fddff06f          	j	8000235c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002384 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    80002394:	000105b7          	lui	a1,0x10
    80002398:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000239c:	00100513          	li	a0,1
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	ed0080e7          	jalr	-304(ra) # 80002270 <_Z41__static_initialization_and_destruction_0ii>
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813423          	sd	s0,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    800023c8:	00004517          	auipc	a0,0x4
    800023cc:	98853503          	ld	a0,-1656(a0) # 80005d50 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    800023d0:	03f7f713          	andi	a4,a5,63
    800023d4:	00070663          	beqz	a4,800023e0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    800023d8:	fc07f793          	andi	a5,a5,-64
    800023dc:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    800023e0:	02050863          	beqz	a0,80002410 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    800023e4:	00853703          	ld	a4,8(a0)
    800023e8:	02f77863          	bgeu	a4,a5,80002418 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    800023ec:	00050693          	mv	a3,a0
        tek = tek->sled;
    800023f0:	00053503          	ld	a0,0(a0)
    800023f4:	00c0006f          	j	80002400 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    800023f8:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    800023fc:	00053503          	ld	a0,0(a0)
    80002400:	00050e63          	beqz	a0,8000241c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002404:	00853703          	ld	a4,8(a0)
    80002408:	fef768e3          	bltu	a4,a5,800023f8 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    8000240c:	0100006f          	j	8000241c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    80002410:	00050693          	mv	a3,a0
    80002414:	0080006f          	j	8000241c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002418:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    8000241c:	02050c63          	beqz	a0,80002454 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    80002420:	00853703          	ld	a4,8(a0)
    80002424:	02e7fe63          	bgeu	a5,a4,80002460 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    80002428:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    8000242c:	00f505b3          	add	a1,a0,a5
    80002430:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    80002434:	40f707b3          	sub	a5,a4,a5
    80002438:	ff078793          	addi	a5,a5,-16
    8000243c:	00f63423          	sd	a5,8(a2) # 8008 <_entry-0x7fff7ff8>
        sledeci->sled = tek->sled;
    80002440:	00053783          	ld	a5,0(a0)
    80002444:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    80002448:	02068063          	beqz	a3,80002468 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    8000244c:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    80002450:	01050513          	addi	a0,a0,16
}
    80002454:	00813403          	ld	s0,8(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    80002460:	00053603          	ld	a2,0(a0)
    80002464:	fe5ff06f          	j	80002448 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    80002468:	00004797          	auipc	a5,0x4
    8000246c:	8ec7b423          	sd	a2,-1816(a5) # 80005d50 <_ZN15MemoryAllocator11freememheadE>
    80002470:	fe1ff06f          	j	80002450 <_ZN15MemoryAllocator9mem_allocEm+0x98>

0000000080002474 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00813423          	sd	s0,8(sp)
    8000247c:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    80002480:	00004797          	auipc	a5,0x4
    80002484:	8107b783          	ld	a5,-2032(a5) # 80005c90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002488:	0007b703          	ld	a4,0(a5)
    8000248c:	00004797          	auipc	a5,0x4
    80002490:	8ce7b223          	sd	a4,-1852(a5) # 80005d50 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    80002494:	00004797          	auipc	a5,0x4
    80002498:	8347b783          	ld	a5,-1996(a5) # 80005cc8 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000249c:	0007b783          	ld	a5,0(a5)
    800024a0:	40e787b3          	sub	a5,a5,a4
    800024a4:	ff078793          	addi	a5,a5,-16
    800024a8:	00073023          	sd	zero,0(a4)
    800024ac:	00f73423          	sd	a5,8(a4)
};
    800024b0:	00813403          	ld	s0,8(sp)
    800024b4:	01010113          	addi	sp,sp,16
    800024b8:	00008067          	ret

00000000800024bc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    800024bc:	ff010113          	addi	sp,sp,-16
    800024c0:	00813423          	sd	s0,8(sp)
    800024c4:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    800024c8:	00053783          	ld	a5,0(a0)
    800024cc:	00078a63          	beqz	a5,800024e0 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    800024d0:	00853683          	ld	a3,8(a0)
    800024d4:	00d50733          	add	a4,a0,a3
    800024d8:	01070713          	addi	a4,a4,16
    800024dc:	00f70a63          	beq	a4,a5,800024f0 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    800024e0:	00000513          	li	a0,0
    800024e4:	00813403          	ld	s0,8(sp)
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    800024f0:	0087b703          	ld	a4,8(a5)
    800024f4:	00e686b3          	add	a3,a3,a4
    800024f8:	01068693          	addi	a3,a3,16
    800024fc:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    80002500:	0007b783          	ld	a5,0(a5)
    80002504:	00f53023          	sd	a5,0(a0)
    80002508:	fd9ff06f          	j	800024e0 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

000000008000250c <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    8000250c:	0c050263          	beqz	a0,800025d0 <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    80002510:	00050713          	mv	a4,a0
    80002514:	00003797          	auipc	a5,0x3
    80002518:	77c7b783          	ld	a5,1916(a5) # 80005c90 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000251c:	0007b783          	ld	a5,0(a5)
    80002520:	0af56c63          	bltu	a0,a5,800025d8 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    80002524:	00003797          	auipc	a5,0x3
    80002528:	7a47b783          	ld	a5,1956(a5) # 80005cc8 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000252c:	0007b783          	ld	a5,0(a5)
    80002530:	0af57863          	bgeu	a0,a5,800025e0 <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    80002534:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    80002538:	00004797          	auipc	a5,0x4
    8000253c:	8187b783          	ld	a5,-2024(a5) # 80005d50 <_ZN15MemoryAllocator11freememheadE>
    80002540:	06078063          	beqz	a5,800025a0 <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    80002544:	fe010113          	addi	sp,sp,-32
    80002548:	00113c23          	sd	ra,24(sp)
    8000254c:	00813823          	sd	s0,16(sp)
    80002550:	00913423          	sd	s1,8(sp)
    80002554:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    80002558:	04f56e63          	bltu	a0,a5,800025b4 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    8000255c:	00078493          	mv	s1,a5
    80002560:	0007b783          	ld	a5,0(a5)
    80002564:	00078463          	beqz	a5,8000256c <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    80002568:	fea7eae3          	bltu	a5,a0,8000255c <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    8000256c:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    80002570:	00a4b023          	sd	a0,0(s1)
        join(tek);
    80002574:	00000097          	auipc	ra,0x0
    80002578:	f48080e7          	jalr	-184(ra) # 800024bc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    8000257c:	00048513          	mv	a0,s1
    80002580:	00000097          	auipc	ra,0x0
    80002584:	f3c080e7          	jalr	-196(ra) # 800024bc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002588:	00000513          	li	a0,0
}
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	01013403          	ld	s0,16(sp)
    80002594:	00813483          	ld	s1,8(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret
        freememhead = tek;
    800025a0:	00003797          	auipc	a5,0x3
    800025a4:	7aa7b823          	sd	a0,1968(a5) # 80005d50 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    800025a8:	fe073823          	sd	zero,-16(a4)
    return 0;
    800025ac:	00000513          	li	a0,0
    800025b0:	00008067          	ret
        tek->sled = freememhead;
    800025b4:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    800025b8:	00003797          	auipc	a5,0x3
    800025bc:	78a7bc23          	sd	a0,1944(a5) # 80005d50 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	efc080e7          	jalr	-260(ra) # 800024bc <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    800025c8:	00000513          	li	a0,0
    800025cc:	fc1ff06f          	j	8000258c <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    800025d0:	fff00513          	li	a0,-1
    800025d4:	00008067          	ret
    800025d8:	fff00513          	li	a0,-1
    800025dc:	00008067          	ret
    800025e0:	fff00513          	li	a0,-1
}
    800025e4:	00008067          	ret

00000000800025e8 <_Z11printStringPKc>:
//

#include "../h/print.hpp"


void printString(char const *string){
    800025e8:	fd010113          	addi	sp,sp,-48
    800025ec:	02113423          	sd	ra,40(sp)
    800025f0:	02813023          	sd	s0,32(sp)
    800025f4:	00913c23          	sd	s1,24(sp)
    800025f8:	01213823          	sd	s2,16(sp)
    800025fc:	03010413          	addi	s0,sp,48
    80002600:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002604:	100027f3          	csrr	a5,sstatus
    80002608:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000260c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002610:	00200793          	li	a5,2
    80002614:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string !='\0'){
    80002618:	0004c503          	lbu	a0,0(s1)
    8000261c:	00050a63          	beqz	a0,80002630 <_Z11printStringPKc+0x48>
        __putc(*string);
    80002620:	00002097          	auipc	ra,0x2
    80002624:	1bc080e7          	jalr	444(ra) # 800047dc <__putc>
        string++;
    80002628:	00148493          	addi	s1,s1,1
    while(*string !='\0'){
    8000262c:	fedff06f          	j	80002618 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002630:	0009091b          	sext.w	s2,s2
    80002634:	00297913          	andi	s2,s2,2
    80002638:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000263c:	10092073          	csrs	sstatus,s2
}
    80002640:	02813083          	ld	ra,40(sp)
    80002644:	02013403          	ld	s0,32(sp)
    80002648:	01813483          	ld	s1,24(sp)
    8000264c:	01013903          	ld	s2,16(sp)
    80002650:	03010113          	addi	sp,sp,48
    80002654:	00008067          	ret

0000000080002658 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002658:	fc010113          	addi	sp,sp,-64
    8000265c:	02113c23          	sd	ra,56(sp)
    80002660:	02813823          	sd	s0,48(sp)
    80002664:	02913423          	sd	s1,40(sp)
    80002668:	03213023          	sd	s2,32(sp)
    8000266c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002670:	100027f3          	csrr	a5,sstatus
    80002674:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002678:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000267c:	00200793          	li	a5,2
    80002680:	1007b073          	csrc	sstatus,a5

    neg = 0;
    if(integer<0){
        neg= 1;
        x= -integer;
    }else x=integer;
    80002684:	0005051b          	sext.w	a0,a0
    i=0;
    80002688:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x%10];
    8000268c:	00a00613          	li	a2,10
    80002690:	02c5773b          	remuw	a4,a0,a2
    80002694:	02071693          	slli	a3,a4,0x20
    80002698:	0206d693          	srli	a3,a3,0x20
    8000269c:	00003717          	auipc	a4,0x3
    800026a0:	aac70713          	addi	a4,a4,-1364 # 80005148 <_ZZ12printIntegermE6digits>
    800026a4:	00d70733          	add	a4,a4,a3
    800026a8:	00074703          	lbu	a4,0(a4)
    800026ac:	fe040693          	addi	a3,s0,-32
    800026b0:	009687b3          	add	a5,a3,s1
    800026b4:	0014849b          	addiw	s1,s1,1
    800026b8:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    800026bc:	0005071b          	sext.w	a4,a0
    800026c0:	02c5553b          	divuw	a0,a0,a2
    800026c4:	00900793          	li	a5,9
    800026c8:	fce7e2e3          	bltu	a5,a4,8000268c <_Z12printIntegerm+0x34>
    if(neg)
        buf[i++]='-';
    while(--i >=0) __putc(buf[i]);
    800026cc:	fff4849b          	addiw	s1,s1,-1
    800026d0:	0004ce63          	bltz	s1,800026ec <_Z12printIntegerm+0x94>
    800026d4:	fe040793          	addi	a5,s0,-32
    800026d8:	009787b3          	add	a5,a5,s1
    800026dc:	ff07c503          	lbu	a0,-16(a5)
    800026e0:	00002097          	auipc	ra,0x2
    800026e4:	0fc080e7          	jalr	252(ra) # 800047dc <__putc>
    800026e8:	fe5ff06f          	j	800026cc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800026ec:	0009091b          	sext.w	s2,s2
    800026f0:	00297913          	andi	s2,s2,2
    800026f4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800026f8:	10092073          	csrs	sstatus,s2

    800026fc:	03813083          	ld	ra,56(sp)
    80002700:	03013403          	ld	s0,48(sp)
    80002704:	02813483          	ld	s1,40(sp)
    80002708:	02013903          	ld	s2,32(sp)
    8000270c:	04010113          	addi	sp,sp,64
    80002710:	00008067          	ret

0000000080002714 <start>:
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00813423          	sd	s0,8(sp)
    8000271c:	01010413          	addi	s0,sp,16
    80002720:	300027f3          	csrr	a5,mstatus
    80002724:	ffffe737          	lui	a4,0xffffe
    80002728:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff783f>
    8000272c:	00e7f7b3          	and	a5,a5,a4
    80002730:	00001737          	lui	a4,0x1
    80002734:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002738:	00e7e7b3          	or	a5,a5,a4
    8000273c:	30079073          	csrw	mstatus,a5
    80002740:	00000797          	auipc	a5,0x0
    80002744:	16078793          	addi	a5,a5,352 # 800028a0 <system_main>
    80002748:	34179073          	csrw	mepc,a5
    8000274c:	00000793          	li	a5,0
    80002750:	18079073          	csrw	satp,a5
    80002754:	000107b7          	lui	a5,0x10
    80002758:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000275c:	30279073          	csrw	medeleg,a5
    80002760:	30379073          	csrw	mideleg,a5
    80002764:	104027f3          	csrr	a5,sie
    80002768:	2227e793          	ori	a5,a5,546
    8000276c:	10479073          	csrw	sie,a5
    80002770:	fff00793          	li	a5,-1
    80002774:	00a7d793          	srli	a5,a5,0xa
    80002778:	3b079073          	csrw	pmpaddr0,a5
    8000277c:	00f00793          	li	a5,15
    80002780:	3a079073          	csrw	pmpcfg0,a5
    80002784:	f14027f3          	csrr	a5,mhartid
    80002788:	0200c737          	lui	a4,0x200c
    8000278c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002790:	0007869b          	sext.w	a3,a5
    80002794:	00269713          	slli	a4,a3,0x2
    80002798:	000f4637          	lui	a2,0xf4
    8000279c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800027a0:	00d70733          	add	a4,a4,a3
    800027a4:	0037979b          	slliw	a5,a5,0x3
    800027a8:	020046b7          	lui	a3,0x2004
    800027ac:	00d787b3          	add	a5,a5,a3
    800027b0:	00c585b3          	add	a1,a1,a2
    800027b4:	00371693          	slli	a3,a4,0x3
    800027b8:	00003717          	auipc	a4,0x3
    800027bc:	5a870713          	addi	a4,a4,1448 # 80005d60 <timer_scratch>
    800027c0:	00b7b023          	sd	a1,0(a5)
    800027c4:	00d70733          	add	a4,a4,a3
    800027c8:	00f73c23          	sd	a5,24(a4)
    800027cc:	02c73023          	sd	a2,32(a4)
    800027d0:	34071073          	csrw	mscratch,a4
    800027d4:	00000797          	auipc	a5,0x0
    800027d8:	6ec78793          	addi	a5,a5,1772 # 80002ec0 <timervec>
    800027dc:	30579073          	csrw	mtvec,a5
    800027e0:	300027f3          	csrr	a5,mstatus
    800027e4:	0087e793          	ori	a5,a5,8
    800027e8:	30079073          	csrw	mstatus,a5
    800027ec:	304027f3          	csrr	a5,mie
    800027f0:	0807e793          	ori	a5,a5,128
    800027f4:	30479073          	csrw	mie,a5
    800027f8:	f14027f3          	csrr	a5,mhartid
    800027fc:	0007879b          	sext.w	a5,a5
    80002800:	00078213          	mv	tp,a5
    80002804:	30200073          	mret
    80002808:	00813403          	ld	s0,8(sp)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <timerinit>:
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00813423          	sd	s0,8(sp)
    8000281c:	01010413          	addi	s0,sp,16
    80002820:	f14027f3          	csrr	a5,mhartid
    80002824:	0200c737          	lui	a4,0x200c
    80002828:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000282c:	0007869b          	sext.w	a3,a5
    80002830:	00269713          	slli	a4,a3,0x2
    80002834:	000f4637          	lui	a2,0xf4
    80002838:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000283c:	00d70733          	add	a4,a4,a3
    80002840:	0037979b          	slliw	a5,a5,0x3
    80002844:	020046b7          	lui	a3,0x2004
    80002848:	00d787b3          	add	a5,a5,a3
    8000284c:	00c585b3          	add	a1,a1,a2
    80002850:	00371693          	slli	a3,a4,0x3
    80002854:	00003717          	auipc	a4,0x3
    80002858:	50c70713          	addi	a4,a4,1292 # 80005d60 <timer_scratch>
    8000285c:	00b7b023          	sd	a1,0(a5)
    80002860:	00d70733          	add	a4,a4,a3
    80002864:	00f73c23          	sd	a5,24(a4)
    80002868:	02c73023          	sd	a2,32(a4)
    8000286c:	34071073          	csrw	mscratch,a4
    80002870:	00000797          	auipc	a5,0x0
    80002874:	65078793          	addi	a5,a5,1616 # 80002ec0 <timervec>
    80002878:	30579073          	csrw	mtvec,a5
    8000287c:	300027f3          	csrr	a5,mstatus
    80002880:	0087e793          	ori	a5,a5,8
    80002884:	30079073          	csrw	mstatus,a5
    80002888:	304027f3          	csrr	a5,mie
    8000288c:	0807e793          	ori	a5,a5,128
    80002890:	30479073          	csrw	mie,a5
    80002894:	00813403          	ld	s0,8(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <system_main>:
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00813823          	sd	s0,16(sp)
    800028a8:	00913423          	sd	s1,8(sp)
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	02010413          	addi	s0,sp,32
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	0c4080e7          	jalr	196(ra) # 80002978 <cpuid>
    800028bc:	00003497          	auipc	s1,0x3
    800028c0:	44448493          	addi	s1,s1,1092 # 80005d00 <started>
    800028c4:	02050263          	beqz	a0,800028e8 <system_main+0x48>
    800028c8:	0004a783          	lw	a5,0(s1)
    800028cc:	0007879b          	sext.w	a5,a5
    800028d0:	fe078ce3          	beqz	a5,800028c8 <system_main+0x28>
    800028d4:	0ff0000f          	fence
    800028d8:	00003517          	auipc	a0,0x3
    800028dc:	8b050513          	addi	a0,a0,-1872 # 80005188 <_ZZ12printIntegermE6digits+0x40>
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	a7c080e7          	jalr	-1412(ra) # 8000335c <panic>
    800028e8:	00001097          	auipc	ra,0x1
    800028ec:	9d0080e7          	jalr	-1584(ra) # 800032b8 <consoleinit>
    800028f0:	00001097          	auipc	ra,0x1
    800028f4:	15c080e7          	jalr	348(ra) # 80003a4c <printfinit>
    800028f8:	00002517          	auipc	a0,0x2
    800028fc:	7f850513          	addi	a0,a0,2040 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002900:	00001097          	auipc	ra,0x1
    80002904:	ab8080e7          	jalr	-1352(ra) # 800033b8 <__printf>
    80002908:	00003517          	auipc	a0,0x3
    8000290c:	85050513          	addi	a0,a0,-1968 # 80005158 <_ZZ12printIntegermE6digits+0x10>
    80002910:	00001097          	auipc	ra,0x1
    80002914:	aa8080e7          	jalr	-1368(ra) # 800033b8 <__printf>
    80002918:	00002517          	auipc	a0,0x2
    8000291c:	7d850513          	addi	a0,a0,2008 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002920:	00001097          	auipc	ra,0x1
    80002924:	a98080e7          	jalr	-1384(ra) # 800033b8 <__printf>
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	4b0080e7          	jalr	1200(ra) # 80003dd8 <kinit>
    80002930:	00000097          	auipc	ra,0x0
    80002934:	148080e7          	jalr	328(ra) # 80002a78 <trapinit>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	16c080e7          	jalr	364(ra) # 80002aa4 <trapinithart>
    80002940:	00000097          	auipc	ra,0x0
    80002944:	5c0080e7          	jalr	1472(ra) # 80002f00 <plicinit>
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	5e0080e7          	jalr	1504(ra) # 80002f28 <plicinithart>
    80002950:	00000097          	auipc	ra,0x0
    80002954:	078080e7          	jalr	120(ra) # 800029c8 <userinit>
    80002958:	0ff0000f          	fence
    8000295c:	00100793          	li	a5,1
    80002960:	00003517          	auipc	a0,0x3
    80002964:	81050513          	addi	a0,a0,-2032 # 80005170 <_ZZ12printIntegermE6digits+0x28>
    80002968:	00f4a023          	sw	a5,0(s1)
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	a4c080e7          	jalr	-1460(ra) # 800033b8 <__printf>
    80002974:	0000006f          	j	80002974 <system_main+0xd4>

0000000080002978 <cpuid>:
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    80002984:	00020513          	mv	a0,tp
    80002988:	00813403          	ld	s0,8(sp)
    8000298c:	0005051b          	sext.w	a0,a0
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <mycpu>:
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00813423          	sd	s0,8(sp)
    800029a0:	01010413          	addi	s0,sp,16
    800029a4:	00020793          	mv	a5,tp
    800029a8:	00813403          	ld	s0,8(sp)
    800029ac:	0007879b          	sext.w	a5,a5
    800029b0:	00779793          	slli	a5,a5,0x7
    800029b4:	00004517          	auipc	a0,0x4
    800029b8:	3dc50513          	addi	a0,a0,988 # 80006d90 <cpus>
    800029bc:	00f50533          	add	a0,a0,a5
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <userinit>:
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00813423          	sd	s0,8(sp)
    800029d0:	01010413          	addi	s0,sp,16
    800029d4:	00813403          	ld	s0,8(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	fffff317          	auipc	t1,0xfffff
    800029e0:	0ac30067          	jr	172(t1) # 80001a88 <main>

00000000800029e4 <either_copyout>:
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00813023          	sd	s0,0(sp)
    800029ec:	00113423          	sd	ra,8(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	02051663          	bnez	a0,80002a20 <either_copyout+0x3c>
    800029f8:	00058513          	mv	a0,a1
    800029fc:	00060593          	mv	a1,a2
    80002a00:	0006861b          	sext.w	a2,a3
    80002a04:	00002097          	auipc	ra,0x2
    80002a08:	c60080e7          	jalr	-928(ra) # 80004664 <__memmove>
    80002a0c:	00813083          	ld	ra,8(sp)
    80002a10:	00013403          	ld	s0,0(sp)
    80002a14:	00000513          	li	a0,0
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret
    80002a20:	00002517          	auipc	a0,0x2
    80002a24:	79050513          	addi	a0,a0,1936 # 800051b0 <_ZZ12printIntegermE6digits+0x68>
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	934080e7          	jalr	-1740(ra) # 8000335c <panic>

0000000080002a30 <either_copyin>:
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00813023          	sd	s0,0(sp)
    80002a38:	00113423          	sd	ra,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	02059463          	bnez	a1,80002a68 <either_copyin+0x38>
    80002a44:	00060593          	mv	a1,a2
    80002a48:	0006861b          	sext.w	a2,a3
    80002a4c:	00002097          	auipc	ra,0x2
    80002a50:	c18080e7          	jalr	-1000(ra) # 80004664 <__memmove>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	00000513          	li	a0,0
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret
    80002a68:	00002517          	auipc	a0,0x2
    80002a6c:	77050513          	addi	a0,a0,1904 # 800051d8 <_ZZ12printIntegermE6digits+0x90>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	8ec080e7          	jalr	-1812(ra) # 8000335c <panic>

0000000080002a78 <trapinit>:
    80002a78:	ff010113          	addi	sp,sp,-16
    80002a7c:	00813423          	sd	s0,8(sp)
    80002a80:	01010413          	addi	s0,sp,16
    80002a84:	00813403          	ld	s0,8(sp)
    80002a88:	00002597          	auipc	a1,0x2
    80002a8c:	77858593          	addi	a1,a1,1912 # 80005200 <_ZZ12printIntegermE6digits+0xb8>
    80002a90:	00004517          	auipc	a0,0x4
    80002a94:	38050513          	addi	a0,a0,896 # 80006e10 <tickslock>
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00001317          	auipc	t1,0x1
    80002aa0:	5cc30067          	jr	1484(t1) # 80004068 <initlock>

0000000080002aa4 <trapinithart>:
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00000797          	auipc	a5,0x0
    80002ab4:	30078793          	addi	a5,a5,768 # 80002db0 <kernelvec>
    80002ab8:	10579073          	csrw	stvec,a5
    80002abc:	00813403          	ld	s0,8(sp)
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00008067          	ret

0000000080002ac8 <usertrap>:
    80002ac8:	ff010113          	addi	sp,sp,-16
    80002acc:	00813423          	sd	s0,8(sp)
    80002ad0:	01010413          	addi	s0,sp,16
    80002ad4:	00813403          	ld	s0,8(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret

0000000080002ae0 <usertrapret>:
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00813423          	sd	s0,8(sp)
    80002ae8:	01010413          	addi	s0,sp,16
    80002aec:	00813403          	ld	s0,8(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <kerneltrap>:
    80002af8:	fe010113          	addi	sp,sp,-32
    80002afc:	00813823          	sd	s0,16(sp)
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00913423          	sd	s1,8(sp)
    80002b08:	02010413          	addi	s0,sp,32
    80002b0c:	142025f3          	csrr	a1,scause
    80002b10:	100027f3          	csrr	a5,sstatus
    80002b14:	0027f793          	andi	a5,a5,2
    80002b18:	10079c63          	bnez	a5,80002c30 <kerneltrap+0x138>
    80002b1c:	142027f3          	csrr	a5,scause
    80002b20:	0207ce63          	bltz	a5,80002b5c <kerneltrap+0x64>
    80002b24:	00002517          	auipc	a0,0x2
    80002b28:	72450513          	addi	a0,a0,1828 # 80005248 <_ZZ12printIntegermE6digits+0x100>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	88c080e7          	jalr	-1908(ra) # 800033b8 <__printf>
    80002b34:	141025f3          	csrr	a1,sepc
    80002b38:	14302673          	csrr	a2,stval
    80002b3c:	00002517          	auipc	a0,0x2
    80002b40:	71c50513          	addi	a0,a0,1820 # 80005258 <_ZZ12printIntegermE6digits+0x110>
    80002b44:	00001097          	auipc	ra,0x1
    80002b48:	874080e7          	jalr	-1932(ra) # 800033b8 <__printf>
    80002b4c:	00002517          	auipc	a0,0x2
    80002b50:	72450513          	addi	a0,a0,1828 # 80005270 <_ZZ12printIntegermE6digits+0x128>
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	808080e7          	jalr	-2040(ra) # 8000335c <panic>
    80002b5c:	0ff7f713          	andi	a4,a5,255
    80002b60:	00900693          	li	a3,9
    80002b64:	04d70063          	beq	a4,a3,80002ba4 <kerneltrap+0xac>
    80002b68:	fff00713          	li	a4,-1
    80002b6c:	03f71713          	slli	a4,a4,0x3f
    80002b70:	00170713          	addi	a4,a4,1
    80002b74:	fae798e3          	bne	a5,a4,80002b24 <kerneltrap+0x2c>
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	e00080e7          	jalr	-512(ra) # 80002978 <cpuid>
    80002b80:	06050663          	beqz	a0,80002bec <kerneltrap+0xf4>
    80002b84:	144027f3          	csrr	a5,sip
    80002b88:	ffd7f793          	andi	a5,a5,-3
    80002b8c:	14479073          	csrw	sip,a5
    80002b90:	01813083          	ld	ra,24(sp)
    80002b94:	01013403          	ld	s0,16(sp)
    80002b98:	00813483          	ld	s1,8(sp)
    80002b9c:	02010113          	addi	sp,sp,32
    80002ba0:	00008067          	ret
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	3d0080e7          	jalr	976(ra) # 80002f74 <plic_claim>
    80002bac:	00a00793          	li	a5,10
    80002bb0:	00050493          	mv	s1,a0
    80002bb4:	06f50863          	beq	a0,a5,80002c24 <kerneltrap+0x12c>
    80002bb8:	fc050ce3          	beqz	a0,80002b90 <kerneltrap+0x98>
    80002bbc:	00050593          	mv	a1,a0
    80002bc0:	00002517          	auipc	a0,0x2
    80002bc4:	66850513          	addi	a0,a0,1640 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	7f0080e7          	jalr	2032(ra) # 800033b8 <__printf>
    80002bd0:	01013403          	ld	s0,16(sp)
    80002bd4:	01813083          	ld	ra,24(sp)
    80002bd8:	00048513          	mv	a0,s1
    80002bdc:	00813483          	ld	s1,8(sp)
    80002be0:	02010113          	addi	sp,sp,32
    80002be4:	00000317          	auipc	t1,0x0
    80002be8:	3c830067          	jr	968(t1) # 80002fac <plic_complete>
    80002bec:	00004517          	auipc	a0,0x4
    80002bf0:	22450513          	addi	a0,a0,548 # 80006e10 <tickslock>
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	498080e7          	jalr	1176(ra) # 8000408c <acquire>
    80002bfc:	00003717          	auipc	a4,0x3
    80002c00:	10870713          	addi	a4,a4,264 # 80005d04 <ticks>
    80002c04:	00072783          	lw	a5,0(a4)
    80002c08:	00004517          	auipc	a0,0x4
    80002c0c:	20850513          	addi	a0,a0,520 # 80006e10 <tickslock>
    80002c10:	0017879b          	addiw	a5,a5,1
    80002c14:	00f72023          	sw	a5,0(a4)
    80002c18:	00001097          	auipc	ra,0x1
    80002c1c:	540080e7          	jalr	1344(ra) # 80004158 <release>
    80002c20:	f65ff06f          	j	80002b84 <kerneltrap+0x8c>
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	09c080e7          	jalr	156(ra) # 80003cc0 <uartintr>
    80002c2c:	fa5ff06f          	j	80002bd0 <kerneltrap+0xd8>
    80002c30:	00002517          	auipc	a0,0x2
    80002c34:	5d850513          	addi	a0,a0,1496 # 80005208 <_ZZ12printIntegermE6digits+0xc0>
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	724080e7          	jalr	1828(ra) # 8000335c <panic>

0000000080002c40 <clockintr>:
    80002c40:	fe010113          	addi	sp,sp,-32
    80002c44:	00813823          	sd	s0,16(sp)
    80002c48:	00913423          	sd	s1,8(sp)
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	02010413          	addi	s0,sp,32
    80002c54:	00004497          	auipc	s1,0x4
    80002c58:	1bc48493          	addi	s1,s1,444 # 80006e10 <tickslock>
    80002c5c:	00048513          	mv	a0,s1
    80002c60:	00001097          	auipc	ra,0x1
    80002c64:	42c080e7          	jalr	1068(ra) # 8000408c <acquire>
    80002c68:	00003717          	auipc	a4,0x3
    80002c6c:	09c70713          	addi	a4,a4,156 # 80005d04 <ticks>
    80002c70:	00072783          	lw	a5,0(a4)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	01813083          	ld	ra,24(sp)
    80002c7c:	00048513          	mv	a0,s1
    80002c80:	0017879b          	addiw	a5,a5,1
    80002c84:	00813483          	ld	s1,8(sp)
    80002c88:	00f72023          	sw	a5,0(a4)
    80002c8c:	02010113          	addi	sp,sp,32
    80002c90:	00001317          	auipc	t1,0x1
    80002c94:	4c830067          	jr	1224(t1) # 80004158 <release>

0000000080002c98 <devintr>:
    80002c98:	142027f3          	csrr	a5,scause
    80002c9c:	00000513          	li	a0,0
    80002ca0:	0007c463          	bltz	a5,80002ca8 <devintr+0x10>
    80002ca4:	00008067          	ret
    80002ca8:	fe010113          	addi	sp,sp,-32
    80002cac:	00813823          	sd	s0,16(sp)
    80002cb0:	00113c23          	sd	ra,24(sp)
    80002cb4:	00913423          	sd	s1,8(sp)
    80002cb8:	02010413          	addi	s0,sp,32
    80002cbc:	0ff7f713          	andi	a4,a5,255
    80002cc0:	00900693          	li	a3,9
    80002cc4:	04d70c63          	beq	a4,a3,80002d1c <devintr+0x84>
    80002cc8:	fff00713          	li	a4,-1
    80002ccc:	03f71713          	slli	a4,a4,0x3f
    80002cd0:	00170713          	addi	a4,a4,1
    80002cd4:	00e78c63          	beq	a5,a4,80002cec <devintr+0x54>
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	02010113          	addi	sp,sp,32
    80002ce8:	00008067          	ret
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	c8c080e7          	jalr	-884(ra) # 80002978 <cpuid>
    80002cf4:	06050663          	beqz	a0,80002d60 <devintr+0xc8>
    80002cf8:	144027f3          	csrr	a5,sip
    80002cfc:	ffd7f793          	andi	a5,a5,-3
    80002d00:	14479073          	csrw	sip,a5
    80002d04:	01813083          	ld	ra,24(sp)
    80002d08:	01013403          	ld	s0,16(sp)
    80002d0c:	00813483          	ld	s1,8(sp)
    80002d10:	00200513          	li	a0,2
    80002d14:	02010113          	addi	sp,sp,32
    80002d18:	00008067          	ret
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	258080e7          	jalr	600(ra) # 80002f74 <plic_claim>
    80002d24:	00a00793          	li	a5,10
    80002d28:	00050493          	mv	s1,a0
    80002d2c:	06f50663          	beq	a0,a5,80002d98 <devintr+0x100>
    80002d30:	00100513          	li	a0,1
    80002d34:	fa0482e3          	beqz	s1,80002cd8 <devintr+0x40>
    80002d38:	00048593          	mv	a1,s1
    80002d3c:	00002517          	auipc	a0,0x2
    80002d40:	4ec50513          	addi	a0,a0,1260 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	674080e7          	jalr	1652(ra) # 800033b8 <__printf>
    80002d4c:	00048513          	mv	a0,s1
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	25c080e7          	jalr	604(ra) # 80002fac <plic_complete>
    80002d58:	00100513          	li	a0,1
    80002d5c:	f7dff06f          	j	80002cd8 <devintr+0x40>
    80002d60:	00004517          	auipc	a0,0x4
    80002d64:	0b050513          	addi	a0,a0,176 # 80006e10 <tickslock>
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	324080e7          	jalr	804(ra) # 8000408c <acquire>
    80002d70:	00003717          	auipc	a4,0x3
    80002d74:	f9470713          	addi	a4,a4,-108 # 80005d04 <ticks>
    80002d78:	00072783          	lw	a5,0(a4)
    80002d7c:	00004517          	auipc	a0,0x4
    80002d80:	09450513          	addi	a0,a0,148 # 80006e10 <tickslock>
    80002d84:	0017879b          	addiw	a5,a5,1
    80002d88:	00f72023          	sw	a5,0(a4)
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	3cc080e7          	jalr	972(ra) # 80004158 <release>
    80002d94:	f65ff06f          	j	80002cf8 <devintr+0x60>
    80002d98:	00001097          	auipc	ra,0x1
    80002d9c:	f28080e7          	jalr	-216(ra) # 80003cc0 <uartintr>
    80002da0:	fadff06f          	j	80002d4c <devintr+0xb4>
	...

0000000080002db0 <kernelvec>:
    80002db0:	f0010113          	addi	sp,sp,-256
    80002db4:	00113023          	sd	ra,0(sp)
    80002db8:	00213423          	sd	sp,8(sp)
    80002dbc:	00313823          	sd	gp,16(sp)
    80002dc0:	00413c23          	sd	tp,24(sp)
    80002dc4:	02513023          	sd	t0,32(sp)
    80002dc8:	02613423          	sd	t1,40(sp)
    80002dcc:	02713823          	sd	t2,48(sp)
    80002dd0:	02813c23          	sd	s0,56(sp)
    80002dd4:	04913023          	sd	s1,64(sp)
    80002dd8:	04a13423          	sd	a0,72(sp)
    80002ddc:	04b13823          	sd	a1,80(sp)
    80002de0:	04c13c23          	sd	a2,88(sp)
    80002de4:	06d13023          	sd	a3,96(sp)
    80002de8:	06e13423          	sd	a4,104(sp)
    80002dec:	06f13823          	sd	a5,112(sp)
    80002df0:	07013c23          	sd	a6,120(sp)
    80002df4:	09113023          	sd	a7,128(sp)
    80002df8:	09213423          	sd	s2,136(sp)
    80002dfc:	09313823          	sd	s3,144(sp)
    80002e00:	09413c23          	sd	s4,152(sp)
    80002e04:	0b513023          	sd	s5,160(sp)
    80002e08:	0b613423          	sd	s6,168(sp)
    80002e0c:	0b713823          	sd	s7,176(sp)
    80002e10:	0b813c23          	sd	s8,184(sp)
    80002e14:	0d913023          	sd	s9,192(sp)
    80002e18:	0da13423          	sd	s10,200(sp)
    80002e1c:	0db13823          	sd	s11,208(sp)
    80002e20:	0dc13c23          	sd	t3,216(sp)
    80002e24:	0fd13023          	sd	t4,224(sp)
    80002e28:	0fe13423          	sd	t5,232(sp)
    80002e2c:	0ff13823          	sd	t6,240(sp)
    80002e30:	cc9ff0ef          	jal	ra,80002af8 <kerneltrap>
    80002e34:	00013083          	ld	ra,0(sp)
    80002e38:	00813103          	ld	sp,8(sp)
    80002e3c:	01013183          	ld	gp,16(sp)
    80002e40:	02013283          	ld	t0,32(sp)
    80002e44:	02813303          	ld	t1,40(sp)
    80002e48:	03013383          	ld	t2,48(sp)
    80002e4c:	03813403          	ld	s0,56(sp)
    80002e50:	04013483          	ld	s1,64(sp)
    80002e54:	04813503          	ld	a0,72(sp)
    80002e58:	05013583          	ld	a1,80(sp)
    80002e5c:	05813603          	ld	a2,88(sp)
    80002e60:	06013683          	ld	a3,96(sp)
    80002e64:	06813703          	ld	a4,104(sp)
    80002e68:	07013783          	ld	a5,112(sp)
    80002e6c:	07813803          	ld	a6,120(sp)
    80002e70:	08013883          	ld	a7,128(sp)
    80002e74:	08813903          	ld	s2,136(sp)
    80002e78:	09013983          	ld	s3,144(sp)
    80002e7c:	09813a03          	ld	s4,152(sp)
    80002e80:	0a013a83          	ld	s5,160(sp)
    80002e84:	0a813b03          	ld	s6,168(sp)
    80002e88:	0b013b83          	ld	s7,176(sp)
    80002e8c:	0b813c03          	ld	s8,184(sp)
    80002e90:	0c013c83          	ld	s9,192(sp)
    80002e94:	0c813d03          	ld	s10,200(sp)
    80002e98:	0d013d83          	ld	s11,208(sp)
    80002e9c:	0d813e03          	ld	t3,216(sp)
    80002ea0:	0e013e83          	ld	t4,224(sp)
    80002ea4:	0e813f03          	ld	t5,232(sp)
    80002ea8:	0f013f83          	ld	t6,240(sp)
    80002eac:	10010113          	addi	sp,sp,256
    80002eb0:	10200073          	sret
    80002eb4:	00000013          	nop
    80002eb8:	00000013          	nop
    80002ebc:	00000013          	nop

0000000080002ec0 <timervec>:
    80002ec0:	34051573          	csrrw	a0,mscratch,a0
    80002ec4:	00b53023          	sd	a1,0(a0)
    80002ec8:	00c53423          	sd	a2,8(a0)
    80002ecc:	00d53823          	sd	a3,16(a0)
    80002ed0:	01853583          	ld	a1,24(a0)
    80002ed4:	02053603          	ld	a2,32(a0)
    80002ed8:	0005b683          	ld	a3,0(a1)
    80002edc:	00c686b3          	add	a3,a3,a2
    80002ee0:	00d5b023          	sd	a3,0(a1)
    80002ee4:	00200593          	li	a1,2
    80002ee8:	14459073          	csrw	sip,a1
    80002eec:	01053683          	ld	a3,16(a0)
    80002ef0:	00853603          	ld	a2,8(a0)
    80002ef4:	00053583          	ld	a1,0(a0)
    80002ef8:	34051573          	csrrw	a0,mscratch,a0
    80002efc:	30200073          	mret

0000000080002f00 <plicinit>:
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00813423          	sd	s0,8(sp)
    80002f08:	01010413          	addi	s0,sp,16
    80002f0c:	00813403          	ld	s0,8(sp)
    80002f10:	0c0007b7          	lui	a5,0xc000
    80002f14:	00100713          	li	a4,1
    80002f18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002f1c:	00e7a223          	sw	a4,4(a5)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <plicinithart>:
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00813023          	sd	s0,0(sp)
    80002f30:	00113423          	sd	ra,8(sp)
    80002f34:	01010413          	addi	s0,sp,16
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	a40080e7          	jalr	-1472(ra) # 80002978 <cpuid>
    80002f40:	0085171b          	slliw	a4,a0,0x8
    80002f44:	0c0027b7          	lui	a5,0xc002
    80002f48:	00e787b3          	add	a5,a5,a4
    80002f4c:	40200713          	li	a4,1026
    80002f50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002f54:	00813083          	ld	ra,8(sp)
    80002f58:	00013403          	ld	s0,0(sp)
    80002f5c:	00d5151b          	slliw	a0,a0,0xd
    80002f60:	0c2017b7          	lui	a5,0xc201
    80002f64:	00a78533          	add	a0,a5,a0
    80002f68:	00052023          	sw	zero,0(a0)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <plic_claim>:
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00813023          	sd	s0,0(sp)
    80002f7c:	00113423          	sd	ra,8(sp)
    80002f80:	01010413          	addi	s0,sp,16
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	9f4080e7          	jalr	-1548(ra) # 80002978 <cpuid>
    80002f8c:	00813083          	ld	ra,8(sp)
    80002f90:	00013403          	ld	s0,0(sp)
    80002f94:	00d5151b          	slliw	a0,a0,0xd
    80002f98:	0c2017b7          	lui	a5,0xc201
    80002f9c:	00a78533          	add	a0,a5,a0
    80002fa0:	00452503          	lw	a0,4(a0)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret

0000000080002fac <plic_complete>:
    80002fac:	fe010113          	addi	sp,sp,-32
    80002fb0:	00813823          	sd	s0,16(sp)
    80002fb4:	00913423          	sd	s1,8(sp)
    80002fb8:	00113c23          	sd	ra,24(sp)
    80002fbc:	02010413          	addi	s0,sp,32
    80002fc0:	00050493          	mv	s1,a0
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	9b4080e7          	jalr	-1612(ra) # 80002978 <cpuid>
    80002fcc:	01813083          	ld	ra,24(sp)
    80002fd0:	01013403          	ld	s0,16(sp)
    80002fd4:	00d5179b          	slliw	a5,a0,0xd
    80002fd8:	0c201737          	lui	a4,0xc201
    80002fdc:	00f707b3          	add	a5,a4,a5
    80002fe0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002fe4:	00813483          	ld	s1,8(sp)
    80002fe8:	02010113          	addi	sp,sp,32
    80002fec:	00008067          	ret

0000000080002ff0 <consolewrite>:
    80002ff0:	fb010113          	addi	sp,sp,-80
    80002ff4:	04813023          	sd	s0,64(sp)
    80002ff8:	04113423          	sd	ra,72(sp)
    80002ffc:	02913c23          	sd	s1,56(sp)
    80003000:	03213823          	sd	s2,48(sp)
    80003004:	03313423          	sd	s3,40(sp)
    80003008:	03413023          	sd	s4,32(sp)
    8000300c:	01513c23          	sd	s5,24(sp)
    80003010:	05010413          	addi	s0,sp,80
    80003014:	06c05c63          	blez	a2,8000308c <consolewrite+0x9c>
    80003018:	00060993          	mv	s3,a2
    8000301c:	00050a13          	mv	s4,a0
    80003020:	00058493          	mv	s1,a1
    80003024:	00000913          	li	s2,0
    80003028:	fff00a93          	li	s5,-1
    8000302c:	01c0006f          	j	80003048 <consolewrite+0x58>
    80003030:	fbf44503          	lbu	a0,-65(s0)
    80003034:	0019091b          	addiw	s2,s2,1
    80003038:	00148493          	addi	s1,s1,1
    8000303c:	00001097          	auipc	ra,0x1
    80003040:	a9c080e7          	jalr	-1380(ra) # 80003ad8 <uartputc>
    80003044:	03298063          	beq	s3,s2,80003064 <consolewrite+0x74>
    80003048:	00048613          	mv	a2,s1
    8000304c:	00100693          	li	a3,1
    80003050:	000a0593          	mv	a1,s4
    80003054:	fbf40513          	addi	a0,s0,-65
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	9d8080e7          	jalr	-1576(ra) # 80002a30 <either_copyin>
    80003060:	fd5518e3          	bne	a0,s5,80003030 <consolewrite+0x40>
    80003064:	04813083          	ld	ra,72(sp)
    80003068:	04013403          	ld	s0,64(sp)
    8000306c:	03813483          	ld	s1,56(sp)
    80003070:	02813983          	ld	s3,40(sp)
    80003074:	02013a03          	ld	s4,32(sp)
    80003078:	01813a83          	ld	s5,24(sp)
    8000307c:	00090513          	mv	a0,s2
    80003080:	03013903          	ld	s2,48(sp)
    80003084:	05010113          	addi	sp,sp,80
    80003088:	00008067          	ret
    8000308c:	00000913          	li	s2,0
    80003090:	fd5ff06f          	j	80003064 <consolewrite+0x74>

0000000080003094 <consoleread>:
    80003094:	f9010113          	addi	sp,sp,-112
    80003098:	06813023          	sd	s0,96(sp)
    8000309c:	04913c23          	sd	s1,88(sp)
    800030a0:	05213823          	sd	s2,80(sp)
    800030a4:	05313423          	sd	s3,72(sp)
    800030a8:	05413023          	sd	s4,64(sp)
    800030ac:	03513c23          	sd	s5,56(sp)
    800030b0:	03613823          	sd	s6,48(sp)
    800030b4:	03713423          	sd	s7,40(sp)
    800030b8:	03813023          	sd	s8,32(sp)
    800030bc:	06113423          	sd	ra,104(sp)
    800030c0:	01913c23          	sd	s9,24(sp)
    800030c4:	07010413          	addi	s0,sp,112
    800030c8:	00060b93          	mv	s7,a2
    800030cc:	00050913          	mv	s2,a0
    800030d0:	00058c13          	mv	s8,a1
    800030d4:	00060b1b          	sext.w	s6,a2
    800030d8:	00004497          	auipc	s1,0x4
    800030dc:	d6048493          	addi	s1,s1,-672 # 80006e38 <cons>
    800030e0:	00400993          	li	s3,4
    800030e4:	fff00a13          	li	s4,-1
    800030e8:	00a00a93          	li	s5,10
    800030ec:	05705e63          	blez	s7,80003148 <consoleread+0xb4>
    800030f0:	09c4a703          	lw	a4,156(s1)
    800030f4:	0984a783          	lw	a5,152(s1)
    800030f8:	0007071b          	sext.w	a4,a4
    800030fc:	08e78463          	beq	a5,a4,80003184 <consoleread+0xf0>
    80003100:	07f7f713          	andi	a4,a5,127
    80003104:	00e48733          	add	a4,s1,a4
    80003108:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000310c:	0017869b          	addiw	a3,a5,1
    80003110:	08d4ac23          	sw	a3,152(s1)
    80003114:	00070c9b          	sext.w	s9,a4
    80003118:	0b370663          	beq	a4,s3,800031c4 <consoleread+0x130>
    8000311c:	00100693          	li	a3,1
    80003120:	f9f40613          	addi	a2,s0,-97
    80003124:	000c0593          	mv	a1,s8
    80003128:	00090513          	mv	a0,s2
    8000312c:	f8e40fa3          	sb	a4,-97(s0)
    80003130:	00000097          	auipc	ra,0x0
    80003134:	8b4080e7          	jalr	-1868(ra) # 800029e4 <either_copyout>
    80003138:	01450863          	beq	a0,s4,80003148 <consoleread+0xb4>
    8000313c:	001c0c13          	addi	s8,s8,1
    80003140:	fffb8b9b          	addiw	s7,s7,-1
    80003144:	fb5c94e3          	bne	s9,s5,800030ec <consoleread+0x58>
    80003148:	000b851b          	sext.w	a0,s7
    8000314c:	06813083          	ld	ra,104(sp)
    80003150:	06013403          	ld	s0,96(sp)
    80003154:	05813483          	ld	s1,88(sp)
    80003158:	05013903          	ld	s2,80(sp)
    8000315c:	04813983          	ld	s3,72(sp)
    80003160:	04013a03          	ld	s4,64(sp)
    80003164:	03813a83          	ld	s5,56(sp)
    80003168:	02813b83          	ld	s7,40(sp)
    8000316c:	02013c03          	ld	s8,32(sp)
    80003170:	01813c83          	ld	s9,24(sp)
    80003174:	40ab053b          	subw	a0,s6,a0
    80003178:	03013b03          	ld	s6,48(sp)
    8000317c:	07010113          	addi	sp,sp,112
    80003180:	00008067          	ret
    80003184:	00001097          	auipc	ra,0x1
    80003188:	1d8080e7          	jalr	472(ra) # 8000435c <push_on>
    8000318c:	0984a703          	lw	a4,152(s1)
    80003190:	09c4a783          	lw	a5,156(s1)
    80003194:	0007879b          	sext.w	a5,a5
    80003198:	fef70ce3          	beq	a4,a5,80003190 <consoleread+0xfc>
    8000319c:	00001097          	auipc	ra,0x1
    800031a0:	234080e7          	jalr	564(ra) # 800043d0 <pop_on>
    800031a4:	0984a783          	lw	a5,152(s1)
    800031a8:	07f7f713          	andi	a4,a5,127
    800031ac:	00e48733          	add	a4,s1,a4
    800031b0:	01874703          	lbu	a4,24(a4)
    800031b4:	0017869b          	addiw	a3,a5,1
    800031b8:	08d4ac23          	sw	a3,152(s1)
    800031bc:	00070c9b          	sext.w	s9,a4
    800031c0:	f5371ee3          	bne	a4,s3,8000311c <consoleread+0x88>
    800031c4:	000b851b          	sext.w	a0,s7
    800031c8:	f96bf2e3          	bgeu	s7,s6,8000314c <consoleread+0xb8>
    800031cc:	08f4ac23          	sw	a5,152(s1)
    800031d0:	f7dff06f          	j	8000314c <consoleread+0xb8>

00000000800031d4 <consputc>:
    800031d4:	10000793          	li	a5,256
    800031d8:	00f50663          	beq	a0,a5,800031e4 <consputc+0x10>
    800031dc:	00001317          	auipc	t1,0x1
    800031e0:	9f430067          	jr	-1548(t1) # 80003bd0 <uartputc_sync>
    800031e4:	ff010113          	addi	sp,sp,-16
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	00813023          	sd	s0,0(sp)
    800031f0:	01010413          	addi	s0,sp,16
    800031f4:	00800513          	li	a0,8
    800031f8:	00001097          	auipc	ra,0x1
    800031fc:	9d8080e7          	jalr	-1576(ra) # 80003bd0 <uartputc_sync>
    80003200:	02000513          	li	a0,32
    80003204:	00001097          	auipc	ra,0x1
    80003208:	9cc080e7          	jalr	-1588(ra) # 80003bd0 <uartputc_sync>
    8000320c:	00013403          	ld	s0,0(sp)
    80003210:	00813083          	ld	ra,8(sp)
    80003214:	00800513          	li	a0,8
    80003218:	01010113          	addi	sp,sp,16
    8000321c:	00001317          	auipc	t1,0x1
    80003220:	9b430067          	jr	-1612(t1) # 80003bd0 <uartputc_sync>

0000000080003224 <consoleintr>:
    80003224:	fe010113          	addi	sp,sp,-32
    80003228:	00813823          	sd	s0,16(sp)
    8000322c:	00913423          	sd	s1,8(sp)
    80003230:	01213023          	sd	s2,0(sp)
    80003234:	00113c23          	sd	ra,24(sp)
    80003238:	02010413          	addi	s0,sp,32
    8000323c:	00004917          	auipc	s2,0x4
    80003240:	bfc90913          	addi	s2,s2,-1028 # 80006e38 <cons>
    80003244:	00050493          	mv	s1,a0
    80003248:	00090513          	mv	a0,s2
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	e40080e7          	jalr	-448(ra) # 8000408c <acquire>
    80003254:	02048c63          	beqz	s1,8000328c <consoleintr+0x68>
    80003258:	0a092783          	lw	a5,160(s2)
    8000325c:	09892703          	lw	a4,152(s2)
    80003260:	07f00693          	li	a3,127
    80003264:	40e7873b          	subw	a4,a5,a4
    80003268:	02e6e263          	bltu	a3,a4,8000328c <consoleintr+0x68>
    8000326c:	00d00713          	li	a4,13
    80003270:	04e48063          	beq	s1,a4,800032b0 <consoleintr+0x8c>
    80003274:	07f7f713          	andi	a4,a5,127
    80003278:	00e90733          	add	a4,s2,a4
    8000327c:	0017879b          	addiw	a5,a5,1
    80003280:	0af92023          	sw	a5,160(s2)
    80003284:	00970c23          	sb	s1,24(a4)
    80003288:	08f92e23          	sw	a5,156(s2)
    8000328c:	01013403          	ld	s0,16(sp)
    80003290:	01813083          	ld	ra,24(sp)
    80003294:	00813483          	ld	s1,8(sp)
    80003298:	00013903          	ld	s2,0(sp)
    8000329c:	00004517          	auipc	a0,0x4
    800032a0:	b9c50513          	addi	a0,a0,-1124 # 80006e38 <cons>
    800032a4:	02010113          	addi	sp,sp,32
    800032a8:	00001317          	auipc	t1,0x1
    800032ac:	eb030067          	jr	-336(t1) # 80004158 <release>
    800032b0:	00a00493          	li	s1,10
    800032b4:	fc1ff06f          	j	80003274 <consoleintr+0x50>

00000000800032b8 <consoleinit>:
    800032b8:	fe010113          	addi	sp,sp,-32
    800032bc:	00113c23          	sd	ra,24(sp)
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00913423          	sd	s1,8(sp)
    800032c8:	02010413          	addi	s0,sp,32
    800032cc:	00004497          	auipc	s1,0x4
    800032d0:	b6c48493          	addi	s1,s1,-1172 # 80006e38 <cons>
    800032d4:	00048513          	mv	a0,s1
    800032d8:	00002597          	auipc	a1,0x2
    800032dc:	fa858593          	addi	a1,a1,-88 # 80005280 <_ZZ12printIntegermE6digits+0x138>
    800032e0:	00001097          	auipc	ra,0x1
    800032e4:	d88080e7          	jalr	-632(ra) # 80004068 <initlock>
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	7ac080e7          	jalr	1964(ra) # 80003a94 <uartinit>
    800032f0:	01813083          	ld	ra,24(sp)
    800032f4:	01013403          	ld	s0,16(sp)
    800032f8:	00000797          	auipc	a5,0x0
    800032fc:	d9c78793          	addi	a5,a5,-612 # 80003094 <consoleread>
    80003300:	0af4bc23          	sd	a5,184(s1)
    80003304:	00000797          	auipc	a5,0x0
    80003308:	cec78793          	addi	a5,a5,-788 # 80002ff0 <consolewrite>
    8000330c:	0cf4b023          	sd	a5,192(s1)
    80003310:	00813483          	ld	s1,8(sp)
    80003314:	02010113          	addi	sp,sp,32
    80003318:	00008067          	ret

000000008000331c <console_read>:
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00813423          	sd	s0,8(sp)
    80003324:	01010413          	addi	s0,sp,16
    80003328:	00813403          	ld	s0,8(sp)
    8000332c:	00004317          	auipc	t1,0x4
    80003330:	bc433303          	ld	t1,-1084(t1) # 80006ef0 <devsw+0x10>
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00030067          	jr	t1

000000008000333c <console_write>:
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00813423          	sd	s0,8(sp)
    80003344:	01010413          	addi	s0,sp,16
    80003348:	00813403          	ld	s0,8(sp)
    8000334c:	00004317          	auipc	t1,0x4
    80003350:	bac33303          	ld	t1,-1108(t1) # 80006ef8 <devsw+0x18>
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00030067          	jr	t1

000000008000335c <panic>:
    8000335c:	fe010113          	addi	sp,sp,-32
    80003360:	00113c23          	sd	ra,24(sp)
    80003364:	00813823          	sd	s0,16(sp)
    80003368:	00913423          	sd	s1,8(sp)
    8000336c:	02010413          	addi	s0,sp,32
    80003370:	00050493          	mv	s1,a0
    80003374:	00002517          	auipc	a0,0x2
    80003378:	f1450513          	addi	a0,a0,-236 # 80005288 <_ZZ12printIntegermE6digits+0x140>
    8000337c:	00004797          	auipc	a5,0x4
    80003380:	c007ae23          	sw	zero,-996(a5) # 80006f98 <pr+0x18>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	034080e7          	jalr	52(ra) # 800033b8 <__printf>
    8000338c:	00048513          	mv	a0,s1
    80003390:	00000097          	auipc	ra,0x0
    80003394:	028080e7          	jalr	40(ra) # 800033b8 <__printf>
    80003398:	00002517          	auipc	a0,0x2
    8000339c:	d5850513          	addi	a0,a0,-680 # 800050f0 <CONSOLE_STATUS+0xe0>
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	018080e7          	jalr	24(ra) # 800033b8 <__printf>
    800033a8:	00100793          	li	a5,1
    800033ac:	00003717          	auipc	a4,0x3
    800033b0:	94f72e23          	sw	a5,-1700(a4) # 80005d08 <panicked>
    800033b4:	0000006f          	j	800033b4 <panic+0x58>

00000000800033b8 <__printf>:
    800033b8:	f3010113          	addi	sp,sp,-208
    800033bc:	08813023          	sd	s0,128(sp)
    800033c0:	07313423          	sd	s3,104(sp)
    800033c4:	09010413          	addi	s0,sp,144
    800033c8:	05813023          	sd	s8,64(sp)
    800033cc:	08113423          	sd	ra,136(sp)
    800033d0:	06913c23          	sd	s1,120(sp)
    800033d4:	07213823          	sd	s2,112(sp)
    800033d8:	07413023          	sd	s4,96(sp)
    800033dc:	05513c23          	sd	s5,88(sp)
    800033e0:	05613823          	sd	s6,80(sp)
    800033e4:	05713423          	sd	s7,72(sp)
    800033e8:	03913c23          	sd	s9,56(sp)
    800033ec:	03a13823          	sd	s10,48(sp)
    800033f0:	03b13423          	sd	s11,40(sp)
    800033f4:	00004317          	auipc	t1,0x4
    800033f8:	b8c30313          	addi	t1,t1,-1140 # 80006f80 <pr>
    800033fc:	01832c03          	lw	s8,24(t1)
    80003400:	00b43423          	sd	a1,8(s0)
    80003404:	00c43823          	sd	a2,16(s0)
    80003408:	00d43c23          	sd	a3,24(s0)
    8000340c:	02e43023          	sd	a4,32(s0)
    80003410:	02f43423          	sd	a5,40(s0)
    80003414:	03043823          	sd	a6,48(s0)
    80003418:	03143c23          	sd	a7,56(s0)
    8000341c:	00050993          	mv	s3,a0
    80003420:	4a0c1663          	bnez	s8,800038cc <__printf+0x514>
    80003424:	60098c63          	beqz	s3,80003a3c <__printf+0x684>
    80003428:	0009c503          	lbu	a0,0(s3)
    8000342c:	00840793          	addi	a5,s0,8
    80003430:	f6f43c23          	sd	a5,-136(s0)
    80003434:	00000493          	li	s1,0
    80003438:	22050063          	beqz	a0,80003658 <__printf+0x2a0>
    8000343c:	00002a37          	lui	s4,0x2
    80003440:	00018ab7          	lui	s5,0x18
    80003444:	000f4b37          	lui	s6,0xf4
    80003448:	00989bb7          	lui	s7,0x989
    8000344c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003450:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003454:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003458:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000345c:	00148c9b          	addiw	s9,s1,1
    80003460:	02500793          	li	a5,37
    80003464:	01998933          	add	s2,s3,s9
    80003468:	38f51263          	bne	a0,a5,800037ec <__printf+0x434>
    8000346c:	00094783          	lbu	a5,0(s2)
    80003470:	00078c9b          	sext.w	s9,a5
    80003474:	1e078263          	beqz	a5,80003658 <__printf+0x2a0>
    80003478:	0024849b          	addiw	s1,s1,2
    8000347c:	07000713          	li	a4,112
    80003480:	00998933          	add	s2,s3,s1
    80003484:	38e78a63          	beq	a5,a4,80003818 <__printf+0x460>
    80003488:	20f76863          	bltu	a4,a5,80003698 <__printf+0x2e0>
    8000348c:	42a78863          	beq	a5,a0,800038bc <__printf+0x504>
    80003490:	06400713          	li	a4,100
    80003494:	40e79663          	bne	a5,a4,800038a0 <__printf+0x4e8>
    80003498:	f7843783          	ld	a5,-136(s0)
    8000349c:	0007a603          	lw	a2,0(a5)
    800034a0:	00878793          	addi	a5,a5,8
    800034a4:	f6f43c23          	sd	a5,-136(s0)
    800034a8:	42064a63          	bltz	a2,800038dc <__printf+0x524>
    800034ac:	00a00713          	li	a4,10
    800034b0:	02e677bb          	remuw	a5,a2,a4
    800034b4:	00002d97          	auipc	s11,0x2
    800034b8:	dfcd8d93          	addi	s11,s11,-516 # 800052b0 <digits>
    800034bc:	00900593          	li	a1,9
    800034c0:	0006051b          	sext.w	a0,a2
    800034c4:	00000c93          	li	s9,0
    800034c8:	02079793          	slli	a5,a5,0x20
    800034cc:	0207d793          	srli	a5,a5,0x20
    800034d0:	00fd87b3          	add	a5,s11,a5
    800034d4:	0007c783          	lbu	a5,0(a5)
    800034d8:	02e656bb          	divuw	a3,a2,a4
    800034dc:	f8f40023          	sb	a5,-128(s0)
    800034e0:	14c5d863          	bge	a1,a2,80003630 <__printf+0x278>
    800034e4:	06300593          	li	a1,99
    800034e8:	00100c93          	li	s9,1
    800034ec:	02e6f7bb          	remuw	a5,a3,a4
    800034f0:	02079793          	slli	a5,a5,0x20
    800034f4:	0207d793          	srli	a5,a5,0x20
    800034f8:	00fd87b3          	add	a5,s11,a5
    800034fc:	0007c783          	lbu	a5,0(a5)
    80003500:	02e6d73b          	divuw	a4,a3,a4
    80003504:	f8f400a3          	sb	a5,-127(s0)
    80003508:	12a5f463          	bgeu	a1,a0,80003630 <__printf+0x278>
    8000350c:	00a00693          	li	a3,10
    80003510:	00900593          	li	a1,9
    80003514:	02d777bb          	remuw	a5,a4,a3
    80003518:	02079793          	slli	a5,a5,0x20
    8000351c:	0207d793          	srli	a5,a5,0x20
    80003520:	00fd87b3          	add	a5,s11,a5
    80003524:	0007c503          	lbu	a0,0(a5)
    80003528:	02d757bb          	divuw	a5,a4,a3
    8000352c:	f8a40123          	sb	a0,-126(s0)
    80003530:	48e5f263          	bgeu	a1,a4,800039b4 <__printf+0x5fc>
    80003534:	06300513          	li	a0,99
    80003538:	02d7f5bb          	remuw	a1,a5,a3
    8000353c:	02059593          	slli	a1,a1,0x20
    80003540:	0205d593          	srli	a1,a1,0x20
    80003544:	00bd85b3          	add	a1,s11,a1
    80003548:	0005c583          	lbu	a1,0(a1)
    8000354c:	02d7d7bb          	divuw	a5,a5,a3
    80003550:	f8b401a3          	sb	a1,-125(s0)
    80003554:	48e57263          	bgeu	a0,a4,800039d8 <__printf+0x620>
    80003558:	3e700513          	li	a0,999
    8000355c:	02d7f5bb          	remuw	a1,a5,a3
    80003560:	02059593          	slli	a1,a1,0x20
    80003564:	0205d593          	srli	a1,a1,0x20
    80003568:	00bd85b3          	add	a1,s11,a1
    8000356c:	0005c583          	lbu	a1,0(a1)
    80003570:	02d7d7bb          	divuw	a5,a5,a3
    80003574:	f8b40223          	sb	a1,-124(s0)
    80003578:	46e57663          	bgeu	a0,a4,800039e4 <__printf+0x62c>
    8000357c:	02d7f5bb          	remuw	a1,a5,a3
    80003580:	02059593          	slli	a1,a1,0x20
    80003584:	0205d593          	srli	a1,a1,0x20
    80003588:	00bd85b3          	add	a1,s11,a1
    8000358c:	0005c583          	lbu	a1,0(a1)
    80003590:	02d7d7bb          	divuw	a5,a5,a3
    80003594:	f8b402a3          	sb	a1,-123(s0)
    80003598:	46ea7863          	bgeu	s4,a4,80003a08 <__printf+0x650>
    8000359c:	02d7f5bb          	remuw	a1,a5,a3
    800035a0:	02059593          	slli	a1,a1,0x20
    800035a4:	0205d593          	srli	a1,a1,0x20
    800035a8:	00bd85b3          	add	a1,s11,a1
    800035ac:	0005c583          	lbu	a1,0(a1)
    800035b0:	02d7d7bb          	divuw	a5,a5,a3
    800035b4:	f8b40323          	sb	a1,-122(s0)
    800035b8:	3eeaf863          	bgeu	s5,a4,800039a8 <__printf+0x5f0>
    800035bc:	02d7f5bb          	remuw	a1,a5,a3
    800035c0:	02059593          	slli	a1,a1,0x20
    800035c4:	0205d593          	srli	a1,a1,0x20
    800035c8:	00bd85b3          	add	a1,s11,a1
    800035cc:	0005c583          	lbu	a1,0(a1)
    800035d0:	02d7d7bb          	divuw	a5,a5,a3
    800035d4:	f8b403a3          	sb	a1,-121(s0)
    800035d8:	42eb7e63          	bgeu	s6,a4,80003a14 <__printf+0x65c>
    800035dc:	02d7f5bb          	remuw	a1,a5,a3
    800035e0:	02059593          	slli	a1,a1,0x20
    800035e4:	0205d593          	srli	a1,a1,0x20
    800035e8:	00bd85b3          	add	a1,s11,a1
    800035ec:	0005c583          	lbu	a1,0(a1)
    800035f0:	02d7d7bb          	divuw	a5,a5,a3
    800035f4:	f8b40423          	sb	a1,-120(s0)
    800035f8:	42ebfc63          	bgeu	s7,a4,80003a30 <__printf+0x678>
    800035fc:	02079793          	slli	a5,a5,0x20
    80003600:	0207d793          	srli	a5,a5,0x20
    80003604:	00fd8db3          	add	s11,s11,a5
    80003608:	000dc703          	lbu	a4,0(s11)
    8000360c:	00a00793          	li	a5,10
    80003610:	00900c93          	li	s9,9
    80003614:	f8e404a3          	sb	a4,-119(s0)
    80003618:	00065c63          	bgez	a2,80003630 <__printf+0x278>
    8000361c:	f9040713          	addi	a4,s0,-112
    80003620:	00f70733          	add	a4,a4,a5
    80003624:	02d00693          	li	a3,45
    80003628:	fed70823          	sb	a3,-16(a4)
    8000362c:	00078c93          	mv	s9,a5
    80003630:	f8040793          	addi	a5,s0,-128
    80003634:	01978cb3          	add	s9,a5,s9
    80003638:	f7f40d13          	addi	s10,s0,-129
    8000363c:	000cc503          	lbu	a0,0(s9)
    80003640:	fffc8c93          	addi	s9,s9,-1
    80003644:	00000097          	auipc	ra,0x0
    80003648:	b90080e7          	jalr	-1136(ra) # 800031d4 <consputc>
    8000364c:	ffac98e3          	bne	s9,s10,8000363c <__printf+0x284>
    80003650:	00094503          	lbu	a0,0(s2)
    80003654:	e00514e3          	bnez	a0,8000345c <__printf+0xa4>
    80003658:	1a0c1663          	bnez	s8,80003804 <__printf+0x44c>
    8000365c:	08813083          	ld	ra,136(sp)
    80003660:	08013403          	ld	s0,128(sp)
    80003664:	07813483          	ld	s1,120(sp)
    80003668:	07013903          	ld	s2,112(sp)
    8000366c:	06813983          	ld	s3,104(sp)
    80003670:	06013a03          	ld	s4,96(sp)
    80003674:	05813a83          	ld	s5,88(sp)
    80003678:	05013b03          	ld	s6,80(sp)
    8000367c:	04813b83          	ld	s7,72(sp)
    80003680:	04013c03          	ld	s8,64(sp)
    80003684:	03813c83          	ld	s9,56(sp)
    80003688:	03013d03          	ld	s10,48(sp)
    8000368c:	02813d83          	ld	s11,40(sp)
    80003690:	0d010113          	addi	sp,sp,208
    80003694:	00008067          	ret
    80003698:	07300713          	li	a4,115
    8000369c:	1ce78a63          	beq	a5,a4,80003870 <__printf+0x4b8>
    800036a0:	07800713          	li	a4,120
    800036a4:	1ee79e63          	bne	a5,a4,800038a0 <__printf+0x4e8>
    800036a8:	f7843783          	ld	a5,-136(s0)
    800036ac:	0007a703          	lw	a4,0(a5)
    800036b0:	00878793          	addi	a5,a5,8
    800036b4:	f6f43c23          	sd	a5,-136(s0)
    800036b8:	28074263          	bltz	a4,8000393c <__printf+0x584>
    800036bc:	00002d97          	auipc	s11,0x2
    800036c0:	bf4d8d93          	addi	s11,s11,-1036 # 800052b0 <digits>
    800036c4:	00f77793          	andi	a5,a4,15
    800036c8:	00fd87b3          	add	a5,s11,a5
    800036cc:	0007c683          	lbu	a3,0(a5)
    800036d0:	00f00613          	li	a2,15
    800036d4:	0007079b          	sext.w	a5,a4
    800036d8:	f8d40023          	sb	a3,-128(s0)
    800036dc:	0047559b          	srliw	a1,a4,0x4
    800036e0:	0047569b          	srliw	a3,a4,0x4
    800036e4:	00000c93          	li	s9,0
    800036e8:	0ee65063          	bge	a2,a4,800037c8 <__printf+0x410>
    800036ec:	00f6f693          	andi	a3,a3,15
    800036f0:	00dd86b3          	add	a3,s11,a3
    800036f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800036f8:	0087d79b          	srliw	a5,a5,0x8
    800036fc:	00100c93          	li	s9,1
    80003700:	f8d400a3          	sb	a3,-127(s0)
    80003704:	0cb67263          	bgeu	a2,a1,800037c8 <__printf+0x410>
    80003708:	00f7f693          	andi	a3,a5,15
    8000370c:	00dd86b3          	add	a3,s11,a3
    80003710:	0006c583          	lbu	a1,0(a3)
    80003714:	00f00613          	li	a2,15
    80003718:	0047d69b          	srliw	a3,a5,0x4
    8000371c:	f8b40123          	sb	a1,-126(s0)
    80003720:	0047d593          	srli	a1,a5,0x4
    80003724:	28f67e63          	bgeu	a2,a5,800039c0 <__printf+0x608>
    80003728:	00f6f693          	andi	a3,a3,15
    8000372c:	00dd86b3          	add	a3,s11,a3
    80003730:	0006c503          	lbu	a0,0(a3)
    80003734:	0087d813          	srli	a6,a5,0x8
    80003738:	0087d69b          	srliw	a3,a5,0x8
    8000373c:	f8a401a3          	sb	a0,-125(s0)
    80003740:	28b67663          	bgeu	a2,a1,800039cc <__printf+0x614>
    80003744:	00f6f693          	andi	a3,a3,15
    80003748:	00dd86b3          	add	a3,s11,a3
    8000374c:	0006c583          	lbu	a1,0(a3)
    80003750:	00c7d513          	srli	a0,a5,0xc
    80003754:	00c7d69b          	srliw	a3,a5,0xc
    80003758:	f8b40223          	sb	a1,-124(s0)
    8000375c:	29067a63          	bgeu	a2,a6,800039f0 <__printf+0x638>
    80003760:	00f6f693          	andi	a3,a3,15
    80003764:	00dd86b3          	add	a3,s11,a3
    80003768:	0006c583          	lbu	a1,0(a3)
    8000376c:	0107d813          	srli	a6,a5,0x10
    80003770:	0107d69b          	srliw	a3,a5,0x10
    80003774:	f8b402a3          	sb	a1,-123(s0)
    80003778:	28a67263          	bgeu	a2,a0,800039fc <__printf+0x644>
    8000377c:	00f6f693          	andi	a3,a3,15
    80003780:	00dd86b3          	add	a3,s11,a3
    80003784:	0006c683          	lbu	a3,0(a3)
    80003788:	0147d79b          	srliw	a5,a5,0x14
    8000378c:	f8d40323          	sb	a3,-122(s0)
    80003790:	21067663          	bgeu	a2,a6,8000399c <__printf+0x5e4>
    80003794:	02079793          	slli	a5,a5,0x20
    80003798:	0207d793          	srli	a5,a5,0x20
    8000379c:	00fd8db3          	add	s11,s11,a5
    800037a0:	000dc683          	lbu	a3,0(s11)
    800037a4:	00800793          	li	a5,8
    800037a8:	00700c93          	li	s9,7
    800037ac:	f8d403a3          	sb	a3,-121(s0)
    800037b0:	00075c63          	bgez	a4,800037c8 <__printf+0x410>
    800037b4:	f9040713          	addi	a4,s0,-112
    800037b8:	00f70733          	add	a4,a4,a5
    800037bc:	02d00693          	li	a3,45
    800037c0:	fed70823          	sb	a3,-16(a4)
    800037c4:	00078c93          	mv	s9,a5
    800037c8:	f8040793          	addi	a5,s0,-128
    800037cc:	01978cb3          	add	s9,a5,s9
    800037d0:	f7f40d13          	addi	s10,s0,-129
    800037d4:	000cc503          	lbu	a0,0(s9)
    800037d8:	fffc8c93          	addi	s9,s9,-1
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	9f8080e7          	jalr	-1544(ra) # 800031d4 <consputc>
    800037e4:	ff9d18e3          	bne	s10,s9,800037d4 <__printf+0x41c>
    800037e8:	0100006f          	j	800037f8 <__printf+0x440>
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	9e8080e7          	jalr	-1560(ra) # 800031d4 <consputc>
    800037f4:	000c8493          	mv	s1,s9
    800037f8:	00094503          	lbu	a0,0(s2)
    800037fc:	c60510e3          	bnez	a0,8000345c <__printf+0xa4>
    80003800:	e40c0ee3          	beqz	s8,8000365c <__printf+0x2a4>
    80003804:	00003517          	auipc	a0,0x3
    80003808:	77c50513          	addi	a0,a0,1916 # 80006f80 <pr>
    8000380c:	00001097          	auipc	ra,0x1
    80003810:	94c080e7          	jalr	-1716(ra) # 80004158 <release>
    80003814:	e49ff06f          	j	8000365c <__printf+0x2a4>
    80003818:	f7843783          	ld	a5,-136(s0)
    8000381c:	03000513          	li	a0,48
    80003820:	01000d13          	li	s10,16
    80003824:	00878713          	addi	a4,a5,8
    80003828:	0007bc83          	ld	s9,0(a5)
    8000382c:	f6e43c23          	sd	a4,-136(s0)
    80003830:	00000097          	auipc	ra,0x0
    80003834:	9a4080e7          	jalr	-1628(ra) # 800031d4 <consputc>
    80003838:	07800513          	li	a0,120
    8000383c:	00000097          	auipc	ra,0x0
    80003840:	998080e7          	jalr	-1640(ra) # 800031d4 <consputc>
    80003844:	00002d97          	auipc	s11,0x2
    80003848:	a6cd8d93          	addi	s11,s11,-1428 # 800052b0 <digits>
    8000384c:	03ccd793          	srli	a5,s9,0x3c
    80003850:	00fd87b3          	add	a5,s11,a5
    80003854:	0007c503          	lbu	a0,0(a5)
    80003858:	fffd0d1b          	addiw	s10,s10,-1
    8000385c:	004c9c93          	slli	s9,s9,0x4
    80003860:	00000097          	auipc	ra,0x0
    80003864:	974080e7          	jalr	-1676(ra) # 800031d4 <consputc>
    80003868:	fe0d12e3          	bnez	s10,8000384c <__printf+0x494>
    8000386c:	f8dff06f          	j	800037f8 <__printf+0x440>
    80003870:	f7843783          	ld	a5,-136(s0)
    80003874:	0007bc83          	ld	s9,0(a5)
    80003878:	00878793          	addi	a5,a5,8
    8000387c:	f6f43c23          	sd	a5,-136(s0)
    80003880:	000c9a63          	bnez	s9,80003894 <__printf+0x4dc>
    80003884:	1080006f          	j	8000398c <__printf+0x5d4>
    80003888:	001c8c93          	addi	s9,s9,1
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	948080e7          	jalr	-1720(ra) # 800031d4 <consputc>
    80003894:	000cc503          	lbu	a0,0(s9)
    80003898:	fe0518e3          	bnez	a0,80003888 <__printf+0x4d0>
    8000389c:	f5dff06f          	j	800037f8 <__printf+0x440>
    800038a0:	02500513          	li	a0,37
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	930080e7          	jalr	-1744(ra) # 800031d4 <consputc>
    800038ac:	000c8513          	mv	a0,s9
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	924080e7          	jalr	-1756(ra) # 800031d4 <consputc>
    800038b8:	f41ff06f          	j	800037f8 <__printf+0x440>
    800038bc:	02500513          	li	a0,37
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	914080e7          	jalr	-1772(ra) # 800031d4 <consputc>
    800038c8:	f31ff06f          	j	800037f8 <__printf+0x440>
    800038cc:	00030513          	mv	a0,t1
    800038d0:	00000097          	auipc	ra,0x0
    800038d4:	7bc080e7          	jalr	1980(ra) # 8000408c <acquire>
    800038d8:	b4dff06f          	j	80003424 <__printf+0x6c>
    800038dc:	40c0053b          	negw	a0,a2
    800038e0:	00a00713          	li	a4,10
    800038e4:	02e576bb          	remuw	a3,a0,a4
    800038e8:	00002d97          	auipc	s11,0x2
    800038ec:	9c8d8d93          	addi	s11,s11,-1592 # 800052b0 <digits>
    800038f0:	ff700593          	li	a1,-9
    800038f4:	02069693          	slli	a3,a3,0x20
    800038f8:	0206d693          	srli	a3,a3,0x20
    800038fc:	00dd86b3          	add	a3,s11,a3
    80003900:	0006c683          	lbu	a3,0(a3)
    80003904:	02e557bb          	divuw	a5,a0,a4
    80003908:	f8d40023          	sb	a3,-128(s0)
    8000390c:	10b65e63          	bge	a2,a1,80003a28 <__printf+0x670>
    80003910:	06300593          	li	a1,99
    80003914:	02e7f6bb          	remuw	a3,a5,a4
    80003918:	02069693          	slli	a3,a3,0x20
    8000391c:	0206d693          	srli	a3,a3,0x20
    80003920:	00dd86b3          	add	a3,s11,a3
    80003924:	0006c683          	lbu	a3,0(a3)
    80003928:	02e7d73b          	divuw	a4,a5,a4
    8000392c:	00200793          	li	a5,2
    80003930:	f8d400a3          	sb	a3,-127(s0)
    80003934:	bca5ece3          	bltu	a1,a0,8000350c <__printf+0x154>
    80003938:	ce5ff06f          	j	8000361c <__printf+0x264>
    8000393c:	40e007bb          	negw	a5,a4
    80003940:	00002d97          	auipc	s11,0x2
    80003944:	970d8d93          	addi	s11,s11,-1680 # 800052b0 <digits>
    80003948:	00f7f693          	andi	a3,a5,15
    8000394c:	00dd86b3          	add	a3,s11,a3
    80003950:	0006c583          	lbu	a1,0(a3)
    80003954:	ff100613          	li	a2,-15
    80003958:	0047d69b          	srliw	a3,a5,0x4
    8000395c:	f8b40023          	sb	a1,-128(s0)
    80003960:	0047d59b          	srliw	a1,a5,0x4
    80003964:	0ac75e63          	bge	a4,a2,80003a20 <__printf+0x668>
    80003968:	00f6f693          	andi	a3,a3,15
    8000396c:	00dd86b3          	add	a3,s11,a3
    80003970:	0006c603          	lbu	a2,0(a3)
    80003974:	00f00693          	li	a3,15
    80003978:	0087d79b          	srliw	a5,a5,0x8
    8000397c:	f8c400a3          	sb	a2,-127(s0)
    80003980:	d8b6e4e3          	bltu	a3,a1,80003708 <__printf+0x350>
    80003984:	00200793          	li	a5,2
    80003988:	e2dff06f          	j	800037b4 <__printf+0x3fc>
    8000398c:	00002c97          	auipc	s9,0x2
    80003990:	904c8c93          	addi	s9,s9,-1788 # 80005290 <_ZZ12printIntegermE6digits+0x148>
    80003994:	02800513          	li	a0,40
    80003998:	ef1ff06f          	j	80003888 <__printf+0x4d0>
    8000399c:	00700793          	li	a5,7
    800039a0:	00600c93          	li	s9,6
    800039a4:	e0dff06f          	j	800037b0 <__printf+0x3f8>
    800039a8:	00700793          	li	a5,7
    800039ac:	00600c93          	li	s9,6
    800039b0:	c69ff06f          	j	80003618 <__printf+0x260>
    800039b4:	00300793          	li	a5,3
    800039b8:	00200c93          	li	s9,2
    800039bc:	c5dff06f          	j	80003618 <__printf+0x260>
    800039c0:	00300793          	li	a5,3
    800039c4:	00200c93          	li	s9,2
    800039c8:	de9ff06f          	j	800037b0 <__printf+0x3f8>
    800039cc:	00400793          	li	a5,4
    800039d0:	00300c93          	li	s9,3
    800039d4:	dddff06f          	j	800037b0 <__printf+0x3f8>
    800039d8:	00400793          	li	a5,4
    800039dc:	00300c93          	li	s9,3
    800039e0:	c39ff06f          	j	80003618 <__printf+0x260>
    800039e4:	00500793          	li	a5,5
    800039e8:	00400c93          	li	s9,4
    800039ec:	c2dff06f          	j	80003618 <__printf+0x260>
    800039f0:	00500793          	li	a5,5
    800039f4:	00400c93          	li	s9,4
    800039f8:	db9ff06f          	j	800037b0 <__printf+0x3f8>
    800039fc:	00600793          	li	a5,6
    80003a00:	00500c93          	li	s9,5
    80003a04:	dadff06f          	j	800037b0 <__printf+0x3f8>
    80003a08:	00600793          	li	a5,6
    80003a0c:	00500c93          	li	s9,5
    80003a10:	c09ff06f          	j	80003618 <__printf+0x260>
    80003a14:	00800793          	li	a5,8
    80003a18:	00700c93          	li	s9,7
    80003a1c:	bfdff06f          	j	80003618 <__printf+0x260>
    80003a20:	00100793          	li	a5,1
    80003a24:	d91ff06f          	j	800037b4 <__printf+0x3fc>
    80003a28:	00100793          	li	a5,1
    80003a2c:	bf1ff06f          	j	8000361c <__printf+0x264>
    80003a30:	00900793          	li	a5,9
    80003a34:	00800c93          	li	s9,8
    80003a38:	be1ff06f          	j	80003618 <__printf+0x260>
    80003a3c:	00002517          	auipc	a0,0x2
    80003a40:	85c50513          	addi	a0,a0,-1956 # 80005298 <_ZZ12printIntegermE6digits+0x150>
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	918080e7          	jalr	-1768(ra) # 8000335c <panic>

0000000080003a4c <printfinit>:
    80003a4c:	fe010113          	addi	sp,sp,-32
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00913423          	sd	s1,8(sp)
    80003a58:	00113c23          	sd	ra,24(sp)
    80003a5c:	02010413          	addi	s0,sp,32
    80003a60:	00003497          	auipc	s1,0x3
    80003a64:	52048493          	addi	s1,s1,1312 # 80006f80 <pr>
    80003a68:	00048513          	mv	a0,s1
    80003a6c:	00002597          	auipc	a1,0x2
    80003a70:	83c58593          	addi	a1,a1,-1988 # 800052a8 <_ZZ12printIntegermE6digits+0x160>
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	5f4080e7          	jalr	1524(ra) # 80004068 <initlock>
    80003a7c:	01813083          	ld	ra,24(sp)
    80003a80:	01013403          	ld	s0,16(sp)
    80003a84:	0004ac23          	sw	zero,24(s1)
    80003a88:	00813483          	ld	s1,8(sp)
    80003a8c:	02010113          	addi	sp,sp,32
    80003a90:	00008067          	ret

0000000080003a94 <uartinit>:
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00813423          	sd	s0,8(sp)
    80003a9c:	01010413          	addi	s0,sp,16
    80003aa0:	100007b7          	lui	a5,0x10000
    80003aa4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003aa8:	f8000713          	li	a4,-128
    80003aac:	00e781a3          	sb	a4,3(a5)
    80003ab0:	00300713          	li	a4,3
    80003ab4:	00e78023          	sb	a4,0(a5)
    80003ab8:	000780a3          	sb	zero,1(a5)
    80003abc:	00e781a3          	sb	a4,3(a5)
    80003ac0:	00700693          	li	a3,7
    80003ac4:	00d78123          	sb	a3,2(a5)
    80003ac8:	00e780a3          	sb	a4,1(a5)
    80003acc:	00813403          	ld	s0,8(sp)
    80003ad0:	01010113          	addi	sp,sp,16
    80003ad4:	00008067          	ret

0000000080003ad8 <uartputc>:
    80003ad8:	00002797          	auipc	a5,0x2
    80003adc:	2307a783          	lw	a5,560(a5) # 80005d08 <panicked>
    80003ae0:	00078463          	beqz	a5,80003ae8 <uartputc+0x10>
    80003ae4:	0000006f          	j	80003ae4 <uartputc+0xc>
    80003ae8:	fd010113          	addi	sp,sp,-48
    80003aec:	02813023          	sd	s0,32(sp)
    80003af0:	00913c23          	sd	s1,24(sp)
    80003af4:	01213823          	sd	s2,16(sp)
    80003af8:	01313423          	sd	s3,8(sp)
    80003afc:	02113423          	sd	ra,40(sp)
    80003b00:	03010413          	addi	s0,sp,48
    80003b04:	00002917          	auipc	s2,0x2
    80003b08:	20c90913          	addi	s2,s2,524 # 80005d10 <uart_tx_r>
    80003b0c:	00093783          	ld	a5,0(s2)
    80003b10:	00002497          	auipc	s1,0x2
    80003b14:	20848493          	addi	s1,s1,520 # 80005d18 <uart_tx_w>
    80003b18:	0004b703          	ld	a4,0(s1)
    80003b1c:	02078693          	addi	a3,a5,32
    80003b20:	00050993          	mv	s3,a0
    80003b24:	02e69c63          	bne	a3,a4,80003b5c <uartputc+0x84>
    80003b28:	00001097          	auipc	ra,0x1
    80003b2c:	834080e7          	jalr	-1996(ra) # 8000435c <push_on>
    80003b30:	00093783          	ld	a5,0(s2)
    80003b34:	0004b703          	ld	a4,0(s1)
    80003b38:	02078793          	addi	a5,a5,32
    80003b3c:	00e79463          	bne	a5,a4,80003b44 <uartputc+0x6c>
    80003b40:	0000006f          	j	80003b40 <uartputc+0x68>
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	88c080e7          	jalr	-1908(ra) # 800043d0 <pop_on>
    80003b4c:	00093783          	ld	a5,0(s2)
    80003b50:	0004b703          	ld	a4,0(s1)
    80003b54:	02078693          	addi	a3,a5,32
    80003b58:	fce688e3          	beq	a3,a4,80003b28 <uartputc+0x50>
    80003b5c:	01f77693          	andi	a3,a4,31
    80003b60:	00003597          	auipc	a1,0x3
    80003b64:	44058593          	addi	a1,a1,1088 # 80006fa0 <uart_tx_buf>
    80003b68:	00d586b3          	add	a3,a1,a3
    80003b6c:	00170713          	addi	a4,a4,1
    80003b70:	01368023          	sb	s3,0(a3)
    80003b74:	00e4b023          	sd	a4,0(s1)
    80003b78:	10000637          	lui	a2,0x10000
    80003b7c:	02f71063          	bne	a4,a5,80003b9c <uartputc+0xc4>
    80003b80:	0340006f          	j	80003bb4 <uartputc+0xdc>
    80003b84:	00074703          	lbu	a4,0(a4)
    80003b88:	00f93023          	sd	a5,0(s2)
    80003b8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003b90:	00093783          	ld	a5,0(s2)
    80003b94:	0004b703          	ld	a4,0(s1)
    80003b98:	00f70e63          	beq	a4,a5,80003bb4 <uartputc+0xdc>
    80003b9c:	00564683          	lbu	a3,5(a2)
    80003ba0:	01f7f713          	andi	a4,a5,31
    80003ba4:	00e58733          	add	a4,a1,a4
    80003ba8:	0206f693          	andi	a3,a3,32
    80003bac:	00178793          	addi	a5,a5,1
    80003bb0:	fc069ae3          	bnez	a3,80003b84 <uartputc+0xac>
    80003bb4:	02813083          	ld	ra,40(sp)
    80003bb8:	02013403          	ld	s0,32(sp)
    80003bbc:	01813483          	ld	s1,24(sp)
    80003bc0:	01013903          	ld	s2,16(sp)
    80003bc4:	00813983          	ld	s3,8(sp)
    80003bc8:	03010113          	addi	sp,sp,48
    80003bcc:	00008067          	ret

0000000080003bd0 <uartputc_sync>:
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00813423          	sd	s0,8(sp)
    80003bd8:	01010413          	addi	s0,sp,16
    80003bdc:	00002717          	auipc	a4,0x2
    80003be0:	12c72703          	lw	a4,300(a4) # 80005d08 <panicked>
    80003be4:	02071663          	bnez	a4,80003c10 <uartputc_sync+0x40>
    80003be8:	00050793          	mv	a5,a0
    80003bec:	100006b7          	lui	a3,0x10000
    80003bf0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003bf4:	02077713          	andi	a4,a4,32
    80003bf8:	fe070ce3          	beqz	a4,80003bf0 <uartputc_sync+0x20>
    80003bfc:	0ff7f793          	andi	a5,a5,255
    80003c00:	00f68023          	sb	a5,0(a3)
    80003c04:	00813403          	ld	s0,8(sp)
    80003c08:	01010113          	addi	sp,sp,16
    80003c0c:	00008067          	ret
    80003c10:	0000006f          	j	80003c10 <uartputc_sync+0x40>

0000000080003c14 <uartstart>:
    80003c14:	ff010113          	addi	sp,sp,-16
    80003c18:	00813423          	sd	s0,8(sp)
    80003c1c:	01010413          	addi	s0,sp,16
    80003c20:	00002617          	auipc	a2,0x2
    80003c24:	0f060613          	addi	a2,a2,240 # 80005d10 <uart_tx_r>
    80003c28:	00002517          	auipc	a0,0x2
    80003c2c:	0f050513          	addi	a0,a0,240 # 80005d18 <uart_tx_w>
    80003c30:	00063783          	ld	a5,0(a2)
    80003c34:	00053703          	ld	a4,0(a0)
    80003c38:	04f70263          	beq	a4,a5,80003c7c <uartstart+0x68>
    80003c3c:	100005b7          	lui	a1,0x10000
    80003c40:	00003817          	auipc	a6,0x3
    80003c44:	36080813          	addi	a6,a6,864 # 80006fa0 <uart_tx_buf>
    80003c48:	01c0006f          	j	80003c64 <uartstart+0x50>
    80003c4c:	0006c703          	lbu	a4,0(a3)
    80003c50:	00f63023          	sd	a5,0(a2)
    80003c54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c58:	00063783          	ld	a5,0(a2)
    80003c5c:	00053703          	ld	a4,0(a0)
    80003c60:	00f70e63          	beq	a4,a5,80003c7c <uartstart+0x68>
    80003c64:	01f7f713          	andi	a4,a5,31
    80003c68:	00e806b3          	add	a3,a6,a4
    80003c6c:	0055c703          	lbu	a4,5(a1)
    80003c70:	00178793          	addi	a5,a5,1
    80003c74:	02077713          	andi	a4,a4,32
    80003c78:	fc071ae3          	bnez	a4,80003c4c <uartstart+0x38>
    80003c7c:	00813403          	ld	s0,8(sp)
    80003c80:	01010113          	addi	sp,sp,16
    80003c84:	00008067          	ret

0000000080003c88 <uartgetc>:
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00813423          	sd	s0,8(sp)
    80003c90:	01010413          	addi	s0,sp,16
    80003c94:	10000737          	lui	a4,0x10000
    80003c98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003c9c:	0017f793          	andi	a5,a5,1
    80003ca0:	00078c63          	beqz	a5,80003cb8 <uartgetc+0x30>
    80003ca4:	00074503          	lbu	a0,0(a4)
    80003ca8:	0ff57513          	andi	a0,a0,255
    80003cac:	00813403          	ld	s0,8(sp)
    80003cb0:	01010113          	addi	sp,sp,16
    80003cb4:	00008067          	ret
    80003cb8:	fff00513          	li	a0,-1
    80003cbc:	ff1ff06f          	j	80003cac <uartgetc+0x24>

0000000080003cc0 <uartintr>:
    80003cc0:	100007b7          	lui	a5,0x10000
    80003cc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003cc8:	0017f793          	andi	a5,a5,1
    80003ccc:	0a078463          	beqz	a5,80003d74 <uartintr+0xb4>
    80003cd0:	fe010113          	addi	sp,sp,-32
    80003cd4:	00813823          	sd	s0,16(sp)
    80003cd8:	00913423          	sd	s1,8(sp)
    80003cdc:	00113c23          	sd	ra,24(sp)
    80003ce0:	02010413          	addi	s0,sp,32
    80003ce4:	100004b7          	lui	s1,0x10000
    80003ce8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003cec:	0ff57513          	andi	a0,a0,255
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	534080e7          	jalr	1332(ra) # 80003224 <consoleintr>
    80003cf8:	0054c783          	lbu	a5,5(s1)
    80003cfc:	0017f793          	andi	a5,a5,1
    80003d00:	fe0794e3          	bnez	a5,80003ce8 <uartintr+0x28>
    80003d04:	00002617          	auipc	a2,0x2
    80003d08:	00c60613          	addi	a2,a2,12 # 80005d10 <uart_tx_r>
    80003d0c:	00002517          	auipc	a0,0x2
    80003d10:	00c50513          	addi	a0,a0,12 # 80005d18 <uart_tx_w>
    80003d14:	00063783          	ld	a5,0(a2)
    80003d18:	00053703          	ld	a4,0(a0)
    80003d1c:	04f70263          	beq	a4,a5,80003d60 <uartintr+0xa0>
    80003d20:	100005b7          	lui	a1,0x10000
    80003d24:	00003817          	auipc	a6,0x3
    80003d28:	27c80813          	addi	a6,a6,636 # 80006fa0 <uart_tx_buf>
    80003d2c:	01c0006f          	j	80003d48 <uartintr+0x88>
    80003d30:	0006c703          	lbu	a4,0(a3)
    80003d34:	00f63023          	sd	a5,0(a2)
    80003d38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d3c:	00063783          	ld	a5,0(a2)
    80003d40:	00053703          	ld	a4,0(a0)
    80003d44:	00f70e63          	beq	a4,a5,80003d60 <uartintr+0xa0>
    80003d48:	01f7f713          	andi	a4,a5,31
    80003d4c:	00e806b3          	add	a3,a6,a4
    80003d50:	0055c703          	lbu	a4,5(a1)
    80003d54:	00178793          	addi	a5,a5,1
    80003d58:	02077713          	andi	a4,a4,32
    80003d5c:	fc071ae3          	bnez	a4,80003d30 <uartintr+0x70>
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	00813483          	ld	s1,8(sp)
    80003d6c:	02010113          	addi	sp,sp,32
    80003d70:	00008067          	ret
    80003d74:	00002617          	auipc	a2,0x2
    80003d78:	f9c60613          	addi	a2,a2,-100 # 80005d10 <uart_tx_r>
    80003d7c:	00002517          	auipc	a0,0x2
    80003d80:	f9c50513          	addi	a0,a0,-100 # 80005d18 <uart_tx_w>
    80003d84:	00063783          	ld	a5,0(a2)
    80003d88:	00053703          	ld	a4,0(a0)
    80003d8c:	04f70263          	beq	a4,a5,80003dd0 <uartintr+0x110>
    80003d90:	100005b7          	lui	a1,0x10000
    80003d94:	00003817          	auipc	a6,0x3
    80003d98:	20c80813          	addi	a6,a6,524 # 80006fa0 <uart_tx_buf>
    80003d9c:	01c0006f          	j	80003db8 <uartintr+0xf8>
    80003da0:	0006c703          	lbu	a4,0(a3)
    80003da4:	00f63023          	sd	a5,0(a2)
    80003da8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003dac:	00063783          	ld	a5,0(a2)
    80003db0:	00053703          	ld	a4,0(a0)
    80003db4:	02f70063          	beq	a4,a5,80003dd4 <uartintr+0x114>
    80003db8:	01f7f713          	andi	a4,a5,31
    80003dbc:	00e806b3          	add	a3,a6,a4
    80003dc0:	0055c703          	lbu	a4,5(a1)
    80003dc4:	00178793          	addi	a5,a5,1
    80003dc8:	02077713          	andi	a4,a4,32
    80003dcc:	fc071ae3          	bnez	a4,80003da0 <uartintr+0xe0>
    80003dd0:	00008067          	ret
    80003dd4:	00008067          	ret

0000000080003dd8 <kinit>:
    80003dd8:	fc010113          	addi	sp,sp,-64
    80003ddc:	02913423          	sd	s1,40(sp)
    80003de0:	fffff7b7          	lui	a5,0xfffff
    80003de4:	00004497          	auipc	s1,0x4
    80003de8:	1db48493          	addi	s1,s1,475 # 80007fbf <end+0xfff>
    80003dec:	02813823          	sd	s0,48(sp)
    80003df0:	01313c23          	sd	s3,24(sp)
    80003df4:	00f4f4b3          	and	s1,s1,a5
    80003df8:	02113c23          	sd	ra,56(sp)
    80003dfc:	03213023          	sd	s2,32(sp)
    80003e00:	01413823          	sd	s4,16(sp)
    80003e04:	01513423          	sd	s5,8(sp)
    80003e08:	04010413          	addi	s0,sp,64
    80003e0c:	000017b7          	lui	a5,0x1
    80003e10:	01100993          	li	s3,17
    80003e14:	00f487b3          	add	a5,s1,a5
    80003e18:	01b99993          	slli	s3,s3,0x1b
    80003e1c:	06f9e063          	bltu	s3,a5,80003e7c <kinit+0xa4>
    80003e20:	00003a97          	auipc	s5,0x3
    80003e24:	1a0a8a93          	addi	s5,s5,416 # 80006fc0 <end>
    80003e28:	0754ec63          	bltu	s1,s5,80003ea0 <kinit+0xc8>
    80003e2c:	0734fa63          	bgeu	s1,s3,80003ea0 <kinit+0xc8>
    80003e30:	00088a37          	lui	s4,0x88
    80003e34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003e38:	00002917          	auipc	s2,0x2
    80003e3c:	ee890913          	addi	s2,s2,-280 # 80005d20 <kmem>
    80003e40:	00ca1a13          	slli	s4,s4,0xc
    80003e44:	0140006f          	j	80003e58 <kinit+0x80>
    80003e48:	000017b7          	lui	a5,0x1
    80003e4c:	00f484b3          	add	s1,s1,a5
    80003e50:	0554e863          	bltu	s1,s5,80003ea0 <kinit+0xc8>
    80003e54:	0534f663          	bgeu	s1,s3,80003ea0 <kinit+0xc8>
    80003e58:	00001637          	lui	a2,0x1
    80003e5c:	00100593          	li	a1,1
    80003e60:	00048513          	mv	a0,s1
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	5e4080e7          	jalr	1508(ra) # 80004448 <__memset>
    80003e6c:	00093783          	ld	a5,0(s2)
    80003e70:	00f4b023          	sd	a5,0(s1)
    80003e74:	00993023          	sd	s1,0(s2)
    80003e78:	fd4498e3          	bne	s1,s4,80003e48 <kinit+0x70>
    80003e7c:	03813083          	ld	ra,56(sp)
    80003e80:	03013403          	ld	s0,48(sp)
    80003e84:	02813483          	ld	s1,40(sp)
    80003e88:	02013903          	ld	s2,32(sp)
    80003e8c:	01813983          	ld	s3,24(sp)
    80003e90:	01013a03          	ld	s4,16(sp)
    80003e94:	00813a83          	ld	s5,8(sp)
    80003e98:	04010113          	addi	sp,sp,64
    80003e9c:	00008067          	ret
    80003ea0:	00001517          	auipc	a0,0x1
    80003ea4:	42850513          	addi	a0,a0,1064 # 800052c8 <digits+0x18>
    80003ea8:	fffff097          	auipc	ra,0xfffff
    80003eac:	4b4080e7          	jalr	1204(ra) # 8000335c <panic>

0000000080003eb0 <freerange>:
    80003eb0:	fc010113          	addi	sp,sp,-64
    80003eb4:	000017b7          	lui	a5,0x1
    80003eb8:	02913423          	sd	s1,40(sp)
    80003ebc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003ec0:	009504b3          	add	s1,a0,s1
    80003ec4:	fffff537          	lui	a0,0xfffff
    80003ec8:	02813823          	sd	s0,48(sp)
    80003ecc:	02113c23          	sd	ra,56(sp)
    80003ed0:	03213023          	sd	s2,32(sp)
    80003ed4:	01313c23          	sd	s3,24(sp)
    80003ed8:	01413823          	sd	s4,16(sp)
    80003edc:	01513423          	sd	s5,8(sp)
    80003ee0:	01613023          	sd	s6,0(sp)
    80003ee4:	04010413          	addi	s0,sp,64
    80003ee8:	00a4f4b3          	and	s1,s1,a0
    80003eec:	00f487b3          	add	a5,s1,a5
    80003ef0:	06f5e463          	bltu	a1,a5,80003f58 <freerange+0xa8>
    80003ef4:	00003a97          	auipc	s5,0x3
    80003ef8:	0cca8a93          	addi	s5,s5,204 # 80006fc0 <end>
    80003efc:	0954e263          	bltu	s1,s5,80003f80 <freerange+0xd0>
    80003f00:	01100993          	li	s3,17
    80003f04:	01b99993          	slli	s3,s3,0x1b
    80003f08:	0734fc63          	bgeu	s1,s3,80003f80 <freerange+0xd0>
    80003f0c:	00058a13          	mv	s4,a1
    80003f10:	00002917          	auipc	s2,0x2
    80003f14:	e1090913          	addi	s2,s2,-496 # 80005d20 <kmem>
    80003f18:	00002b37          	lui	s6,0x2
    80003f1c:	0140006f          	j	80003f30 <freerange+0x80>
    80003f20:	000017b7          	lui	a5,0x1
    80003f24:	00f484b3          	add	s1,s1,a5
    80003f28:	0554ec63          	bltu	s1,s5,80003f80 <freerange+0xd0>
    80003f2c:	0534fa63          	bgeu	s1,s3,80003f80 <freerange+0xd0>
    80003f30:	00001637          	lui	a2,0x1
    80003f34:	00100593          	li	a1,1
    80003f38:	00048513          	mv	a0,s1
    80003f3c:	00000097          	auipc	ra,0x0
    80003f40:	50c080e7          	jalr	1292(ra) # 80004448 <__memset>
    80003f44:	00093703          	ld	a4,0(s2)
    80003f48:	016487b3          	add	a5,s1,s6
    80003f4c:	00e4b023          	sd	a4,0(s1)
    80003f50:	00993023          	sd	s1,0(s2)
    80003f54:	fcfa76e3          	bgeu	s4,a5,80003f20 <freerange+0x70>
    80003f58:	03813083          	ld	ra,56(sp)
    80003f5c:	03013403          	ld	s0,48(sp)
    80003f60:	02813483          	ld	s1,40(sp)
    80003f64:	02013903          	ld	s2,32(sp)
    80003f68:	01813983          	ld	s3,24(sp)
    80003f6c:	01013a03          	ld	s4,16(sp)
    80003f70:	00813a83          	ld	s5,8(sp)
    80003f74:	00013b03          	ld	s6,0(sp)
    80003f78:	04010113          	addi	sp,sp,64
    80003f7c:	00008067          	ret
    80003f80:	00001517          	auipc	a0,0x1
    80003f84:	34850513          	addi	a0,a0,840 # 800052c8 <digits+0x18>
    80003f88:	fffff097          	auipc	ra,0xfffff
    80003f8c:	3d4080e7          	jalr	980(ra) # 8000335c <panic>

0000000080003f90 <kfree>:
    80003f90:	fe010113          	addi	sp,sp,-32
    80003f94:	00813823          	sd	s0,16(sp)
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00913423          	sd	s1,8(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    80003fa4:	03451793          	slli	a5,a0,0x34
    80003fa8:	04079c63          	bnez	a5,80004000 <kfree+0x70>
    80003fac:	00003797          	auipc	a5,0x3
    80003fb0:	01478793          	addi	a5,a5,20 # 80006fc0 <end>
    80003fb4:	00050493          	mv	s1,a0
    80003fb8:	04f56463          	bltu	a0,a5,80004000 <kfree+0x70>
    80003fbc:	01100793          	li	a5,17
    80003fc0:	01b79793          	slli	a5,a5,0x1b
    80003fc4:	02f57e63          	bgeu	a0,a5,80004000 <kfree+0x70>
    80003fc8:	00001637          	lui	a2,0x1
    80003fcc:	00100593          	li	a1,1
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	478080e7          	jalr	1144(ra) # 80004448 <__memset>
    80003fd8:	00002797          	auipc	a5,0x2
    80003fdc:	d4878793          	addi	a5,a5,-696 # 80005d20 <kmem>
    80003fe0:	0007b703          	ld	a4,0(a5)
    80003fe4:	01813083          	ld	ra,24(sp)
    80003fe8:	01013403          	ld	s0,16(sp)
    80003fec:	00e4b023          	sd	a4,0(s1)
    80003ff0:	0097b023          	sd	s1,0(a5)
    80003ff4:	00813483          	ld	s1,8(sp)
    80003ff8:	02010113          	addi	sp,sp,32
    80003ffc:	00008067          	ret
    80004000:	00001517          	auipc	a0,0x1
    80004004:	2c850513          	addi	a0,a0,712 # 800052c8 <digits+0x18>
    80004008:	fffff097          	auipc	ra,0xfffff
    8000400c:	354080e7          	jalr	852(ra) # 8000335c <panic>

0000000080004010 <kalloc>:
    80004010:	fe010113          	addi	sp,sp,-32
    80004014:	00813823          	sd	s0,16(sp)
    80004018:	00913423          	sd	s1,8(sp)
    8000401c:	00113c23          	sd	ra,24(sp)
    80004020:	02010413          	addi	s0,sp,32
    80004024:	00002797          	auipc	a5,0x2
    80004028:	cfc78793          	addi	a5,a5,-772 # 80005d20 <kmem>
    8000402c:	0007b483          	ld	s1,0(a5)
    80004030:	02048063          	beqz	s1,80004050 <kalloc+0x40>
    80004034:	0004b703          	ld	a4,0(s1)
    80004038:	00001637          	lui	a2,0x1
    8000403c:	00500593          	li	a1,5
    80004040:	00048513          	mv	a0,s1
    80004044:	00e7b023          	sd	a4,0(a5)
    80004048:	00000097          	auipc	ra,0x0
    8000404c:	400080e7          	jalr	1024(ra) # 80004448 <__memset>
    80004050:	01813083          	ld	ra,24(sp)
    80004054:	01013403          	ld	s0,16(sp)
    80004058:	00048513          	mv	a0,s1
    8000405c:	00813483          	ld	s1,8(sp)
    80004060:	02010113          	addi	sp,sp,32
    80004064:	00008067          	ret

0000000080004068 <initlock>:
    80004068:	ff010113          	addi	sp,sp,-16
    8000406c:	00813423          	sd	s0,8(sp)
    80004070:	01010413          	addi	s0,sp,16
    80004074:	00813403          	ld	s0,8(sp)
    80004078:	00b53423          	sd	a1,8(a0)
    8000407c:	00052023          	sw	zero,0(a0)
    80004080:	00053823          	sd	zero,16(a0)
    80004084:	01010113          	addi	sp,sp,16
    80004088:	00008067          	ret

000000008000408c <acquire>:
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00813823          	sd	s0,16(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	01213023          	sd	s2,0(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	00050493          	mv	s1,a0
    800040a8:	10002973          	csrr	s2,sstatus
    800040ac:	100027f3          	csrr	a5,sstatus
    800040b0:	ffd7f793          	andi	a5,a5,-3
    800040b4:	10079073          	csrw	sstatus,a5
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	8e0080e7          	jalr	-1824(ra) # 80002998 <mycpu>
    800040c0:	07852783          	lw	a5,120(a0)
    800040c4:	06078e63          	beqz	a5,80004140 <acquire+0xb4>
    800040c8:	fffff097          	auipc	ra,0xfffff
    800040cc:	8d0080e7          	jalr	-1840(ra) # 80002998 <mycpu>
    800040d0:	07852783          	lw	a5,120(a0)
    800040d4:	0004a703          	lw	a4,0(s1)
    800040d8:	0017879b          	addiw	a5,a5,1
    800040dc:	06f52c23          	sw	a5,120(a0)
    800040e0:	04071063          	bnez	a4,80004120 <acquire+0x94>
    800040e4:	00100713          	li	a4,1
    800040e8:	00070793          	mv	a5,a4
    800040ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800040f0:	0007879b          	sext.w	a5,a5
    800040f4:	fe079ae3          	bnez	a5,800040e8 <acquire+0x5c>
    800040f8:	0ff0000f          	fence
    800040fc:	fffff097          	auipc	ra,0xfffff
    80004100:	89c080e7          	jalr	-1892(ra) # 80002998 <mycpu>
    80004104:	01813083          	ld	ra,24(sp)
    80004108:	01013403          	ld	s0,16(sp)
    8000410c:	00a4b823          	sd	a0,16(s1)
    80004110:	00013903          	ld	s2,0(sp)
    80004114:	00813483          	ld	s1,8(sp)
    80004118:	02010113          	addi	sp,sp,32
    8000411c:	00008067          	ret
    80004120:	0104b903          	ld	s2,16(s1)
    80004124:	fffff097          	auipc	ra,0xfffff
    80004128:	874080e7          	jalr	-1932(ra) # 80002998 <mycpu>
    8000412c:	faa91ce3          	bne	s2,a0,800040e4 <acquire+0x58>
    80004130:	00001517          	auipc	a0,0x1
    80004134:	1a050513          	addi	a0,a0,416 # 800052d0 <digits+0x20>
    80004138:	fffff097          	auipc	ra,0xfffff
    8000413c:	224080e7          	jalr	548(ra) # 8000335c <panic>
    80004140:	00195913          	srli	s2,s2,0x1
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	854080e7          	jalr	-1964(ra) # 80002998 <mycpu>
    8000414c:	00197913          	andi	s2,s2,1
    80004150:	07252e23          	sw	s2,124(a0)
    80004154:	f75ff06f          	j	800040c8 <acquire+0x3c>

0000000080004158 <release>:
    80004158:	fe010113          	addi	sp,sp,-32
    8000415c:	00813823          	sd	s0,16(sp)
    80004160:	00113c23          	sd	ra,24(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	01213023          	sd	s2,0(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	00052783          	lw	a5,0(a0)
    80004174:	00079a63          	bnez	a5,80004188 <release+0x30>
    80004178:	00001517          	auipc	a0,0x1
    8000417c:	16050513          	addi	a0,a0,352 # 800052d8 <digits+0x28>
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	1dc080e7          	jalr	476(ra) # 8000335c <panic>
    80004188:	01053903          	ld	s2,16(a0)
    8000418c:	00050493          	mv	s1,a0
    80004190:	fffff097          	auipc	ra,0xfffff
    80004194:	808080e7          	jalr	-2040(ra) # 80002998 <mycpu>
    80004198:	fea910e3          	bne	s2,a0,80004178 <release+0x20>
    8000419c:	0004b823          	sd	zero,16(s1)
    800041a0:	0ff0000f          	fence
    800041a4:	0f50000f          	fence	iorw,ow
    800041a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	7ec080e7          	jalr	2028(ra) # 80002998 <mycpu>
    800041b4:	100027f3          	csrr	a5,sstatus
    800041b8:	0027f793          	andi	a5,a5,2
    800041bc:	04079a63          	bnez	a5,80004210 <release+0xb8>
    800041c0:	07852783          	lw	a5,120(a0)
    800041c4:	02f05e63          	blez	a5,80004200 <release+0xa8>
    800041c8:	fff7871b          	addiw	a4,a5,-1
    800041cc:	06e52c23          	sw	a4,120(a0)
    800041d0:	00071c63          	bnez	a4,800041e8 <release+0x90>
    800041d4:	07c52783          	lw	a5,124(a0)
    800041d8:	00078863          	beqz	a5,800041e8 <release+0x90>
    800041dc:	100027f3          	csrr	a5,sstatus
    800041e0:	0027e793          	ori	a5,a5,2
    800041e4:	10079073          	csrw	sstatus,a5
    800041e8:	01813083          	ld	ra,24(sp)
    800041ec:	01013403          	ld	s0,16(sp)
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	00013903          	ld	s2,0(sp)
    800041f8:	02010113          	addi	sp,sp,32
    800041fc:	00008067          	ret
    80004200:	00001517          	auipc	a0,0x1
    80004204:	0f850513          	addi	a0,a0,248 # 800052f8 <digits+0x48>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	154080e7          	jalr	340(ra) # 8000335c <panic>
    80004210:	00001517          	auipc	a0,0x1
    80004214:	0d050513          	addi	a0,a0,208 # 800052e0 <digits+0x30>
    80004218:	fffff097          	auipc	ra,0xfffff
    8000421c:	144080e7          	jalr	324(ra) # 8000335c <panic>

0000000080004220 <holding>:
    80004220:	00052783          	lw	a5,0(a0)
    80004224:	00079663          	bnez	a5,80004230 <holding+0x10>
    80004228:	00000513          	li	a0,0
    8000422c:	00008067          	ret
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	00813823          	sd	s0,16(sp)
    80004238:	00913423          	sd	s1,8(sp)
    8000423c:	00113c23          	sd	ra,24(sp)
    80004240:	02010413          	addi	s0,sp,32
    80004244:	01053483          	ld	s1,16(a0)
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	750080e7          	jalr	1872(ra) # 80002998 <mycpu>
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	40a48533          	sub	a0,s1,a0
    8000425c:	00153513          	seqz	a0,a0
    80004260:	00813483          	ld	s1,8(sp)
    80004264:	02010113          	addi	sp,sp,32
    80004268:	00008067          	ret

000000008000426c <push_off>:
    8000426c:	fe010113          	addi	sp,sp,-32
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	00913423          	sd	s1,8(sp)
    8000427c:	02010413          	addi	s0,sp,32
    80004280:	100024f3          	csrr	s1,sstatus
    80004284:	100027f3          	csrr	a5,sstatus
    80004288:	ffd7f793          	andi	a5,a5,-3
    8000428c:	10079073          	csrw	sstatus,a5
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	708080e7          	jalr	1800(ra) # 80002998 <mycpu>
    80004298:	07852783          	lw	a5,120(a0)
    8000429c:	02078663          	beqz	a5,800042c8 <push_off+0x5c>
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	6f8080e7          	jalr	1784(ra) # 80002998 <mycpu>
    800042a8:	07852783          	lw	a5,120(a0)
    800042ac:	01813083          	ld	ra,24(sp)
    800042b0:	01013403          	ld	s0,16(sp)
    800042b4:	0017879b          	addiw	a5,a5,1
    800042b8:	06f52c23          	sw	a5,120(a0)
    800042bc:	00813483          	ld	s1,8(sp)
    800042c0:	02010113          	addi	sp,sp,32
    800042c4:	00008067          	ret
    800042c8:	0014d493          	srli	s1,s1,0x1
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	6cc080e7          	jalr	1740(ra) # 80002998 <mycpu>
    800042d4:	0014f493          	andi	s1,s1,1
    800042d8:	06952e23          	sw	s1,124(a0)
    800042dc:	fc5ff06f          	j	800042a0 <push_off+0x34>

00000000800042e0 <pop_off>:
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00813023          	sd	s0,0(sp)
    800042e8:	00113423          	sd	ra,8(sp)
    800042ec:	01010413          	addi	s0,sp,16
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	6a8080e7          	jalr	1704(ra) # 80002998 <mycpu>
    800042f8:	100027f3          	csrr	a5,sstatus
    800042fc:	0027f793          	andi	a5,a5,2
    80004300:	04079663          	bnez	a5,8000434c <pop_off+0x6c>
    80004304:	07852783          	lw	a5,120(a0)
    80004308:	02f05a63          	blez	a5,8000433c <pop_off+0x5c>
    8000430c:	fff7871b          	addiw	a4,a5,-1
    80004310:	06e52c23          	sw	a4,120(a0)
    80004314:	00071c63          	bnez	a4,8000432c <pop_off+0x4c>
    80004318:	07c52783          	lw	a5,124(a0)
    8000431c:	00078863          	beqz	a5,8000432c <pop_off+0x4c>
    80004320:	100027f3          	csrr	a5,sstatus
    80004324:	0027e793          	ori	a5,a5,2
    80004328:	10079073          	csrw	sstatus,a5
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret
    8000433c:	00001517          	auipc	a0,0x1
    80004340:	fbc50513          	addi	a0,a0,-68 # 800052f8 <digits+0x48>
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	018080e7          	jalr	24(ra) # 8000335c <panic>
    8000434c:	00001517          	auipc	a0,0x1
    80004350:	f9450513          	addi	a0,a0,-108 # 800052e0 <digits+0x30>
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	008080e7          	jalr	8(ra) # 8000335c <panic>

000000008000435c <push_on>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00113c23          	sd	ra,24(sp)
    80004368:	00913423          	sd	s1,8(sp)
    8000436c:	02010413          	addi	s0,sp,32
    80004370:	100024f3          	csrr	s1,sstatus
    80004374:	100027f3          	csrr	a5,sstatus
    80004378:	0027e793          	ori	a5,a5,2
    8000437c:	10079073          	csrw	sstatus,a5
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	618080e7          	jalr	1560(ra) # 80002998 <mycpu>
    80004388:	07852783          	lw	a5,120(a0)
    8000438c:	02078663          	beqz	a5,800043b8 <push_on+0x5c>
    80004390:	ffffe097          	auipc	ra,0xffffe
    80004394:	608080e7          	jalr	1544(ra) # 80002998 <mycpu>
    80004398:	07852783          	lw	a5,120(a0)
    8000439c:	01813083          	ld	ra,24(sp)
    800043a0:	01013403          	ld	s0,16(sp)
    800043a4:	0017879b          	addiw	a5,a5,1
    800043a8:	06f52c23          	sw	a5,120(a0)
    800043ac:	00813483          	ld	s1,8(sp)
    800043b0:	02010113          	addi	sp,sp,32
    800043b4:	00008067          	ret
    800043b8:	0014d493          	srli	s1,s1,0x1
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	5dc080e7          	jalr	1500(ra) # 80002998 <mycpu>
    800043c4:	0014f493          	andi	s1,s1,1
    800043c8:	06952e23          	sw	s1,124(a0)
    800043cc:	fc5ff06f          	j	80004390 <push_on+0x34>

00000000800043d0 <pop_on>:
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00813023          	sd	s0,0(sp)
    800043d8:	00113423          	sd	ra,8(sp)
    800043dc:	01010413          	addi	s0,sp,16
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	5b8080e7          	jalr	1464(ra) # 80002998 <mycpu>
    800043e8:	100027f3          	csrr	a5,sstatus
    800043ec:	0027f793          	andi	a5,a5,2
    800043f0:	04078463          	beqz	a5,80004438 <pop_on+0x68>
    800043f4:	07852783          	lw	a5,120(a0)
    800043f8:	02f05863          	blez	a5,80004428 <pop_on+0x58>
    800043fc:	fff7879b          	addiw	a5,a5,-1
    80004400:	06f52c23          	sw	a5,120(a0)
    80004404:	07853783          	ld	a5,120(a0)
    80004408:	00079863          	bnez	a5,80004418 <pop_on+0x48>
    8000440c:	100027f3          	csrr	a5,sstatus
    80004410:	ffd7f793          	andi	a5,a5,-3
    80004414:	10079073          	csrw	sstatus,a5
    80004418:	00813083          	ld	ra,8(sp)
    8000441c:	00013403          	ld	s0,0(sp)
    80004420:	01010113          	addi	sp,sp,16
    80004424:	00008067          	ret
    80004428:	00001517          	auipc	a0,0x1
    8000442c:	ef850513          	addi	a0,a0,-264 # 80005320 <digits+0x70>
    80004430:	fffff097          	auipc	ra,0xfffff
    80004434:	f2c080e7          	jalr	-212(ra) # 8000335c <panic>
    80004438:	00001517          	auipc	a0,0x1
    8000443c:	ec850513          	addi	a0,a0,-312 # 80005300 <digits+0x50>
    80004440:	fffff097          	auipc	ra,0xfffff
    80004444:	f1c080e7          	jalr	-228(ra) # 8000335c <panic>

0000000080004448 <__memset>:
    80004448:	ff010113          	addi	sp,sp,-16
    8000444c:	00813423          	sd	s0,8(sp)
    80004450:	01010413          	addi	s0,sp,16
    80004454:	1a060e63          	beqz	a2,80004610 <__memset+0x1c8>
    80004458:	40a007b3          	neg	a5,a0
    8000445c:	0077f793          	andi	a5,a5,7
    80004460:	00778693          	addi	a3,a5,7
    80004464:	00b00813          	li	a6,11
    80004468:	0ff5f593          	andi	a1,a1,255
    8000446c:	fff6071b          	addiw	a4,a2,-1
    80004470:	1b06e663          	bltu	a3,a6,8000461c <__memset+0x1d4>
    80004474:	1cd76463          	bltu	a4,a3,8000463c <__memset+0x1f4>
    80004478:	1a078e63          	beqz	a5,80004634 <__memset+0x1ec>
    8000447c:	00b50023          	sb	a1,0(a0)
    80004480:	00100713          	li	a4,1
    80004484:	1ae78463          	beq	a5,a4,8000462c <__memset+0x1e4>
    80004488:	00b500a3          	sb	a1,1(a0)
    8000448c:	00200713          	li	a4,2
    80004490:	1ae78a63          	beq	a5,a4,80004644 <__memset+0x1fc>
    80004494:	00b50123          	sb	a1,2(a0)
    80004498:	00300713          	li	a4,3
    8000449c:	18e78463          	beq	a5,a4,80004624 <__memset+0x1dc>
    800044a0:	00b501a3          	sb	a1,3(a0)
    800044a4:	00400713          	li	a4,4
    800044a8:	1ae78263          	beq	a5,a4,8000464c <__memset+0x204>
    800044ac:	00b50223          	sb	a1,4(a0)
    800044b0:	00500713          	li	a4,5
    800044b4:	1ae78063          	beq	a5,a4,80004654 <__memset+0x20c>
    800044b8:	00b502a3          	sb	a1,5(a0)
    800044bc:	00700713          	li	a4,7
    800044c0:	18e79e63          	bne	a5,a4,8000465c <__memset+0x214>
    800044c4:	00b50323          	sb	a1,6(a0)
    800044c8:	00700e93          	li	t4,7
    800044cc:	00859713          	slli	a4,a1,0x8
    800044d0:	00e5e733          	or	a4,a1,a4
    800044d4:	01059e13          	slli	t3,a1,0x10
    800044d8:	01c76e33          	or	t3,a4,t3
    800044dc:	01859313          	slli	t1,a1,0x18
    800044e0:	006e6333          	or	t1,t3,t1
    800044e4:	02059893          	slli	a7,a1,0x20
    800044e8:	40f60e3b          	subw	t3,a2,a5
    800044ec:	011368b3          	or	a7,t1,a7
    800044f0:	02859813          	slli	a6,a1,0x28
    800044f4:	0108e833          	or	a6,a7,a6
    800044f8:	03059693          	slli	a3,a1,0x30
    800044fc:	003e589b          	srliw	a7,t3,0x3
    80004500:	00d866b3          	or	a3,a6,a3
    80004504:	03859713          	slli	a4,a1,0x38
    80004508:	00389813          	slli	a6,a7,0x3
    8000450c:	00f507b3          	add	a5,a0,a5
    80004510:	00e6e733          	or	a4,a3,a4
    80004514:	000e089b          	sext.w	a7,t3
    80004518:	00f806b3          	add	a3,a6,a5
    8000451c:	00e7b023          	sd	a4,0(a5)
    80004520:	00878793          	addi	a5,a5,8
    80004524:	fed79ce3          	bne	a5,a3,8000451c <__memset+0xd4>
    80004528:	ff8e7793          	andi	a5,t3,-8
    8000452c:	0007871b          	sext.w	a4,a5
    80004530:	01d787bb          	addw	a5,a5,t4
    80004534:	0ce88e63          	beq	a7,a4,80004610 <__memset+0x1c8>
    80004538:	00f50733          	add	a4,a0,a5
    8000453c:	00b70023          	sb	a1,0(a4)
    80004540:	0017871b          	addiw	a4,a5,1
    80004544:	0cc77663          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    80004548:	00e50733          	add	a4,a0,a4
    8000454c:	00b70023          	sb	a1,0(a4)
    80004550:	0027871b          	addiw	a4,a5,2
    80004554:	0ac77e63          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    80004558:	00e50733          	add	a4,a0,a4
    8000455c:	00b70023          	sb	a1,0(a4)
    80004560:	0037871b          	addiw	a4,a5,3
    80004564:	0ac77663          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    80004568:	00e50733          	add	a4,a0,a4
    8000456c:	00b70023          	sb	a1,0(a4)
    80004570:	0047871b          	addiw	a4,a5,4
    80004574:	08c77e63          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    80004578:	00e50733          	add	a4,a0,a4
    8000457c:	00b70023          	sb	a1,0(a4)
    80004580:	0057871b          	addiw	a4,a5,5
    80004584:	08c77663          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    80004588:	00e50733          	add	a4,a0,a4
    8000458c:	00b70023          	sb	a1,0(a4)
    80004590:	0067871b          	addiw	a4,a5,6
    80004594:	06c77e63          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    80004598:	00e50733          	add	a4,a0,a4
    8000459c:	00b70023          	sb	a1,0(a4)
    800045a0:	0077871b          	addiw	a4,a5,7
    800045a4:	06c77663          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    800045a8:	00e50733          	add	a4,a0,a4
    800045ac:	00b70023          	sb	a1,0(a4)
    800045b0:	0087871b          	addiw	a4,a5,8
    800045b4:	04c77e63          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    800045b8:	00e50733          	add	a4,a0,a4
    800045bc:	00b70023          	sb	a1,0(a4)
    800045c0:	0097871b          	addiw	a4,a5,9
    800045c4:	04c77663          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    800045c8:	00e50733          	add	a4,a0,a4
    800045cc:	00b70023          	sb	a1,0(a4)
    800045d0:	00a7871b          	addiw	a4,a5,10
    800045d4:	02c77e63          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    800045d8:	00e50733          	add	a4,a0,a4
    800045dc:	00b70023          	sb	a1,0(a4)
    800045e0:	00b7871b          	addiw	a4,a5,11
    800045e4:	02c77663          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    800045e8:	00e50733          	add	a4,a0,a4
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	00c7871b          	addiw	a4,a5,12
    800045f4:	00c77e63          	bgeu	a4,a2,80004610 <__memset+0x1c8>
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00b70023          	sb	a1,0(a4)
    80004600:	00d7879b          	addiw	a5,a5,13
    80004604:	00c7f663          	bgeu	a5,a2,80004610 <__memset+0x1c8>
    80004608:	00f507b3          	add	a5,a0,a5
    8000460c:	00b78023          	sb	a1,0(a5)
    80004610:	00813403          	ld	s0,8(sp)
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00008067          	ret
    8000461c:	00b00693          	li	a3,11
    80004620:	e55ff06f          	j	80004474 <__memset+0x2c>
    80004624:	00300e93          	li	t4,3
    80004628:	ea5ff06f          	j	800044cc <__memset+0x84>
    8000462c:	00100e93          	li	t4,1
    80004630:	e9dff06f          	j	800044cc <__memset+0x84>
    80004634:	00000e93          	li	t4,0
    80004638:	e95ff06f          	j	800044cc <__memset+0x84>
    8000463c:	00000793          	li	a5,0
    80004640:	ef9ff06f          	j	80004538 <__memset+0xf0>
    80004644:	00200e93          	li	t4,2
    80004648:	e85ff06f          	j	800044cc <__memset+0x84>
    8000464c:	00400e93          	li	t4,4
    80004650:	e7dff06f          	j	800044cc <__memset+0x84>
    80004654:	00500e93          	li	t4,5
    80004658:	e75ff06f          	j	800044cc <__memset+0x84>
    8000465c:	00600e93          	li	t4,6
    80004660:	e6dff06f          	j	800044cc <__memset+0x84>

0000000080004664 <__memmove>:
    80004664:	ff010113          	addi	sp,sp,-16
    80004668:	00813423          	sd	s0,8(sp)
    8000466c:	01010413          	addi	s0,sp,16
    80004670:	0e060863          	beqz	a2,80004760 <__memmove+0xfc>
    80004674:	fff6069b          	addiw	a3,a2,-1
    80004678:	0006881b          	sext.w	a6,a3
    8000467c:	0ea5e863          	bltu	a1,a0,8000476c <__memmove+0x108>
    80004680:	00758713          	addi	a4,a1,7
    80004684:	00a5e7b3          	or	a5,a1,a0
    80004688:	40a70733          	sub	a4,a4,a0
    8000468c:	0077f793          	andi	a5,a5,7
    80004690:	00f73713          	sltiu	a4,a4,15
    80004694:	00174713          	xori	a4,a4,1
    80004698:	0017b793          	seqz	a5,a5
    8000469c:	00e7f7b3          	and	a5,a5,a4
    800046a0:	10078863          	beqz	a5,800047b0 <__memmove+0x14c>
    800046a4:	00900793          	li	a5,9
    800046a8:	1107f463          	bgeu	a5,a6,800047b0 <__memmove+0x14c>
    800046ac:	0036581b          	srliw	a6,a2,0x3
    800046b0:	fff8081b          	addiw	a6,a6,-1
    800046b4:	02081813          	slli	a6,a6,0x20
    800046b8:	01d85893          	srli	a7,a6,0x1d
    800046bc:	00858813          	addi	a6,a1,8
    800046c0:	00058793          	mv	a5,a1
    800046c4:	00050713          	mv	a4,a0
    800046c8:	01088833          	add	a6,a7,a6
    800046cc:	0007b883          	ld	a7,0(a5)
    800046d0:	00878793          	addi	a5,a5,8
    800046d4:	00870713          	addi	a4,a4,8
    800046d8:	ff173c23          	sd	a7,-8(a4)
    800046dc:	ff0798e3          	bne	a5,a6,800046cc <__memmove+0x68>
    800046e0:	ff867713          	andi	a4,a2,-8
    800046e4:	02071793          	slli	a5,a4,0x20
    800046e8:	0207d793          	srli	a5,a5,0x20
    800046ec:	00f585b3          	add	a1,a1,a5
    800046f0:	40e686bb          	subw	a3,a3,a4
    800046f4:	00f507b3          	add	a5,a0,a5
    800046f8:	06e60463          	beq	a2,a4,80004760 <__memmove+0xfc>
    800046fc:	0005c703          	lbu	a4,0(a1)
    80004700:	00e78023          	sb	a4,0(a5)
    80004704:	04068e63          	beqz	a3,80004760 <__memmove+0xfc>
    80004708:	0015c603          	lbu	a2,1(a1)
    8000470c:	00100713          	li	a4,1
    80004710:	00c780a3          	sb	a2,1(a5)
    80004714:	04e68663          	beq	a3,a4,80004760 <__memmove+0xfc>
    80004718:	0025c603          	lbu	a2,2(a1)
    8000471c:	00200713          	li	a4,2
    80004720:	00c78123          	sb	a2,2(a5)
    80004724:	02e68e63          	beq	a3,a4,80004760 <__memmove+0xfc>
    80004728:	0035c603          	lbu	a2,3(a1)
    8000472c:	00300713          	li	a4,3
    80004730:	00c781a3          	sb	a2,3(a5)
    80004734:	02e68663          	beq	a3,a4,80004760 <__memmove+0xfc>
    80004738:	0045c603          	lbu	a2,4(a1)
    8000473c:	00400713          	li	a4,4
    80004740:	00c78223          	sb	a2,4(a5)
    80004744:	00e68e63          	beq	a3,a4,80004760 <__memmove+0xfc>
    80004748:	0055c603          	lbu	a2,5(a1)
    8000474c:	00500713          	li	a4,5
    80004750:	00c782a3          	sb	a2,5(a5)
    80004754:	00e68663          	beq	a3,a4,80004760 <__memmove+0xfc>
    80004758:	0065c703          	lbu	a4,6(a1)
    8000475c:	00e78323          	sb	a4,6(a5)
    80004760:	00813403          	ld	s0,8(sp)
    80004764:	01010113          	addi	sp,sp,16
    80004768:	00008067          	ret
    8000476c:	02061713          	slli	a4,a2,0x20
    80004770:	02075713          	srli	a4,a4,0x20
    80004774:	00e587b3          	add	a5,a1,a4
    80004778:	f0f574e3          	bgeu	a0,a5,80004680 <__memmove+0x1c>
    8000477c:	02069613          	slli	a2,a3,0x20
    80004780:	02065613          	srli	a2,a2,0x20
    80004784:	fff64613          	not	a2,a2
    80004788:	00e50733          	add	a4,a0,a4
    8000478c:	00c78633          	add	a2,a5,a2
    80004790:	fff7c683          	lbu	a3,-1(a5)
    80004794:	fff78793          	addi	a5,a5,-1
    80004798:	fff70713          	addi	a4,a4,-1
    8000479c:	00d70023          	sb	a3,0(a4)
    800047a0:	fec798e3          	bne	a5,a2,80004790 <__memmove+0x12c>
    800047a4:	00813403          	ld	s0,8(sp)
    800047a8:	01010113          	addi	sp,sp,16
    800047ac:	00008067          	ret
    800047b0:	02069713          	slli	a4,a3,0x20
    800047b4:	02075713          	srli	a4,a4,0x20
    800047b8:	00170713          	addi	a4,a4,1
    800047bc:	00e50733          	add	a4,a0,a4
    800047c0:	00050793          	mv	a5,a0
    800047c4:	0005c683          	lbu	a3,0(a1)
    800047c8:	00178793          	addi	a5,a5,1
    800047cc:	00158593          	addi	a1,a1,1
    800047d0:	fed78fa3          	sb	a3,-1(a5)
    800047d4:	fee798e3          	bne	a5,a4,800047c4 <__memmove+0x160>
    800047d8:	f89ff06f          	j	80004760 <__memmove+0xfc>

00000000800047dc <__putc>:
    800047dc:	fe010113          	addi	sp,sp,-32
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00113c23          	sd	ra,24(sp)
    800047e8:	02010413          	addi	s0,sp,32
    800047ec:	00050793          	mv	a5,a0
    800047f0:	fef40593          	addi	a1,s0,-17
    800047f4:	00100613          	li	a2,1
    800047f8:	00000513          	li	a0,0
    800047fc:	fef407a3          	sb	a5,-17(s0)
    80004800:	fffff097          	auipc	ra,0xfffff
    80004804:	b3c080e7          	jalr	-1220(ra) # 8000333c <console_write>
    80004808:	01813083          	ld	ra,24(sp)
    8000480c:	01013403          	ld	s0,16(sp)
    80004810:	02010113          	addi	sp,sp,32
    80004814:	00008067          	ret

0000000080004818 <__getc>:
    80004818:	fe010113          	addi	sp,sp,-32
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	02010413          	addi	s0,sp,32
    80004828:	fe840593          	addi	a1,s0,-24
    8000482c:	00100613          	li	a2,1
    80004830:	00000513          	li	a0,0
    80004834:	fffff097          	auipc	ra,0xfffff
    80004838:	ae8080e7          	jalr	-1304(ra) # 8000331c <console_read>
    8000483c:	fe844503          	lbu	a0,-24(s0)
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	02010113          	addi	sp,sp,32
    8000484c:	00008067          	ret

0000000080004850 <console_handler>:
    80004850:	fe010113          	addi	sp,sp,-32
    80004854:	00813823          	sd	s0,16(sp)
    80004858:	00113c23          	sd	ra,24(sp)
    8000485c:	00913423          	sd	s1,8(sp)
    80004860:	02010413          	addi	s0,sp,32
    80004864:	14202773          	csrr	a4,scause
    80004868:	100027f3          	csrr	a5,sstatus
    8000486c:	0027f793          	andi	a5,a5,2
    80004870:	06079e63          	bnez	a5,800048ec <console_handler+0x9c>
    80004874:	00074c63          	bltz	a4,8000488c <console_handler+0x3c>
    80004878:	01813083          	ld	ra,24(sp)
    8000487c:	01013403          	ld	s0,16(sp)
    80004880:	00813483          	ld	s1,8(sp)
    80004884:	02010113          	addi	sp,sp,32
    80004888:	00008067          	ret
    8000488c:	0ff77713          	andi	a4,a4,255
    80004890:	00900793          	li	a5,9
    80004894:	fef712e3          	bne	a4,a5,80004878 <console_handler+0x28>
    80004898:	ffffe097          	auipc	ra,0xffffe
    8000489c:	6dc080e7          	jalr	1756(ra) # 80002f74 <plic_claim>
    800048a0:	00a00793          	li	a5,10
    800048a4:	00050493          	mv	s1,a0
    800048a8:	02f50c63          	beq	a0,a5,800048e0 <console_handler+0x90>
    800048ac:	fc0506e3          	beqz	a0,80004878 <console_handler+0x28>
    800048b0:	00050593          	mv	a1,a0
    800048b4:	00001517          	auipc	a0,0x1
    800048b8:	97450513          	addi	a0,a0,-1676 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    800048bc:	fffff097          	auipc	ra,0xfffff
    800048c0:	afc080e7          	jalr	-1284(ra) # 800033b8 <__printf>
    800048c4:	01013403          	ld	s0,16(sp)
    800048c8:	01813083          	ld	ra,24(sp)
    800048cc:	00048513          	mv	a0,s1
    800048d0:	00813483          	ld	s1,8(sp)
    800048d4:	02010113          	addi	sp,sp,32
    800048d8:	ffffe317          	auipc	t1,0xffffe
    800048dc:	6d430067          	jr	1748(t1) # 80002fac <plic_complete>
    800048e0:	fffff097          	auipc	ra,0xfffff
    800048e4:	3e0080e7          	jalr	992(ra) # 80003cc0 <uartintr>
    800048e8:	fddff06f          	j	800048c4 <console_handler+0x74>
    800048ec:	00001517          	auipc	a0,0x1
    800048f0:	a3c50513          	addi	a0,a0,-1476 # 80005328 <digits+0x78>
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	a68080e7          	jalr	-1432(ra) # 8000335c <panic>
	...
