
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	a5013103          	ld	sp,-1456(sp) # 80005a50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	354020ef          	jal	ra,80002370 <start>

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
    80001184:	341000ef          	jal	ra,80001cc4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a3, %0" :: "r"(arg));
    800012dc:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :: "r"(start_routine));
    800012e0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    800012e4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800012e8:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800012ec:	00000073          	ecall
    uint64 r;//
    __asm__ volatile("mv %0, a0": "=r"(r));
    800012f0:	00050513          	mv	a0,a0
    return (int)r;
}
    800012f4:	0005051b          	sext.w	a0,a0
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_ZL9fibonaccim>:
        if(i == 10) thread_exit();
    }
}

static uint64 fibonacci(uint64 n)
{
    80001304:	fe010113          	addi	sp,sp,-32
    80001308:	00113c23          	sd	ra,24(sp)
    8000130c:	00813823          	sd	s0,16(sp)
    80001310:	00913423          	sd	s1,8(sp)
    80001314:	01213023          	sd	s2,0(sp)
    80001318:	02010413          	addi	s0,sp,32
    8000131c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001320:	00100793          	li	a5,1
    80001324:	02a7f863          	bgeu	a5,a0,80001354 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001328:	00a00793          	li	a5,10
    8000132c:	02f577b3          	remu	a5,a0,a5
    80001330:	02078e63          	beqz	a5,8000136c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001334:	fff48513          	addi	a0,s1,-1
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	fcc080e7          	jalr	-52(ra) # 80001304 <_ZL9fibonaccim>
    80001340:	00050913          	mv	s2,a0
    80001344:	ffe48513          	addi	a0,s1,-2
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	fbc080e7          	jalr	-68(ra) # 80001304 <_ZL9fibonaccim>
    80001350:	00a90533          	add	a0,s2,a0
}
    80001354:	01813083          	ld	ra,24(sp)
    80001358:	01013403          	ld	s0,16(sp)
    8000135c:	00813483          	ld	s1,8(sp)
    80001360:	00013903          	ld	s2,0(sp)
    80001364:	02010113          	addi	sp,sp,32
    80001368:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	654080e7          	jalr	1620(ra) # 800019c0 <_ZN3TCB5yieldEv>
    80001374:	fc1ff06f          	j	80001334 <_ZL9fibonaccim+0x30>

0000000080001378 <_Z11workerBodyAPv>:
{
    80001378:	fe010113          	addi	sp,sp,-32
    8000137c:	00113c23          	sd	ra,24(sp)
    80001380:	00813823          	sd	s0,16(sp)
    80001384:	00913423          	sd	s1,8(sp)
    80001388:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000138c:	00000493          	li	s1,0
    80001390:	0300006f          	j	800013c0 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001394:	00168693          	addi	a3,a3,1
    80001398:	000027b7          	lui	a5,0x2
    8000139c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013a0:	00d7ee63          	bltu	a5,a3,800013bc <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013a4:	00000713          	li	a4,0
    800013a8:	000077b7          	lui	a5,0x7
    800013ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013b0:	fee7e2e3          	bltu	a5,a4,80001394 <_Z11workerBodyAPv+0x1c>
    800013b4:	00170713          	addi	a4,a4,1
    800013b8:	ff1ff06f          	j	800013a8 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800013bc:	00148493          	addi	s1,s1,1
    800013c0:	00900793          	li	a5,9
    800013c4:	0297ec63          	bltu	a5,s1,800013fc <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    800013c8:	00004517          	auipc	a0,0x4
    800013cc:	c5850513          	addi	a0,a0,-936 # 80005020 <CONSOLE_STATUS+0x10>
    800013d0:	00001097          	auipc	ra,0x1
    800013d4:	e74080e7          	jalr	-396(ra) # 80002244 <_Z11printStringPKc>
        printInteger(i);
    800013d8:	00048513          	mv	a0,s1
    800013dc:	00001097          	auipc	ra,0x1
    800013e0:	ed8080e7          	jalr	-296(ra) # 800022b4 <_Z12printIntegerm>
        printString("\n");
    800013e4:	00004517          	auipc	a0,0x4
    800013e8:	d0c50513          	addi	a0,a0,-756 # 800050f0 <CONSOLE_STATUS+0xe0>
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	e58080e7          	jalr	-424(ra) # 80002244 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013f4:	00000693          	li	a3,0
    800013f8:	fa1ff06f          	j	80001398 <_Z11workerBodyAPv+0x20>
}
    800013fc:	01813083          	ld	ra,24(sp)
    80001400:	01013403          	ld	s0,16(sp)
    80001404:	00813483          	ld	s1,8(sp)
    80001408:	02010113          	addi	sp,sp,32
    8000140c:	00008067          	ret

0000000080001410 <_Z11workerBodyBPv>:
{
    80001410:	fe010113          	addi	sp,sp,-32
    80001414:	00113c23          	sd	ra,24(sp)
    80001418:	00813823          	sd	s0,16(sp)
    8000141c:	00913423          	sd	s1,8(sp)
    80001420:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001424:	00000493          	li	s1,0
    80001428:	0380006f          	j	80001460 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    8000142c:	00168693          	addi	a3,a3,1
    80001430:	000027b7          	lui	a5,0x2
    80001434:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001438:	00d7ee63          	bltu	a5,a3,80001454 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000143c:	00000713          	li	a4,0
    80001440:	000077b7          	lui	a5,0x7
    80001444:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001448:	fee7e2e3          	bltu	a5,a4,8000142c <_Z11workerBodyBPv+0x1c>
    8000144c:	00170713          	addi	a4,a4,1
    80001450:	ff1ff06f          	j	80001440 <_Z11workerBodyBPv+0x30>
        if(i == 10) thread_exit();
    80001454:	00a00793          	li	a5,10
    80001458:	04f48263          	beq	s1,a5,8000149c <_Z11workerBodyBPv+0x8c>
    for (uint64 i = 0; i < 16; i++)
    8000145c:	00148493          	addi	s1,s1,1
    80001460:	00f00793          	li	a5,15
    80001464:	0497e263          	bltu	a5,s1,800014a8 <_Z11workerBodyBPv+0x98>
        printString("B: i=");
    80001468:	00004517          	auipc	a0,0x4
    8000146c:	bc050513          	addi	a0,a0,-1088 # 80005028 <CONSOLE_STATUS+0x18>
    80001470:	00001097          	auipc	ra,0x1
    80001474:	dd4080e7          	jalr	-556(ra) # 80002244 <_Z11printStringPKc>
        printInteger(i);
    80001478:	00048513          	mv	a0,s1
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	e38080e7          	jalr	-456(ra) # 800022b4 <_Z12printIntegerm>
        printString("\n");
    80001484:	00004517          	auipc	a0,0x4
    80001488:	c6c50513          	addi	a0,a0,-916 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000148c:	00001097          	auipc	ra,0x1
    80001490:	db8080e7          	jalr	-584(ra) # 80002244 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001494:	00000693          	li	a3,0
    80001498:	f99ff06f          	j	80001430 <_Z11workerBodyBPv+0x20>
        if(i == 10) thread_exit();
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	e0c080e7          	jalr	-500(ra) # 800012a8 <_Z11thread_exitv>
    800014a4:	fb9ff06f          	j	8000145c <_Z11workerBodyBPv+0x4c>
}
    800014a8:	01813083          	ld	ra,24(sp)
    800014ac:	01013403          	ld	s0,16(sp)
    800014b0:	00813483          	ld	s1,8(sp)
    800014b4:	02010113          	addi	sp,sp,32
    800014b8:	00008067          	ret

00000000800014bc <_Z11workerBodyCPv>:

void workerBodyC(void* g)
{
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00113c23          	sd	ra,24(sp)
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00913423          	sd	s1,8(sp)
    800014cc:	01213023          	sd	s2,0(sp)
    800014d0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800014d4:	00000493          	li	s1,0
    800014d8:	0380006f          	j	80001510 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800014dc:	00004517          	auipc	a0,0x4
    800014e0:	b5450513          	addi	a0,a0,-1196 # 80005030 <CONSOLE_STATUS+0x20>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	d60080e7          	jalr	-672(ra) # 80002244 <_Z11printStringPKc>
        printInteger(i);
    800014ec:	00048513          	mv	a0,s1
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	dc4080e7          	jalr	-572(ra) # 800022b4 <_Z12printIntegerm>
        printString("\n");
    800014f8:	00004517          	auipc	a0,0x4
    800014fc:	bf850513          	addi	a0,a0,-1032 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001500:	00001097          	auipc	ra,0x1
    80001504:	d44080e7          	jalr	-700(ra) # 80002244 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001508:	0014849b          	addiw	s1,s1,1
    8000150c:	0ff4f493          	andi	s1,s1,255
    80001510:	00200793          	li	a5,2
    80001514:	fc97f4e3          	bgeu	a5,s1,800014dc <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001518:	00004517          	auipc	a0,0x4
    8000151c:	b2050513          	addi	a0,a0,-1248 # 80005038 <CONSOLE_STATUS+0x28>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	d24080e7          	jalr	-732(ra) # 80002244 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001528:	00700313          	li	t1,7
    thread_dispatch();
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	d5c080e7          	jalr	-676(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001534:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001538:	00004517          	auipc	a0,0x4
    8000153c:	b1050513          	addi	a0,a0,-1264 # 80005048 <CONSOLE_STATUS+0x38>
    80001540:	00001097          	auipc	ra,0x1
    80001544:	d04080e7          	jalr	-764(ra) # 80002244 <_Z11printStringPKc>
    printInteger(t1);
    80001548:	00090513          	mv	a0,s2
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	d68080e7          	jalr	-664(ra) # 800022b4 <_Z12printIntegerm>
    printString("\n");
    80001554:	00004517          	auipc	a0,0x4
    80001558:	b9c50513          	addi	a0,a0,-1124 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	ce8080e7          	jalr	-792(ra) # 80002244 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001564:	00c00513          	li	a0,12
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	d9c080e7          	jalr	-612(ra) # 80001304 <_ZL9fibonaccim>
    80001570:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001574:	00004517          	auipc	a0,0x4
    80001578:	adc50513          	addi	a0,a0,-1316 # 80005050 <CONSOLE_STATUS+0x40>
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	cc8080e7          	jalr	-824(ra) # 80002244 <_Z11printStringPKc>
    printInteger(result);
    80001584:	00090513          	mv	a0,s2
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	d2c080e7          	jalr	-724(ra) # 800022b4 <_Z12printIntegerm>
    printString("\n");
    80001590:	00004517          	auipc	a0,0x4
    80001594:	b6050513          	addi	a0,a0,-1184 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	cac080e7          	jalr	-852(ra) # 80002244 <_Z11printStringPKc>
    800015a0:	0380006f          	j	800015d8 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800015a4:	00004517          	auipc	a0,0x4
    800015a8:	a8c50513          	addi	a0,a0,-1396 # 80005030 <CONSOLE_STATUS+0x20>
    800015ac:	00001097          	auipc	ra,0x1
    800015b0:	c98080e7          	jalr	-872(ra) # 80002244 <_Z11printStringPKc>
        printInteger(i);
    800015b4:	00048513          	mv	a0,s1
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	cfc080e7          	jalr	-772(ra) # 800022b4 <_Z12printIntegerm>
        printString("\n");
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	b3050513          	addi	a0,a0,-1232 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	c7c080e7          	jalr	-900(ra) # 80002244 <_Z11printStringPKc>
    for (; i < 6; i++)
    800015d0:	0014849b          	addiw	s1,s1,1
    800015d4:	0ff4f493          	andi	s1,s1,255
    800015d8:	00500793          	li	a5,5
    800015dc:	fc97f4e3          	bgeu	a5,s1,800015a4 <_Z11workerBodyCPv+0xe8>
    }
//    TCB::yield();
}
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	00013903          	ld	s2,0(sp)
    800015f0:	02010113          	addi	sp,sp,32
    800015f4:	00008067          	ret

00000000800015f8 <_Z11workerBodyDPv>:

void workerBodyD(void* g)
{
    800015f8:	fe010113          	addi	sp,sp,-32
    800015fc:	00113c23          	sd	ra,24(sp)
    80001600:	00813823          	sd	s0,16(sp)
    80001604:	00913423          	sd	s1,8(sp)
    80001608:	01213023          	sd	s2,0(sp)
    8000160c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001610:	00a00493          	li	s1,10
    80001614:	0380006f          	j	8000164c <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001618:	00004517          	auipc	a0,0x4
    8000161c:	a4850513          	addi	a0,a0,-1464 # 80005060 <CONSOLE_STATUS+0x50>
    80001620:	00001097          	auipc	ra,0x1
    80001624:	c24080e7          	jalr	-988(ra) # 80002244 <_Z11printStringPKc>
        printInteger(i);
    80001628:	00048513          	mv	a0,s1
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	c88080e7          	jalr	-888(ra) # 800022b4 <_Z12printIntegerm>
        printString("\n");
    80001634:	00004517          	auipc	a0,0x4
    80001638:	abc50513          	addi	a0,a0,-1348 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	c08080e7          	jalr	-1016(ra) # 80002244 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001644:	0014849b          	addiw	s1,s1,1
    80001648:	0ff4f493          	andi	s1,s1,255
    8000164c:	00c00793          	li	a5,12
    80001650:	fc97f4e3          	bgeu	a5,s1,80001618 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	a1450513          	addi	a0,a0,-1516 # 80005068 <CONSOLE_STATUS+0x58>
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	be8080e7          	jalr	-1048(ra) # 80002244 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001664:	00500313          	li	t1,5
    thread_dispatch();
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	c20080e7          	jalr	-992(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001670:	01000513          	li	a0,16
    80001674:	00000097          	auipc	ra,0x0
    80001678:	c90080e7          	jalr	-880(ra) # 80001304 <_ZL9fibonaccim>
    8000167c:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001680:	00004517          	auipc	a0,0x4
    80001684:	9f850513          	addi	a0,a0,-1544 # 80005078 <CONSOLE_STATUS+0x68>
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	bbc080e7          	jalr	-1092(ra) # 80002244 <_Z11printStringPKc>
    printInteger(result);
    80001690:	00090513          	mv	a0,s2
    80001694:	00001097          	auipc	ra,0x1
    80001698:	c20080e7          	jalr	-992(ra) # 800022b4 <_Z12printIntegerm>
    printString("\n");
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	a5450513          	addi	a0,a0,-1452 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	ba0080e7          	jalr	-1120(ra) # 80002244 <_Z11printStringPKc>
    800016ac:	0380006f          	j	800016e4 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800016b0:	00004517          	auipc	a0,0x4
    800016b4:	9b050513          	addi	a0,a0,-1616 # 80005060 <CONSOLE_STATUS+0x50>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	b8c080e7          	jalr	-1140(ra) # 80002244 <_Z11printStringPKc>
        printInteger(i);
    800016c0:	00048513          	mv	a0,s1
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	bf0080e7          	jalr	-1040(ra) # 800022b4 <_Z12printIntegerm>
        printString("\n");
    800016cc:	00004517          	auipc	a0,0x4
    800016d0:	a2450513          	addi	a0,a0,-1500 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	b70080e7          	jalr	-1168(ra) # 80002244 <_Z11printStringPKc>
    for (; i < 16; i++)
    800016dc:	0014849b          	addiw	s1,s1,1
    800016e0:	0ff4f493          	andi	s1,s1,255
    800016e4:	00f00793          	li	a5,15
    800016e8:	fc97f4e3          	bgeu	a5,s1,800016b0 <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	00013903          	ld	s2,0(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret

0000000080001704 <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001704:	fb010113          	addi	sp,sp,-80
    80001708:	04113423          	sd	ra,72(sp)
    8000170c:	04813023          	sd	s0,64(sp)
    80001710:	02913c23          	sd	s1,56(sp)
    80001714:	05010413          	addi	s0,sp,80
    MemoryAllocator::init();
    80001718:	00001097          	auipc	ra,0x1
    8000171c:	9b8080e7          	jalr	-1608(ra) # 800020d0 <_ZN15MemoryAllocator4initEv>
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001720:	00004797          	auipc	a5,0x4
    80001724:	3207b783          	ld	a5,800(a5) # 80005a40 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001728:	10579073          	csrw	stvec,a5

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    8000172c:	00004797          	auipc	a5,0x4
    80001730:	33c7b783          	ld	a5,828(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001734:	0007b503          	ld	a0,0(a5)
    80001738:	00004797          	auipc	a5,0x4
    8000173c:	2f87b783          	ld	a5,760(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001740:	0007b783          	ld	a5,0(a5)
    80001744:	40f50533          	sub	a0,a0,a5
    80001748:	ff050513          	addi	a0,a0,-16
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    8000174c:	fc057513          	andi	a0,a0,-64
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ad4080e7          	jalr	-1324(ra) # 80001224 <_Z9mem_allocm>
    80001758:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    8000175c:	10050263          	beqz	a0,80001860 <main+0x15c>
        __putc('?');
    }

    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    80001760:	00a00513          	li	a0,10
    80001764:	00000097          	auipc	ra,0x0
    80001768:	ac0080e7          	jalr	-1344(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    8000176c:	10050263          	beqz	a0,80001870 <main+0x16c>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    80001770:	00048513          	mv	a0,s1
    80001774:	00001097          	auipc	ra,0x1
    80001778:	9f4080e7          	jalr	-1548(ra) # 80002168 <_ZN15MemoryAllocator8mem_freeEPKv>
    if(status != 0) {
    8000177c:	10051263          	bnez	a0,80001880 <main+0x17c>
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    80001780:	00a00513          	li	a0,10
    80001784:	00000097          	auipc	ra,0x0
    80001788:	aa0080e7          	jalr	-1376(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    8000178c:	10050263          	beqz	a0,80001890 <main+0x18c>
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(&threads[0],nullptr, nullptr);
    80001790:	00000613          	li	a2,0
    80001794:	00000593          	li	a1,0
    80001798:	fb840513          	addi	a0,s0,-72
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	b34080e7          	jalr	-1228(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800017a4:	fb843703          	ld	a4,-72(s0)
    800017a8:	00004797          	auipc	a5,0x4
    800017ac:	2b87b783          	ld	a5,696(a5) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017b0:	00e7b023          	sd	a4,0(a5)

    //threads[1] = TCB::createThread(workerBodyA, nullptr);
    thread_create(&threads[1],workerBodyA, nullptr);
    800017b4:	00000613          	li	a2,0
    800017b8:	00004597          	auipc	a1,0x4
    800017bc:	2a05b583          	ld	a1,672(a1) # 80005a58 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017c0:	fc040513          	addi	a0,s0,-64
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	b0c080e7          	jalr	-1268(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800017cc:	00004517          	auipc	a0,0x4
    800017d0:	8bc50513          	addi	a0,a0,-1860 # 80005088 <CONSOLE_STATUS+0x78>
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	a70080e7          	jalr	-1424(ra) # 80002244 <_Z11printStringPKc>
    //threads[2] = TCB::createThread(workerBodyB , nullptr);
    thread_create(&threads[2],workerBodyB, nullptr);
    800017dc:	00000613          	li	a2,0
    800017e0:	00004597          	auipc	a1,0x4
    800017e4:	2905b583          	ld	a1,656(a1) # 80005a70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800017e8:	fc840513          	addi	a0,s0,-56
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	ae4080e7          	jalr	-1308(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800017f4:	00004517          	auipc	a0,0x4
    800017f8:	8ac50513          	addi	a0,a0,-1876 # 800050a0 <CONSOLE_STATUS+0x90>
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	a48080e7          	jalr	-1464(ra) # 80002244 <_Z11printStringPKc>
    //threads[3] = TCB::createThread(workerBodyC, nullptr);
    thread_create(&threads[3],workerBodyC, nullptr);
    80001804:	00000613          	li	a2,0
    80001808:	00004597          	auipc	a1,0x4
    8000180c:	2305b583          	ld	a1,560(a1) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001810:	fd040513          	addi	a0,s0,-48
    80001814:	00000097          	auipc	ra,0x0
    80001818:	abc080e7          	jalr	-1348(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000181c:	00004517          	auipc	a0,0x4
    80001820:	89c50513          	addi	a0,a0,-1892 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001824:	00001097          	auipc	ra,0x1
    80001828:	a20080e7          	jalr	-1504(ra) # 80002244 <_Z11printStringPKc>
    //threads[4] = TCB::createThread(workerBodyD, nullptr);
    thread_create(&threads[4],workerBodyD, nullptr);
    8000182c:	00000613          	li	a2,0
    80001830:	00004597          	auipc	a1,0x4
    80001834:	2485b583          	ld	a1,584(a1) # 80005a78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001838:	fd840513          	addi	a0,s0,-40
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	a94080e7          	jalr	-1388(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001844:	00004517          	auipc	a0,0x4
    80001848:	88c50513          	addi	a0,a0,-1908 # 800050d0 <CONSOLE_STATUS+0xc0>
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	9f8080e7          	jalr	-1544(ra) # 80002244 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001854:	00200793          	li	a5,2
    80001858:	1007a073          	csrs	sstatus,a5
}
    8000185c:	04c0006f          	j	800018a8 <main+0x1a4>
        __putc('?');
    80001860:	03f00513          	li	a0,63
    80001864:	00003097          	auipc	ra,0x3
    80001868:	bc8080e7          	jalr	-1080(ra) # 8000442c <__putc>
    8000186c:	ef5ff06f          	j	80001760 <main+0x5c>
        __putc('k');
    80001870:	06b00513          	li	a0,107
    80001874:	00003097          	auipc	ra,0x3
    80001878:	bb8080e7          	jalr	-1096(ra) # 8000442c <__putc>
    8000187c:	ef5ff06f          	j	80001770 <main+0x6c>
        __putc('?');
    80001880:	03f00513          	li	a0,63
    80001884:	00003097          	auipc	ra,0x3
    80001888:	ba8080e7          	jalr	-1112(ra) # 8000442c <__putc>
    8000188c:	ef5ff06f          	j	80001780 <main+0x7c>
        __putc('?');
    80001890:	03f00513          	li	a0,63
    80001894:	00003097          	auipc	ra,0x3
    80001898:	b98080e7          	jalr	-1128(ra) # 8000442c <__putc>
    8000189c:	ef5ff06f          	j	80001790 <main+0x8c>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	9e8080e7          	jalr	-1560(ra) # 80001288 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    800018a8:	fc043783          	ld	a5,-64(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    800018ac:	0307c783          	lbu	a5,48(a5)
    800018b0:	fe0788e3          	beqz	a5,800018a0 <main+0x19c>
             threads[2]->isFinished() &&
    800018b4:	fc843783          	ld	a5,-56(s0)
    800018b8:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    800018bc:	fe0782e3          	beqz	a5,800018a0 <main+0x19c>
             threads[3]->isFinished() &&
    800018c0:	fd043783          	ld	a5,-48(s0)
    800018c4:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    800018c8:	fc078ce3          	beqz	a5,800018a0 <main+0x19c>
             threads[4]->isFinished()))
    800018cc:	fd843783          	ld	a5,-40(s0)
    800018d0:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    800018d4:	fc0786e3          	beqz	a5,800018a0 <main+0x19c>
    800018d8:	fb840493          	addi	s1,s0,-72
    }

    for (auto &thread: threads)
    800018dc:	fe040793          	addi	a5,s0,-32
    800018e0:	00f48c63          	beq	s1,a5,800018f8 <main+0x1f4>
    {
        TCB::deleteThread(thread);
    800018e4:	0004b503          	ld	a0,0(s1)
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	294080e7          	jalr	660(ra) # 80001b7c <_ZN3TCB12deleteThreadEPS_>
    for (auto &thread: threads)
    800018f0:	00848493          	addi	s1,s1,8
    800018f4:	fe9ff06f          	j	800018dc <main+0x1d8>
    }
    printString("Finished\n");
    800018f8:	00003517          	auipc	a0,0x3
    800018fc:	7f050513          	addi	a0,a0,2032 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001900:	00001097          	auipc	ra,0x1
    80001904:	944080e7          	jalr	-1724(ra) # 80002244 <_Z11printStringPKc>

    return 0;
}
    80001908:	00000513          	li	a0,0
    8000190c:	04813083          	ld	ra,72(sp)
    80001910:	04013403          	ld	s0,64(sp)
    80001914:	03813483          	ld	s1,56(sp)
    80001918:	05010113          	addi	sp,sp,80
    8000191c:	00008067          	ret

0000000080001920 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00113423          	sd	ra,8(sp)
    80001928:	00813023          	sd	s0,0(sp)
    8000192c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001930:	00000097          	auipc	ra,0x0
    80001934:	6e4080e7          	jalr	1764(ra) # 80002014 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001938:	00813083          	ld	ra,8(sp)
    8000193c:	00013403          	ld	s0,0(sp)
    80001940:	01010113          	addi	sp,sp,16
    80001944:	00008067          	ret

0000000080001948 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00113423          	sd	ra,8(sp)
    80001950:	00813023          	sd	s0,0(sp)
    80001954:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	6bc080e7          	jalr	1724(ra) # 80002014 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001960:	00813083          	ld	ra,8(sp)
    80001964:	00013403          	ld	s0,0(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00113423          	sd	ra,8(sp)
    80001978:	00813023          	sd	s0,0(sp)
    8000197c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001980:	00000097          	auipc	ra,0x0
    80001984:	7e8080e7          	jalr	2024(ra) # 80002168 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001988:	00813083          	ld	ra,8(sp)
    8000198c:	00013403          	ld	s0,0(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	7c0080e7          	jalr	1984(ra) # 80002168 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800019b0:	00813083          	ld	ra,8(sp)
    800019b4:	00013403          	ld	s0,0(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00813423          	sd	s0,8(sp)
    800019c8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800019cc:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800019d0:	00000073          	ecall
}
    800019d4:	00813403          	ld	s0,8(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	2b0080e7          	jalr	688(ra) # 80001ca4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    800019fc:	00004497          	auipc	s1,0x4
    80001a00:	0d448493          	addi	s1,s1,212 # 80005ad0 <_ZN3TCB7runningE>
    80001a04:	0004b783          	ld	a5,0(s1)
    80001a08:	0007b703          	ld	a4,0(a5)
    80001a0c:	0087b503          	ld	a0,8(a5)
    80001a10:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a14:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f;}
    80001a18:	00100713          	li	a4,1
    80001a1c:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	fa0080e7          	jalr	-96(ra) # 800019c0 <_ZN3TCB5yieldEv>
}
    80001a28:	01813083          	ld	ra,24(sp)
    80001a2c:	01013403          	ld	s0,16(sp)
    80001a30:	00813483          	ld	s1,8(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret

0000000080001a3c <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001a3c:	fe010113          	addi	sp,sp,-32
    80001a40:	00113c23          	sd	ra,24(sp)
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00913423          	sd	s1,8(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001a50:	00004497          	auipc	s1,0x4
    80001a54:	0804b483          	ld	s1,128(s1) # 80005ad0 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001a58:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    80001a5c:	02078c63          	beqz	a5,80001a94 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	4ac080e7          	jalr	1196(ra) # 80001f0c <_ZN9Scheduler3getEv>
    80001a68:	00004797          	auipc	a5,0x4
    80001a6c:	06a7b423          	sd	a0,104(a5) # 80005ad0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a70:	01850593          	addi	a1,a0,24
    80001a74:	01848513          	addi	a0,s1,24
    80001a78:	fffff097          	auipc	ra,0xfffff
    80001a7c:	798080e7          	jalr	1944(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a80:	01813083          	ld	ra,24(sp)
    80001a84:	01013403          	ld	s0,16(sp)
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	02010113          	addi	sp,sp,32
    80001a90:	00008067          	ret
        Scheduler::put(old);
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	4dc080e7          	jalr	1244(ra) # 80001f74 <_ZN9Scheduler3putEP3TCB>
    80001aa0:	fc1ff06f          	j	80001a60 <_ZN3TCB8dispatchEv+0x24>

0000000080001aa4 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::createThread(Body body, void * argument) {
    80001aa4:	fd010113          	addi	sp,sp,-48
    80001aa8:	02113423          	sd	ra,40(sp)
    80001aac:	02813023          	sd	s0,32(sp)
    80001ab0:	00913c23          	sd	s1,24(sp)
    80001ab4:	01213823          	sd	s2,16(sp)
    80001ab8:	01313423          	sd	s3,8(sp)
    80001abc:	03010413          	addi	s0,sp,48
    80001ac0:	00050913          	mv	s2,a0
    80001ac4:	00058993          	mv	s3,a1
    return new TCB(body,TIME_SLICE, argument);
    80001ac8:	03800513          	li	a0,56
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	e54080e7          	jalr	-428(ra) # 80001920 <_ZN3TCBnwEm>
    80001ad4:	00050493          	mv	s1,a0
    context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false)
    80001ad8:	01253023          	sd	s2,0(a0)
    80001adc:	01353423          	sd	s3,8(a0)
    explicit TCB(Body body, uint64 timeSlice, void* arg): body(body), argument(arg), stack(body != nullptr ? (uint64*)TCB::operator new[](STACK_SIZE) : nullptr),
    80001ae0:	00090a63          	beqz	s2,80001af4 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001ae4:	40000513          	li	a0,1024
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	e60080e7          	jalr	-416(ra) # 80001948 <_ZN3TCBnaEm>
    80001af0:	0080006f          	j	80001af8 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001af4:	00000513          	li	a0,0
                finished(false)
    80001af8:	00a4b823          	sd	a0,16(s1)
    80001afc:	00000797          	auipc	a5,0x0
    80001b00:	ee478793          	addi	a5,a5,-284 # 800019e0 <_ZN3TCB13threadWrapperEv>
    80001b04:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b08:	02050863          	beqz	a0,80001b38 <_ZN3TCB12createThreadEPFvPvES0_+0x94>
    80001b0c:	000027b7          	lui	a5,0x2
    80001b10:	00f507b3          	add	a5,a0,a5
                finished(false)
    80001b14:	02f4b023          	sd	a5,32(s1)
    80001b18:	00200793          	li	a5,2
    80001b1c:	02f4b423          	sd	a5,40(s1)
    80001b20:	02048823          	sb	zero,48(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80001b24:	02090c63          	beqz	s2,80001b5c <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	448080e7          	jalr	1096(ra) # 80001f74 <_ZN9Scheduler3putEP3TCB>
    80001b34:	0280006f          	j	80001b5c <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b38:	00000793          	li	a5,0
    80001b3c:	fd9ff06f          	j	80001b14 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80001b40:	00050913          	mv	s2,a0
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	e28080e7          	jalr	-472(ra) # 80001970 <_ZN3TCBdlEPv>
    80001b50:	00090513          	mv	a0,s2
    80001b54:	00005097          	auipc	ra,0x5
    80001b58:	074080e7          	jalr	116(ra) # 80006bc8 <_Unwind_Resume>
}
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	02813083          	ld	ra,40(sp)
    80001b64:	02013403          	ld	s0,32(sp)
    80001b68:	01813483          	ld	s1,24(sp)
    80001b6c:	01013903          	ld	s2,16(sp)
    80001b70:	00813983          	ld	s3,8(sp)
    80001b74:	03010113          	addi	sp,sp,48
    80001b78:	00008067          	ret

0000000080001b7c <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001b7c:	04050463          	beqz	a0,80001bc4 <_ZN3TCB12deleteThreadEPS_+0x48>
void TCB::deleteThread(TCB* thread){
    80001b80:	fe010113          	addi	sp,sp,-32
    80001b84:	00113c23          	sd	ra,24(sp)
    80001b88:	00813823          	sd	s0,16(sp)
    80001b8c:	00913423          	sd	s1,8(sp)
    80001b90:	02010413          	addi	s0,sp,32
    80001b94:	00050493          	mv	s1,a0
    ~TCB(){TCB::operator delete[](stack);}
    80001b98:	01053503          	ld	a0,16(a0)
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	dfc080e7          	jalr	-516(ra) # 80001998 <_ZN3TCBdaEPv>
    delete thread;
    80001ba4:	00048513          	mv	a0,s1
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	dc8080e7          	jalr	-568(ra) # 80001970 <_ZN3TCBdlEPv>
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
    void setFinished(bool f) { TCB::finished = f;}
    80001bd8:	00004797          	auipc	a5,0x4
    80001bdc:	ef87b783          	ld	a5,-264(a5) # 80005ad0 <_ZN3TCB7runningE>
    80001be0:	00100713          	li	a4,1
    80001be4:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	e54080e7          	jalr	-428(ra) # 80001a3c <_ZN3TCB8dispatchEv>
}
    80001bf0:	00000513          	li	a0,0
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	610080e7          	jalr	1552(ra) # 80001224 <_Z9mem_allocm>
}
    80001c1c:	00813083          	ld	ra,8(sp)
    80001c20:	00013403          	ld	s0,0(sp)
    80001c24:	01010113          	addi	sp,sp,16
    80001c28:	00008067          	ret

0000000080001c2c <_Znam>:

void *operator new[](size_t n)
{
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00113423          	sd	ra,8(sp)
    80001c34:	00813023          	sd	s0,0(sp)
    80001c38:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	5e8080e7          	jalr	1512(ra) # 80001224 <_Z9mem_allocm>
}
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	5f8080e7          	jalr	1528(ra) # 8000125c <_Z8mem_freePv>
}
    80001c6c:	00813083          	ld	ra,8(sp)
    80001c70:	00013403          	ld	s0,0(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00113423          	sd	ra,8(sp)
    80001c84:	00813023          	sd	s0,0(sp)
    80001c88:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c8c:	fffff097          	auipc	ra,0xfffff
    80001c90:	5d0080e7          	jalr	1488(ra) # 8000125c <_Z8mem_freePv>
    80001c94:	00813083          	ld	ra,8(sp)
    80001c98:	00013403          	ld	s0,0(sp)
    80001c9c:	01010113          	addi	sp,sp,16
    80001ca0:	00008067          	ret

0000000080001ca4 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    80001ca4:	ff010113          	addi	sp,sp,-16
    80001ca8:	00813423          	sd	s0,8(sp)
    80001cac:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001cb0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001cb4:	10200073          	sret
}
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001cc4:	f8010113          	addi	sp,sp,-128
    80001cc8:	06113c23          	sd	ra,120(sp)
    80001ccc:	06813823          	sd	s0,112(sp)
    80001cd0:	06913423          	sd	s1,104(sp)
    80001cd4:	08010413          	addi	s0,sp,128

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001cd8:	00050793          	mv	a5,a0
    80001cdc:	faf43423          	sd	a5,-88(s0)
    return a0;
    80001ce0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ce4:	14202773          	csrr	a4,scause
    80001ce8:	fae43023          	sd	a4,-96(s0)
    return scause;
    80001cec:	fa043503          	ld	a0,-96(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    80001cf0:	ff850693          	addi	a3,a0,-8
    80001cf4:	00100713          	li	a4,1
    80001cf8:	04d77c63          	bgeu	a4,a3,80001d50 <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001cfc:	fff00793          	li	a5,-1
    80001d00:	03f79793          	slli	a5,a5,0x3f
    80001d04:	00178793          	addi	a5,a5,1
    80001d08:	14f50063          	beq	a0,a5,80001e48 <_ZN5Riscv20handleSupervisorTrapEv+0x184>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    80001d0c:	fff00793          	li	a5,-1
    80001d10:	03f79793          	slli	a5,a5,0x3f
    80001d14:	00978793          	addi	a5,a5,9
    80001d18:	1af50463          	beq	a0,a5,80001ec0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	598080e7          	jalr	1432(ra) # 800022b4 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d24:	141027f3          	csrr	a5,sepc
    80001d28:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d2c:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	584080e7          	jalr	1412(ra) # 800022b4 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001d38:	143027f3          	csrr	a5,stval
    80001d3c:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80001d40:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	570080e7          	jalr	1392(ra) # 800022b4 <_Z12printIntegerm>
    }
    80001d4c:	0700006f          	j	80001dbc <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d50:	14102773          	csrr	a4,sepc
    80001d54:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001d58:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    80001d5c:	00470713          	addi	a4,a4,4
    80001d60:	f8e43023          	sd	a4,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d64:	10002773          	csrr	a4,sstatus
    80001d68:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    80001d6c:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d70:	f8e43423          	sd	a4,-120(s0)
        switch (ra) {
    80001d74:	01300713          	li	a4,19
    80001d78:	02f76a63          	bltu	a4,a5,80001dac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80001d7c:	00279793          	slli	a5,a5,0x2
    80001d80:	00003717          	auipc	a4,0x3
    80001d84:	37470713          	addi	a4,a4,884 # 800050f4 <CONSOLE_STATUS+0xe4>
    80001d88:	00e787b3          	add	a5,a5,a4
    80001d8c:	0007a783          	lw	a5,0(a5)
    80001d90:	00e787b3          	add	a5,a5,a4
    80001d94:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1":"=r"(size));
    80001d98:	00058513          	mv	a0,a1
                mallocr = MemoryAllocator::mem_alloc(size);
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	278080e7          	jalr	632(ra) # 80002014 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80001da4:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80001da8:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    80001dac:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001db0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001db4:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001db8:	14179073          	csrw	sepc,a5
    80001dbc:	07813083          	ld	ra,120(sp)
    80001dc0:	07013403          	ld	s0,112(sp)
    80001dc4:	06813483          	ld	s1,104(sp)
    80001dc8:	08010113          	addi	sp,sp,128
    80001dcc:	00008067          	ret
                __asm__ volatile("mv %0, a1":"=r"(freep));
    80001dd0:	00058513          	mv	a0,a1
                greska = MemoryAllocator::mem_free(freep);
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	394080e7          	jalr	916(ra) # 80002168 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    80001ddc:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80001de0:	04543823          	sd	t0,80(s0)
                break;
    80001de4:	fc9ff06f          	j	80001dac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(handle));
    80001de8:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    80001dec:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    80001df0:	06843583          	ld	a1,104(s0)
                *handle = TCB::createThread(start_routine,arg);
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	cb0080e7          	jalr	-848(ra) # 80001aa4 <_ZN3TCB12createThreadEPFvPvES0_>
    80001dfc:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) ret =0;
    80001e00:	00050a63          	beqz	a0,80001e14 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    80001e04:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80001e08:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    80001e0c:	04543823          	sd	t0,80(s0)
                break;
    80001e10:	f9dff06f          	j	80001dac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    80001e14:	fff00793          	li	a5,-1
    80001e18:	ff1ff06f          	j	80001e08 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                ret = TCB::exitThread();
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	dac080e7          	jalr	-596(ra) # 80001bc8 <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80001e24:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80001e28:	04542823          	sw	t0,80(s0)
                break;
    80001e2c:	f81ff06f          	j	80001dac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                TCB::timeSliceCounter=0;
    80001e30:	00004797          	auipc	a5,0x4
    80001e34:	c187b783          	ld	a5,-1000(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e38:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	c00080e7          	jalr	-1024(ra) # 80001a3c <_ZN3TCB8dispatchEv>
                break;
    80001e44:	f69ff06f          	j	80001dac <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e48:	00200793          	li	a5,2
    80001e4c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001e50:	00004717          	auipc	a4,0x4
    80001e54:	bf873703          	ld	a4,-1032(a4) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e58:	00073783          	ld	a5,0(a4)
    80001e5c:	00178793          	addi	a5,a5,1
    80001e60:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80001e64:	00004717          	auipc	a4,0x4
    80001e68:	bfc73703          	ld	a4,-1028(a4) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001e6c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001e70:	02873703          	ld	a4,40(a4)
    80001e74:	f4e7e4e3          	bltu	a5,a4,80001dbc <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e78:	141027f3          	csrr	a5,sepc
    80001e7c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001e80:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    80001e84:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e88:	100027f3          	csrr	a5,sstatus
    80001e8c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001e90:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    80001e94:	f8f43c23          	sd	a5,-104(s0)
            TCB::timeSliceCounter=0;
    80001e98:	00004797          	auipc	a5,0x4
    80001e9c:	bb07b783          	ld	a5,-1104(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ea0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	b98080e7          	jalr	-1128(ra) # 80001a3c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001eac:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001eb0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001eb4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001eb8:	14179073          	csrw	sepc,a5
}
    80001ebc:	f01ff06f          	j	80001dbc <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        console_handler();
    80001ec0:	00002097          	auipc	ra,0x2
    80001ec4:	5e0080e7          	jalr	1504(ra) # 800044a0 <console_handler>
    80001ec8:	ef5ff06f          	j	80001dbc <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

0000000080001ecc <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00813423          	sd	s0,8(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    80001ed8:	00100793          	li	a5,1
    80001edc:	00f50863          	beq	a0,a5,80001eec <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ee0:	00813403          	ld	s0,8(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret
    80001eec:	000107b7          	lui	a5,0x10
    80001ef0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ef4:	fef596e3          	bne	a1,a5,80001ee0 <_Z41__static_initialization_and_destruction_0ii+0x14>
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    80001ef8:	00004797          	auipc	a5,0x4
    80001efc:	be878793          	addi	a5,a5,-1048 # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
    80001f00:	0007b023          	sd	zero,0(a5)
    80001f04:	0007b423          	sd	zero,8(a5)
    80001f08:	fd9ff06f          	j	80001ee0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f0c <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    80001f0c:	fe010113          	addi	sp,sp,-32
    80001f10:	00113c23          	sd	ra,24(sp)
    80001f14:	00813823          	sd	s0,16(sp)
    80001f18:	00913423          	sd	s1,8(sp)
    80001f1c:	02010413          	addi	s0,sp,32
                    head= tail = elem;
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001f20:	00004517          	auipc	a0,0x4
    80001f24:	bc053503          	ld	a0,-1088(a0) # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
    80001f28:	04050263          	beqz	a0,80001f6c <_ZN9Scheduler3getEv+0x60>
                Elem *elem = head;
                head = head->next;
    80001f2c:	00853783          	ld	a5,8(a0)
    80001f30:	00004717          	auipc	a4,0x4
    80001f34:	baf73823          	sd	a5,-1104(a4) # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80001f38:	02078463          	beqz	a5,80001f60 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    80001f3c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	228080e7          	jalr	552(ra) # 80002168 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	01813083          	ld	ra,24(sp)
    80001f50:	01013403          	ld	s0,16(sp)
    80001f54:	00813483          	ld	s1,8(sp)
    80001f58:	02010113          	addi	sp,sp,32
    80001f5c:	00008067          	ret
                if(!head) tail = 0;
    80001f60:	00004797          	auipc	a5,0x4
    80001f64:	b807b423          	sd	zero,-1144(a5) # 80005ae8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f68:	fd5ff06f          	j	80001f3c <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80001f6c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001f70:	fd9ff06f          	j	80001f48 <_ZN9Scheduler3getEv+0x3c>

0000000080001f74 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    80001f74:	fe010113          	addi	sp,sp,-32
    80001f78:	00113c23          	sd	ra,24(sp)
    80001f7c:	00813823          	sd	s0,16(sp)
    80001f80:	00913423          	sd	s1,8(sp)
    80001f84:	02010413          	addi	s0,sp,32
    80001f88:	00050493          	mv	s1,a0
        return MemoryAllocator::mem_alloc(n);
    80001f8c:	01000513          	li	a0,16
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	084080e7          	jalr	132(ra) # 80002014 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001f98:	00953023          	sd	s1,0(a0)
                elem->next=0;
    80001f9c:	00053423          	sd	zero,8(a0)
                if(tail){
    80001fa0:	00004797          	auipc	a5,0x4
    80001fa4:	b487b783          	ld	a5,-1208(a5) # 80005ae8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fa8:	02078263          	beqz	a5,80001fcc <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    80001fac:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80001fb0:	00004797          	auipc	a5,0x4
    80001fb4:	b2a7bc23          	sd	a0,-1224(a5) # 80005ae8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fb8:	01813083          	ld	ra,24(sp)
    80001fbc:	01013403          	ld	s0,16(sp)
    80001fc0:	00813483          	ld	s1,8(sp)
    80001fc4:	02010113          	addi	sp,sp,32
    80001fc8:	00008067          	ret
                    head= tail = elem;
    80001fcc:	00004797          	auipc	a5,0x4
    80001fd0:	b1478793          	addi	a5,a5,-1260 # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
    80001fd4:	00a7b423          	sd	a0,8(a5)
    80001fd8:	00a7b023          	sd	a0,0(a5)
    80001fdc:	fddff06f          	j	80001fb8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001fe0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    80001ff0:	000105b7          	lui	a1,0x10
    80001ff4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ff8:	00100513          	li	a0,1
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	ed0080e7          	jalr	-304(ra) # 80001ecc <_Z41__static_initialization_and_destruction_0ii>
    80002004:	00813083          	ld	ra,8(sp)
    80002008:	00013403          	ld	s0,0(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00813423          	sd	s0,8(sp)
    8000201c:	01010413          	addi	s0,sp,16
    80002020:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    80002024:	00004517          	auipc	a0,0x4
    80002028:	acc53503          	ld	a0,-1332(a0) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    8000202c:	03f7f713          	andi	a4,a5,63
    80002030:	00070663          	beqz	a4,8000203c <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002034:	fc07f793          	andi	a5,a5,-64
    80002038:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    8000203c:	02050863          	beqz	a0,8000206c <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002040:	00853703          	ld	a4,8(a0)
    80002044:	02f77863          	bgeu	a4,a5,80002074 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    80002048:	00050693          	mv	a3,a0
        tek = tek->sled;
    8000204c:	00053503          	ld	a0,0(a0)
    80002050:	00c0006f          	j	8000205c <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    80002054:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    80002058:	00053503          	ld	a0,0(a0)
    8000205c:	00050e63          	beqz	a0,80002078 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002060:	00853703          	ld	a4,8(a0)
    80002064:	fef768e3          	bltu	a4,a5,80002054 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80002068:	0100006f          	j	80002078 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    8000206c:	00050693          	mv	a3,a0
    80002070:	0080006f          	j	80002078 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002074:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    80002078:	02050c63          	beqz	a0,800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    8000207c:	00853703          	ld	a4,8(a0)
    80002080:	02e7fe63          	bgeu	a5,a4,800020bc <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    80002084:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    80002088:	00f505b3          	add	a1,a0,a5
    8000208c:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    80002090:	40f707b3          	sub	a5,a4,a5
    80002094:	ff078793          	addi	a5,a5,-16
    80002098:	00f63423          	sd	a5,8(a2)
        sledeci->sled = tek->sled;
    8000209c:	00053783          	ld	a5,0(a0)
    800020a0:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    800020a4:	02068063          	beqz	a3,800020c4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800020a8:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    800020ac:	01050513          	addi	a0,a0,16
}
    800020b0:	00813403          	ld	s0,8(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    800020bc:	00053603          	ld	a2,0(a0)
    800020c0:	fe5ff06f          	j	800020a4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    800020c4:	00004797          	auipc	a5,0x4
    800020c8:	a2c7b623          	sd	a2,-1492(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    800020cc:	fe1ff06f          	j	800020ac <_ZN15MemoryAllocator9mem_allocEm+0x98>

00000000800020d0 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00813423          	sd	s0,8(sp)
    800020d8:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    800020dc:	00004797          	auipc	a5,0x4
    800020e0:	9547b783          	ld	a5,-1708(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x8>
    800020e4:	0007b703          	ld	a4,0(a5)
    800020e8:	00004797          	auipc	a5,0x4
    800020ec:	a0e7b423          	sd	a4,-1528(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    800020f0:	00004797          	auipc	a5,0x4
    800020f4:	9787b783          	ld	a5,-1672(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x40>
    800020f8:	0007b783          	ld	a5,0(a5)
    800020fc:	40e787b3          	sub	a5,a5,a4
    80002100:	ff078793          	addi	a5,a5,-16
    80002104:	00073023          	sd	zero,0(a4)
    80002108:	00f73423          	sd	a5,8(a4)
};
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002124:	00053783          	ld	a5,0(a0)
    80002128:	00078a63          	beqz	a5,8000213c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    8000212c:	00853683          	ld	a3,8(a0)
    80002130:	00d50733          	add	a4,a0,a3
    80002134:	01070713          	addi	a4,a4,16
    80002138:	00f70a63          	beq	a4,a5,8000214c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    8000213c:	00000513          	li	a0,0
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    8000214c:	0087b703          	ld	a4,8(a5)
    80002150:	00e686b3          	add	a3,a3,a4
    80002154:	01068693          	addi	a3,a3,16
    80002158:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    8000215c:	0007b783          	ld	a5,0(a5)
    80002160:	00f53023          	sd	a5,0(a0)
    80002164:	fd9ff06f          	j	8000213c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

0000000080002168 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002168:	0c050263          	beqz	a0,8000222c <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    8000216c:	00050713          	mv	a4,a0
    80002170:	00004797          	auipc	a5,0x4
    80002174:	8c07b783          	ld	a5,-1856(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002178:	0007b783          	ld	a5,0(a5)
    8000217c:	0af56c63          	bltu	a0,a5,80002234 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    80002180:	00004797          	auipc	a5,0x4
    80002184:	8e87b783          	ld	a5,-1816(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002188:	0007b783          	ld	a5,0(a5)
    8000218c:	0af57863          	bgeu	a0,a5,8000223c <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    80002190:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    80002194:	00004797          	auipc	a5,0x4
    80002198:	95c7b783          	ld	a5,-1700(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    8000219c:	06078063          	beqz	a5,800021fc <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    800021b4:	04f56e63          	bltu	a0,a5,80002210 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    800021b8:	00078493          	mv	s1,a5
    800021bc:	0007b783          	ld	a5,0(a5)
    800021c0:	00078463          	beqz	a5,800021c8 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    800021c4:	fea7eae3          	bltu	a5,a0,800021b8 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    800021c8:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    800021cc:	00a4b023          	sd	a0,0(s1)
        join(tek);
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	f48080e7          	jalr	-184(ra) # 80002118 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    800021d8:	00048513          	mv	a0,s1
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	f3c080e7          	jalr	-196(ra) # 80002118 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    800021e4:	00000513          	li	a0,0
}
    800021e8:	01813083          	ld	ra,24(sp)
    800021ec:	01013403          	ld	s0,16(sp)
    800021f0:	00813483          	ld	s1,8(sp)
    800021f4:	02010113          	addi	sp,sp,32
    800021f8:	00008067          	ret
        freememhead = tek;
    800021fc:	00004797          	auipc	a5,0x4
    80002200:	8ea7ba23          	sd	a0,-1804(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002204:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002208:	00000513          	li	a0,0
    8000220c:	00008067          	ret
        tek->sled = freememhead;
    80002210:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002214:	00004797          	auipc	a5,0x4
    80002218:	8ca7be23          	sd	a0,-1828(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	efc080e7          	jalr	-260(ra) # 80002118 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002224:	00000513          	li	a0,0
    80002228:	fc1ff06f          	j	800021e8 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    8000222c:	fff00513          	li	a0,-1
    80002230:	00008067          	ret
    80002234:	fff00513          	li	a0,-1
    80002238:	00008067          	ret
    8000223c:	fff00513          	li	a0,-1
}
    80002240:	00008067          	ret

0000000080002244 <_Z11printStringPKc>:
//

#include "../h/print.hpp"


void printString(char const *string){
    80002244:	fd010113          	addi	sp,sp,-48
    80002248:	02113423          	sd	ra,40(sp)
    8000224c:	02813023          	sd	s0,32(sp)
    80002250:	00913c23          	sd	s1,24(sp)
    80002254:	01213823          	sd	s2,16(sp)
    80002258:	03010413          	addi	s0,sp,48
    8000225c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002260:	100027f3          	csrr	a5,sstatus
    80002264:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002268:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000226c:	00200793          	li	a5,2
    80002270:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string !='\0'){
    80002274:	0004c503          	lbu	a0,0(s1)
    80002278:	00050a63          	beqz	a0,8000228c <_Z11printStringPKc+0x48>
        __putc(*string);
    8000227c:	00002097          	auipc	ra,0x2
    80002280:	1b0080e7          	jalr	432(ra) # 8000442c <__putc>
        string++;
    80002284:	00148493          	addi	s1,s1,1
    while(*string !='\0'){
    80002288:	fedff06f          	j	80002274 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000228c:	0009091b          	sext.w	s2,s2
    80002290:	00297913          	andi	s2,s2,2
    80002294:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002298:	10092073          	csrs	sstatus,s2
}
    8000229c:	02813083          	ld	ra,40(sp)
    800022a0:	02013403          	ld	s0,32(sp)
    800022a4:	01813483          	ld	s1,24(sp)
    800022a8:	01013903          	ld	s2,16(sp)
    800022ac:	03010113          	addi	sp,sp,48
    800022b0:	00008067          	ret

00000000800022b4 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    800022b4:	fc010113          	addi	sp,sp,-64
    800022b8:	02113c23          	sd	ra,56(sp)
    800022bc:	02813823          	sd	s0,48(sp)
    800022c0:	02913423          	sd	s1,40(sp)
    800022c4:	03213023          	sd	s2,32(sp)
    800022c8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022cc:	100027f3          	csrr	a5,sstatus
    800022d0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800022d4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022d8:	00200793          	li	a5,2
    800022dc:	1007b073          	csrc	sstatus,a5

    neg = 0;
    if(integer<0){
        neg= 1;
        x= -integer;
    }else x=integer;
    800022e0:	0005051b          	sext.w	a0,a0
    i=0;
    800022e4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x%10];
    800022e8:	00a00613          	li	a2,10
    800022ec:	02c5773b          	remuw	a4,a0,a2
    800022f0:	02071693          	slli	a3,a4,0x20
    800022f4:	0206d693          	srli	a3,a3,0x20
    800022f8:	00003717          	auipc	a4,0x3
    800022fc:	e5070713          	addi	a4,a4,-432 # 80005148 <_ZZ12printIntegermE6digits>
    80002300:	00d70733          	add	a4,a4,a3
    80002304:	00074703          	lbu	a4,0(a4)
    80002308:	fe040693          	addi	a3,s0,-32
    8000230c:	009687b3          	add	a5,a3,s1
    80002310:	0014849b          	addiw	s1,s1,1
    80002314:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80002318:	0005071b          	sext.w	a4,a0
    8000231c:	02c5553b          	divuw	a0,a0,a2
    80002320:	00900793          	li	a5,9
    80002324:	fce7e2e3          	bltu	a5,a4,800022e8 <_Z12printIntegerm+0x34>
    if(neg)
        buf[i++]='-';
    while(--i >=0) __putc(buf[i]);
    80002328:	fff4849b          	addiw	s1,s1,-1
    8000232c:	0004ce63          	bltz	s1,80002348 <_Z12printIntegerm+0x94>
    80002330:	fe040793          	addi	a5,s0,-32
    80002334:	009787b3          	add	a5,a5,s1
    80002338:	ff07c503          	lbu	a0,-16(a5)
    8000233c:	00002097          	auipc	ra,0x2
    80002340:	0f0080e7          	jalr	240(ra) # 8000442c <__putc>
    80002344:	fe5ff06f          	j	80002328 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002348:	0009091b          	sext.w	s2,s2
    8000234c:	00297913          	andi	s2,s2,2
    80002350:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002354:	10092073          	csrs	sstatus,s2

    80002358:	03813083          	ld	ra,56(sp)
    8000235c:	03013403          	ld	s0,48(sp)
    80002360:	02813483          	ld	s1,40(sp)
    80002364:	02013903          	ld	s2,32(sp)
    80002368:	04010113          	addi	sp,sp,64
    8000236c:	00008067          	ret

0000000080002370 <start>:
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	300027f3          	csrr	a5,mstatus
    80002380:	ffffe737          	lui	a4,0xffffe
    80002384:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7a9f>
    80002388:	00e7f7b3          	and	a5,a5,a4
    8000238c:	00001737          	lui	a4,0x1
    80002390:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002394:	00e7e7b3          	or	a5,a5,a4
    80002398:	30079073          	csrw	mstatus,a5
    8000239c:	00000797          	auipc	a5,0x0
    800023a0:	16078793          	addi	a5,a5,352 # 800024fc <system_main>
    800023a4:	34179073          	csrw	mepc,a5
    800023a8:	00000793          	li	a5,0
    800023ac:	18079073          	csrw	satp,a5
    800023b0:	000107b7          	lui	a5,0x10
    800023b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023b8:	30279073          	csrw	medeleg,a5
    800023bc:	30379073          	csrw	mideleg,a5
    800023c0:	104027f3          	csrr	a5,sie
    800023c4:	2227e793          	ori	a5,a5,546
    800023c8:	10479073          	csrw	sie,a5
    800023cc:	fff00793          	li	a5,-1
    800023d0:	00a7d793          	srli	a5,a5,0xa
    800023d4:	3b079073          	csrw	pmpaddr0,a5
    800023d8:	00f00793          	li	a5,15
    800023dc:	3a079073          	csrw	pmpcfg0,a5
    800023e0:	f14027f3          	csrr	a5,mhartid
    800023e4:	0200c737          	lui	a4,0x200c
    800023e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800023ec:	0007869b          	sext.w	a3,a5
    800023f0:	00269713          	slli	a4,a3,0x2
    800023f4:	000f4637          	lui	a2,0xf4
    800023f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800023fc:	00d70733          	add	a4,a4,a3
    80002400:	0037979b          	slliw	a5,a5,0x3
    80002404:	020046b7          	lui	a3,0x2004
    80002408:	00d787b3          	add	a5,a5,a3
    8000240c:	00c585b3          	add	a1,a1,a2
    80002410:	00371693          	slli	a3,a4,0x3
    80002414:	00003717          	auipc	a4,0x3
    80002418:	6ec70713          	addi	a4,a4,1772 # 80005b00 <timer_scratch>
    8000241c:	00b7b023          	sd	a1,0(a5)
    80002420:	00d70733          	add	a4,a4,a3
    80002424:	00f73c23          	sd	a5,24(a4)
    80002428:	02c73023          	sd	a2,32(a4)
    8000242c:	34071073          	csrw	mscratch,a4
    80002430:	00000797          	auipc	a5,0x0
    80002434:	6e078793          	addi	a5,a5,1760 # 80002b10 <timervec>
    80002438:	30579073          	csrw	mtvec,a5
    8000243c:	300027f3          	csrr	a5,mstatus
    80002440:	0087e793          	ori	a5,a5,8
    80002444:	30079073          	csrw	mstatus,a5
    80002448:	304027f3          	csrr	a5,mie
    8000244c:	0807e793          	ori	a5,a5,128
    80002450:	30479073          	csrw	mie,a5
    80002454:	f14027f3          	csrr	a5,mhartid
    80002458:	0007879b          	sext.w	a5,a5
    8000245c:	00078213          	mv	tp,a5
    80002460:	30200073          	mret
    80002464:	00813403          	ld	s0,8(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <timerinit>:
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	f14027f3          	csrr	a5,mhartid
    80002480:	0200c737          	lui	a4,0x200c
    80002484:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002488:	0007869b          	sext.w	a3,a5
    8000248c:	00269713          	slli	a4,a3,0x2
    80002490:	000f4637          	lui	a2,0xf4
    80002494:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002498:	00d70733          	add	a4,a4,a3
    8000249c:	0037979b          	slliw	a5,a5,0x3
    800024a0:	020046b7          	lui	a3,0x2004
    800024a4:	00d787b3          	add	a5,a5,a3
    800024a8:	00c585b3          	add	a1,a1,a2
    800024ac:	00371693          	slli	a3,a4,0x3
    800024b0:	00003717          	auipc	a4,0x3
    800024b4:	65070713          	addi	a4,a4,1616 # 80005b00 <timer_scratch>
    800024b8:	00b7b023          	sd	a1,0(a5)
    800024bc:	00d70733          	add	a4,a4,a3
    800024c0:	00f73c23          	sd	a5,24(a4)
    800024c4:	02c73023          	sd	a2,32(a4)
    800024c8:	34071073          	csrw	mscratch,a4
    800024cc:	00000797          	auipc	a5,0x0
    800024d0:	64478793          	addi	a5,a5,1604 # 80002b10 <timervec>
    800024d4:	30579073          	csrw	mtvec,a5
    800024d8:	300027f3          	csrr	a5,mstatus
    800024dc:	0087e793          	ori	a5,a5,8
    800024e0:	30079073          	csrw	mstatus,a5
    800024e4:	304027f3          	csrr	a5,mie
    800024e8:	0807e793          	ori	a5,a5,128
    800024ec:	30479073          	csrw	mie,a5
    800024f0:	00813403          	ld	s0,8(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <system_main>:
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00813823          	sd	s0,16(sp)
    80002504:	00913423          	sd	s1,8(sp)
    80002508:	00113c23          	sd	ra,24(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00000097          	auipc	ra,0x0
    80002514:	0c4080e7          	jalr	196(ra) # 800025d4 <cpuid>
    80002518:	00003497          	auipc	s1,0x3
    8000251c:	58848493          	addi	s1,s1,1416 # 80005aa0 <started>
    80002520:	02050263          	beqz	a0,80002544 <system_main+0x48>
    80002524:	0004a783          	lw	a5,0(s1)
    80002528:	0007879b          	sext.w	a5,a5
    8000252c:	fe078ce3          	beqz	a5,80002524 <system_main+0x28>
    80002530:	0ff0000f          	fence
    80002534:	00003517          	auipc	a0,0x3
    80002538:	c5450513          	addi	a0,a0,-940 # 80005188 <_ZZ12printIntegermE6digits+0x40>
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	a70080e7          	jalr	-1424(ra) # 80002fac <panic>
    80002544:	00001097          	auipc	ra,0x1
    80002548:	9c4080e7          	jalr	-1596(ra) # 80002f08 <consoleinit>
    8000254c:	00001097          	auipc	ra,0x1
    80002550:	150080e7          	jalr	336(ra) # 8000369c <printfinit>
    80002554:	00003517          	auipc	a0,0x3
    80002558:	b9c50513          	addi	a0,a0,-1124 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	aac080e7          	jalr	-1364(ra) # 80003008 <__printf>
    80002564:	00003517          	auipc	a0,0x3
    80002568:	bf450513          	addi	a0,a0,-1036 # 80005158 <_ZZ12printIntegermE6digits+0x10>
    8000256c:	00001097          	auipc	ra,0x1
    80002570:	a9c080e7          	jalr	-1380(ra) # 80003008 <__printf>
    80002574:	00003517          	auipc	a0,0x3
    80002578:	b7c50513          	addi	a0,a0,-1156 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	a8c080e7          	jalr	-1396(ra) # 80003008 <__printf>
    80002584:	00001097          	auipc	ra,0x1
    80002588:	4a4080e7          	jalr	1188(ra) # 80003a28 <kinit>
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	148080e7          	jalr	328(ra) # 800026d4 <trapinit>
    80002594:	00000097          	auipc	ra,0x0
    80002598:	16c080e7          	jalr	364(ra) # 80002700 <trapinithart>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	5b4080e7          	jalr	1460(ra) # 80002b50 <plicinit>
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	5d4080e7          	jalr	1492(ra) # 80002b78 <plicinithart>
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	078080e7          	jalr	120(ra) # 80002624 <userinit>
    800025b4:	0ff0000f          	fence
    800025b8:	00100793          	li	a5,1
    800025bc:	00003517          	auipc	a0,0x3
    800025c0:	bb450513          	addi	a0,a0,-1100 # 80005170 <_ZZ12printIntegermE6digits+0x28>
    800025c4:	00f4a023          	sw	a5,0(s1)
    800025c8:	00001097          	auipc	ra,0x1
    800025cc:	a40080e7          	jalr	-1472(ra) # 80003008 <__printf>
    800025d0:	0000006f          	j	800025d0 <system_main+0xd4>

00000000800025d4 <cpuid>:
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	00020513          	mv	a0,tp
    800025e4:	00813403          	ld	s0,8(sp)
    800025e8:	0005051b          	sext.w	a0,a0
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret

00000000800025f4 <mycpu>:
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00813423          	sd	s0,8(sp)
    800025fc:	01010413          	addi	s0,sp,16
    80002600:	00020793          	mv	a5,tp
    80002604:	00813403          	ld	s0,8(sp)
    80002608:	0007879b          	sext.w	a5,a5
    8000260c:	00779793          	slli	a5,a5,0x7
    80002610:	00004517          	auipc	a0,0x4
    80002614:	52050513          	addi	a0,a0,1312 # 80006b30 <cpus>
    80002618:	00f50533          	add	a0,a0,a5
    8000261c:	01010113          	addi	sp,sp,16
    80002620:	00008067          	ret

0000000080002624 <userinit>:
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00813423          	sd	s0,8(sp)
    8000262c:	01010413          	addi	s0,sp,16
    80002630:	00813403          	ld	s0,8(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	fffff317          	auipc	t1,0xfffff
    8000263c:	0cc30067          	jr	204(t1) # 80001704 <main>

0000000080002640 <either_copyout>:
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00813023          	sd	s0,0(sp)
    80002648:	00113423          	sd	ra,8(sp)
    8000264c:	01010413          	addi	s0,sp,16
    80002650:	02051663          	bnez	a0,8000267c <either_copyout+0x3c>
    80002654:	00058513          	mv	a0,a1
    80002658:	00060593          	mv	a1,a2
    8000265c:	0006861b          	sext.w	a2,a3
    80002660:	00002097          	auipc	ra,0x2
    80002664:	c54080e7          	jalr	-940(ra) # 800042b4 <__memmove>
    80002668:	00813083          	ld	ra,8(sp)
    8000266c:	00013403          	ld	s0,0(sp)
    80002670:	00000513          	li	a0,0
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret
    8000267c:	00003517          	auipc	a0,0x3
    80002680:	b3450513          	addi	a0,a0,-1228 # 800051b0 <_ZZ12printIntegermE6digits+0x68>
    80002684:	00001097          	auipc	ra,0x1
    80002688:	928080e7          	jalr	-1752(ra) # 80002fac <panic>

000000008000268c <either_copyin>:
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00813023          	sd	s0,0(sp)
    80002694:	00113423          	sd	ra,8(sp)
    80002698:	01010413          	addi	s0,sp,16
    8000269c:	02059463          	bnez	a1,800026c4 <either_copyin+0x38>
    800026a0:	00060593          	mv	a1,a2
    800026a4:	0006861b          	sext.w	a2,a3
    800026a8:	00002097          	auipc	ra,0x2
    800026ac:	c0c080e7          	jalr	-1012(ra) # 800042b4 <__memmove>
    800026b0:	00813083          	ld	ra,8(sp)
    800026b4:	00013403          	ld	s0,0(sp)
    800026b8:	00000513          	li	a0,0
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	b1450513          	addi	a0,a0,-1260 # 800051d8 <_ZZ12printIntegermE6digits+0x90>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	8e0080e7          	jalr	-1824(ra) # 80002fac <panic>

00000000800026d4 <trapinit>:
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00813423          	sd	s0,8(sp)
    800026dc:	01010413          	addi	s0,sp,16
    800026e0:	00813403          	ld	s0,8(sp)
    800026e4:	00003597          	auipc	a1,0x3
    800026e8:	b1c58593          	addi	a1,a1,-1252 # 80005200 <_ZZ12printIntegermE6digits+0xb8>
    800026ec:	00004517          	auipc	a0,0x4
    800026f0:	4c450513          	addi	a0,a0,1220 # 80006bb0 <tickslock>
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00001317          	auipc	t1,0x1
    800026fc:	5c030067          	jr	1472(t1) # 80003cb8 <initlock>

0000000080002700 <trapinithart>:
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00813423          	sd	s0,8(sp)
    80002708:	01010413          	addi	s0,sp,16
    8000270c:	00000797          	auipc	a5,0x0
    80002710:	2f478793          	addi	a5,a5,756 # 80002a00 <kernelvec>
    80002714:	10579073          	csrw	stvec,a5
    80002718:	00813403          	ld	s0,8(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <usertrap>:
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00813423          	sd	s0,8(sp)
    8000272c:	01010413          	addi	s0,sp,16
    80002730:	00813403          	ld	s0,8(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <usertrapret>:
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <kerneltrap>:
    80002754:	fe010113          	addi	sp,sp,-32
    80002758:	00813823          	sd	s0,16(sp)
    8000275c:	00113c23          	sd	ra,24(sp)
    80002760:	00913423          	sd	s1,8(sp)
    80002764:	02010413          	addi	s0,sp,32
    80002768:	142025f3          	csrr	a1,scause
    8000276c:	100027f3          	csrr	a5,sstatus
    80002770:	0027f793          	andi	a5,a5,2
    80002774:	10079c63          	bnez	a5,8000288c <kerneltrap+0x138>
    80002778:	142027f3          	csrr	a5,scause
    8000277c:	0207ce63          	bltz	a5,800027b8 <kerneltrap+0x64>
    80002780:	00003517          	auipc	a0,0x3
    80002784:	ac850513          	addi	a0,a0,-1336 # 80005248 <_ZZ12printIntegermE6digits+0x100>
    80002788:	00001097          	auipc	ra,0x1
    8000278c:	880080e7          	jalr	-1920(ra) # 80003008 <__printf>
    80002790:	141025f3          	csrr	a1,sepc
    80002794:	14302673          	csrr	a2,stval
    80002798:	00003517          	auipc	a0,0x3
    8000279c:	ac050513          	addi	a0,a0,-1344 # 80005258 <_ZZ12printIntegermE6digits+0x110>
    800027a0:	00001097          	auipc	ra,0x1
    800027a4:	868080e7          	jalr	-1944(ra) # 80003008 <__printf>
    800027a8:	00003517          	auipc	a0,0x3
    800027ac:	ac850513          	addi	a0,a0,-1336 # 80005270 <_ZZ12printIntegermE6digits+0x128>
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	7fc080e7          	jalr	2044(ra) # 80002fac <panic>
    800027b8:	0ff7f713          	andi	a4,a5,255
    800027bc:	00900693          	li	a3,9
    800027c0:	04d70063          	beq	a4,a3,80002800 <kerneltrap+0xac>
    800027c4:	fff00713          	li	a4,-1
    800027c8:	03f71713          	slli	a4,a4,0x3f
    800027cc:	00170713          	addi	a4,a4,1
    800027d0:	fae798e3          	bne	a5,a4,80002780 <kerneltrap+0x2c>
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	e00080e7          	jalr	-512(ra) # 800025d4 <cpuid>
    800027dc:	06050663          	beqz	a0,80002848 <kerneltrap+0xf4>
    800027e0:	144027f3          	csrr	a5,sip
    800027e4:	ffd7f793          	andi	a5,a5,-3
    800027e8:	14479073          	csrw	sip,a5
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret
    80002800:	00000097          	auipc	ra,0x0
    80002804:	3c4080e7          	jalr	964(ra) # 80002bc4 <plic_claim>
    80002808:	00a00793          	li	a5,10
    8000280c:	00050493          	mv	s1,a0
    80002810:	06f50863          	beq	a0,a5,80002880 <kerneltrap+0x12c>
    80002814:	fc050ce3          	beqz	a0,800027ec <kerneltrap+0x98>
    80002818:	00050593          	mv	a1,a0
    8000281c:	00003517          	auipc	a0,0x3
    80002820:	a0c50513          	addi	a0,a0,-1524 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002824:	00000097          	auipc	ra,0x0
    80002828:	7e4080e7          	jalr	2020(ra) # 80003008 <__printf>
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	00048513          	mv	a0,s1
    80002838:	00813483          	ld	s1,8(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00000317          	auipc	t1,0x0
    80002844:	3bc30067          	jr	956(t1) # 80002bfc <plic_complete>
    80002848:	00004517          	auipc	a0,0x4
    8000284c:	36850513          	addi	a0,a0,872 # 80006bb0 <tickslock>
    80002850:	00001097          	auipc	ra,0x1
    80002854:	48c080e7          	jalr	1164(ra) # 80003cdc <acquire>
    80002858:	00003717          	auipc	a4,0x3
    8000285c:	24c70713          	addi	a4,a4,588 # 80005aa4 <ticks>
    80002860:	00072783          	lw	a5,0(a4)
    80002864:	00004517          	auipc	a0,0x4
    80002868:	34c50513          	addi	a0,a0,844 # 80006bb0 <tickslock>
    8000286c:	0017879b          	addiw	a5,a5,1
    80002870:	00f72023          	sw	a5,0(a4)
    80002874:	00001097          	auipc	ra,0x1
    80002878:	534080e7          	jalr	1332(ra) # 80003da8 <release>
    8000287c:	f65ff06f          	j	800027e0 <kerneltrap+0x8c>
    80002880:	00001097          	auipc	ra,0x1
    80002884:	090080e7          	jalr	144(ra) # 80003910 <uartintr>
    80002888:	fa5ff06f          	j	8000282c <kerneltrap+0xd8>
    8000288c:	00003517          	auipc	a0,0x3
    80002890:	97c50513          	addi	a0,a0,-1668 # 80005208 <_ZZ12printIntegermE6digits+0xc0>
    80002894:	00000097          	auipc	ra,0x0
    80002898:	718080e7          	jalr	1816(ra) # 80002fac <panic>

000000008000289c <clockintr>:
    8000289c:	fe010113          	addi	sp,sp,-32
    800028a0:	00813823          	sd	s0,16(sp)
    800028a4:	00913423          	sd	s1,8(sp)
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	02010413          	addi	s0,sp,32
    800028b0:	00004497          	auipc	s1,0x4
    800028b4:	30048493          	addi	s1,s1,768 # 80006bb0 <tickslock>
    800028b8:	00048513          	mv	a0,s1
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	420080e7          	jalr	1056(ra) # 80003cdc <acquire>
    800028c4:	00003717          	auipc	a4,0x3
    800028c8:	1e070713          	addi	a4,a4,480 # 80005aa4 <ticks>
    800028cc:	00072783          	lw	a5,0(a4)
    800028d0:	01013403          	ld	s0,16(sp)
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	00048513          	mv	a0,s1
    800028dc:	0017879b          	addiw	a5,a5,1
    800028e0:	00813483          	ld	s1,8(sp)
    800028e4:	00f72023          	sw	a5,0(a4)
    800028e8:	02010113          	addi	sp,sp,32
    800028ec:	00001317          	auipc	t1,0x1
    800028f0:	4bc30067          	jr	1212(t1) # 80003da8 <release>

00000000800028f4 <devintr>:
    800028f4:	142027f3          	csrr	a5,scause
    800028f8:	00000513          	li	a0,0
    800028fc:	0007c463          	bltz	a5,80002904 <devintr+0x10>
    80002900:	00008067          	ret
    80002904:	fe010113          	addi	sp,sp,-32
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00913423          	sd	s1,8(sp)
    80002914:	02010413          	addi	s0,sp,32
    80002918:	0ff7f713          	andi	a4,a5,255
    8000291c:	00900693          	li	a3,9
    80002920:	04d70c63          	beq	a4,a3,80002978 <devintr+0x84>
    80002924:	fff00713          	li	a4,-1
    80002928:	03f71713          	slli	a4,a4,0x3f
    8000292c:	00170713          	addi	a4,a4,1
    80002930:	00e78c63          	beq	a5,a4,80002948 <devintr+0x54>
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	00813483          	ld	s1,8(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	c8c080e7          	jalr	-884(ra) # 800025d4 <cpuid>
    80002950:	06050663          	beqz	a0,800029bc <devintr+0xc8>
    80002954:	144027f3          	csrr	a5,sip
    80002958:	ffd7f793          	andi	a5,a5,-3
    8000295c:	14479073          	csrw	sip,a5
    80002960:	01813083          	ld	ra,24(sp)
    80002964:	01013403          	ld	s0,16(sp)
    80002968:	00813483          	ld	s1,8(sp)
    8000296c:	00200513          	li	a0,2
    80002970:	02010113          	addi	sp,sp,32
    80002974:	00008067          	ret
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	24c080e7          	jalr	588(ra) # 80002bc4 <plic_claim>
    80002980:	00a00793          	li	a5,10
    80002984:	00050493          	mv	s1,a0
    80002988:	06f50663          	beq	a0,a5,800029f4 <devintr+0x100>
    8000298c:	00100513          	li	a0,1
    80002990:	fa0482e3          	beqz	s1,80002934 <devintr+0x40>
    80002994:	00048593          	mv	a1,s1
    80002998:	00003517          	auipc	a0,0x3
    8000299c:	89050513          	addi	a0,a0,-1904 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	668080e7          	jalr	1640(ra) # 80003008 <__printf>
    800029a8:	00048513          	mv	a0,s1
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	250080e7          	jalr	592(ra) # 80002bfc <plic_complete>
    800029b4:	00100513          	li	a0,1
    800029b8:	f7dff06f          	j	80002934 <devintr+0x40>
    800029bc:	00004517          	auipc	a0,0x4
    800029c0:	1f450513          	addi	a0,a0,500 # 80006bb0 <tickslock>
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	318080e7          	jalr	792(ra) # 80003cdc <acquire>
    800029cc:	00003717          	auipc	a4,0x3
    800029d0:	0d870713          	addi	a4,a4,216 # 80005aa4 <ticks>
    800029d4:	00072783          	lw	a5,0(a4)
    800029d8:	00004517          	auipc	a0,0x4
    800029dc:	1d850513          	addi	a0,a0,472 # 80006bb0 <tickslock>
    800029e0:	0017879b          	addiw	a5,a5,1
    800029e4:	00f72023          	sw	a5,0(a4)
    800029e8:	00001097          	auipc	ra,0x1
    800029ec:	3c0080e7          	jalr	960(ra) # 80003da8 <release>
    800029f0:	f65ff06f          	j	80002954 <devintr+0x60>
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	f1c080e7          	jalr	-228(ra) # 80003910 <uartintr>
    800029fc:	fadff06f          	j	800029a8 <devintr+0xb4>

0000000080002a00 <kernelvec>:
    80002a00:	f0010113          	addi	sp,sp,-256
    80002a04:	00113023          	sd	ra,0(sp)
    80002a08:	00213423          	sd	sp,8(sp)
    80002a0c:	00313823          	sd	gp,16(sp)
    80002a10:	00413c23          	sd	tp,24(sp)
    80002a14:	02513023          	sd	t0,32(sp)
    80002a18:	02613423          	sd	t1,40(sp)
    80002a1c:	02713823          	sd	t2,48(sp)
    80002a20:	02813c23          	sd	s0,56(sp)
    80002a24:	04913023          	sd	s1,64(sp)
    80002a28:	04a13423          	sd	a0,72(sp)
    80002a2c:	04b13823          	sd	a1,80(sp)
    80002a30:	04c13c23          	sd	a2,88(sp)
    80002a34:	06d13023          	sd	a3,96(sp)
    80002a38:	06e13423          	sd	a4,104(sp)
    80002a3c:	06f13823          	sd	a5,112(sp)
    80002a40:	07013c23          	sd	a6,120(sp)
    80002a44:	09113023          	sd	a7,128(sp)
    80002a48:	09213423          	sd	s2,136(sp)
    80002a4c:	09313823          	sd	s3,144(sp)
    80002a50:	09413c23          	sd	s4,152(sp)
    80002a54:	0b513023          	sd	s5,160(sp)
    80002a58:	0b613423          	sd	s6,168(sp)
    80002a5c:	0b713823          	sd	s7,176(sp)
    80002a60:	0b813c23          	sd	s8,184(sp)
    80002a64:	0d913023          	sd	s9,192(sp)
    80002a68:	0da13423          	sd	s10,200(sp)
    80002a6c:	0db13823          	sd	s11,208(sp)
    80002a70:	0dc13c23          	sd	t3,216(sp)
    80002a74:	0fd13023          	sd	t4,224(sp)
    80002a78:	0fe13423          	sd	t5,232(sp)
    80002a7c:	0ff13823          	sd	t6,240(sp)
    80002a80:	cd5ff0ef          	jal	ra,80002754 <kerneltrap>
    80002a84:	00013083          	ld	ra,0(sp)
    80002a88:	00813103          	ld	sp,8(sp)
    80002a8c:	01013183          	ld	gp,16(sp)
    80002a90:	02013283          	ld	t0,32(sp)
    80002a94:	02813303          	ld	t1,40(sp)
    80002a98:	03013383          	ld	t2,48(sp)
    80002a9c:	03813403          	ld	s0,56(sp)
    80002aa0:	04013483          	ld	s1,64(sp)
    80002aa4:	04813503          	ld	a0,72(sp)
    80002aa8:	05013583          	ld	a1,80(sp)
    80002aac:	05813603          	ld	a2,88(sp)
    80002ab0:	06013683          	ld	a3,96(sp)
    80002ab4:	06813703          	ld	a4,104(sp)
    80002ab8:	07013783          	ld	a5,112(sp)
    80002abc:	07813803          	ld	a6,120(sp)
    80002ac0:	08013883          	ld	a7,128(sp)
    80002ac4:	08813903          	ld	s2,136(sp)
    80002ac8:	09013983          	ld	s3,144(sp)
    80002acc:	09813a03          	ld	s4,152(sp)
    80002ad0:	0a013a83          	ld	s5,160(sp)
    80002ad4:	0a813b03          	ld	s6,168(sp)
    80002ad8:	0b013b83          	ld	s7,176(sp)
    80002adc:	0b813c03          	ld	s8,184(sp)
    80002ae0:	0c013c83          	ld	s9,192(sp)
    80002ae4:	0c813d03          	ld	s10,200(sp)
    80002ae8:	0d013d83          	ld	s11,208(sp)
    80002aec:	0d813e03          	ld	t3,216(sp)
    80002af0:	0e013e83          	ld	t4,224(sp)
    80002af4:	0e813f03          	ld	t5,232(sp)
    80002af8:	0f013f83          	ld	t6,240(sp)
    80002afc:	10010113          	addi	sp,sp,256
    80002b00:	10200073          	sret
    80002b04:	00000013          	nop
    80002b08:	00000013          	nop
    80002b0c:	00000013          	nop

0000000080002b10 <timervec>:
    80002b10:	34051573          	csrrw	a0,mscratch,a0
    80002b14:	00b53023          	sd	a1,0(a0)
    80002b18:	00c53423          	sd	a2,8(a0)
    80002b1c:	00d53823          	sd	a3,16(a0)
    80002b20:	01853583          	ld	a1,24(a0)
    80002b24:	02053603          	ld	a2,32(a0)
    80002b28:	0005b683          	ld	a3,0(a1)
    80002b2c:	00c686b3          	add	a3,a3,a2
    80002b30:	00d5b023          	sd	a3,0(a1)
    80002b34:	00200593          	li	a1,2
    80002b38:	14459073          	csrw	sip,a1
    80002b3c:	01053683          	ld	a3,16(a0)
    80002b40:	00853603          	ld	a2,8(a0)
    80002b44:	00053583          	ld	a1,0(a0)
    80002b48:	34051573          	csrrw	a0,mscratch,a0
    80002b4c:	30200073          	mret

0000000080002b50 <plicinit>:
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00813423          	sd	s0,8(sp)
    80002b58:	01010413          	addi	s0,sp,16
    80002b5c:	00813403          	ld	s0,8(sp)
    80002b60:	0c0007b7          	lui	a5,0xc000
    80002b64:	00100713          	li	a4,1
    80002b68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002b6c:	00e7a223          	sw	a4,4(a5)
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret

0000000080002b78 <plicinithart>:
    80002b78:	ff010113          	addi	sp,sp,-16
    80002b7c:	00813023          	sd	s0,0(sp)
    80002b80:	00113423          	sd	ra,8(sp)
    80002b84:	01010413          	addi	s0,sp,16
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	a4c080e7          	jalr	-1460(ra) # 800025d4 <cpuid>
    80002b90:	0085171b          	slliw	a4,a0,0x8
    80002b94:	0c0027b7          	lui	a5,0xc002
    80002b98:	00e787b3          	add	a5,a5,a4
    80002b9c:	40200713          	li	a4,1026
    80002ba0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002ba4:	00813083          	ld	ra,8(sp)
    80002ba8:	00013403          	ld	s0,0(sp)
    80002bac:	00d5151b          	slliw	a0,a0,0xd
    80002bb0:	0c2017b7          	lui	a5,0xc201
    80002bb4:	00a78533          	add	a0,a5,a0
    80002bb8:	00052023          	sw	zero,0(a0)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret

0000000080002bc4 <plic_claim>:
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00813023          	sd	s0,0(sp)
    80002bcc:	00113423          	sd	ra,8(sp)
    80002bd0:	01010413          	addi	s0,sp,16
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	a00080e7          	jalr	-1536(ra) # 800025d4 <cpuid>
    80002bdc:	00813083          	ld	ra,8(sp)
    80002be0:	00013403          	ld	s0,0(sp)
    80002be4:	00d5151b          	slliw	a0,a0,0xd
    80002be8:	0c2017b7          	lui	a5,0xc201
    80002bec:	00a78533          	add	a0,a5,a0
    80002bf0:	00452503          	lw	a0,4(a0)
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00008067          	ret

0000000080002bfc <plic_complete>:
    80002bfc:	fe010113          	addi	sp,sp,-32
    80002c00:	00813823          	sd	s0,16(sp)
    80002c04:	00913423          	sd	s1,8(sp)
    80002c08:	00113c23          	sd	ra,24(sp)
    80002c0c:	02010413          	addi	s0,sp,32
    80002c10:	00050493          	mv	s1,a0
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	9c0080e7          	jalr	-1600(ra) # 800025d4 <cpuid>
    80002c1c:	01813083          	ld	ra,24(sp)
    80002c20:	01013403          	ld	s0,16(sp)
    80002c24:	00d5179b          	slliw	a5,a0,0xd
    80002c28:	0c201737          	lui	a4,0xc201
    80002c2c:	00f707b3          	add	a5,a4,a5
    80002c30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002c34:	00813483          	ld	s1,8(sp)
    80002c38:	02010113          	addi	sp,sp,32
    80002c3c:	00008067          	ret

0000000080002c40 <consolewrite>:
    80002c40:	fb010113          	addi	sp,sp,-80
    80002c44:	04813023          	sd	s0,64(sp)
    80002c48:	04113423          	sd	ra,72(sp)
    80002c4c:	02913c23          	sd	s1,56(sp)
    80002c50:	03213823          	sd	s2,48(sp)
    80002c54:	03313423          	sd	s3,40(sp)
    80002c58:	03413023          	sd	s4,32(sp)
    80002c5c:	01513c23          	sd	s5,24(sp)
    80002c60:	05010413          	addi	s0,sp,80
    80002c64:	06c05c63          	blez	a2,80002cdc <consolewrite+0x9c>
    80002c68:	00060993          	mv	s3,a2
    80002c6c:	00050a13          	mv	s4,a0
    80002c70:	00058493          	mv	s1,a1
    80002c74:	00000913          	li	s2,0
    80002c78:	fff00a93          	li	s5,-1
    80002c7c:	01c0006f          	j	80002c98 <consolewrite+0x58>
    80002c80:	fbf44503          	lbu	a0,-65(s0)
    80002c84:	0019091b          	addiw	s2,s2,1
    80002c88:	00148493          	addi	s1,s1,1
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	a9c080e7          	jalr	-1380(ra) # 80003728 <uartputc>
    80002c94:	03298063          	beq	s3,s2,80002cb4 <consolewrite+0x74>
    80002c98:	00048613          	mv	a2,s1
    80002c9c:	00100693          	li	a3,1
    80002ca0:	000a0593          	mv	a1,s4
    80002ca4:	fbf40513          	addi	a0,s0,-65
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	9e4080e7          	jalr	-1564(ra) # 8000268c <either_copyin>
    80002cb0:	fd5518e3          	bne	a0,s5,80002c80 <consolewrite+0x40>
    80002cb4:	04813083          	ld	ra,72(sp)
    80002cb8:	04013403          	ld	s0,64(sp)
    80002cbc:	03813483          	ld	s1,56(sp)
    80002cc0:	02813983          	ld	s3,40(sp)
    80002cc4:	02013a03          	ld	s4,32(sp)
    80002cc8:	01813a83          	ld	s5,24(sp)
    80002ccc:	00090513          	mv	a0,s2
    80002cd0:	03013903          	ld	s2,48(sp)
    80002cd4:	05010113          	addi	sp,sp,80
    80002cd8:	00008067          	ret
    80002cdc:	00000913          	li	s2,0
    80002ce0:	fd5ff06f          	j	80002cb4 <consolewrite+0x74>

0000000080002ce4 <consoleread>:
    80002ce4:	f9010113          	addi	sp,sp,-112
    80002ce8:	06813023          	sd	s0,96(sp)
    80002cec:	04913c23          	sd	s1,88(sp)
    80002cf0:	05213823          	sd	s2,80(sp)
    80002cf4:	05313423          	sd	s3,72(sp)
    80002cf8:	05413023          	sd	s4,64(sp)
    80002cfc:	03513c23          	sd	s5,56(sp)
    80002d00:	03613823          	sd	s6,48(sp)
    80002d04:	03713423          	sd	s7,40(sp)
    80002d08:	03813023          	sd	s8,32(sp)
    80002d0c:	06113423          	sd	ra,104(sp)
    80002d10:	01913c23          	sd	s9,24(sp)
    80002d14:	07010413          	addi	s0,sp,112
    80002d18:	00060b93          	mv	s7,a2
    80002d1c:	00050913          	mv	s2,a0
    80002d20:	00058c13          	mv	s8,a1
    80002d24:	00060b1b          	sext.w	s6,a2
    80002d28:	00004497          	auipc	s1,0x4
    80002d2c:	eb048493          	addi	s1,s1,-336 # 80006bd8 <cons>
    80002d30:	00400993          	li	s3,4
    80002d34:	fff00a13          	li	s4,-1
    80002d38:	00a00a93          	li	s5,10
    80002d3c:	05705e63          	blez	s7,80002d98 <consoleread+0xb4>
    80002d40:	09c4a703          	lw	a4,156(s1)
    80002d44:	0984a783          	lw	a5,152(s1)
    80002d48:	0007071b          	sext.w	a4,a4
    80002d4c:	08e78463          	beq	a5,a4,80002dd4 <consoleread+0xf0>
    80002d50:	07f7f713          	andi	a4,a5,127
    80002d54:	00e48733          	add	a4,s1,a4
    80002d58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002d5c:	0017869b          	addiw	a3,a5,1
    80002d60:	08d4ac23          	sw	a3,152(s1)
    80002d64:	00070c9b          	sext.w	s9,a4
    80002d68:	0b370663          	beq	a4,s3,80002e14 <consoleread+0x130>
    80002d6c:	00100693          	li	a3,1
    80002d70:	f9f40613          	addi	a2,s0,-97
    80002d74:	000c0593          	mv	a1,s8
    80002d78:	00090513          	mv	a0,s2
    80002d7c:	f8e40fa3          	sb	a4,-97(s0)
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	8c0080e7          	jalr	-1856(ra) # 80002640 <either_copyout>
    80002d88:	01450863          	beq	a0,s4,80002d98 <consoleread+0xb4>
    80002d8c:	001c0c13          	addi	s8,s8,1
    80002d90:	fffb8b9b          	addiw	s7,s7,-1
    80002d94:	fb5c94e3          	bne	s9,s5,80002d3c <consoleread+0x58>
    80002d98:	000b851b          	sext.w	a0,s7
    80002d9c:	06813083          	ld	ra,104(sp)
    80002da0:	06013403          	ld	s0,96(sp)
    80002da4:	05813483          	ld	s1,88(sp)
    80002da8:	05013903          	ld	s2,80(sp)
    80002dac:	04813983          	ld	s3,72(sp)
    80002db0:	04013a03          	ld	s4,64(sp)
    80002db4:	03813a83          	ld	s5,56(sp)
    80002db8:	02813b83          	ld	s7,40(sp)
    80002dbc:	02013c03          	ld	s8,32(sp)
    80002dc0:	01813c83          	ld	s9,24(sp)
    80002dc4:	40ab053b          	subw	a0,s6,a0
    80002dc8:	03013b03          	ld	s6,48(sp)
    80002dcc:	07010113          	addi	sp,sp,112
    80002dd0:	00008067          	ret
    80002dd4:	00001097          	auipc	ra,0x1
    80002dd8:	1d8080e7          	jalr	472(ra) # 80003fac <push_on>
    80002ddc:	0984a703          	lw	a4,152(s1)
    80002de0:	09c4a783          	lw	a5,156(s1)
    80002de4:	0007879b          	sext.w	a5,a5
    80002de8:	fef70ce3          	beq	a4,a5,80002de0 <consoleread+0xfc>
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	234080e7          	jalr	564(ra) # 80004020 <pop_on>
    80002df4:	0984a783          	lw	a5,152(s1)
    80002df8:	07f7f713          	andi	a4,a5,127
    80002dfc:	00e48733          	add	a4,s1,a4
    80002e00:	01874703          	lbu	a4,24(a4)
    80002e04:	0017869b          	addiw	a3,a5,1
    80002e08:	08d4ac23          	sw	a3,152(s1)
    80002e0c:	00070c9b          	sext.w	s9,a4
    80002e10:	f5371ee3          	bne	a4,s3,80002d6c <consoleread+0x88>
    80002e14:	000b851b          	sext.w	a0,s7
    80002e18:	f96bf2e3          	bgeu	s7,s6,80002d9c <consoleread+0xb8>
    80002e1c:	08f4ac23          	sw	a5,152(s1)
    80002e20:	f7dff06f          	j	80002d9c <consoleread+0xb8>

0000000080002e24 <consputc>:
    80002e24:	10000793          	li	a5,256
    80002e28:	00f50663          	beq	a0,a5,80002e34 <consputc+0x10>
    80002e2c:	00001317          	auipc	t1,0x1
    80002e30:	9f430067          	jr	-1548(t1) # 80003820 <uartputc_sync>
    80002e34:	ff010113          	addi	sp,sp,-16
    80002e38:	00113423          	sd	ra,8(sp)
    80002e3c:	00813023          	sd	s0,0(sp)
    80002e40:	01010413          	addi	s0,sp,16
    80002e44:	00800513          	li	a0,8
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	9d8080e7          	jalr	-1576(ra) # 80003820 <uartputc_sync>
    80002e50:	02000513          	li	a0,32
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	9cc080e7          	jalr	-1588(ra) # 80003820 <uartputc_sync>
    80002e5c:	00013403          	ld	s0,0(sp)
    80002e60:	00813083          	ld	ra,8(sp)
    80002e64:	00800513          	li	a0,8
    80002e68:	01010113          	addi	sp,sp,16
    80002e6c:	00001317          	auipc	t1,0x1
    80002e70:	9b430067          	jr	-1612(t1) # 80003820 <uartputc_sync>

0000000080002e74 <consoleintr>:
    80002e74:	fe010113          	addi	sp,sp,-32
    80002e78:	00813823          	sd	s0,16(sp)
    80002e7c:	00913423          	sd	s1,8(sp)
    80002e80:	01213023          	sd	s2,0(sp)
    80002e84:	00113c23          	sd	ra,24(sp)
    80002e88:	02010413          	addi	s0,sp,32
    80002e8c:	00004917          	auipc	s2,0x4
    80002e90:	d4c90913          	addi	s2,s2,-692 # 80006bd8 <cons>
    80002e94:	00050493          	mv	s1,a0
    80002e98:	00090513          	mv	a0,s2
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	e40080e7          	jalr	-448(ra) # 80003cdc <acquire>
    80002ea4:	02048c63          	beqz	s1,80002edc <consoleintr+0x68>
    80002ea8:	0a092783          	lw	a5,160(s2)
    80002eac:	09892703          	lw	a4,152(s2)
    80002eb0:	07f00693          	li	a3,127
    80002eb4:	40e7873b          	subw	a4,a5,a4
    80002eb8:	02e6e263          	bltu	a3,a4,80002edc <consoleintr+0x68>
    80002ebc:	00d00713          	li	a4,13
    80002ec0:	04e48063          	beq	s1,a4,80002f00 <consoleintr+0x8c>
    80002ec4:	07f7f713          	andi	a4,a5,127
    80002ec8:	00e90733          	add	a4,s2,a4
    80002ecc:	0017879b          	addiw	a5,a5,1
    80002ed0:	0af92023          	sw	a5,160(s2)
    80002ed4:	00970c23          	sb	s1,24(a4)
    80002ed8:	08f92e23          	sw	a5,156(s2)
    80002edc:	01013403          	ld	s0,16(sp)
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	00813483          	ld	s1,8(sp)
    80002ee8:	00013903          	ld	s2,0(sp)
    80002eec:	00004517          	auipc	a0,0x4
    80002ef0:	cec50513          	addi	a0,a0,-788 # 80006bd8 <cons>
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00001317          	auipc	t1,0x1
    80002efc:	eb030067          	jr	-336(t1) # 80003da8 <release>
    80002f00:	00a00493          	li	s1,10
    80002f04:	fc1ff06f          	j	80002ec4 <consoleintr+0x50>

0000000080002f08 <consoleinit>:
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	02010413          	addi	s0,sp,32
    80002f1c:	00004497          	auipc	s1,0x4
    80002f20:	cbc48493          	addi	s1,s1,-836 # 80006bd8 <cons>
    80002f24:	00048513          	mv	a0,s1
    80002f28:	00002597          	auipc	a1,0x2
    80002f2c:	35858593          	addi	a1,a1,856 # 80005280 <_ZZ12printIntegermE6digits+0x138>
    80002f30:	00001097          	auipc	ra,0x1
    80002f34:	d88080e7          	jalr	-632(ra) # 80003cb8 <initlock>
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	7ac080e7          	jalr	1964(ra) # 800036e4 <uartinit>
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00000797          	auipc	a5,0x0
    80002f4c:	d9c78793          	addi	a5,a5,-612 # 80002ce4 <consoleread>
    80002f50:	0af4bc23          	sd	a5,184(s1)
    80002f54:	00000797          	auipc	a5,0x0
    80002f58:	cec78793          	addi	a5,a5,-788 # 80002c40 <consolewrite>
    80002f5c:	0cf4b023          	sd	a5,192(s1)
    80002f60:	00813483          	ld	s1,8(sp)
    80002f64:	02010113          	addi	sp,sp,32
    80002f68:	00008067          	ret

0000000080002f6c <console_read>:
    80002f6c:	ff010113          	addi	sp,sp,-16
    80002f70:	00813423          	sd	s0,8(sp)
    80002f74:	01010413          	addi	s0,sp,16
    80002f78:	00813403          	ld	s0,8(sp)
    80002f7c:	00004317          	auipc	t1,0x4
    80002f80:	d1433303          	ld	t1,-748(t1) # 80006c90 <devsw+0x10>
    80002f84:	01010113          	addi	sp,sp,16
    80002f88:	00030067          	jr	t1

0000000080002f8c <console_write>:
    80002f8c:	ff010113          	addi	sp,sp,-16
    80002f90:	00813423          	sd	s0,8(sp)
    80002f94:	01010413          	addi	s0,sp,16
    80002f98:	00813403          	ld	s0,8(sp)
    80002f9c:	00004317          	auipc	t1,0x4
    80002fa0:	cfc33303          	ld	t1,-772(t1) # 80006c98 <devsw+0x18>
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00030067          	jr	t1

0000000080002fac <panic>:
    80002fac:	fe010113          	addi	sp,sp,-32
    80002fb0:	00113c23          	sd	ra,24(sp)
    80002fb4:	00813823          	sd	s0,16(sp)
    80002fb8:	00913423          	sd	s1,8(sp)
    80002fbc:	02010413          	addi	s0,sp,32
    80002fc0:	00050493          	mv	s1,a0
    80002fc4:	00002517          	auipc	a0,0x2
    80002fc8:	2c450513          	addi	a0,a0,708 # 80005288 <_ZZ12printIntegermE6digits+0x140>
    80002fcc:	00004797          	auipc	a5,0x4
    80002fd0:	d607a623          	sw	zero,-660(a5) # 80006d38 <pr+0x18>
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	034080e7          	jalr	52(ra) # 80003008 <__printf>
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	028080e7          	jalr	40(ra) # 80003008 <__printf>
    80002fe8:	00002517          	auipc	a0,0x2
    80002fec:	10850513          	addi	a0,a0,264 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	018080e7          	jalr	24(ra) # 80003008 <__printf>
    80002ff8:	00100793          	li	a5,1
    80002ffc:	00003717          	auipc	a4,0x3
    80003000:	aaf72623          	sw	a5,-1364(a4) # 80005aa8 <panicked>
    80003004:	0000006f          	j	80003004 <panic+0x58>

0000000080003008 <__printf>:
    80003008:	f3010113          	addi	sp,sp,-208
    8000300c:	08813023          	sd	s0,128(sp)
    80003010:	07313423          	sd	s3,104(sp)
    80003014:	09010413          	addi	s0,sp,144
    80003018:	05813023          	sd	s8,64(sp)
    8000301c:	08113423          	sd	ra,136(sp)
    80003020:	06913c23          	sd	s1,120(sp)
    80003024:	07213823          	sd	s2,112(sp)
    80003028:	07413023          	sd	s4,96(sp)
    8000302c:	05513c23          	sd	s5,88(sp)
    80003030:	05613823          	sd	s6,80(sp)
    80003034:	05713423          	sd	s7,72(sp)
    80003038:	03913c23          	sd	s9,56(sp)
    8000303c:	03a13823          	sd	s10,48(sp)
    80003040:	03b13423          	sd	s11,40(sp)
    80003044:	00004317          	auipc	t1,0x4
    80003048:	cdc30313          	addi	t1,t1,-804 # 80006d20 <pr>
    8000304c:	01832c03          	lw	s8,24(t1)
    80003050:	00b43423          	sd	a1,8(s0)
    80003054:	00c43823          	sd	a2,16(s0)
    80003058:	00d43c23          	sd	a3,24(s0)
    8000305c:	02e43023          	sd	a4,32(s0)
    80003060:	02f43423          	sd	a5,40(s0)
    80003064:	03043823          	sd	a6,48(s0)
    80003068:	03143c23          	sd	a7,56(s0)
    8000306c:	00050993          	mv	s3,a0
    80003070:	4a0c1663          	bnez	s8,8000351c <__printf+0x514>
    80003074:	60098c63          	beqz	s3,8000368c <__printf+0x684>
    80003078:	0009c503          	lbu	a0,0(s3)
    8000307c:	00840793          	addi	a5,s0,8
    80003080:	f6f43c23          	sd	a5,-136(s0)
    80003084:	00000493          	li	s1,0
    80003088:	22050063          	beqz	a0,800032a8 <__printf+0x2a0>
    8000308c:	00002a37          	lui	s4,0x2
    80003090:	00018ab7          	lui	s5,0x18
    80003094:	000f4b37          	lui	s6,0xf4
    80003098:	00989bb7          	lui	s7,0x989
    8000309c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800030a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800030a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800030a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800030ac:	00148c9b          	addiw	s9,s1,1
    800030b0:	02500793          	li	a5,37
    800030b4:	01998933          	add	s2,s3,s9
    800030b8:	38f51263          	bne	a0,a5,8000343c <__printf+0x434>
    800030bc:	00094783          	lbu	a5,0(s2)
    800030c0:	00078c9b          	sext.w	s9,a5
    800030c4:	1e078263          	beqz	a5,800032a8 <__printf+0x2a0>
    800030c8:	0024849b          	addiw	s1,s1,2
    800030cc:	07000713          	li	a4,112
    800030d0:	00998933          	add	s2,s3,s1
    800030d4:	38e78a63          	beq	a5,a4,80003468 <__printf+0x460>
    800030d8:	20f76863          	bltu	a4,a5,800032e8 <__printf+0x2e0>
    800030dc:	42a78863          	beq	a5,a0,8000350c <__printf+0x504>
    800030e0:	06400713          	li	a4,100
    800030e4:	40e79663          	bne	a5,a4,800034f0 <__printf+0x4e8>
    800030e8:	f7843783          	ld	a5,-136(s0)
    800030ec:	0007a603          	lw	a2,0(a5)
    800030f0:	00878793          	addi	a5,a5,8
    800030f4:	f6f43c23          	sd	a5,-136(s0)
    800030f8:	42064a63          	bltz	a2,8000352c <__printf+0x524>
    800030fc:	00a00713          	li	a4,10
    80003100:	02e677bb          	remuw	a5,a2,a4
    80003104:	00002d97          	auipc	s11,0x2
    80003108:	1acd8d93          	addi	s11,s11,428 # 800052b0 <digits>
    8000310c:	00900593          	li	a1,9
    80003110:	0006051b          	sext.w	a0,a2
    80003114:	00000c93          	li	s9,0
    80003118:	02079793          	slli	a5,a5,0x20
    8000311c:	0207d793          	srli	a5,a5,0x20
    80003120:	00fd87b3          	add	a5,s11,a5
    80003124:	0007c783          	lbu	a5,0(a5)
    80003128:	02e656bb          	divuw	a3,a2,a4
    8000312c:	f8f40023          	sb	a5,-128(s0)
    80003130:	14c5d863          	bge	a1,a2,80003280 <__printf+0x278>
    80003134:	06300593          	li	a1,99
    80003138:	00100c93          	li	s9,1
    8000313c:	02e6f7bb          	remuw	a5,a3,a4
    80003140:	02079793          	slli	a5,a5,0x20
    80003144:	0207d793          	srli	a5,a5,0x20
    80003148:	00fd87b3          	add	a5,s11,a5
    8000314c:	0007c783          	lbu	a5,0(a5)
    80003150:	02e6d73b          	divuw	a4,a3,a4
    80003154:	f8f400a3          	sb	a5,-127(s0)
    80003158:	12a5f463          	bgeu	a1,a0,80003280 <__printf+0x278>
    8000315c:	00a00693          	li	a3,10
    80003160:	00900593          	li	a1,9
    80003164:	02d777bb          	remuw	a5,a4,a3
    80003168:	02079793          	slli	a5,a5,0x20
    8000316c:	0207d793          	srli	a5,a5,0x20
    80003170:	00fd87b3          	add	a5,s11,a5
    80003174:	0007c503          	lbu	a0,0(a5)
    80003178:	02d757bb          	divuw	a5,a4,a3
    8000317c:	f8a40123          	sb	a0,-126(s0)
    80003180:	48e5f263          	bgeu	a1,a4,80003604 <__printf+0x5fc>
    80003184:	06300513          	li	a0,99
    80003188:	02d7f5bb          	remuw	a1,a5,a3
    8000318c:	02059593          	slli	a1,a1,0x20
    80003190:	0205d593          	srli	a1,a1,0x20
    80003194:	00bd85b3          	add	a1,s11,a1
    80003198:	0005c583          	lbu	a1,0(a1)
    8000319c:	02d7d7bb          	divuw	a5,a5,a3
    800031a0:	f8b401a3          	sb	a1,-125(s0)
    800031a4:	48e57263          	bgeu	a0,a4,80003628 <__printf+0x620>
    800031a8:	3e700513          	li	a0,999
    800031ac:	02d7f5bb          	remuw	a1,a5,a3
    800031b0:	02059593          	slli	a1,a1,0x20
    800031b4:	0205d593          	srli	a1,a1,0x20
    800031b8:	00bd85b3          	add	a1,s11,a1
    800031bc:	0005c583          	lbu	a1,0(a1)
    800031c0:	02d7d7bb          	divuw	a5,a5,a3
    800031c4:	f8b40223          	sb	a1,-124(s0)
    800031c8:	46e57663          	bgeu	a0,a4,80003634 <__printf+0x62c>
    800031cc:	02d7f5bb          	remuw	a1,a5,a3
    800031d0:	02059593          	slli	a1,a1,0x20
    800031d4:	0205d593          	srli	a1,a1,0x20
    800031d8:	00bd85b3          	add	a1,s11,a1
    800031dc:	0005c583          	lbu	a1,0(a1)
    800031e0:	02d7d7bb          	divuw	a5,a5,a3
    800031e4:	f8b402a3          	sb	a1,-123(s0)
    800031e8:	46ea7863          	bgeu	s4,a4,80003658 <__printf+0x650>
    800031ec:	02d7f5bb          	remuw	a1,a5,a3
    800031f0:	02059593          	slli	a1,a1,0x20
    800031f4:	0205d593          	srli	a1,a1,0x20
    800031f8:	00bd85b3          	add	a1,s11,a1
    800031fc:	0005c583          	lbu	a1,0(a1)
    80003200:	02d7d7bb          	divuw	a5,a5,a3
    80003204:	f8b40323          	sb	a1,-122(s0)
    80003208:	3eeaf863          	bgeu	s5,a4,800035f8 <__printf+0x5f0>
    8000320c:	02d7f5bb          	remuw	a1,a5,a3
    80003210:	02059593          	slli	a1,a1,0x20
    80003214:	0205d593          	srli	a1,a1,0x20
    80003218:	00bd85b3          	add	a1,s11,a1
    8000321c:	0005c583          	lbu	a1,0(a1)
    80003220:	02d7d7bb          	divuw	a5,a5,a3
    80003224:	f8b403a3          	sb	a1,-121(s0)
    80003228:	42eb7e63          	bgeu	s6,a4,80003664 <__printf+0x65c>
    8000322c:	02d7f5bb          	remuw	a1,a5,a3
    80003230:	02059593          	slli	a1,a1,0x20
    80003234:	0205d593          	srli	a1,a1,0x20
    80003238:	00bd85b3          	add	a1,s11,a1
    8000323c:	0005c583          	lbu	a1,0(a1)
    80003240:	02d7d7bb          	divuw	a5,a5,a3
    80003244:	f8b40423          	sb	a1,-120(s0)
    80003248:	42ebfc63          	bgeu	s7,a4,80003680 <__printf+0x678>
    8000324c:	02079793          	slli	a5,a5,0x20
    80003250:	0207d793          	srli	a5,a5,0x20
    80003254:	00fd8db3          	add	s11,s11,a5
    80003258:	000dc703          	lbu	a4,0(s11)
    8000325c:	00a00793          	li	a5,10
    80003260:	00900c93          	li	s9,9
    80003264:	f8e404a3          	sb	a4,-119(s0)
    80003268:	00065c63          	bgez	a2,80003280 <__printf+0x278>
    8000326c:	f9040713          	addi	a4,s0,-112
    80003270:	00f70733          	add	a4,a4,a5
    80003274:	02d00693          	li	a3,45
    80003278:	fed70823          	sb	a3,-16(a4)
    8000327c:	00078c93          	mv	s9,a5
    80003280:	f8040793          	addi	a5,s0,-128
    80003284:	01978cb3          	add	s9,a5,s9
    80003288:	f7f40d13          	addi	s10,s0,-129
    8000328c:	000cc503          	lbu	a0,0(s9)
    80003290:	fffc8c93          	addi	s9,s9,-1
    80003294:	00000097          	auipc	ra,0x0
    80003298:	b90080e7          	jalr	-1136(ra) # 80002e24 <consputc>
    8000329c:	ffac98e3          	bne	s9,s10,8000328c <__printf+0x284>
    800032a0:	00094503          	lbu	a0,0(s2)
    800032a4:	e00514e3          	bnez	a0,800030ac <__printf+0xa4>
    800032a8:	1a0c1663          	bnez	s8,80003454 <__printf+0x44c>
    800032ac:	08813083          	ld	ra,136(sp)
    800032b0:	08013403          	ld	s0,128(sp)
    800032b4:	07813483          	ld	s1,120(sp)
    800032b8:	07013903          	ld	s2,112(sp)
    800032bc:	06813983          	ld	s3,104(sp)
    800032c0:	06013a03          	ld	s4,96(sp)
    800032c4:	05813a83          	ld	s5,88(sp)
    800032c8:	05013b03          	ld	s6,80(sp)
    800032cc:	04813b83          	ld	s7,72(sp)
    800032d0:	04013c03          	ld	s8,64(sp)
    800032d4:	03813c83          	ld	s9,56(sp)
    800032d8:	03013d03          	ld	s10,48(sp)
    800032dc:	02813d83          	ld	s11,40(sp)
    800032e0:	0d010113          	addi	sp,sp,208
    800032e4:	00008067          	ret
    800032e8:	07300713          	li	a4,115
    800032ec:	1ce78a63          	beq	a5,a4,800034c0 <__printf+0x4b8>
    800032f0:	07800713          	li	a4,120
    800032f4:	1ee79e63          	bne	a5,a4,800034f0 <__printf+0x4e8>
    800032f8:	f7843783          	ld	a5,-136(s0)
    800032fc:	0007a703          	lw	a4,0(a5)
    80003300:	00878793          	addi	a5,a5,8
    80003304:	f6f43c23          	sd	a5,-136(s0)
    80003308:	28074263          	bltz	a4,8000358c <__printf+0x584>
    8000330c:	00002d97          	auipc	s11,0x2
    80003310:	fa4d8d93          	addi	s11,s11,-92 # 800052b0 <digits>
    80003314:	00f77793          	andi	a5,a4,15
    80003318:	00fd87b3          	add	a5,s11,a5
    8000331c:	0007c683          	lbu	a3,0(a5)
    80003320:	00f00613          	li	a2,15
    80003324:	0007079b          	sext.w	a5,a4
    80003328:	f8d40023          	sb	a3,-128(s0)
    8000332c:	0047559b          	srliw	a1,a4,0x4
    80003330:	0047569b          	srliw	a3,a4,0x4
    80003334:	00000c93          	li	s9,0
    80003338:	0ee65063          	bge	a2,a4,80003418 <__printf+0x410>
    8000333c:	00f6f693          	andi	a3,a3,15
    80003340:	00dd86b3          	add	a3,s11,a3
    80003344:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003348:	0087d79b          	srliw	a5,a5,0x8
    8000334c:	00100c93          	li	s9,1
    80003350:	f8d400a3          	sb	a3,-127(s0)
    80003354:	0cb67263          	bgeu	a2,a1,80003418 <__printf+0x410>
    80003358:	00f7f693          	andi	a3,a5,15
    8000335c:	00dd86b3          	add	a3,s11,a3
    80003360:	0006c583          	lbu	a1,0(a3)
    80003364:	00f00613          	li	a2,15
    80003368:	0047d69b          	srliw	a3,a5,0x4
    8000336c:	f8b40123          	sb	a1,-126(s0)
    80003370:	0047d593          	srli	a1,a5,0x4
    80003374:	28f67e63          	bgeu	a2,a5,80003610 <__printf+0x608>
    80003378:	00f6f693          	andi	a3,a3,15
    8000337c:	00dd86b3          	add	a3,s11,a3
    80003380:	0006c503          	lbu	a0,0(a3)
    80003384:	0087d813          	srli	a6,a5,0x8
    80003388:	0087d69b          	srliw	a3,a5,0x8
    8000338c:	f8a401a3          	sb	a0,-125(s0)
    80003390:	28b67663          	bgeu	a2,a1,8000361c <__printf+0x614>
    80003394:	00f6f693          	andi	a3,a3,15
    80003398:	00dd86b3          	add	a3,s11,a3
    8000339c:	0006c583          	lbu	a1,0(a3)
    800033a0:	00c7d513          	srli	a0,a5,0xc
    800033a4:	00c7d69b          	srliw	a3,a5,0xc
    800033a8:	f8b40223          	sb	a1,-124(s0)
    800033ac:	29067a63          	bgeu	a2,a6,80003640 <__printf+0x638>
    800033b0:	00f6f693          	andi	a3,a3,15
    800033b4:	00dd86b3          	add	a3,s11,a3
    800033b8:	0006c583          	lbu	a1,0(a3)
    800033bc:	0107d813          	srli	a6,a5,0x10
    800033c0:	0107d69b          	srliw	a3,a5,0x10
    800033c4:	f8b402a3          	sb	a1,-123(s0)
    800033c8:	28a67263          	bgeu	a2,a0,8000364c <__printf+0x644>
    800033cc:	00f6f693          	andi	a3,a3,15
    800033d0:	00dd86b3          	add	a3,s11,a3
    800033d4:	0006c683          	lbu	a3,0(a3)
    800033d8:	0147d79b          	srliw	a5,a5,0x14
    800033dc:	f8d40323          	sb	a3,-122(s0)
    800033e0:	21067663          	bgeu	a2,a6,800035ec <__printf+0x5e4>
    800033e4:	02079793          	slli	a5,a5,0x20
    800033e8:	0207d793          	srli	a5,a5,0x20
    800033ec:	00fd8db3          	add	s11,s11,a5
    800033f0:	000dc683          	lbu	a3,0(s11)
    800033f4:	00800793          	li	a5,8
    800033f8:	00700c93          	li	s9,7
    800033fc:	f8d403a3          	sb	a3,-121(s0)
    80003400:	00075c63          	bgez	a4,80003418 <__printf+0x410>
    80003404:	f9040713          	addi	a4,s0,-112
    80003408:	00f70733          	add	a4,a4,a5
    8000340c:	02d00693          	li	a3,45
    80003410:	fed70823          	sb	a3,-16(a4)
    80003414:	00078c93          	mv	s9,a5
    80003418:	f8040793          	addi	a5,s0,-128
    8000341c:	01978cb3          	add	s9,a5,s9
    80003420:	f7f40d13          	addi	s10,s0,-129
    80003424:	000cc503          	lbu	a0,0(s9)
    80003428:	fffc8c93          	addi	s9,s9,-1
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	9f8080e7          	jalr	-1544(ra) # 80002e24 <consputc>
    80003434:	ff9d18e3          	bne	s10,s9,80003424 <__printf+0x41c>
    80003438:	0100006f          	j	80003448 <__printf+0x440>
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	9e8080e7          	jalr	-1560(ra) # 80002e24 <consputc>
    80003444:	000c8493          	mv	s1,s9
    80003448:	00094503          	lbu	a0,0(s2)
    8000344c:	c60510e3          	bnez	a0,800030ac <__printf+0xa4>
    80003450:	e40c0ee3          	beqz	s8,800032ac <__printf+0x2a4>
    80003454:	00004517          	auipc	a0,0x4
    80003458:	8cc50513          	addi	a0,a0,-1844 # 80006d20 <pr>
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	94c080e7          	jalr	-1716(ra) # 80003da8 <release>
    80003464:	e49ff06f          	j	800032ac <__printf+0x2a4>
    80003468:	f7843783          	ld	a5,-136(s0)
    8000346c:	03000513          	li	a0,48
    80003470:	01000d13          	li	s10,16
    80003474:	00878713          	addi	a4,a5,8
    80003478:	0007bc83          	ld	s9,0(a5)
    8000347c:	f6e43c23          	sd	a4,-136(s0)
    80003480:	00000097          	auipc	ra,0x0
    80003484:	9a4080e7          	jalr	-1628(ra) # 80002e24 <consputc>
    80003488:	07800513          	li	a0,120
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	998080e7          	jalr	-1640(ra) # 80002e24 <consputc>
    80003494:	00002d97          	auipc	s11,0x2
    80003498:	e1cd8d93          	addi	s11,s11,-484 # 800052b0 <digits>
    8000349c:	03ccd793          	srli	a5,s9,0x3c
    800034a0:	00fd87b3          	add	a5,s11,a5
    800034a4:	0007c503          	lbu	a0,0(a5)
    800034a8:	fffd0d1b          	addiw	s10,s10,-1
    800034ac:	004c9c93          	slli	s9,s9,0x4
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	974080e7          	jalr	-1676(ra) # 80002e24 <consputc>
    800034b8:	fe0d12e3          	bnez	s10,8000349c <__printf+0x494>
    800034bc:	f8dff06f          	j	80003448 <__printf+0x440>
    800034c0:	f7843783          	ld	a5,-136(s0)
    800034c4:	0007bc83          	ld	s9,0(a5)
    800034c8:	00878793          	addi	a5,a5,8
    800034cc:	f6f43c23          	sd	a5,-136(s0)
    800034d0:	000c9a63          	bnez	s9,800034e4 <__printf+0x4dc>
    800034d4:	1080006f          	j	800035dc <__printf+0x5d4>
    800034d8:	001c8c93          	addi	s9,s9,1
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	948080e7          	jalr	-1720(ra) # 80002e24 <consputc>
    800034e4:	000cc503          	lbu	a0,0(s9)
    800034e8:	fe0518e3          	bnez	a0,800034d8 <__printf+0x4d0>
    800034ec:	f5dff06f          	j	80003448 <__printf+0x440>
    800034f0:	02500513          	li	a0,37
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	930080e7          	jalr	-1744(ra) # 80002e24 <consputc>
    800034fc:	000c8513          	mv	a0,s9
    80003500:	00000097          	auipc	ra,0x0
    80003504:	924080e7          	jalr	-1756(ra) # 80002e24 <consputc>
    80003508:	f41ff06f          	j	80003448 <__printf+0x440>
    8000350c:	02500513          	li	a0,37
    80003510:	00000097          	auipc	ra,0x0
    80003514:	914080e7          	jalr	-1772(ra) # 80002e24 <consputc>
    80003518:	f31ff06f          	j	80003448 <__printf+0x440>
    8000351c:	00030513          	mv	a0,t1
    80003520:	00000097          	auipc	ra,0x0
    80003524:	7bc080e7          	jalr	1980(ra) # 80003cdc <acquire>
    80003528:	b4dff06f          	j	80003074 <__printf+0x6c>
    8000352c:	40c0053b          	negw	a0,a2
    80003530:	00a00713          	li	a4,10
    80003534:	02e576bb          	remuw	a3,a0,a4
    80003538:	00002d97          	auipc	s11,0x2
    8000353c:	d78d8d93          	addi	s11,s11,-648 # 800052b0 <digits>
    80003540:	ff700593          	li	a1,-9
    80003544:	02069693          	slli	a3,a3,0x20
    80003548:	0206d693          	srli	a3,a3,0x20
    8000354c:	00dd86b3          	add	a3,s11,a3
    80003550:	0006c683          	lbu	a3,0(a3)
    80003554:	02e557bb          	divuw	a5,a0,a4
    80003558:	f8d40023          	sb	a3,-128(s0)
    8000355c:	10b65e63          	bge	a2,a1,80003678 <__printf+0x670>
    80003560:	06300593          	li	a1,99
    80003564:	02e7f6bb          	remuw	a3,a5,a4
    80003568:	02069693          	slli	a3,a3,0x20
    8000356c:	0206d693          	srli	a3,a3,0x20
    80003570:	00dd86b3          	add	a3,s11,a3
    80003574:	0006c683          	lbu	a3,0(a3)
    80003578:	02e7d73b          	divuw	a4,a5,a4
    8000357c:	00200793          	li	a5,2
    80003580:	f8d400a3          	sb	a3,-127(s0)
    80003584:	bca5ece3          	bltu	a1,a0,8000315c <__printf+0x154>
    80003588:	ce5ff06f          	j	8000326c <__printf+0x264>
    8000358c:	40e007bb          	negw	a5,a4
    80003590:	00002d97          	auipc	s11,0x2
    80003594:	d20d8d93          	addi	s11,s11,-736 # 800052b0 <digits>
    80003598:	00f7f693          	andi	a3,a5,15
    8000359c:	00dd86b3          	add	a3,s11,a3
    800035a0:	0006c583          	lbu	a1,0(a3)
    800035a4:	ff100613          	li	a2,-15
    800035a8:	0047d69b          	srliw	a3,a5,0x4
    800035ac:	f8b40023          	sb	a1,-128(s0)
    800035b0:	0047d59b          	srliw	a1,a5,0x4
    800035b4:	0ac75e63          	bge	a4,a2,80003670 <__printf+0x668>
    800035b8:	00f6f693          	andi	a3,a3,15
    800035bc:	00dd86b3          	add	a3,s11,a3
    800035c0:	0006c603          	lbu	a2,0(a3)
    800035c4:	00f00693          	li	a3,15
    800035c8:	0087d79b          	srliw	a5,a5,0x8
    800035cc:	f8c400a3          	sb	a2,-127(s0)
    800035d0:	d8b6e4e3          	bltu	a3,a1,80003358 <__printf+0x350>
    800035d4:	00200793          	li	a5,2
    800035d8:	e2dff06f          	j	80003404 <__printf+0x3fc>
    800035dc:	00002c97          	auipc	s9,0x2
    800035e0:	cb4c8c93          	addi	s9,s9,-844 # 80005290 <_ZZ12printIntegermE6digits+0x148>
    800035e4:	02800513          	li	a0,40
    800035e8:	ef1ff06f          	j	800034d8 <__printf+0x4d0>
    800035ec:	00700793          	li	a5,7
    800035f0:	00600c93          	li	s9,6
    800035f4:	e0dff06f          	j	80003400 <__printf+0x3f8>
    800035f8:	00700793          	li	a5,7
    800035fc:	00600c93          	li	s9,6
    80003600:	c69ff06f          	j	80003268 <__printf+0x260>
    80003604:	00300793          	li	a5,3
    80003608:	00200c93          	li	s9,2
    8000360c:	c5dff06f          	j	80003268 <__printf+0x260>
    80003610:	00300793          	li	a5,3
    80003614:	00200c93          	li	s9,2
    80003618:	de9ff06f          	j	80003400 <__printf+0x3f8>
    8000361c:	00400793          	li	a5,4
    80003620:	00300c93          	li	s9,3
    80003624:	dddff06f          	j	80003400 <__printf+0x3f8>
    80003628:	00400793          	li	a5,4
    8000362c:	00300c93          	li	s9,3
    80003630:	c39ff06f          	j	80003268 <__printf+0x260>
    80003634:	00500793          	li	a5,5
    80003638:	00400c93          	li	s9,4
    8000363c:	c2dff06f          	j	80003268 <__printf+0x260>
    80003640:	00500793          	li	a5,5
    80003644:	00400c93          	li	s9,4
    80003648:	db9ff06f          	j	80003400 <__printf+0x3f8>
    8000364c:	00600793          	li	a5,6
    80003650:	00500c93          	li	s9,5
    80003654:	dadff06f          	j	80003400 <__printf+0x3f8>
    80003658:	00600793          	li	a5,6
    8000365c:	00500c93          	li	s9,5
    80003660:	c09ff06f          	j	80003268 <__printf+0x260>
    80003664:	00800793          	li	a5,8
    80003668:	00700c93          	li	s9,7
    8000366c:	bfdff06f          	j	80003268 <__printf+0x260>
    80003670:	00100793          	li	a5,1
    80003674:	d91ff06f          	j	80003404 <__printf+0x3fc>
    80003678:	00100793          	li	a5,1
    8000367c:	bf1ff06f          	j	8000326c <__printf+0x264>
    80003680:	00900793          	li	a5,9
    80003684:	00800c93          	li	s9,8
    80003688:	be1ff06f          	j	80003268 <__printf+0x260>
    8000368c:	00002517          	auipc	a0,0x2
    80003690:	c0c50513          	addi	a0,a0,-1012 # 80005298 <_ZZ12printIntegermE6digits+0x150>
    80003694:	00000097          	auipc	ra,0x0
    80003698:	918080e7          	jalr	-1768(ra) # 80002fac <panic>

000000008000369c <printfinit>:
    8000369c:	fe010113          	addi	sp,sp,-32
    800036a0:	00813823          	sd	s0,16(sp)
    800036a4:	00913423          	sd	s1,8(sp)
    800036a8:	00113c23          	sd	ra,24(sp)
    800036ac:	02010413          	addi	s0,sp,32
    800036b0:	00003497          	auipc	s1,0x3
    800036b4:	67048493          	addi	s1,s1,1648 # 80006d20 <pr>
    800036b8:	00048513          	mv	a0,s1
    800036bc:	00002597          	auipc	a1,0x2
    800036c0:	bec58593          	addi	a1,a1,-1044 # 800052a8 <_ZZ12printIntegermE6digits+0x160>
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	5f4080e7          	jalr	1524(ra) # 80003cb8 <initlock>
    800036cc:	01813083          	ld	ra,24(sp)
    800036d0:	01013403          	ld	s0,16(sp)
    800036d4:	0004ac23          	sw	zero,24(s1)
    800036d8:	00813483          	ld	s1,8(sp)
    800036dc:	02010113          	addi	sp,sp,32
    800036e0:	00008067          	ret

00000000800036e4 <uartinit>:
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00813423          	sd	s0,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	100007b7          	lui	a5,0x10000
    800036f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800036f8:	f8000713          	li	a4,-128
    800036fc:	00e781a3          	sb	a4,3(a5)
    80003700:	00300713          	li	a4,3
    80003704:	00e78023          	sb	a4,0(a5)
    80003708:	000780a3          	sb	zero,1(a5)
    8000370c:	00e781a3          	sb	a4,3(a5)
    80003710:	00700693          	li	a3,7
    80003714:	00d78123          	sb	a3,2(a5)
    80003718:	00e780a3          	sb	a4,1(a5)
    8000371c:	00813403          	ld	s0,8(sp)
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret

0000000080003728 <uartputc>:
    80003728:	00002797          	auipc	a5,0x2
    8000372c:	3807a783          	lw	a5,896(a5) # 80005aa8 <panicked>
    80003730:	00078463          	beqz	a5,80003738 <uartputc+0x10>
    80003734:	0000006f          	j	80003734 <uartputc+0xc>
    80003738:	fd010113          	addi	sp,sp,-48
    8000373c:	02813023          	sd	s0,32(sp)
    80003740:	00913c23          	sd	s1,24(sp)
    80003744:	01213823          	sd	s2,16(sp)
    80003748:	01313423          	sd	s3,8(sp)
    8000374c:	02113423          	sd	ra,40(sp)
    80003750:	03010413          	addi	s0,sp,48
    80003754:	00002917          	auipc	s2,0x2
    80003758:	35c90913          	addi	s2,s2,860 # 80005ab0 <uart_tx_r>
    8000375c:	00093783          	ld	a5,0(s2)
    80003760:	00002497          	auipc	s1,0x2
    80003764:	35848493          	addi	s1,s1,856 # 80005ab8 <uart_tx_w>
    80003768:	0004b703          	ld	a4,0(s1)
    8000376c:	02078693          	addi	a3,a5,32
    80003770:	00050993          	mv	s3,a0
    80003774:	02e69c63          	bne	a3,a4,800037ac <uartputc+0x84>
    80003778:	00001097          	auipc	ra,0x1
    8000377c:	834080e7          	jalr	-1996(ra) # 80003fac <push_on>
    80003780:	00093783          	ld	a5,0(s2)
    80003784:	0004b703          	ld	a4,0(s1)
    80003788:	02078793          	addi	a5,a5,32
    8000378c:	00e79463          	bne	a5,a4,80003794 <uartputc+0x6c>
    80003790:	0000006f          	j	80003790 <uartputc+0x68>
    80003794:	00001097          	auipc	ra,0x1
    80003798:	88c080e7          	jalr	-1908(ra) # 80004020 <pop_on>
    8000379c:	00093783          	ld	a5,0(s2)
    800037a0:	0004b703          	ld	a4,0(s1)
    800037a4:	02078693          	addi	a3,a5,32
    800037a8:	fce688e3          	beq	a3,a4,80003778 <uartputc+0x50>
    800037ac:	01f77693          	andi	a3,a4,31
    800037b0:	00003597          	auipc	a1,0x3
    800037b4:	59058593          	addi	a1,a1,1424 # 80006d40 <uart_tx_buf>
    800037b8:	00d586b3          	add	a3,a1,a3
    800037bc:	00170713          	addi	a4,a4,1
    800037c0:	01368023          	sb	s3,0(a3)
    800037c4:	00e4b023          	sd	a4,0(s1)
    800037c8:	10000637          	lui	a2,0x10000
    800037cc:	02f71063          	bne	a4,a5,800037ec <uartputc+0xc4>
    800037d0:	0340006f          	j	80003804 <uartputc+0xdc>
    800037d4:	00074703          	lbu	a4,0(a4)
    800037d8:	00f93023          	sd	a5,0(s2)
    800037dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800037e0:	00093783          	ld	a5,0(s2)
    800037e4:	0004b703          	ld	a4,0(s1)
    800037e8:	00f70e63          	beq	a4,a5,80003804 <uartputc+0xdc>
    800037ec:	00564683          	lbu	a3,5(a2)
    800037f0:	01f7f713          	andi	a4,a5,31
    800037f4:	00e58733          	add	a4,a1,a4
    800037f8:	0206f693          	andi	a3,a3,32
    800037fc:	00178793          	addi	a5,a5,1
    80003800:	fc069ae3          	bnez	a3,800037d4 <uartputc+0xac>
    80003804:	02813083          	ld	ra,40(sp)
    80003808:	02013403          	ld	s0,32(sp)
    8000380c:	01813483          	ld	s1,24(sp)
    80003810:	01013903          	ld	s2,16(sp)
    80003814:	00813983          	ld	s3,8(sp)
    80003818:	03010113          	addi	sp,sp,48
    8000381c:	00008067          	ret

0000000080003820 <uartputc_sync>:
    80003820:	ff010113          	addi	sp,sp,-16
    80003824:	00813423          	sd	s0,8(sp)
    80003828:	01010413          	addi	s0,sp,16
    8000382c:	00002717          	auipc	a4,0x2
    80003830:	27c72703          	lw	a4,636(a4) # 80005aa8 <panicked>
    80003834:	02071663          	bnez	a4,80003860 <uartputc_sync+0x40>
    80003838:	00050793          	mv	a5,a0
    8000383c:	100006b7          	lui	a3,0x10000
    80003840:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003844:	02077713          	andi	a4,a4,32
    80003848:	fe070ce3          	beqz	a4,80003840 <uartputc_sync+0x20>
    8000384c:	0ff7f793          	andi	a5,a5,255
    80003850:	00f68023          	sb	a5,0(a3)
    80003854:	00813403          	ld	s0,8(sp)
    80003858:	01010113          	addi	sp,sp,16
    8000385c:	00008067          	ret
    80003860:	0000006f          	j	80003860 <uartputc_sync+0x40>

0000000080003864 <uartstart>:
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00813423          	sd	s0,8(sp)
    8000386c:	01010413          	addi	s0,sp,16
    80003870:	00002617          	auipc	a2,0x2
    80003874:	24060613          	addi	a2,a2,576 # 80005ab0 <uart_tx_r>
    80003878:	00002517          	auipc	a0,0x2
    8000387c:	24050513          	addi	a0,a0,576 # 80005ab8 <uart_tx_w>
    80003880:	00063783          	ld	a5,0(a2)
    80003884:	00053703          	ld	a4,0(a0)
    80003888:	04f70263          	beq	a4,a5,800038cc <uartstart+0x68>
    8000388c:	100005b7          	lui	a1,0x10000
    80003890:	00003817          	auipc	a6,0x3
    80003894:	4b080813          	addi	a6,a6,1200 # 80006d40 <uart_tx_buf>
    80003898:	01c0006f          	j	800038b4 <uartstart+0x50>
    8000389c:	0006c703          	lbu	a4,0(a3)
    800038a0:	00f63023          	sd	a5,0(a2)
    800038a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038a8:	00063783          	ld	a5,0(a2)
    800038ac:	00053703          	ld	a4,0(a0)
    800038b0:	00f70e63          	beq	a4,a5,800038cc <uartstart+0x68>
    800038b4:	01f7f713          	andi	a4,a5,31
    800038b8:	00e806b3          	add	a3,a6,a4
    800038bc:	0055c703          	lbu	a4,5(a1)
    800038c0:	00178793          	addi	a5,a5,1
    800038c4:	02077713          	andi	a4,a4,32
    800038c8:	fc071ae3          	bnez	a4,8000389c <uartstart+0x38>
    800038cc:	00813403          	ld	s0,8(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret

00000000800038d8 <uartgetc>:
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00813423          	sd	s0,8(sp)
    800038e0:	01010413          	addi	s0,sp,16
    800038e4:	10000737          	lui	a4,0x10000
    800038e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800038ec:	0017f793          	andi	a5,a5,1
    800038f0:	00078c63          	beqz	a5,80003908 <uartgetc+0x30>
    800038f4:	00074503          	lbu	a0,0(a4)
    800038f8:	0ff57513          	andi	a0,a0,255
    800038fc:	00813403          	ld	s0,8(sp)
    80003900:	01010113          	addi	sp,sp,16
    80003904:	00008067          	ret
    80003908:	fff00513          	li	a0,-1
    8000390c:	ff1ff06f          	j	800038fc <uartgetc+0x24>

0000000080003910 <uartintr>:
    80003910:	100007b7          	lui	a5,0x10000
    80003914:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003918:	0017f793          	andi	a5,a5,1
    8000391c:	0a078463          	beqz	a5,800039c4 <uartintr+0xb4>
    80003920:	fe010113          	addi	sp,sp,-32
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	00113c23          	sd	ra,24(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	100004b7          	lui	s1,0x10000
    80003938:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000393c:	0ff57513          	andi	a0,a0,255
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	534080e7          	jalr	1332(ra) # 80002e74 <consoleintr>
    80003948:	0054c783          	lbu	a5,5(s1)
    8000394c:	0017f793          	andi	a5,a5,1
    80003950:	fe0794e3          	bnez	a5,80003938 <uartintr+0x28>
    80003954:	00002617          	auipc	a2,0x2
    80003958:	15c60613          	addi	a2,a2,348 # 80005ab0 <uart_tx_r>
    8000395c:	00002517          	auipc	a0,0x2
    80003960:	15c50513          	addi	a0,a0,348 # 80005ab8 <uart_tx_w>
    80003964:	00063783          	ld	a5,0(a2)
    80003968:	00053703          	ld	a4,0(a0)
    8000396c:	04f70263          	beq	a4,a5,800039b0 <uartintr+0xa0>
    80003970:	100005b7          	lui	a1,0x10000
    80003974:	00003817          	auipc	a6,0x3
    80003978:	3cc80813          	addi	a6,a6,972 # 80006d40 <uart_tx_buf>
    8000397c:	01c0006f          	j	80003998 <uartintr+0x88>
    80003980:	0006c703          	lbu	a4,0(a3)
    80003984:	00f63023          	sd	a5,0(a2)
    80003988:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000398c:	00063783          	ld	a5,0(a2)
    80003990:	00053703          	ld	a4,0(a0)
    80003994:	00f70e63          	beq	a4,a5,800039b0 <uartintr+0xa0>
    80003998:	01f7f713          	andi	a4,a5,31
    8000399c:	00e806b3          	add	a3,a6,a4
    800039a0:	0055c703          	lbu	a4,5(a1)
    800039a4:	00178793          	addi	a5,a5,1
    800039a8:	02077713          	andi	a4,a4,32
    800039ac:	fc071ae3          	bnez	a4,80003980 <uartintr+0x70>
    800039b0:	01813083          	ld	ra,24(sp)
    800039b4:	01013403          	ld	s0,16(sp)
    800039b8:	00813483          	ld	s1,8(sp)
    800039bc:	02010113          	addi	sp,sp,32
    800039c0:	00008067          	ret
    800039c4:	00002617          	auipc	a2,0x2
    800039c8:	0ec60613          	addi	a2,a2,236 # 80005ab0 <uart_tx_r>
    800039cc:	00002517          	auipc	a0,0x2
    800039d0:	0ec50513          	addi	a0,a0,236 # 80005ab8 <uart_tx_w>
    800039d4:	00063783          	ld	a5,0(a2)
    800039d8:	00053703          	ld	a4,0(a0)
    800039dc:	04f70263          	beq	a4,a5,80003a20 <uartintr+0x110>
    800039e0:	100005b7          	lui	a1,0x10000
    800039e4:	00003817          	auipc	a6,0x3
    800039e8:	35c80813          	addi	a6,a6,860 # 80006d40 <uart_tx_buf>
    800039ec:	01c0006f          	j	80003a08 <uartintr+0xf8>
    800039f0:	0006c703          	lbu	a4,0(a3)
    800039f4:	00f63023          	sd	a5,0(a2)
    800039f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800039fc:	00063783          	ld	a5,0(a2)
    80003a00:	00053703          	ld	a4,0(a0)
    80003a04:	02f70063          	beq	a4,a5,80003a24 <uartintr+0x114>
    80003a08:	01f7f713          	andi	a4,a5,31
    80003a0c:	00e806b3          	add	a3,a6,a4
    80003a10:	0055c703          	lbu	a4,5(a1)
    80003a14:	00178793          	addi	a5,a5,1
    80003a18:	02077713          	andi	a4,a4,32
    80003a1c:	fc071ae3          	bnez	a4,800039f0 <uartintr+0xe0>
    80003a20:	00008067          	ret
    80003a24:	00008067          	ret

0000000080003a28 <kinit>:
    80003a28:	fc010113          	addi	sp,sp,-64
    80003a2c:	02913423          	sd	s1,40(sp)
    80003a30:	fffff7b7          	lui	a5,0xfffff
    80003a34:	00004497          	auipc	s1,0x4
    80003a38:	32b48493          	addi	s1,s1,811 # 80007d5f <end+0xfff>
    80003a3c:	02813823          	sd	s0,48(sp)
    80003a40:	01313c23          	sd	s3,24(sp)
    80003a44:	00f4f4b3          	and	s1,s1,a5
    80003a48:	02113c23          	sd	ra,56(sp)
    80003a4c:	03213023          	sd	s2,32(sp)
    80003a50:	01413823          	sd	s4,16(sp)
    80003a54:	01513423          	sd	s5,8(sp)
    80003a58:	04010413          	addi	s0,sp,64
    80003a5c:	000017b7          	lui	a5,0x1
    80003a60:	01100993          	li	s3,17
    80003a64:	00f487b3          	add	a5,s1,a5
    80003a68:	01b99993          	slli	s3,s3,0x1b
    80003a6c:	06f9e063          	bltu	s3,a5,80003acc <kinit+0xa4>
    80003a70:	00003a97          	auipc	s5,0x3
    80003a74:	2f0a8a93          	addi	s5,s5,752 # 80006d60 <end>
    80003a78:	0754ec63          	bltu	s1,s5,80003af0 <kinit+0xc8>
    80003a7c:	0734fa63          	bgeu	s1,s3,80003af0 <kinit+0xc8>
    80003a80:	00088a37          	lui	s4,0x88
    80003a84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003a88:	00002917          	auipc	s2,0x2
    80003a8c:	03890913          	addi	s2,s2,56 # 80005ac0 <kmem>
    80003a90:	00ca1a13          	slli	s4,s4,0xc
    80003a94:	0140006f          	j	80003aa8 <kinit+0x80>
    80003a98:	000017b7          	lui	a5,0x1
    80003a9c:	00f484b3          	add	s1,s1,a5
    80003aa0:	0554e863          	bltu	s1,s5,80003af0 <kinit+0xc8>
    80003aa4:	0534f663          	bgeu	s1,s3,80003af0 <kinit+0xc8>
    80003aa8:	00001637          	lui	a2,0x1
    80003aac:	00100593          	li	a1,1
    80003ab0:	00048513          	mv	a0,s1
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	5e4080e7          	jalr	1508(ra) # 80004098 <__memset>
    80003abc:	00093783          	ld	a5,0(s2)
    80003ac0:	00f4b023          	sd	a5,0(s1)
    80003ac4:	00993023          	sd	s1,0(s2)
    80003ac8:	fd4498e3          	bne	s1,s4,80003a98 <kinit+0x70>
    80003acc:	03813083          	ld	ra,56(sp)
    80003ad0:	03013403          	ld	s0,48(sp)
    80003ad4:	02813483          	ld	s1,40(sp)
    80003ad8:	02013903          	ld	s2,32(sp)
    80003adc:	01813983          	ld	s3,24(sp)
    80003ae0:	01013a03          	ld	s4,16(sp)
    80003ae4:	00813a83          	ld	s5,8(sp)
    80003ae8:	04010113          	addi	sp,sp,64
    80003aec:	00008067          	ret
    80003af0:	00001517          	auipc	a0,0x1
    80003af4:	7d850513          	addi	a0,a0,2008 # 800052c8 <digits+0x18>
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	4b4080e7          	jalr	1204(ra) # 80002fac <panic>

0000000080003b00 <freerange>:
    80003b00:	fc010113          	addi	sp,sp,-64
    80003b04:	000017b7          	lui	a5,0x1
    80003b08:	02913423          	sd	s1,40(sp)
    80003b0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003b10:	009504b3          	add	s1,a0,s1
    80003b14:	fffff537          	lui	a0,0xfffff
    80003b18:	02813823          	sd	s0,48(sp)
    80003b1c:	02113c23          	sd	ra,56(sp)
    80003b20:	03213023          	sd	s2,32(sp)
    80003b24:	01313c23          	sd	s3,24(sp)
    80003b28:	01413823          	sd	s4,16(sp)
    80003b2c:	01513423          	sd	s5,8(sp)
    80003b30:	01613023          	sd	s6,0(sp)
    80003b34:	04010413          	addi	s0,sp,64
    80003b38:	00a4f4b3          	and	s1,s1,a0
    80003b3c:	00f487b3          	add	a5,s1,a5
    80003b40:	06f5e463          	bltu	a1,a5,80003ba8 <freerange+0xa8>
    80003b44:	00003a97          	auipc	s5,0x3
    80003b48:	21ca8a93          	addi	s5,s5,540 # 80006d60 <end>
    80003b4c:	0954e263          	bltu	s1,s5,80003bd0 <freerange+0xd0>
    80003b50:	01100993          	li	s3,17
    80003b54:	01b99993          	slli	s3,s3,0x1b
    80003b58:	0734fc63          	bgeu	s1,s3,80003bd0 <freerange+0xd0>
    80003b5c:	00058a13          	mv	s4,a1
    80003b60:	00002917          	auipc	s2,0x2
    80003b64:	f6090913          	addi	s2,s2,-160 # 80005ac0 <kmem>
    80003b68:	00002b37          	lui	s6,0x2
    80003b6c:	0140006f          	j	80003b80 <freerange+0x80>
    80003b70:	000017b7          	lui	a5,0x1
    80003b74:	00f484b3          	add	s1,s1,a5
    80003b78:	0554ec63          	bltu	s1,s5,80003bd0 <freerange+0xd0>
    80003b7c:	0534fa63          	bgeu	s1,s3,80003bd0 <freerange+0xd0>
    80003b80:	00001637          	lui	a2,0x1
    80003b84:	00100593          	li	a1,1
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	00000097          	auipc	ra,0x0
    80003b90:	50c080e7          	jalr	1292(ra) # 80004098 <__memset>
    80003b94:	00093703          	ld	a4,0(s2)
    80003b98:	016487b3          	add	a5,s1,s6
    80003b9c:	00e4b023          	sd	a4,0(s1)
    80003ba0:	00993023          	sd	s1,0(s2)
    80003ba4:	fcfa76e3          	bgeu	s4,a5,80003b70 <freerange+0x70>
    80003ba8:	03813083          	ld	ra,56(sp)
    80003bac:	03013403          	ld	s0,48(sp)
    80003bb0:	02813483          	ld	s1,40(sp)
    80003bb4:	02013903          	ld	s2,32(sp)
    80003bb8:	01813983          	ld	s3,24(sp)
    80003bbc:	01013a03          	ld	s4,16(sp)
    80003bc0:	00813a83          	ld	s5,8(sp)
    80003bc4:	00013b03          	ld	s6,0(sp)
    80003bc8:	04010113          	addi	sp,sp,64
    80003bcc:	00008067          	ret
    80003bd0:	00001517          	auipc	a0,0x1
    80003bd4:	6f850513          	addi	a0,a0,1784 # 800052c8 <digits+0x18>
    80003bd8:	fffff097          	auipc	ra,0xfffff
    80003bdc:	3d4080e7          	jalr	980(ra) # 80002fac <panic>

0000000080003be0 <kfree>:
    80003be0:	fe010113          	addi	sp,sp,-32
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00113c23          	sd	ra,24(sp)
    80003bec:	00913423          	sd	s1,8(sp)
    80003bf0:	02010413          	addi	s0,sp,32
    80003bf4:	03451793          	slli	a5,a0,0x34
    80003bf8:	04079c63          	bnez	a5,80003c50 <kfree+0x70>
    80003bfc:	00003797          	auipc	a5,0x3
    80003c00:	16478793          	addi	a5,a5,356 # 80006d60 <end>
    80003c04:	00050493          	mv	s1,a0
    80003c08:	04f56463          	bltu	a0,a5,80003c50 <kfree+0x70>
    80003c0c:	01100793          	li	a5,17
    80003c10:	01b79793          	slli	a5,a5,0x1b
    80003c14:	02f57e63          	bgeu	a0,a5,80003c50 <kfree+0x70>
    80003c18:	00001637          	lui	a2,0x1
    80003c1c:	00100593          	li	a1,1
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	478080e7          	jalr	1144(ra) # 80004098 <__memset>
    80003c28:	00002797          	auipc	a5,0x2
    80003c2c:	e9878793          	addi	a5,a5,-360 # 80005ac0 <kmem>
    80003c30:	0007b703          	ld	a4,0(a5)
    80003c34:	01813083          	ld	ra,24(sp)
    80003c38:	01013403          	ld	s0,16(sp)
    80003c3c:	00e4b023          	sd	a4,0(s1)
    80003c40:	0097b023          	sd	s1,0(a5)
    80003c44:	00813483          	ld	s1,8(sp)
    80003c48:	02010113          	addi	sp,sp,32
    80003c4c:	00008067          	ret
    80003c50:	00001517          	auipc	a0,0x1
    80003c54:	67850513          	addi	a0,a0,1656 # 800052c8 <digits+0x18>
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	354080e7          	jalr	852(ra) # 80002fac <panic>

0000000080003c60 <kalloc>:
    80003c60:	fe010113          	addi	sp,sp,-32
    80003c64:	00813823          	sd	s0,16(sp)
    80003c68:	00913423          	sd	s1,8(sp)
    80003c6c:	00113c23          	sd	ra,24(sp)
    80003c70:	02010413          	addi	s0,sp,32
    80003c74:	00002797          	auipc	a5,0x2
    80003c78:	e4c78793          	addi	a5,a5,-436 # 80005ac0 <kmem>
    80003c7c:	0007b483          	ld	s1,0(a5)
    80003c80:	02048063          	beqz	s1,80003ca0 <kalloc+0x40>
    80003c84:	0004b703          	ld	a4,0(s1)
    80003c88:	00001637          	lui	a2,0x1
    80003c8c:	00500593          	li	a1,5
    80003c90:	00048513          	mv	a0,s1
    80003c94:	00e7b023          	sd	a4,0(a5)
    80003c98:	00000097          	auipc	ra,0x0
    80003c9c:	400080e7          	jalr	1024(ra) # 80004098 <__memset>
    80003ca0:	01813083          	ld	ra,24(sp)
    80003ca4:	01013403          	ld	s0,16(sp)
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00813483          	ld	s1,8(sp)
    80003cb0:	02010113          	addi	sp,sp,32
    80003cb4:	00008067          	ret

0000000080003cb8 <initlock>:
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00813423          	sd	s0,8(sp)
    80003cc0:	01010413          	addi	s0,sp,16
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	00b53423          	sd	a1,8(a0)
    80003ccc:	00052023          	sw	zero,0(a0)
    80003cd0:	00053823          	sd	zero,16(a0)
    80003cd4:	01010113          	addi	sp,sp,16
    80003cd8:	00008067          	ret

0000000080003cdc <acquire>:
    80003cdc:	fe010113          	addi	sp,sp,-32
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00913423          	sd	s1,8(sp)
    80003ce8:	00113c23          	sd	ra,24(sp)
    80003cec:	01213023          	sd	s2,0(sp)
    80003cf0:	02010413          	addi	s0,sp,32
    80003cf4:	00050493          	mv	s1,a0
    80003cf8:	10002973          	csrr	s2,sstatus
    80003cfc:	100027f3          	csrr	a5,sstatus
    80003d00:	ffd7f793          	andi	a5,a5,-3
    80003d04:	10079073          	csrw	sstatus,a5
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	8ec080e7          	jalr	-1812(ra) # 800025f4 <mycpu>
    80003d10:	07852783          	lw	a5,120(a0)
    80003d14:	06078e63          	beqz	a5,80003d90 <acquire+0xb4>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	8dc080e7          	jalr	-1828(ra) # 800025f4 <mycpu>
    80003d20:	07852783          	lw	a5,120(a0)
    80003d24:	0004a703          	lw	a4,0(s1)
    80003d28:	0017879b          	addiw	a5,a5,1
    80003d2c:	06f52c23          	sw	a5,120(a0)
    80003d30:	04071063          	bnez	a4,80003d70 <acquire+0x94>
    80003d34:	00100713          	li	a4,1
    80003d38:	00070793          	mv	a5,a4
    80003d3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003d40:	0007879b          	sext.w	a5,a5
    80003d44:	fe079ae3          	bnez	a5,80003d38 <acquire+0x5c>
    80003d48:	0ff0000f          	fence
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	8a8080e7          	jalr	-1880(ra) # 800025f4 <mycpu>
    80003d54:	01813083          	ld	ra,24(sp)
    80003d58:	01013403          	ld	s0,16(sp)
    80003d5c:	00a4b823          	sd	a0,16(s1)
    80003d60:	00013903          	ld	s2,0(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret
    80003d70:	0104b903          	ld	s2,16(s1)
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	880080e7          	jalr	-1920(ra) # 800025f4 <mycpu>
    80003d7c:	faa91ce3          	bne	s2,a0,80003d34 <acquire+0x58>
    80003d80:	00001517          	auipc	a0,0x1
    80003d84:	55050513          	addi	a0,a0,1360 # 800052d0 <digits+0x20>
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	224080e7          	jalr	548(ra) # 80002fac <panic>
    80003d90:	00195913          	srli	s2,s2,0x1
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	860080e7          	jalr	-1952(ra) # 800025f4 <mycpu>
    80003d9c:	00197913          	andi	s2,s2,1
    80003da0:	07252e23          	sw	s2,124(a0)
    80003da4:	f75ff06f          	j	80003d18 <acquire+0x3c>

0000000080003da8 <release>:
    80003da8:	fe010113          	addi	sp,sp,-32
    80003dac:	00813823          	sd	s0,16(sp)
    80003db0:	00113c23          	sd	ra,24(sp)
    80003db4:	00913423          	sd	s1,8(sp)
    80003db8:	01213023          	sd	s2,0(sp)
    80003dbc:	02010413          	addi	s0,sp,32
    80003dc0:	00052783          	lw	a5,0(a0)
    80003dc4:	00079a63          	bnez	a5,80003dd8 <release+0x30>
    80003dc8:	00001517          	auipc	a0,0x1
    80003dcc:	51050513          	addi	a0,a0,1296 # 800052d8 <digits+0x28>
    80003dd0:	fffff097          	auipc	ra,0xfffff
    80003dd4:	1dc080e7          	jalr	476(ra) # 80002fac <panic>
    80003dd8:	01053903          	ld	s2,16(a0)
    80003ddc:	00050493          	mv	s1,a0
    80003de0:	fffff097          	auipc	ra,0xfffff
    80003de4:	814080e7          	jalr	-2028(ra) # 800025f4 <mycpu>
    80003de8:	fea910e3          	bne	s2,a0,80003dc8 <release+0x20>
    80003dec:	0004b823          	sd	zero,16(s1)
    80003df0:	0ff0000f          	fence
    80003df4:	0f50000f          	fence	iorw,ow
    80003df8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	7f8080e7          	jalr	2040(ra) # 800025f4 <mycpu>
    80003e04:	100027f3          	csrr	a5,sstatus
    80003e08:	0027f793          	andi	a5,a5,2
    80003e0c:	04079a63          	bnez	a5,80003e60 <release+0xb8>
    80003e10:	07852783          	lw	a5,120(a0)
    80003e14:	02f05e63          	blez	a5,80003e50 <release+0xa8>
    80003e18:	fff7871b          	addiw	a4,a5,-1
    80003e1c:	06e52c23          	sw	a4,120(a0)
    80003e20:	00071c63          	bnez	a4,80003e38 <release+0x90>
    80003e24:	07c52783          	lw	a5,124(a0)
    80003e28:	00078863          	beqz	a5,80003e38 <release+0x90>
    80003e2c:	100027f3          	csrr	a5,sstatus
    80003e30:	0027e793          	ori	a5,a5,2
    80003e34:	10079073          	csrw	sstatus,a5
    80003e38:	01813083          	ld	ra,24(sp)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	00813483          	ld	s1,8(sp)
    80003e44:	00013903          	ld	s2,0(sp)
    80003e48:	02010113          	addi	sp,sp,32
    80003e4c:	00008067          	ret
    80003e50:	00001517          	auipc	a0,0x1
    80003e54:	4a850513          	addi	a0,a0,1192 # 800052f8 <digits+0x48>
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	154080e7          	jalr	340(ra) # 80002fac <panic>
    80003e60:	00001517          	auipc	a0,0x1
    80003e64:	48050513          	addi	a0,a0,1152 # 800052e0 <digits+0x30>
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	144080e7          	jalr	324(ra) # 80002fac <panic>

0000000080003e70 <holding>:
    80003e70:	00052783          	lw	a5,0(a0)
    80003e74:	00079663          	bnez	a5,80003e80 <holding+0x10>
    80003e78:	00000513          	li	a0,0
    80003e7c:	00008067          	ret
    80003e80:	fe010113          	addi	sp,sp,-32
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	02010413          	addi	s0,sp,32
    80003e94:	01053483          	ld	s1,16(a0)
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	75c080e7          	jalr	1884(ra) # 800025f4 <mycpu>
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	40a48533          	sub	a0,s1,a0
    80003eac:	00153513          	seqz	a0,a0
    80003eb0:	00813483          	ld	s1,8(sp)
    80003eb4:	02010113          	addi	sp,sp,32
    80003eb8:	00008067          	ret

0000000080003ebc <push_off>:
    80003ebc:	fe010113          	addi	sp,sp,-32
    80003ec0:	00813823          	sd	s0,16(sp)
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	100024f3          	csrr	s1,sstatus
    80003ed4:	100027f3          	csrr	a5,sstatus
    80003ed8:	ffd7f793          	andi	a5,a5,-3
    80003edc:	10079073          	csrw	sstatus,a5
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	714080e7          	jalr	1812(ra) # 800025f4 <mycpu>
    80003ee8:	07852783          	lw	a5,120(a0)
    80003eec:	02078663          	beqz	a5,80003f18 <push_off+0x5c>
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	704080e7          	jalr	1796(ra) # 800025f4 <mycpu>
    80003ef8:	07852783          	lw	a5,120(a0)
    80003efc:	01813083          	ld	ra,24(sp)
    80003f00:	01013403          	ld	s0,16(sp)
    80003f04:	0017879b          	addiw	a5,a5,1
    80003f08:	06f52c23          	sw	a5,120(a0)
    80003f0c:	00813483          	ld	s1,8(sp)
    80003f10:	02010113          	addi	sp,sp,32
    80003f14:	00008067          	ret
    80003f18:	0014d493          	srli	s1,s1,0x1
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	6d8080e7          	jalr	1752(ra) # 800025f4 <mycpu>
    80003f24:	0014f493          	andi	s1,s1,1
    80003f28:	06952e23          	sw	s1,124(a0)
    80003f2c:	fc5ff06f          	j	80003ef0 <push_off+0x34>

0000000080003f30 <pop_off>:
    80003f30:	ff010113          	addi	sp,sp,-16
    80003f34:	00813023          	sd	s0,0(sp)
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	6b4080e7          	jalr	1716(ra) # 800025f4 <mycpu>
    80003f48:	100027f3          	csrr	a5,sstatus
    80003f4c:	0027f793          	andi	a5,a5,2
    80003f50:	04079663          	bnez	a5,80003f9c <pop_off+0x6c>
    80003f54:	07852783          	lw	a5,120(a0)
    80003f58:	02f05a63          	blez	a5,80003f8c <pop_off+0x5c>
    80003f5c:	fff7871b          	addiw	a4,a5,-1
    80003f60:	06e52c23          	sw	a4,120(a0)
    80003f64:	00071c63          	bnez	a4,80003f7c <pop_off+0x4c>
    80003f68:	07c52783          	lw	a5,124(a0)
    80003f6c:	00078863          	beqz	a5,80003f7c <pop_off+0x4c>
    80003f70:	100027f3          	csrr	a5,sstatus
    80003f74:	0027e793          	ori	a5,a5,2
    80003f78:	10079073          	csrw	sstatus,a5
    80003f7c:	00813083          	ld	ra,8(sp)
    80003f80:	00013403          	ld	s0,0(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret
    80003f8c:	00001517          	auipc	a0,0x1
    80003f90:	36c50513          	addi	a0,a0,876 # 800052f8 <digits+0x48>
    80003f94:	fffff097          	auipc	ra,0xfffff
    80003f98:	018080e7          	jalr	24(ra) # 80002fac <panic>
    80003f9c:	00001517          	auipc	a0,0x1
    80003fa0:	34450513          	addi	a0,a0,836 # 800052e0 <digits+0x30>
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	008080e7          	jalr	8(ra) # 80002fac <panic>

0000000080003fac <push_on>:
    80003fac:	fe010113          	addi	sp,sp,-32
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00113c23          	sd	ra,24(sp)
    80003fb8:	00913423          	sd	s1,8(sp)
    80003fbc:	02010413          	addi	s0,sp,32
    80003fc0:	100024f3          	csrr	s1,sstatus
    80003fc4:	100027f3          	csrr	a5,sstatus
    80003fc8:	0027e793          	ori	a5,a5,2
    80003fcc:	10079073          	csrw	sstatus,a5
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	624080e7          	jalr	1572(ra) # 800025f4 <mycpu>
    80003fd8:	07852783          	lw	a5,120(a0)
    80003fdc:	02078663          	beqz	a5,80004008 <push_on+0x5c>
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	614080e7          	jalr	1556(ra) # 800025f4 <mycpu>
    80003fe8:	07852783          	lw	a5,120(a0)
    80003fec:	01813083          	ld	ra,24(sp)
    80003ff0:	01013403          	ld	s0,16(sp)
    80003ff4:	0017879b          	addiw	a5,a5,1
    80003ff8:	06f52c23          	sw	a5,120(a0)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	02010113          	addi	sp,sp,32
    80004004:	00008067          	ret
    80004008:	0014d493          	srli	s1,s1,0x1
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	5e8080e7          	jalr	1512(ra) # 800025f4 <mycpu>
    80004014:	0014f493          	andi	s1,s1,1
    80004018:	06952e23          	sw	s1,124(a0)
    8000401c:	fc5ff06f          	j	80003fe0 <push_on+0x34>

0000000080004020 <pop_on>:
    80004020:	ff010113          	addi	sp,sp,-16
    80004024:	00813023          	sd	s0,0(sp)
    80004028:	00113423          	sd	ra,8(sp)
    8000402c:	01010413          	addi	s0,sp,16
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	5c4080e7          	jalr	1476(ra) # 800025f4 <mycpu>
    80004038:	100027f3          	csrr	a5,sstatus
    8000403c:	0027f793          	andi	a5,a5,2
    80004040:	04078463          	beqz	a5,80004088 <pop_on+0x68>
    80004044:	07852783          	lw	a5,120(a0)
    80004048:	02f05863          	blez	a5,80004078 <pop_on+0x58>
    8000404c:	fff7879b          	addiw	a5,a5,-1
    80004050:	06f52c23          	sw	a5,120(a0)
    80004054:	07853783          	ld	a5,120(a0)
    80004058:	00079863          	bnez	a5,80004068 <pop_on+0x48>
    8000405c:	100027f3          	csrr	a5,sstatus
    80004060:	ffd7f793          	andi	a5,a5,-3
    80004064:	10079073          	csrw	sstatus,a5
    80004068:	00813083          	ld	ra,8(sp)
    8000406c:	00013403          	ld	s0,0(sp)
    80004070:	01010113          	addi	sp,sp,16
    80004074:	00008067          	ret
    80004078:	00001517          	auipc	a0,0x1
    8000407c:	2a850513          	addi	a0,a0,680 # 80005320 <digits+0x70>
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	f2c080e7          	jalr	-212(ra) # 80002fac <panic>
    80004088:	00001517          	auipc	a0,0x1
    8000408c:	27850513          	addi	a0,a0,632 # 80005300 <digits+0x50>
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	f1c080e7          	jalr	-228(ra) # 80002fac <panic>

0000000080004098 <__memset>:
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00813423          	sd	s0,8(sp)
    800040a0:	01010413          	addi	s0,sp,16
    800040a4:	1a060e63          	beqz	a2,80004260 <__memset+0x1c8>
    800040a8:	40a007b3          	neg	a5,a0
    800040ac:	0077f793          	andi	a5,a5,7
    800040b0:	00778693          	addi	a3,a5,7
    800040b4:	00b00813          	li	a6,11
    800040b8:	0ff5f593          	andi	a1,a1,255
    800040bc:	fff6071b          	addiw	a4,a2,-1
    800040c0:	1b06e663          	bltu	a3,a6,8000426c <__memset+0x1d4>
    800040c4:	1cd76463          	bltu	a4,a3,8000428c <__memset+0x1f4>
    800040c8:	1a078e63          	beqz	a5,80004284 <__memset+0x1ec>
    800040cc:	00b50023          	sb	a1,0(a0)
    800040d0:	00100713          	li	a4,1
    800040d4:	1ae78463          	beq	a5,a4,8000427c <__memset+0x1e4>
    800040d8:	00b500a3          	sb	a1,1(a0)
    800040dc:	00200713          	li	a4,2
    800040e0:	1ae78a63          	beq	a5,a4,80004294 <__memset+0x1fc>
    800040e4:	00b50123          	sb	a1,2(a0)
    800040e8:	00300713          	li	a4,3
    800040ec:	18e78463          	beq	a5,a4,80004274 <__memset+0x1dc>
    800040f0:	00b501a3          	sb	a1,3(a0)
    800040f4:	00400713          	li	a4,4
    800040f8:	1ae78263          	beq	a5,a4,8000429c <__memset+0x204>
    800040fc:	00b50223          	sb	a1,4(a0)
    80004100:	00500713          	li	a4,5
    80004104:	1ae78063          	beq	a5,a4,800042a4 <__memset+0x20c>
    80004108:	00b502a3          	sb	a1,5(a0)
    8000410c:	00700713          	li	a4,7
    80004110:	18e79e63          	bne	a5,a4,800042ac <__memset+0x214>
    80004114:	00b50323          	sb	a1,6(a0)
    80004118:	00700e93          	li	t4,7
    8000411c:	00859713          	slli	a4,a1,0x8
    80004120:	00e5e733          	or	a4,a1,a4
    80004124:	01059e13          	slli	t3,a1,0x10
    80004128:	01c76e33          	or	t3,a4,t3
    8000412c:	01859313          	slli	t1,a1,0x18
    80004130:	006e6333          	or	t1,t3,t1
    80004134:	02059893          	slli	a7,a1,0x20
    80004138:	40f60e3b          	subw	t3,a2,a5
    8000413c:	011368b3          	or	a7,t1,a7
    80004140:	02859813          	slli	a6,a1,0x28
    80004144:	0108e833          	or	a6,a7,a6
    80004148:	03059693          	slli	a3,a1,0x30
    8000414c:	003e589b          	srliw	a7,t3,0x3
    80004150:	00d866b3          	or	a3,a6,a3
    80004154:	03859713          	slli	a4,a1,0x38
    80004158:	00389813          	slli	a6,a7,0x3
    8000415c:	00f507b3          	add	a5,a0,a5
    80004160:	00e6e733          	or	a4,a3,a4
    80004164:	000e089b          	sext.w	a7,t3
    80004168:	00f806b3          	add	a3,a6,a5
    8000416c:	00e7b023          	sd	a4,0(a5)
    80004170:	00878793          	addi	a5,a5,8
    80004174:	fed79ce3          	bne	a5,a3,8000416c <__memset+0xd4>
    80004178:	ff8e7793          	andi	a5,t3,-8
    8000417c:	0007871b          	sext.w	a4,a5
    80004180:	01d787bb          	addw	a5,a5,t4
    80004184:	0ce88e63          	beq	a7,a4,80004260 <__memset+0x1c8>
    80004188:	00f50733          	add	a4,a0,a5
    8000418c:	00b70023          	sb	a1,0(a4)
    80004190:	0017871b          	addiw	a4,a5,1
    80004194:	0cc77663          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    80004198:	00e50733          	add	a4,a0,a4
    8000419c:	00b70023          	sb	a1,0(a4)
    800041a0:	0027871b          	addiw	a4,a5,2
    800041a4:	0ac77e63          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    800041a8:	00e50733          	add	a4,a0,a4
    800041ac:	00b70023          	sb	a1,0(a4)
    800041b0:	0037871b          	addiw	a4,a5,3
    800041b4:	0ac77663          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    800041b8:	00e50733          	add	a4,a0,a4
    800041bc:	00b70023          	sb	a1,0(a4)
    800041c0:	0047871b          	addiw	a4,a5,4
    800041c4:	08c77e63          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    800041c8:	00e50733          	add	a4,a0,a4
    800041cc:	00b70023          	sb	a1,0(a4)
    800041d0:	0057871b          	addiw	a4,a5,5
    800041d4:	08c77663          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	0067871b          	addiw	a4,a5,6
    800041e4:	06c77e63          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	0077871b          	addiw	a4,a5,7
    800041f4:	06c77663          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	0087871b          	addiw	a4,a5,8
    80004204:	04c77e63          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00b70023          	sb	a1,0(a4)
    80004210:	0097871b          	addiw	a4,a5,9
    80004214:	04c77663          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    80004218:	00e50733          	add	a4,a0,a4
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	00a7871b          	addiw	a4,a5,10
    80004224:	02c77e63          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	00b7871b          	addiw	a4,a5,11
    80004234:	02c77663          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	00c7871b          	addiw	a4,a5,12
    80004244:	00c77e63          	bgeu	a4,a2,80004260 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	00d7879b          	addiw	a5,a5,13
    80004254:	00c7f663          	bgeu	a5,a2,80004260 <__memset+0x1c8>
    80004258:	00f507b3          	add	a5,a0,a5
    8000425c:	00b78023          	sb	a1,0(a5)
    80004260:	00813403          	ld	s0,8(sp)
    80004264:	01010113          	addi	sp,sp,16
    80004268:	00008067          	ret
    8000426c:	00b00693          	li	a3,11
    80004270:	e55ff06f          	j	800040c4 <__memset+0x2c>
    80004274:	00300e93          	li	t4,3
    80004278:	ea5ff06f          	j	8000411c <__memset+0x84>
    8000427c:	00100e93          	li	t4,1
    80004280:	e9dff06f          	j	8000411c <__memset+0x84>
    80004284:	00000e93          	li	t4,0
    80004288:	e95ff06f          	j	8000411c <__memset+0x84>
    8000428c:	00000793          	li	a5,0
    80004290:	ef9ff06f          	j	80004188 <__memset+0xf0>
    80004294:	00200e93          	li	t4,2
    80004298:	e85ff06f          	j	8000411c <__memset+0x84>
    8000429c:	00400e93          	li	t4,4
    800042a0:	e7dff06f          	j	8000411c <__memset+0x84>
    800042a4:	00500e93          	li	t4,5
    800042a8:	e75ff06f          	j	8000411c <__memset+0x84>
    800042ac:	00600e93          	li	t4,6
    800042b0:	e6dff06f          	j	8000411c <__memset+0x84>

00000000800042b4 <__memmove>:
    800042b4:	ff010113          	addi	sp,sp,-16
    800042b8:	00813423          	sd	s0,8(sp)
    800042bc:	01010413          	addi	s0,sp,16
    800042c0:	0e060863          	beqz	a2,800043b0 <__memmove+0xfc>
    800042c4:	fff6069b          	addiw	a3,a2,-1
    800042c8:	0006881b          	sext.w	a6,a3
    800042cc:	0ea5e863          	bltu	a1,a0,800043bc <__memmove+0x108>
    800042d0:	00758713          	addi	a4,a1,7
    800042d4:	00a5e7b3          	or	a5,a1,a0
    800042d8:	40a70733          	sub	a4,a4,a0
    800042dc:	0077f793          	andi	a5,a5,7
    800042e0:	00f73713          	sltiu	a4,a4,15
    800042e4:	00174713          	xori	a4,a4,1
    800042e8:	0017b793          	seqz	a5,a5
    800042ec:	00e7f7b3          	and	a5,a5,a4
    800042f0:	10078863          	beqz	a5,80004400 <__memmove+0x14c>
    800042f4:	00900793          	li	a5,9
    800042f8:	1107f463          	bgeu	a5,a6,80004400 <__memmove+0x14c>
    800042fc:	0036581b          	srliw	a6,a2,0x3
    80004300:	fff8081b          	addiw	a6,a6,-1
    80004304:	02081813          	slli	a6,a6,0x20
    80004308:	01d85893          	srli	a7,a6,0x1d
    8000430c:	00858813          	addi	a6,a1,8
    80004310:	00058793          	mv	a5,a1
    80004314:	00050713          	mv	a4,a0
    80004318:	01088833          	add	a6,a7,a6
    8000431c:	0007b883          	ld	a7,0(a5)
    80004320:	00878793          	addi	a5,a5,8
    80004324:	00870713          	addi	a4,a4,8
    80004328:	ff173c23          	sd	a7,-8(a4)
    8000432c:	ff0798e3          	bne	a5,a6,8000431c <__memmove+0x68>
    80004330:	ff867713          	andi	a4,a2,-8
    80004334:	02071793          	slli	a5,a4,0x20
    80004338:	0207d793          	srli	a5,a5,0x20
    8000433c:	00f585b3          	add	a1,a1,a5
    80004340:	40e686bb          	subw	a3,a3,a4
    80004344:	00f507b3          	add	a5,a0,a5
    80004348:	06e60463          	beq	a2,a4,800043b0 <__memmove+0xfc>
    8000434c:	0005c703          	lbu	a4,0(a1)
    80004350:	00e78023          	sb	a4,0(a5)
    80004354:	04068e63          	beqz	a3,800043b0 <__memmove+0xfc>
    80004358:	0015c603          	lbu	a2,1(a1)
    8000435c:	00100713          	li	a4,1
    80004360:	00c780a3          	sb	a2,1(a5)
    80004364:	04e68663          	beq	a3,a4,800043b0 <__memmove+0xfc>
    80004368:	0025c603          	lbu	a2,2(a1)
    8000436c:	00200713          	li	a4,2
    80004370:	00c78123          	sb	a2,2(a5)
    80004374:	02e68e63          	beq	a3,a4,800043b0 <__memmove+0xfc>
    80004378:	0035c603          	lbu	a2,3(a1)
    8000437c:	00300713          	li	a4,3
    80004380:	00c781a3          	sb	a2,3(a5)
    80004384:	02e68663          	beq	a3,a4,800043b0 <__memmove+0xfc>
    80004388:	0045c603          	lbu	a2,4(a1)
    8000438c:	00400713          	li	a4,4
    80004390:	00c78223          	sb	a2,4(a5)
    80004394:	00e68e63          	beq	a3,a4,800043b0 <__memmove+0xfc>
    80004398:	0055c603          	lbu	a2,5(a1)
    8000439c:	00500713          	li	a4,5
    800043a0:	00c782a3          	sb	a2,5(a5)
    800043a4:	00e68663          	beq	a3,a4,800043b0 <__memmove+0xfc>
    800043a8:	0065c703          	lbu	a4,6(a1)
    800043ac:	00e78323          	sb	a4,6(a5)
    800043b0:	00813403          	ld	s0,8(sp)
    800043b4:	01010113          	addi	sp,sp,16
    800043b8:	00008067          	ret
    800043bc:	02061713          	slli	a4,a2,0x20
    800043c0:	02075713          	srli	a4,a4,0x20
    800043c4:	00e587b3          	add	a5,a1,a4
    800043c8:	f0f574e3          	bgeu	a0,a5,800042d0 <__memmove+0x1c>
    800043cc:	02069613          	slli	a2,a3,0x20
    800043d0:	02065613          	srli	a2,a2,0x20
    800043d4:	fff64613          	not	a2,a2
    800043d8:	00e50733          	add	a4,a0,a4
    800043dc:	00c78633          	add	a2,a5,a2
    800043e0:	fff7c683          	lbu	a3,-1(a5)
    800043e4:	fff78793          	addi	a5,a5,-1
    800043e8:	fff70713          	addi	a4,a4,-1
    800043ec:	00d70023          	sb	a3,0(a4)
    800043f0:	fec798e3          	bne	a5,a2,800043e0 <__memmove+0x12c>
    800043f4:	00813403          	ld	s0,8(sp)
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00008067          	ret
    80004400:	02069713          	slli	a4,a3,0x20
    80004404:	02075713          	srli	a4,a4,0x20
    80004408:	00170713          	addi	a4,a4,1
    8000440c:	00e50733          	add	a4,a0,a4
    80004410:	00050793          	mv	a5,a0
    80004414:	0005c683          	lbu	a3,0(a1)
    80004418:	00178793          	addi	a5,a5,1
    8000441c:	00158593          	addi	a1,a1,1
    80004420:	fed78fa3          	sb	a3,-1(a5)
    80004424:	fee798e3          	bne	a5,a4,80004414 <__memmove+0x160>
    80004428:	f89ff06f          	j	800043b0 <__memmove+0xfc>

000000008000442c <__putc>:
    8000442c:	fe010113          	addi	sp,sp,-32
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00113c23          	sd	ra,24(sp)
    80004438:	02010413          	addi	s0,sp,32
    8000443c:	00050793          	mv	a5,a0
    80004440:	fef40593          	addi	a1,s0,-17
    80004444:	00100613          	li	a2,1
    80004448:	00000513          	li	a0,0
    8000444c:	fef407a3          	sb	a5,-17(s0)
    80004450:	fffff097          	auipc	ra,0xfffff
    80004454:	b3c080e7          	jalr	-1220(ra) # 80002f8c <console_write>
    80004458:	01813083          	ld	ra,24(sp)
    8000445c:	01013403          	ld	s0,16(sp)
    80004460:	02010113          	addi	sp,sp,32
    80004464:	00008067          	ret

0000000080004468 <__getc>:
    80004468:	fe010113          	addi	sp,sp,-32
    8000446c:	00813823          	sd	s0,16(sp)
    80004470:	00113c23          	sd	ra,24(sp)
    80004474:	02010413          	addi	s0,sp,32
    80004478:	fe840593          	addi	a1,s0,-24
    8000447c:	00100613          	li	a2,1
    80004480:	00000513          	li	a0,0
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	ae8080e7          	jalr	-1304(ra) # 80002f6c <console_read>
    8000448c:	fe844503          	lbu	a0,-24(s0)
    80004490:	01813083          	ld	ra,24(sp)
    80004494:	01013403          	ld	s0,16(sp)
    80004498:	02010113          	addi	sp,sp,32
    8000449c:	00008067          	ret

00000000800044a0 <console_handler>:
    800044a0:	fe010113          	addi	sp,sp,-32
    800044a4:	00813823          	sd	s0,16(sp)
    800044a8:	00113c23          	sd	ra,24(sp)
    800044ac:	00913423          	sd	s1,8(sp)
    800044b0:	02010413          	addi	s0,sp,32
    800044b4:	14202773          	csrr	a4,scause
    800044b8:	100027f3          	csrr	a5,sstatus
    800044bc:	0027f793          	andi	a5,a5,2
    800044c0:	06079e63          	bnez	a5,8000453c <console_handler+0x9c>
    800044c4:	00074c63          	bltz	a4,800044dc <console_handler+0x3c>
    800044c8:	01813083          	ld	ra,24(sp)
    800044cc:	01013403          	ld	s0,16(sp)
    800044d0:	00813483          	ld	s1,8(sp)
    800044d4:	02010113          	addi	sp,sp,32
    800044d8:	00008067          	ret
    800044dc:	0ff77713          	andi	a4,a4,255
    800044e0:	00900793          	li	a5,9
    800044e4:	fef712e3          	bne	a4,a5,800044c8 <console_handler+0x28>
    800044e8:	ffffe097          	auipc	ra,0xffffe
    800044ec:	6dc080e7          	jalr	1756(ra) # 80002bc4 <plic_claim>
    800044f0:	00a00793          	li	a5,10
    800044f4:	00050493          	mv	s1,a0
    800044f8:	02f50c63          	beq	a0,a5,80004530 <console_handler+0x90>
    800044fc:	fc0506e3          	beqz	a0,800044c8 <console_handler+0x28>
    80004500:	00050593          	mv	a1,a0
    80004504:	00001517          	auipc	a0,0x1
    80004508:	d2450513          	addi	a0,a0,-732 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    8000450c:	fffff097          	auipc	ra,0xfffff
    80004510:	afc080e7          	jalr	-1284(ra) # 80003008 <__printf>
    80004514:	01013403          	ld	s0,16(sp)
    80004518:	01813083          	ld	ra,24(sp)
    8000451c:	00048513          	mv	a0,s1
    80004520:	00813483          	ld	s1,8(sp)
    80004524:	02010113          	addi	sp,sp,32
    80004528:	ffffe317          	auipc	t1,0xffffe
    8000452c:	6d430067          	jr	1748(t1) # 80002bfc <plic_complete>
    80004530:	fffff097          	auipc	ra,0xfffff
    80004534:	3e0080e7          	jalr	992(ra) # 80003910 <uartintr>
    80004538:	fddff06f          	j	80004514 <console_handler+0x74>
    8000453c:	00001517          	auipc	a0,0x1
    80004540:	dec50513          	addi	a0,a0,-532 # 80005328 <digits+0x78>
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	a68080e7          	jalr	-1432(ra) # 80002fac <panic>
	...
