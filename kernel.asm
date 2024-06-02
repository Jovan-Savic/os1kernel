
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
    8000001c:	358020ef          	jal	ra,80002374 <start>

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
    80001184:	345000ef          	jal	ra,80001cc8 <_ZN5Riscv20handleSupervisorTrapEv>

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

00000000800012d0 <_Z13thread_createP3TCBPFvPvES1_>:

int thread_create(TCB *handle, void (*start_routine)(void *), void *arg) {
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
    __asm__ volatile("mv %0, a2":"=r"(handle));
    800012f4:	00060793          	mv	a5,a2
    return (int)r;
}
    800012f8:	0005051b          	sext.w	a0,a0
    800012fc:	00813403          	ld	s0,8(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_ZL9fibonaccim>:
        if(i == 10) thread_exit();
    }
}

static uint64 fibonacci(uint64 n)
{
    80001308:	fe010113          	addi	sp,sp,-32
    8000130c:	00113c23          	sd	ra,24(sp)
    80001310:	00813823          	sd	s0,16(sp)
    80001314:	00913423          	sd	s1,8(sp)
    80001318:	01213023          	sd	s2,0(sp)
    8000131c:	02010413          	addi	s0,sp,32
    80001320:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001324:	00100793          	li	a5,1
    80001328:	02a7f863          	bgeu	a5,a0,80001358 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    8000132c:	00a00793          	li	a5,10
    80001330:	02f577b3          	remu	a5,a0,a5
    80001334:	02078e63          	beqz	a5,80001370 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001338:	fff48513          	addi	a0,s1,-1
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	fcc080e7          	jalr	-52(ra) # 80001308 <_ZL9fibonaccim>
    80001344:	00050913          	mv	s2,a0
    80001348:	ffe48513          	addi	a0,s1,-2
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	fbc080e7          	jalr	-68(ra) # 80001308 <_ZL9fibonaccim>
    80001354:	00a90533          	add	a0,s2,a0
}
    80001358:	01813083          	ld	ra,24(sp)
    8000135c:	01013403          	ld	s0,16(sp)
    80001360:	00813483          	ld	s1,8(sp)
    80001364:	00013903          	ld	s2,0(sp)
    80001368:	02010113          	addi	sp,sp,32
    8000136c:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001370:	00000097          	auipc	ra,0x0
    80001374:	654080e7          	jalr	1620(ra) # 800019c4 <_ZN3TCB5yieldEv>
    80001378:	fc1ff06f          	j	80001338 <_ZL9fibonaccim+0x30>

000000008000137c <_Z11workerBodyAPv>:
{
    8000137c:	fe010113          	addi	sp,sp,-32
    80001380:	00113c23          	sd	ra,24(sp)
    80001384:	00813823          	sd	s0,16(sp)
    80001388:	00913423          	sd	s1,8(sp)
    8000138c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001390:	00000493          	li	s1,0
    80001394:	0300006f          	j	800013c4 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001398:	00168693          	addi	a3,a3,1
    8000139c:	000027b7          	lui	a5,0x2
    800013a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013a4:	00d7ee63          	bltu	a5,a3,800013c0 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013a8:	00000713          	li	a4,0
    800013ac:	000077b7          	lui	a5,0x7
    800013b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013b4:	fee7e2e3          	bltu	a5,a4,80001398 <_Z11workerBodyAPv+0x1c>
    800013b8:	00170713          	addi	a4,a4,1
    800013bc:	ff1ff06f          	j	800013ac <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800013c0:	00148493          	addi	s1,s1,1
    800013c4:	00900793          	li	a5,9
    800013c8:	0297ec63          	bltu	a5,s1,80001400 <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	c5450513          	addi	a0,a0,-940 # 80005020 <CONSOLE_STATUS+0x10>
    800013d4:	00001097          	auipc	ra,0x1
    800013d8:	e74080e7          	jalr	-396(ra) # 80002248 <_Z11printStringPKc>
        printInteger(i);
    800013dc:	00048513          	mv	a0,s1
    800013e0:	00001097          	auipc	ra,0x1
    800013e4:	ed8080e7          	jalr	-296(ra) # 800022b8 <_Z12printIntegerm>
        printString("\n");
    800013e8:	00004517          	auipc	a0,0x4
    800013ec:	d0850513          	addi	a0,a0,-760 # 800050f0 <CONSOLE_STATUS+0xe0>
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	e58080e7          	jalr	-424(ra) # 80002248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013f8:	00000693          	li	a3,0
    800013fc:	fa1ff06f          	j	8000139c <_Z11workerBodyAPv+0x20>
}
    80001400:	01813083          	ld	ra,24(sp)
    80001404:	01013403          	ld	s0,16(sp)
    80001408:	00813483          	ld	s1,8(sp)
    8000140c:	02010113          	addi	sp,sp,32
    80001410:	00008067          	ret

0000000080001414 <_Z11workerBodyBPv>:
{
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00113c23          	sd	ra,24(sp)
    8000141c:	00813823          	sd	s0,16(sp)
    80001420:	00913423          	sd	s1,8(sp)
    80001424:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001428:	00000493          	li	s1,0
    8000142c:	0380006f          	j	80001464 <_Z11workerBodyBPv+0x50>
        for (uint64 j = 0; j < 10000; j++)
    80001430:	00168693          	addi	a3,a3,1
    80001434:	000027b7          	lui	a5,0x2
    80001438:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000143c:	00d7ee63          	bltu	a5,a3,80001458 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001440:	00000713          	li	a4,0
    80001444:	000077b7          	lui	a5,0x7
    80001448:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000144c:	fee7e2e3          	bltu	a5,a4,80001430 <_Z11workerBodyBPv+0x1c>
    80001450:	00170713          	addi	a4,a4,1
    80001454:	ff1ff06f          	j	80001444 <_Z11workerBodyBPv+0x30>
        if(i == 10) thread_exit();
    80001458:	00a00793          	li	a5,10
    8000145c:	04f48263          	beq	s1,a5,800014a0 <_Z11workerBodyBPv+0x8c>
    for (uint64 i = 0; i < 16; i++)
    80001460:	00148493          	addi	s1,s1,1
    80001464:	00f00793          	li	a5,15
    80001468:	0497e263          	bltu	a5,s1,800014ac <_Z11workerBodyBPv+0x98>
        printString("B: i=");
    8000146c:	00004517          	auipc	a0,0x4
    80001470:	bbc50513          	addi	a0,a0,-1092 # 80005028 <CONSOLE_STATUS+0x18>
    80001474:	00001097          	auipc	ra,0x1
    80001478:	dd4080e7          	jalr	-556(ra) # 80002248 <_Z11printStringPKc>
        printInteger(i);
    8000147c:	00048513          	mv	a0,s1
    80001480:	00001097          	auipc	ra,0x1
    80001484:	e38080e7          	jalr	-456(ra) # 800022b8 <_Z12printIntegerm>
        printString("\n");
    80001488:	00004517          	auipc	a0,0x4
    8000148c:	c6850513          	addi	a0,a0,-920 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001490:	00001097          	auipc	ra,0x1
    80001494:	db8080e7          	jalr	-584(ra) # 80002248 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001498:	00000693          	li	a3,0
    8000149c:	f99ff06f          	j	80001434 <_Z11workerBodyBPv+0x20>
        if(i == 10) thread_exit();
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	e08080e7          	jalr	-504(ra) # 800012a8 <_Z11thread_exitv>
    800014a8:	fb9ff06f          	j	80001460 <_Z11workerBodyBPv+0x4c>
}
    800014ac:	01813083          	ld	ra,24(sp)
    800014b0:	01013403          	ld	s0,16(sp)
    800014b4:	00813483          	ld	s1,8(sp)
    800014b8:	02010113          	addi	sp,sp,32
    800014bc:	00008067          	ret

00000000800014c0 <_Z11workerBodyCPv>:

void workerBodyC(void* g)
{
    800014c0:	fe010113          	addi	sp,sp,-32
    800014c4:	00113c23          	sd	ra,24(sp)
    800014c8:	00813823          	sd	s0,16(sp)
    800014cc:	00913423          	sd	s1,8(sp)
    800014d0:	01213023          	sd	s2,0(sp)
    800014d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800014d8:	00000493          	li	s1,0
    800014dc:	0380006f          	j	80001514 <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800014e0:	00004517          	auipc	a0,0x4
    800014e4:	b5050513          	addi	a0,a0,-1200 # 80005030 <CONSOLE_STATUS+0x20>
    800014e8:	00001097          	auipc	ra,0x1
    800014ec:	d60080e7          	jalr	-672(ra) # 80002248 <_Z11printStringPKc>
        printInteger(i);
    800014f0:	00048513          	mv	a0,s1
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	dc4080e7          	jalr	-572(ra) # 800022b8 <_Z12printIntegerm>
        printString("\n");
    800014fc:	00004517          	auipc	a0,0x4
    80001500:	bf450513          	addi	a0,a0,-1036 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001504:	00001097          	auipc	ra,0x1
    80001508:	d44080e7          	jalr	-700(ra) # 80002248 <_Z11printStringPKc>
    for (; i < 3; i++)
    8000150c:	0014849b          	addiw	s1,s1,1
    80001510:	0ff4f493          	andi	s1,s1,255
    80001514:	00200793          	li	a5,2
    80001518:	fc97f4e3          	bgeu	a5,s1,800014e0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    8000151c:	00004517          	auipc	a0,0x4
    80001520:	b1c50513          	addi	a0,a0,-1252 # 80005038 <CONSOLE_STATUS+0x28>
    80001524:	00001097          	auipc	ra,0x1
    80001528:	d24080e7          	jalr	-732(ra) # 80002248 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000152c:	00700313          	li	t1,7
    thread_dispatch();
    80001530:	00000097          	auipc	ra,0x0
    80001534:	d58080e7          	jalr	-680(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001538:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000153c:	00004517          	auipc	a0,0x4
    80001540:	b0c50513          	addi	a0,a0,-1268 # 80005048 <CONSOLE_STATUS+0x38>
    80001544:	00001097          	auipc	ra,0x1
    80001548:	d04080e7          	jalr	-764(ra) # 80002248 <_Z11printStringPKc>
    printInteger(t1);
    8000154c:	00090513          	mv	a0,s2
    80001550:	00001097          	auipc	ra,0x1
    80001554:	d68080e7          	jalr	-664(ra) # 800022b8 <_Z12printIntegerm>
    printString("\n");
    80001558:	00004517          	auipc	a0,0x4
    8000155c:	b9850513          	addi	a0,a0,-1128 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001560:	00001097          	auipc	ra,0x1
    80001564:	ce8080e7          	jalr	-792(ra) # 80002248 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001568:	00c00513          	li	a0,12
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	d9c080e7          	jalr	-612(ra) # 80001308 <_ZL9fibonaccim>
    80001574:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	ad850513          	addi	a0,a0,-1320 # 80005050 <CONSOLE_STATUS+0x40>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	cc8080e7          	jalr	-824(ra) # 80002248 <_Z11printStringPKc>
    printInteger(result);
    80001588:	00090513          	mv	a0,s2
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	d2c080e7          	jalr	-724(ra) # 800022b8 <_Z12printIntegerm>
    printString("\n");
    80001594:	00004517          	auipc	a0,0x4
    80001598:	b5c50513          	addi	a0,a0,-1188 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	cac080e7          	jalr	-852(ra) # 80002248 <_Z11printStringPKc>
    800015a4:	0380006f          	j	800015dc <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	a8850513          	addi	a0,a0,-1400 # 80005030 <CONSOLE_STATUS+0x20>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	c98080e7          	jalr	-872(ra) # 80002248 <_Z11printStringPKc>
        printInteger(i);
    800015b8:	00048513          	mv	a0,s1
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	cfc080e7          	jalr	-772(ra) # 800022b8 <_Z12printIntegerm>
        printString("\n");
    800015c4:	00004517          	auipc	a0,0x4
    800015c8:	b2c50513          	addi	a0,a0,-1236 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	c7c080e7          	jalr	-900(ra) # 80002248 <_Z11printStringPKc>
    for (; i < 6; i++)
    800015d4:	0014849b          	addiw	s1,s1,1
    800015d8:	0ff4f493          	andi	s1,s1,255
    800015dc:	00500793          	li	a5,5
    800015e0:	fc97f4e3          	bgeu	a5,s1,800015a8 <_Z11workerBodyCPv+0xe8>
    }
//    TCB::yield();
}
    800015e4:	01813083          	ld	ra,24(sp)
    800015e8:	01013403          	ld	s0,16(sp)
    800015ec:	00813483          	ld	s1,8(sp)
    800015f0:	00013903          	ld	s2,0(sp)
    800015f4:	02010113          	addi	sp,sp,32
    800015f8:	00008067          	ret

00000000800015fc <_Z11workerBodyDPv>:

void workerBodyD(void* g)
{
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	01213023          	sd	s2,0(sp)
    80001610:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001614:	00a00493          	li	s1,10
    80001618:	0380006f          	j	80001650 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	a4450513          	addi	a0,a0,-1468 # 80005060 <CONSOLE_STATUS+0x50>
    80001624:	00001097          	auipc	ra,0x1
    80001628:	c24080e7          	jalr	-988(ra) # 80002248 <_Z11printStringPKc>
        printInteger(i);
    8000162c:	00048513          	mv	a0,s1
    80001630:	00001097          	auipc	ra,0x1
    80001634:	c88080e7          	jalr	-888(ra) # 800022b8 <_Z12printIntegerm>
        printString("\n");
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	ab850513          	addi	a0,a0,-1352 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001640:	00001097          	auipc	ra,0x1
    80001644:	c08080e7          	jalr	-1016(ra) # 80002248 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001648:	0014849b          	addiw	s1,s1,1
    8000164c:	0ff4f493          	andi	s1,s1,255
    80001650:	00c00793          	li	a5,12
    80001654:	fc97f4e3          	bgeu	a5,s1,8000161c <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	a1050513          	addi	a0,a0,-1520 # 80005068 <CONSOLE_STATUS+0x58>
    80001660:	00001097          	auipc	ra,0x1
    80001664:	be8080e7          	jalr	-1048(ra) # 80002248 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001668:	00500313          	li	t1,5
    thread_dispatch();
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	c1c080e7          	jalr	-996(ra) # 80001288 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001674:	01000513          	li	a0,16
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	c90080e7          	jalr	-880(ra) # 80001308 <_ZL9fibonaccim>
    80001680:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001684:	00004517          	auipc	a0,0x4
    80001688:	9f450513          	addi	a0,a0,-1548 # 80005078 <CONSOLE_STATUS+0x68>
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	bbc080e7          	jalr	-1092(ra) # 80002248 <_Z11printStringPKc>
    printInteger(result);
    80001694:	00090513          	mv	a0,s2
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	c20080e7          	jalr	-992(ra) # 800022b8 <_Z12printIntegerm>
    printString("\n");
    800016a0:	00004517          	auipc	a0,0x4
    800016a4:	a5050513          	addi	a0,a0,-1456 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	ba0080e7          	jalr	-1120(ra) # 80002248 <_Z11printStringPKc>
    800016b0:	0380006f          	j	800016e8 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800016b4:	00004517          	auipc	a0,0x4
    800016b8:	9ac50513          	addi	a0,a0,-1620 # 80005060 <CONSOLE_STATUS+0x50>
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	b8c080e7          	jalr	-1140(ra) # 80002248 <_Z11printStringPKc>
        printInteger(i);
    800016c4:	00048513          	mv	a0,s1
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	bf0080e7          	jalr	-1040(ra) # 800022b8 <_Z12printIntegerm>
        printString("\n");
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	a2050513          	addi	a0,a0,-1504 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	b70080e7          	jalr	-1168(ra) # 80002248 <_Z11printStringPKc>
    for (; i < 16; i++)
    800016e0:	0014849b          	addiw	s1,s1,1
    800016e4:	0ff4f493          	andi	s1,s1,255
    800016e8:	00f00793          	li	a5,15
    800016ec:	fc97f4e3          	bgeu	a5,s1,800016b4 <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    800016f0:	01813083          	ld	ra,24(sp)
    800016f4:	01013403          	ld	s0,16(sp)
    800016f8:	00813483          	ld	s1,8(sp)
    800016fc:	00013903          	ld	s2,0(sp)
    80001700:	02010113          	addi	sp,sp,32
    80001704:	00008067          	ret

0000000080001708 <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001708:	fb010113          	addi	sp,sp,-80
    8000170c:	04113423          	sd	ra,72(sp)
    80001710:	04813023          	sd	s0,64(sp)
    80001714:	02913c23          	sd	s1,56(sp)
    80001718:	05010413          	addi	s0,sp,80
    MemoryAllocator::init();
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	9b8080e7          	jalr	-1608(ra) # 800020d4 <_ZN15MemoryAllocator4initEv>
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001724:	00004797          	auipc	a5,0x4
    80001728:	31c7b783          	ld	a5,796(a5) # 80005a40 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000172c:	10579073          	csrw	stvec,a5

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    80001730:	00004797          	auipc	a5,0x4
    80001734:	3387b783          	ld	a5,824(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001738:	0007b503          	ld	a0,0(a5)
    8000173c:	00004797          	auipc	a5,0x4
    80001740:	2f47b783          	ld	a5,756(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001744:	0007b783          	ld	a5,0(a5)
    80001748:	40f50533          	sub	a0,a0,a5
    8000174c:	ff050513          	addi	a0,a0,-16
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    80001750:	fc057513          	andi	a0,a0,-64
    80001754:	00000097          	auipc	ra,0x0
    80001758:	ad0080e7          	jalr	-1328(ra) # 80001224 <_Z9mem_allocm>
    8000175c:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    80001760:	10050263          	beqz	a0,80001864 <main+0x15c>
        __putc('?');
    }

    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    80001764:	00a00513          	li	a0,10
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	abc080e7          	jalr	-1348(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001770:	10050263          	beqz	a0,80001874 <main+0x16c>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    80001774:	00048513          	mv	a0,s1
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	9f4080e7          	jalr	-1548(ra) # 8000216c <_ZN15MemoryAllocator8mem_freeEPKv>
    if(status != 0) {
    80001780:	10051263          	bnez	a0,80001884 <main+0x17c>
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    80001784:	00a00513          	li	a0,10
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	a9c080e7          	jalr	-1380(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    80001790:	10050263          	beqz	a0,80001894 <main+0x18c>
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(threads[0],nullptr, nullptr);
    80001794:	00000613          	li	a2,0
    80001798:	00000593          	li	a1,0
    8000179c:	fb843503          	ld	a0,-72(s0)
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	b30080e7          	jalr	-1232(ra) # 800012d0 <_Z13thread_createP3TCBPFvPvES1_>
    TCB::running = threads[0];
    800017a8:	fb843703          	ld	a4,-72(s0)
    800017ac:	00004797          	auipc	a5,0x4
    800017b0:	2b47b783          	ld	a5,692(a5) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017b4:	00e7b023          	sd	a4,0(a5)

    threads[1] = TCB::createThread(workerBodyA, nullptr);
    800017b8:	00000593          	li	a1,0
    800017bc:	00004517          	auipc	a0,0x4
    800017c0:	29c53503          	ld	a0,668(a0) # 80005a58 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	2e4080e7          	jalr	740(ra) # 80001aa8 <_ZN3TCB12createThreadEPFvPvES0_>
    800017cc:	fca43023          	sd	a0,-64(s0)
    //thread_create(threads[1],workerBodyA, nullptr);
    printString("ThreadA created\n");
    800017d0:	00004517          	auipc	a0,0x4
    800017d4:	8b850513          	addi	a0,a0,-1864 # 80005088 <CONSOLE_STATUS+0x78>
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	a70080e7          	jalr	-1424(ra) # 80002248 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB , nullptr);
    800017e0:	00000593          	li	a1,0
    800017e4:	00004517          	auipc	a0,0x4
    800017e8:	28c53503          	ld	a0,652(a0) # 80005a70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	2bc080e7          	jalr	700(ra) # 80001aa8 <_ZN3TCB12createThreadEPFvPvES0_>
    800017f4:	fca43423          	sd	a0,-56(s0)
    //thread_create(threads[2],workerBodyB, nullptr);
    printString("ThreadB created\n");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	8a850513          	addi	a0,a0,-1880 # 800050a0 <CONSOLE_STATUS+0x90>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	a48080e7          	jalr	-1464(ra) # 80002248 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC, nullptr);
    80001808:	00000593          	li	a1,0
    8000180c:	00004517          	auipc	a0,0x4
    80001810:	22c53503          	ld	a0,556(a0) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001814:	00000097          	auipc	ra,0x0
    80001818:	294080e7          	jalr	660(ra) # 80001aa8 <_ZN3TCB12createThreadEPFvPvES0_>
    8000181c:	fca43823          	sd	a0,-48(s0)
    //thread_create(threads[3],workerBodyC, nullptr);
    printString("ThreadC created\n");
    80001820:	00004517          	auipc	a0,0x4
    80001824:	89850513          	addi	a0,a0,-1896 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	a20080e7          	jalr	-1504(ra) # 80002248 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD, nullptr);
    80001830:	00000593          	li	a1,0
    80001834:	00004517          	auipc	a0,0x4
    80001838:	24453503          	ld	a0,580(a0) # 80005a78 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	26c080e7          	jalr	620(ra) # 80001aa8 <_ZN3TCB12createThreadEPFvPvES0_>
    80001844:	fca43c23          	sd	a0,-40(s0)
    //thread_create(threads[4],workerBodyD, nullptr);
    printString("ThreadD created\n");
    80001848:	00004517          	auipc	a0,0x4
    8000184c:	88850513          	addi	a0,a0,-1912 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001850:	00001097          	auipc	ra,0x1
    80001854:	9f8080e7          	jalr	-1544(ra) # 80002248 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001858:	00200793          	li	a5,2
    8000185c:	1007a073          	csrs	sstatus,a5
}
    80001860:	04c0006f          	j	800018ac <main+0x1a4>
        __putc('?');
    80001864:	03f00513          	li	a0,63
    80001868:	00003097          	auipc	ra,0x3
    8000186c:	bd4080e7          	jalr	-1068(ra) # 8000443c <__putc>
    80001870:	ef5ff06f          	j	80001764 <main+0x5c>
        __putc('k');
    80001874:	06b00513          	li	a0,107
    80001878:	00003097          	auipc	ra,0x3
    8000187c:	bc4080e7          	jalr	-1084(ra) # 8000443c <__putc>
    80001880:	ef5ff06f          	j	80001774 <main+0x6c>
        __putc('?');
    80001884:	03f00513          	li	a0,63
    80001888:	00003097          	auipc	ra,0x3
    8000188c:	bb4080e7          	jalr	-1100(ra) # 8000443c <__putc>
    80001890:	ef5ff06f          	j	80001784 <main+0x7c>
        __putc('?');
    80001894:	03f00513          	li	a0,63
    80001898:	00003097          	auipc	ra,0x3
    8000189c:	ba4080e7          	jalr	-1116(ra) # 8000443c <__putc>
    800018a0:	ef5ff06f          	j	80001794 <main+0x8c>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	9e4080e7          	jalr	-1564(ra) # 80001288 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    800018ac:	fc043783          	ld	a5,-64(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    800018b0:	0307c783          	lbu	a5,48(a5)
    800018b4:	fe0788e3          	beqz	a5,800018a4 <main+0x19c>
             threads[2]->isFinished() &&
    800018b8:	fc843783          	ld	a5,-56(s0)
    800018bc:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    800018c0:	fe0782e3          	beqz	a5,800018a4 <main+0x19c>
             threads[3]->isFinished() &&
    800018c4:	fd043783          	ld	a5,-48(s0)
    800018c8:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    800018cc:	fc078ce3          	beqz	a5,800018a4 <main+0x19c>
             threads[4]->isFinished()))
    800018d0:	fd843783          	ld	a5,-40(s0)
    800018d4:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    800018d8:	fc0786e3          	beqz	a5,800018a4 <main+0x19c>
    800018dc:	fb840493          	addi	s1,s0,-72
    }

    for (auto &thread: threads)
    800018e0:	fe040793          	addi	a5,s0,-32
    800018e4:	00f48c63          	beq	s1,a5,800018fc <main+0x1f4>
    {
        TCB::deleteThread(thread);
    800018e8:	0004b503          	ld	a0,0(s1)
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	294080e7          	jalr	660(ra) # 80001b80 <_ZN3TCB12deleteThreadEPS_>
    for (auto &thread: threads)
    800018f4:	00848493          	addi	s1,s1,8
    800018f8:	fe9ff06f          	j	800018e0 <main+0x1d8>
    }
    printString("Finished\n");
    800018fc:	00003517          	auipc	a0,0x3
    80001900:	7ec50513          	addi	a0,a0,2028 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001904:	00001097          	auipc	ra,0x1
    80001908:	944080e7          	jalr	-1724(ra) # 80002248 <_Z11printStringPKc>

    return 0;
}
    8000190c:	00000513          	li	a0,0
    80001910:	04813083          	ld	ra,72(sp)
    80001914:	04013403          	ld	s0,64(sp)
    80001918:	03813483          	ld	s1,56(sp)
    8000191c:	05010113          	addi	sp,sp,80
    80001920:	00008067          	ret

0000000080001924 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001924:	ff010113          	addi	sp,sp,-16
    80001928:	00113423          	sd	ra,8(sp)
    8000192c:	00813023          	sd	s0,0(sp)
    80001930:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001934:	00000097          	auipc	ra,0x0
    80001938:	6e4080e7          	jalr	1764(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	6bc080e7          	jalr	1724(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001964:	00813083          	ld	ra,8(sp)
    80001968:	00013403          	ld	s0,0(sp)
    8000196c:	01010113          	addi	sp,sp,16
    80001970:	00008067          	ret

0000000080001974 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00113423          	sd	ra,8(sp)
    8000197c:	00813023          	sd	s0,0(sp)
    80001980:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001984:	00000097          	auipc	ra,0x0
    80001988:	7e8080e7          	jalr	2024(ra) # 8000216c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	7c0080e7          	jalr	1984(ra) # 8000216c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00813423          	sd	s0,8(sp)
    800019cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800019d0:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800019d4:	00000073          	ecall
}
    800019d8:	00813403          	ld	s0,8(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    800019e4:	fe010113          	addi	sp,sp,-32
    800019e8:	00113c23          	sd	ra,24(sp)
    800019ec:	00813823          	sd	s0,16(sp)
    800019f0:	00913423          	sd	s1,8(sp)
    800019f4:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	2b0080e7          	jalr	688(ra) # 80001ca8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001a00:	00004497          	auipc	s1,0x4
    80001a04:	0d048493          	addi	s1,s1,208 # 80005ad0 <_ZN3TCB7runningE>
    80001a08:	0004b783          	ld	a5,0(s1)
    80001a0c:	0007b703          	ld	a4,0(a5)
    80001a10:	0087b503          	ld	a0,8(a5)
    80001a14:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a18:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f;}
    80001a1c:	00100713          	li	a4,1
    80001a20:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	fa0080e7          	jalr	-96(ra) # 800019c4 <_ZN3TCB5yieldEv>
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	02010113          	addi	sp,sp,32
    80001a3c:	00008067          	ret

0000000080001a40 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00113c23          	sd	ra,24(sp)
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001a54:	00004497          	auipc	s1,0x4
    80001a58:	07c4b483          	ld	s1,124(s1) # 80005ad0 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001a5c:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    80001a60:	02078c63          	beqz	a5,80001a98 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	4ac080e7          	jalr	1196(ra) # 80001f10 <_ZN9Scheduler3getEv>
    80001a6c:	00004797          	auipc	a5,0x4
    80001a70:	06a7b223          	sd	a0,100(a5) # 80005ad0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a74:	01850593          	addi	a1,a0,24
    80001a78:	01848513          	addi	a0,s1,24
    80001a7c:	fffff097          	auipc	ra,0xfffff
    80001a80:	794080e7          	jalr	1940(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a84:	01813083          	ld	ra,24(sp)
    80001a88:	01013403          	ld	s0,16(sp)
    80001a8c:	00813483          	ld	s1,8(sp)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00008067          	ret
        Scheduler::put(old);
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	4dc080e7          	jalr	1244(ra) # 80001f78 <_ZN9Scheduler3putEP3TCB>
    80001aa4:	fc1ff06f          	j	80001a64 <_ZN3TCB8dispatchEv+0x24>

0000000080001aa8 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::createThread(Body body, void * argument) {
    80001aa8:	fd010113          	addi	sp,sp,-48
    80001aac:	02113423          	sd	ra,40(sp)
    80001ab0:	02813023          	sd	s0,32(sp)
    80001ab4:	00913c23          	sd	s1,24(sp)
    80001ab8:	01213823          	sd	s2,16(sp)
    80001abc:	01313423          	sd	s3,8(sp)
    80001ac0:	03010413          	addi	s0,sp,48
    80001ac4:	00050913          	mv	s2,a0
    80001ac8:	00058993          	mv	s3,a1
    return new TCB(body,TIME_SLICE, argument);
    80001acc:	03800513          	li	a0,56
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	e54080e7          	jalr	-428(ra) # 80001924 <_ZN3TCBnwEm>
    80001ad8:	00050493          	mv	s1,a0
    context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false)
    80001adc:	01253023          	sd	s2,0(a0)
    80001ae0:	01353423          	sd	s3,8(a0)
    explicit TCB(Body body, uint64 timeSlice, void* arg): body(body), argument(arg), stack(body != nullptr ? (uint64*)TCB::operator new[](STACK_SIZE) : nullptr),
    80001ae4:	00090a63          	beqz	s2,80001af8 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001ae8:	40000513          	li	a0,1024
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	e60080e7          	jalr	-416(ra) # 8000194c <_ZN3TCBnaEm>
    80001af4:	0080006f          	j	80001afc <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001af8:	00000513          	li	a0,0
                finished(false)
    80001afc:	00a4b823          	sd	a0,16(s1)
    80001b00:	00000797          	auipc	a5,0x0
    80001b04:	ee478793          	addi	a5,a5,-284 # 800019e4 <_ZN3TCB13threadWrapperEv>
    80001b08:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b0c:	02050863          	beqz	a0,80001b3c <_ZN3TCB12createThreadEPFvPvES0_+0x94>
    80001b10:	000027b7          	lui	a5,0x2
    80001b14:	00f507b3          	add	a5,a0,a5
                finished(false)
    80001b18:	02f4b023          	sd	a5,32(s1)
    80001b1c:	00200793          	li	a5,2
    80001b20:	02f4b423          	sd	a5,40(s1)
    80001b24:	02048823          	sb	zero,48(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80001b28:	02090c63          	beqz	s2,80001b60 <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
    80001b2c:	00048513          	mv	a0,s1
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	448080e7          	jalr	1096(ra) # 80001f78 <_ZN9Scheduler3putEP3TCB>
    80001b38:	0280006f          	j	80001b60 <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
            stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b3c:	00000793          	li	a5,0
    80001b40:	fd9ff06f          	j	80001b18 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80001b44:	00050913          	mv	s2,a0
    80001b48:	00048513          	mv	a0,s1
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	e28080e7          	jalr	-472(ra) # 80001974 <_ZN3TCBdlEPv>
    80001b54:	00090513          	mv	a0,s2
    80001b58:	00005097          	auipc	ra,0x5
    80001b5c:	070080e7          	jalr	112(ra) # 80006bc8 <_Unwind_Resume>
}
    80001b60:	00048513          	mv	a0,s1
    80001b64:	02813083          	ld	ra,40(sp)
    80001b68:	02013403          	ld	s0,32(sp)
    80001b6c:	01813483          	ld	s1,24(sp)
    80001b70:	01013903          	ld	s2,16(sp)
    80001b74:	00813983          	ld	s3,8(sp)
    80001b78:	03010113          	addi	sp,sp,48
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001b80:	04050463          	beqz	a0,80001bc8 <_ZN3TCB12deleteThreadEPS_+0x48>
void TCB::deleteThread(TCB* thread){
    80001b84:	fe010113          	addi	sp,sp,-32
    80001b88:	00113c23          	sd	ra,24(sp)
    80001b8c:	00813823          	sd	s0,16(sp)
    80001b90:	00913423          	sd	s1,8(sp)
    80001b94:	02010413          	addi	s0,sp,32
    80001b98:	00050493          	mv	s1,a0
    ~TCB(){TCB::operator delete[](stack);}
    80001b9c:	01053503          	ld	a0,16(a0)
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	dfc080e7          	jalr	-516(ra) # 8000199c <_ZN3TCBdaEPv>
    delete thread;
    80001ba8:	00048513          	mv	a0,s1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	dc8080e7          	jalr	-568(ra) # 80001974 <_ZN3TCBdlEPv>
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
    void setFinished(bool f) { TCB::finished = f;}
    80001bdc:	00004797          	auipc	a5,0x4
    80001be0:	ef47b783          	ld	a5,-268(a5) # 80005ad0 <_ZN3TCB7runningE>
    80001be4:	00100713          	li	a4,1
    80001be8:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	e54080e7          	jalr	-428(ra) # 80001a40 <_ZN3TCB8dispatchEv>
}
    80001bf4:	00000513          	li	a0,0
    80001bf8:	00813083          	ld	ra,8(sp)
    80001bfc:	00013403          	ld	s0,0(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	60c080e7          	jalr	1548(ra) # 80001224 <_Z9mem_allocm>
}
    80001c20:	00813083          	ld	ra,8(sp)
    80001c24:	00013403          	ld	s0,0(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret

0000000080001c30 <_Znam>:

void *operator new[](size_t n)
{
    80001c30:	ff010113          	addi	sp,sp,-16
    80001c34:	00113423          	sd	ra,8(sp)
    80001c38:	00813023          	sd	s0,0(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	5e4080e7          	jalr	1508(ra) # 80001224 <_Z9mem_allocm>
}
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00113423          	sd	ra,8(sp)
    80001c60:	00813023          	sd	s0,0(sp)
    80001c64:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	5f4080e7          	jalr	1524(ra) # 8000125c <_Z8mem_freePv>
}
    80001c70:	00813083          	ld	ra,8(sp)
    80001c74:	00013403          	ld	s0,0(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5cc080e7          	jalr	1484(ra) # 8000125c <_Z8mem_freePv>
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001cb4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001cb8:	10200073          	sret
}
    80001cbc:	00813403          	ld	s0,8(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001cc8:	f9010113          	addi	sp,sp,-112
    80001ccc:	06113423          	sd	ra,104(sp)
    80001cd0:	06813023          	sd	s0,96(sp)
    80001cd4:	07010413          	addi	s0,sp,112

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001cd8:	00050793          	mv	a5,a0
    80001cdc:	faf43c23          	sd	a5,-72(s0)
    return a0;
    80001ce0:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ce4:	14202773          	csrr	a4,scause
    80001ce8:	fae43823          	sd	a4,-80(s0)
    return scause;
    80001cec:	fb043503          	ld	a0,-80(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();
    uint64 a3;
    __asm__ volatile("mv %0, a3":"=r"(a3));
    80001cf0:	00068613          	mv	a2,a3
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3???
    80001cf4:	ff850693          	addi	a3,a0,-8
    80001cf8:	00100713          	li	a4,1
    80001cfc:	04d77c63          	bgeu	a4,a3,80001d54 <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001d00:	fff00793          	li	a5,-1
    80001d04:	03f79793          	slli	a5,a5,0x3f
    80001d08:	00178793          	addi	a5,a5,1
    80001d0c:	14f50063          	beq	a0,a5,80001e4c <_ZN5Riscv20handleSupervisorTrapEv+0x184>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    80001d10:	fff00793          	li	a5,-1
    80001d14:	03f79793          	slli	a5,a5,0x3f
    80001d18:	00978793          	addi	a5,a5,9
    80001d1c:	1af50463          	beq	a0,a5,80001ec4 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	598080e7          	jalr	1432(ra) # 800022b8 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d28:	141027f3          	csrr	a5,sepc
    80001d2c:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001d30:	fe843503          	ld	a0,-24(s0)
        printInteger(r_sepc());
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	584080e7          	jalr	1412(ra) # 800022b8 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001d3c:	143027f3          	csrr	a5,stval
    80001d40:	fef43023          	sd	a5,-32(s0)
    return stval;
    80001d44:	fe043503          	ld	a0,-32(s0)
        printInteger(r_stval());
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	570080e7          	jalr	1392(ra) # 800022b8 <_Z12printIntegerm>
    }
    80001d50:	0740006f          	j	80001dc4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        __asm__ volatile("mv a3, %0"::"r"(a3));
    80001d54:	00060693          	mv	a3,a2
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d58:	14102773          	csrr	a4,sepc
    80001d5c:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001d60:	fc843703          	ld	a4,-56(s0)
        uint64 volatile sepc = r_sepc() +4;
    80001d64:	00470713          	addi	a4,a4,4
    80001d68:	f8e43823          	sd	a4,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d6c:	10002773          	csrr	a4,sstatus
    80001d70:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80001d74:	fc043703          	ld	a4,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d78:	f8e43c23          	sd	a4,-104(s0)
        switch (ra) {
    80001d7c:	01300713          	li	a4,19
    80001d80:	02f76a63          	bltu	a4,a5,80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    80001d84:	00279793          	slli	a5,a5,0x2
    80001d88:	00003717          	auipc	a4,0x3
    80001d8c:	36c70713          	addi	a4,a4,876 # 800050f4 <CONSOLE_STATUS+0xe4>
    80001d90:	00e787b3          	add	a5,a5,a4
    80001d94:	0007a783          	lw	a5,0(a5)
    80001d98:	00e787b3          	add	a5,a5,a4
    80001d9c:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1":"=r"(size));
    80001da0:	00058513          	mv	a0,a1
                mallocr = MemoryAllocator::mem_alloc(size);
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	274080e7          	jalr	628(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80001dac:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80001db0:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    80001db4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001db8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001dbc:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dc0:	14179073          	csrw	sepc,a5
    80001dc4:	06813083          	ld	ra,104(sp)
    80001dc8:	06013403          	ld	s0,96(sp)
    80001dcc:	07010113          	addi	sp,sp,112
    80001dd0:	00008067          	ret
                __asm__ volatile("mv %0, a1":"=r"(freep));
    80001dd4:	00058513          	mv	a0,a1
                greska = MemoryAllocator::mem_free(freep);
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	394080e7          	jalr	916(ra) # 8000216c <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    80001de0:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80001de4:	04542823          	sw	t0,80(s0)
                break;
    80001de8:	fcdff06f          	j	80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                __asm__ volatile("mv %0, a1":"=r"(handle));
    80001dec:	00058793          	mv	a5,a1
                __asm__ volatile("mv %0, a2":"=r"(fun));
    80001df0:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a3":"=r"(arg));
    80001df4:	00068593          	mv	a1,a3
                handle = TCB::createThread(fun,arg);
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	cb0080e7          	jalr	-848(ra) # 80001aa8 <_ZN3TCB12createThreadEPFvPvES0_>
                if(handle != nullptr) ret =0;
    80001e00:	00050c63          	beqz	a0,80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    80001e04:	00000793          	li	a5,0
                __asm__ volatile("mv a2, %0"::"r"(handle));
    80001e08:	00050613          	mv	a2,a0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80001e0c:	00078293          	mv	t0,a5
                __asm__ volatile("sw t0, 80(x8)");
    80001e10:	04542823          	sw	t0,80(s0)
                break;
    80001e14:	fa1ff06f          	j	80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                else ret = -1;
    80001e18:	fff00793          	li	a5,-1
    80001e1c:	fedff06f          	j	80001e08 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                ret = TCB::exitThread();
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	dac080e7          	jalr	-596(ra) # 80001bcc <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80001e28:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80001e2c:	04542823          	sw	t0,80(s0)
                break;
    80001e30:	f85ff06f          	j	80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
                TCB::timeSliceCounter=0;
    80001e34:	00004797          	auipc	a5,0x4
    80001e38:	c147b783          	ld	a5,-1004(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e3c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	c00080e7          	jalr	-1024(ra) # 80001a40 <_ZN3TCB8dispatchEv>
                break;
    80001e48:	f6dff06f          	j	80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0xec>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e4c:	00200793          	li	a5,2
    80001e50:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001e54:	00004717          	auipc	a4,0x4
    80001e58:	bf473703          	ld	a4,-1036(a4) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e5c:	00073783          	ld	a5,0(a4)
    80001e60:	00178793          	addi	a5,a5,1
    80001e64:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80001e68:	00004717          	auipc	a4,0x4
    80001e6c:	bf873703          	ld	a4,-1032(a4) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001e70:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001e74:	02873703          	ld	a4,40(a4)
    80001e78:	f4e7e6e3          	bltu	a5,a4,80001dc4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e7c:	141027f3          	csrr	a5,sepc
    80001e80:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001e84:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001e88:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e8c:	100027f3          	csrr	a5,sstatus
    80001e90:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001e94:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001e98:	faf43423          	sd	a5,-88(s0)
            TCB::timeSliceCounter=0;
    80001e9c:	00004797          	auipc	a5,0x4
    80001ea0:	bac7b783          	ld	a5,-1108(a5) # 80005a48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ea4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	b98080e7          	jalr	-1128(ra) # 80001a40 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001eb0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001eb4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001eb8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ebc:	14179073          	csrw	sepc,a5
}
    80001ec0:	f05ff06f          	j	80001dc4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        console_handler();
    80001ec4:	00002097          	auipc	ra,0x2
    80001ec8:	5ec080e7          	jalr	1516(ra) # 800044b0 <console_handler>
    80001ecc:	ef9ff06f          	j	80001dc4 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>

0000000080001ed0 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00100793          	li	a5,1
    80001ee0:	00f50863          	beq	a0,a5,80001ef0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ee4:	00813403          	ld	s0,8(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret
    80001ef0:	000107b7          	lui	a5,0x10
    80001ef4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ef8:	fef596e3          	bne	a1,a5,80001ee4 <_Z41__static_initialization_and_destruction_0ii+0x14>
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    80001efc:	00004797          	auipc	a5,0x4
    80001f00:	be478793          	addi	a5,a5,-1052 # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
    80001f04:	0007b023          	sd	zero,0(a5)
    80001f08:	0007b423          	sd	zero,8(a5)
    80001f0c:	fd9ff06f          	j	80001ee4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f10 <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    80001f10:	fe010113          	addi	sp,sp,-32
    80001f14:	00113c23          	sd	ra,24(sp)
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	00913423          	sd	s1,8(sp)
    80001f20:	02010413          	addi	s0,sp,32
                    head= tail = elem;
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001f24:	00004517          	auipc	a0,0x4
    80001f28:	bbc53503          	ld	a0,-1092(a0) # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
    80001f2c:	04050263          	beqz	a0,80001f70 <_ZN9Scheduler3getEv+0x60>
                Elem *elem = head;
                head = head->next;
    80001f30:	00853783          	ld	a5,8(a0)
    80001f34:	00004717          	auipc	a4,0x4
    80001f38:	baf73623          	sd	a5,-1108(a4) # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80001f3c:	02078463          	beqz	a5,80001f64 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    80001f40:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	228080e7          	jalr	552(ra) # 8000216c <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	01813083          	ld	ra,24(sp)
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	00813483          	ld	s1,8(sp)
    80001f5c:	02010113          	addi	sp,sp,32
    80001f60:	00008067          	ret
                if(!head) tail = 0;
    80001f64:	00004797          	auipc	a5,0x4
    80001f68:	b807b223          	sd	zero,-1148(a5) # 80005ae8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f6c:	fd5ff06f          	j	80001f40 <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80001f70:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001f74:	fd9ff06f          	j	80001f4c <_ZN9Scheduler3getEv+0x3c>

0000000080001f78 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00050493          	mv	s1,a0
        return MemoryAllocator::mem_alloc(n);
    80001f90:	01000513          	li	a0,16
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	084080e7          	jalr	132(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001f9c:	00953023          	sd	s1,0(a0)
                elem->next=0;
    80001fa0:	00053423          	sd	zero,8(a0)
                if(tail){
    80001fa4:	00004797          	auipc	a5,0x4
    80001fa8:	b447b783          	ld	a5,-1212(a5) # 80005ae8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fac:	02078263          	beqz	a5,80001fd0 <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    80001fb0:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80001fb4:	00004797          	auipc	a5,0x4
    80001fb8:	b2a7ba23          	sd	a0,-1228(a5) # 80005ae8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	02010113          	addi	sp,sp,32
    80001fcc:	00008067          	ret
                    head= tail = elem;
    80001fd0:	00004797          	auipc	a5,0x4
    80001fd4:	b1078793          	addi	a5,a5,-1264 # 80005ae0 <_ZN9Scheduler16readyThreadQueueE>
    80001fd8:	00a7b423          	sd	a0,8(a5)
    80001fdc:	00a7b023          	sd	a0,0(a5)
    80001fe0:	fddff06f          	j	80001fbc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001fe4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00113423          	sd	ra,8(sp)
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	000105b7          	lui	a1,0x10
    80001ff8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ffc:	00100513          	li	a0,1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	ed0080e7          	jalr	-304(ra) # 80001ed0 <_Z41__static_initialization_and_destruction_0ii>
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00813423          	sd	s0,8(sp)
    80002020:	01010413          	addi	s0,sp,16
    80002024:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    80002028:	00004517          	auipc	a0,0x4
    8000202c:	ac853503          	ld	a0,-1336(a0) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    80002030:	03f7f713          	andi	a4,a5,63
    80002034:	00070663          	beqz	a4,80002040 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002038:	fc07f793          	andi	a5,a5,-64
    8000203c:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    80002040:	02050863          	beqz	a0,80002070 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002044:	00853703          	ld	a4,8(a0)
    80002048:	02f77863          	bgeu	a4,a5,80002078 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    8000204c:	00050693          	mv	a3,a0
        tek = tek->sled;
    80002050:	00053503          	ld	a0,0(a0)
    80002054:	00c0006f          	j	80002060 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    80002058:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    8000205c:	00053503          	ld	a0,0(a0)
    80002060:	00050e63          	beqz	a0,8000207c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002064:	00853703          	ld	a4,8(a0)
    80002068:	fef768e3          	bltu	a4,a5,80002058 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    8000206c:	0100006f          	j	8000207c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    80002070:	00050693          	mv	a3,a0
    80002074:	0080006f          	j	8000207c <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002078:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    8000207c:	02050c63          	beqz	a0,800020b4 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    80002080:	00853703          	ld	a4,8(a0)
    80002084:	02e7fe63          	bgeu	a5,a4,800020c0 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    80002088:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    8000208c:	00f505b3          	add	a1,a0,a5
    80002090:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    80002094:	40f707b3          	sub	a5,a4,a5
    80002098:	ff078793          	addi	a5,a5,-16
    8000209c:	00f63423          	sd	a5,8(a2)
        sledeci->sled = tek->sled;
    800020a0:	00053783          	ld	a5,0(a0)
    800020a4:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    800020a8:	02068063          	beqz	a3,800020c8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800020ac:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    800020b0:	01050513          	addi	a0,a0,16
}
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    800020c0:	00053603          	ld	a2,0(a0)
    800020c4:	fe5ff06f          	j	800020a8 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    800020c8:	00004797          	auipc	a5,0x4
    800020cc:	a2c7b423          	sd	a2,-1496(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    800020d0:	fe1ff06f          	j	800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x98>

00000000800020d4 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813423          	sd	s0,8(sp)
    800020dc:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    800020e0:	00004797          	auipc	a5,0x4
    800020e4:	9507b783          	ld	a5,-1712(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x8>
    800020e8:	0007b703          	ld	a4,0(a5)
    800020ec:	00004797          	auipc	a5,0x4
    800020f0:	a0e7b223          	sd	a4,-1532(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    800020f4:	00004797          	auipc	a5,0x4
    800020f8:	9747b783          	ld	a5,-1676(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x40>
    800020fc:	0007b783          	ld	a5,0(a5)
    80002100:	40e787b3          	sub	a5,a5,a4
    80002104:	ff078793          	addi	a5,a5,-16
    80002108:	00073023          	sd	zero,0(a4)
    8000210c:	00f73423          	sd	a5,8(a4)
};
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002128:	00053783          	ld	a5,0(a0)
    8000212c:	00078a63          	beqz	a5,80002140 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    80002130:	00853683          	ld	a3,8(a0)
    80002134:	00d50733          	add	a4,a0,a3
    80002138:	01070713          	addi	a4,a4,16
    8000213c:	00f70a63          	beq	a4,a5,80002150 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    80002140:	00000513          	li	a0,0
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    80002150:	0087b703          	ld	a4,8(a5)
    80002154:	00e686b3          	add	a3,a3,a4
    80002158:	01068693          	addi	a3,a3,16
    8000215c:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    80002160:	0007b783          	ld	a5,0(a5)
    80002164:	00f53023          	sd	a5,0(a0)
    80002168:	fd9ff06f          	j	80002140 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

000000008000216c <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    8000216c:	0c050263          	beqz	a0,80002230 <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    80002170:	00050713          	mv	a4,a0
    80002174:	00004797          	auipc	a5,0x4
    80002178:	8bc7b783          	ld	a5,-1860(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000217c:	0007b783          	ld	a5,0(a5)
    80002180:	0af56c63          	bltu	a0,a5,80002238 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    80002184:	00004797          	auipc	a5,0x4
    80002188:	8e47b783          	ld	a5,-1820(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000218c:	0007b783          	ld	a5,0(a5)
    80002190:	0af57863          	bgeu	a0,a5,80002240 <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    80002194:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    80002198:	00004797          	auipc	a5,0x4
    8000219c:	9587b783          	ld	a5,-1704(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
    800021a0:	06078063          	beqz	a5,80002200 <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00113c23          	sd	ra,24(sp)
    800021ac:	00813823          	sd	s0,16(sp)
    800021b0:	00913423          	sd	s1,8(sp)
    800021b4:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    800021b8:	04f56e63          	bltu	a0,a5,80002214 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    800021bc:	00078493          	mv	s1,a5
    800021c0:	0007b783          	ld	a5,0(a5)
    800021c4:	00078463          	beqz	a5,800021cc <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    800021c8:	fea7eae3          	bltu	a5,a0,800021bc <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    800021cc:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    800021d0:	00a4b023          	sd	a0,0(s1)
        join(tek);
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	f48080e7          	jalr	-184(ra) # 8000211c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    800021dc:	00048513          	mv	a0,s1
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	f3c080e7          	jalr	-196(ra) # 8000211c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    800021e8:	00000513          	li	a0,0
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret
        freememhead = tek;
    80002200:	00004797          	auipc	a5,0x4
    80002204:	8ea7b823          	sd	a0,-1808(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002208:	fe073823          	sd	zero,-16(a4)
    return 0;
    8000220c:	00000513          	li	a0,0
    80002210:	00008067          	ret
        tek->sled = freememhead;
    80002214:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002218:	00004797          	auipc	a5,0x4
    8000221c:	8ca7bc23          	sd	a0,-1832(a5) # 80005af0 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    80002220:	00000097          	auipc	ra,0x0
    80002224:	efc080e7          	jalr	-260(ra) # 8000211c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002228:	00000513          	li	a0,0
    8000222c:	fc1ff06f          	j	800021ec <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    80002230:	fff00513          	li	a0,-1
    80002234:	00008067          	ret
    80002238:	fff00513          	li	a0,-1
    8000223c:	00008067          	ret
    80002240:	fff00513          	li	a0,-1
}
    80002244:	00008067          	ret

0000000080002248 <_Z11printStringPKc>:
//

#include "../h/print.hpp"


void printString(char const *string){
    80002248:	fd010113          	addi	sp,sp,-48
    8000224c:	02113423          	sd	ra,40(sp)
    80002250:	02813023          	sd	s0,32(sp)
    80002254:	00913c23          	sd	s1,24(sp)
    80002258:	01213823          	sd	s2,16(sp)
    8000225c:	03010413          	addi	s0,sp,48
    80002260:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002264:	100027f3          	csrr	a5,sstatus
    80002268:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000226c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002270:	00200793          	li	a5,2
    80002274:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string !='\0'){
    80002278:	0004c503          	lbu	a0,0(s1)
    8000227c:	00050a63          	beqz	a0,80002290 <_Z11printStringPKc+0x48>
        __putc(*string);
    80002280:	00002097          	auipc	ra,0x2
    80002284:	1bc080e7          	jalr	444(ra) # 8000443c <__putc>
        string++;
    80002288:	00148493          	addi	s1,s1,1
    while(*string !='\0'){
    8000228c:	fedff06f          	j	80002278 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002290:	0009091b          	sext.w	s2,s2
    80002294:	00297913          	andi	s2,s2,2
    80002298:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000229c:	10092073          	csrs	sstatus,s2
}
    800022a0:	02813083          	ld	ra,40(sp)
    800022a4:	02013403          	ld	s0,32(sp)
    800022a8:	01813483          	ld	s1,24(sp)
    800022ac:	01013903          	ld	s2,16(sp)
    800022b0:	03010113          	addi	sp,sp,48
    800022b4:	00008067          	ret

00000000800022b8 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    800022b8:	fc010113          	addi	sp,sp,-64
    800022bc:	02113c23          	sd	ra,56(sp)
    800022c0:	02813823          	sd	s0,48(sp)
    800022c4:	02913423          	sd	s1,40(sp)
    800022c8:	03213023          	sd	s2,32(sp)
    800022cc:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022d0:	100027f3          	csrr	a5,sstatus
    800022d4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800022d8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022dc:	00200793          	li	a5,2
    800022e0:	1007b073          	csrc	sstatus,a5

    neg = 0;
    if(integer<0){
        neg= 1;
        x= -integer;
    }else x=integer;
    800022e4:	0005051b          	sext.w	a0,a0
    i=0;
    800022e8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x%10];
    800022ec:	00a00613          	li	a2,10
    800022f0:	02c5773b          	remuw	a4,a0,a2
    800022f4:	02071693          	slli	a3,a4,0x20
    800022f8:	0206d693          	srli	a3,a3,0x20
    800022fc:	00003717          	auipc	a4,0x3
    80002300:	e4c70713          	addi	a4,a4,-436 # 80005148 <_ZZ12printIntegermE6digits>
    80002304:	00d70733          	add	a4,a4,a3
    80002308:	00074703          	lbu	a4,0(a4)
    8000230c:	fe040693          	addi	a3,s0,-32
    80002310:	009687b3          	add	a5,a3,s1
    80002314:	0014849b          	addiw	s1,s1,1
    80002318:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    8000231c:	0005071b          	sext.w	a4,a0
    80002320:	02c5553b          	divuw	a0,a0,a2
    80002324:	00900793          	li	a5,9
    80002328:	fce7e2e3          	bltu	a5,a4,800022ec <_Z12printIntegerm+0x34>
    if(neg)
        buf[i++]='-';
    while(--i >=0) __putc(buf[i]);
    8000232c:	fff4849b          	addiw	s1,s1,-1
    80002330:	0004ce63          	bltz	s1,8000234c <_Z12printIntegerm+0x94>
    80002334:	fe040793          	addi	a5,s0,-32
    80002338:	009787b3          	add	a5,a5,s1
    8000233c:	ff07c503          	lbu	a0,-16(a5)
    80002340:	00002097          	auipc	ra,0x2
    80002344:	0fc080e7          	jalr	252(ra) # 8000443c <__putc>
    80002348:	fe5ff06f          	j	8000232c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000234c:	0009091b          	sext.w	s2,s2
    80002350:	00297913          	andi	s2,s2,2
    80002354:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002358:	10092073          	csrs	sstatus,s2

    8000235c:	03813083          	ld	ra,56(sp)
    80002360:	03013403          	ld	s0,48(sp)
    80002364:	02813483          	ld	s1,40(sp)
    80002368:	02013903          	ld	s2,32(sp)
    8000236c:	04010113          	addi	sp,sp,64
    80002370:	00008067          	ret

0000000080002374 <start>:
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00813423          	sd	s0,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	300027f3          	csrr	a5,mstatus
    80002384:	ffffe737          	lui	a4,0xffffe
    80002388:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7a9f>
    8000238c:	00e7f7b3          	and	a5,a5,a4
    80002390:	00001737          	lui	a4,0x1
    80002394:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002398:	00e7e7b3          	or	a5,a5,a4
    8000239c:	30079073          	csrw	mstatus,a5
    800023a0:	00000797          	auipc	a5,0x0
    800023a4:	16078793          	addi	a5,a5,352 # 80002500 <system_main>
    800023a8:	34179073          	csrw	mepc,a5
    800023ac:	00000793          	li	a5,0
    800023b0:	18079073          	csrw	satp,a5
    800023b4:	000107b7          	lui	a5,0x10
    800023b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023bc:	30279073          	csrw	medeleg,a5
    800023c0:	30379073          	csrw	mideleg,a5
    800023c4:	104027f3          	csrr	a5,sie
    800023c8:	2227e793          	ori	a5,a5,546
    800023cc:	10479073          	csrw	sie,a5
    800023d0:	fff00793          	li	a5,-1
    800023d4:	00a7d793          	srli	a5,a5,0xa
    800023d8:	3b079073          	csrw	pmpaddr0,a5
    800023dc:	00f00793          	li	a5,15
    800023e0:	3a079073          	csrw	pmpcfg0,a5
    800023e4:	f14027f3          	csrr	a5,mhartid
    800023e8:	0200c737          	lui	a4,0x200c
    800023ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800023f0:	0007869b          	sext.w	a3,a5
    800023f4:	00269713          	slli	a4,a3,0x2
    800023f8:	000f4637          	lui	a2,0xf4
    800023fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002400:	00d70733          	add	a4,a4,a3
    80002404:	0037979b          	slliw	a5,a5,0x3
    80002408:	020046b7          	lui	a3,0x2004
    8000240c:	00d787b3          	add	a5,a5,a3
    80002410:	00c585b3          	add	a1,a1,a2
    80002414:	00371693          	slli	a3,a4,0x3
    80002418:	00003717          	auipc	a4,0x3
    8000241c:	6e870713          	addi	a4,a4,1768 # 80005b00 <timer_scratch>
    80002420:	00b7b023          	sd	a1,0(a5)
    80002424:	00d70733          	add	a4,a4,a3
    80002428:	00f73c23          	sd	a5,24(a4)
    8000242c:	02c73023          	sd	a2,32(a4)
    80002430:	34071073          	csrw	mscratch,a4
    80002434:	00000797          	auipc	a5,0x0
    80002438:	6ec78793          	addi	a5,a5,1772 # 80002b20 <timervec>
    8000243c:	30579073          	csrw	mtvec,a5
    80002440:	300027f3          	csrr	a5,mstatus
    80002444:	0087e793          	ori	a5,a5,8
    80002448:	30079073          	csrw	mstatus,a5
    8000244c:	304027f3          	csrr	a5,mie
    80002450:	0807e793          	ori	a5,a5,128
    80002454:	30479073          	csrw	mie,a5
    80002458:	f14027f3          	csrr	a5,mhartid
    8000245c:	0007879b          	sext.w	a5,a5
    80002460:	00078213          	mv	tp,a5
    80002464:	30200073          	mret
    80002468:	00813403          	ld	s0,8(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <timerinit>:
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00813423          	sd	s0,8(sp)
    8000247c:	01010413          	addi	s0,sp,16
    80002480:	f14027f3          	csrr	a5,mhartid
    80002484:	0200c737          	lui	a4,0x200c
    80002488:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000248c:	0007869b          	sext.w	a3,a5
    80002490:	00269713          	slli	a4,a3,0x2
    80002494:	000f4637          	lui	a2,0xf4
    80002498:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000249c:	00d70733          	add	a4,a4,a3
    800024a0:	0037979b          	slliw	a5,a5,0x3
    800024a4:	020046b7          	lui	a3,0x2004
    800024a8:	00d787b3          	add	a5,a5,a3
    800024ac:	00c585b3          	add	a1,a1,a2
    800024b0:	00371693          	slli	a3,a4,0x3
    800024b4:	00003717          	auipc	a4,0x3
    800024b8:	64c70713          	addi	a4,a4,1612 # 80005b00 <timer_scratch>
    800024bc:	00b7b023          	sd	a1,0(a5)
    800024c0:	00d70733          	add	a4,a4,a3
    800024c4:	00f73c23          	sd	a5,24(a4)
    800024c8:	02c73023          	sd	a2,32(a4)
    800024cc:	34071073          	csrw	mscratch,a4
    800024d0:	00000797          	auipc	a5,0x0
    800024d4:	65078793          	addi	a5,a5,1616 # 80002b20 <timervec>
    800024d8:	30579073          	csrw	mtvec,a5
    800024dc:	300027f3          	csrr	a5,mstatus
    800024e0:	0087e793          	ori	a5,a5,8
    800024e4:	30079073          	csrw	mstatus,a5
    800024e8:	304027f3          	csrr	a5,mie
    800024ec:	0807e793          	ori	a5,a5,128
    800024f0:	30479073          	csrw	mie,a5
    800024f4:	00813403          	ld	s0,8(sp)
    800024f8:	01010113          	addi	sp,sp,16
    800024fc:	00008067          	ret

0000000080002500 <system_main>:
    80002500:	fe010113          	addi	sp,sp,-32
    80002504:	00813823          	sd	s0,16(sp)
    80002508:	00913423          	sd	s1,8(sp)
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	02010413          	addi	s0,sp,32
    80002514:	00000097          	auipc	ra,0x0
    80002518:	0c4080e7          	jalr	196(ra) # 800025d8 <cpuid>
    8000251c:	00003497          	auipc	s1,0x3
    80002520:	58448493          	addi	s1,s1,1412 # 80005aa0 <started>
    80002524:	02050263          	beqz	a0,80002548 <system_main+0x48>
    80002528:	0004a783          	lw	a5,0(s1)
    8000252c:	0007879b          	sext.w	a5,a5
    80002530:	fe078ce3          	beqz	a5,80002528 <system_main+0x28>
    80002534:	0ff0000f          	fence
    80002538:	00003517          	auipc	a0,0x3
    8000253c:	c5050513          	addi	a0,a0,-944 # 80005188 <_ZZ12printIntegermE6digits+0x40>
    80002540:	00001097          	auipc	ra,0x1
    80002544:	a7c080e7          	jalr	-1412(ra) # 80002fbc <panic>
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	9d0080e7          	jalr	-1584(ra) # 80002f18 <consoleinit>
    80002550:	00001097          	auipc	ra,0x1
    80002554:	15c080e7          	jalr	348(ra) # 800036ac <printfinit>
    80002558:	00003517          	auipc	a0,0x3
    8000255c:	b9850513          	addi	a0,a0,-1128 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002560:	00001097          	auipc	ra,0x1
    80002564:	ab8080e7          	jalr	-1352(ra) # 80003018 <__printf>
    80002568:	00003517          	auipc	a0,0x3
    8000256c:	bf050513          	addi	a0,a0,-1040 # 80005158 <_ZZ12printIntegermE6digits+0x10>
    80002570:	00001097          	auipc	ra,0x1
    80002574:	aa8080e7          	jalr	-1368(ra) # 80003018 <__printf>
    80002578:	00003517          	auipc	a0,0x3
    8000257c:	b7850513          	addi	a0,a0,-1160 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002580:	00001097          	auipc	ra,0x1
    80002584:	a98080e7          	jalr	-1384(ra) # 80003018 <__printf>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	4b0080e7          	jalr	1200(ra) # 80003a38 <kinit>
    80002590:	00000097          	auipc	ra,0x0
    80002594:	148080e7          	jalr	328(ra) # 800026d8 <trapinit>
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	16c080e7          	jalr	364(ra) # 80002704 <trapinithart>
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	5c0080e7          	jalr	1472(ra) # 80002b60 <plicinit>
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	5e0080e7          	jalr	1504(ra) # 80002b88 <plicinithart>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	078080e7          	jalr	120(ra) # 80002628 <userinit>
    800025b8:	0ff0000f          	fence
    800025bc:	00100793          	li	a5,1
    800025c0:	00003517          	auipc	a0,0x3
    800025c4:	bb050513          	addi	a0,a0,-1104 # 80005170 <_ZZ12printIntegermE6digits+0x28>
    800025c8:	00f4a023          	sw	a5,0(s1)
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	a4c080e7          	jalr	-1460(ra) # 80003018 <__printf>
    800025d4:	0000006f          	j	800025d4 <system_main+0xd4>

00000000800025d8 <cpuid>:
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00813423          	sd	s0,8(sp)
    800025e0:	01010413          	addi	s0,sp,16
    800025e4:	00020513          	mv	a0,tp
    800025e8:	00813403          	ld	s0,8(sp)
    800025ec:	0005051b          	sext.w	a0,a0
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <mycpu>:
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813423          	sd	s0,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	00020793          	mv	a5,tp
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	0007879b          	sext.w	a5,a5
    80002610:	00779793          	slli	a5,a5,0x7
    80002614:	00004517          	auipc	a0,0x4
    80002618:	51c50513          	addi	a0,a0,1308 # 80006b30 <cpus>
    8000261c:	00f50533          	add	a0,a0,a5
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <userinit>:
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00813423          	sd	s0,8(sp)
    80002630:	01010413          	addi	s0,sp,16
    80002634:	00813403          	ld	s0,8(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	fffff317          	auipc	t1,0xfffff
    80002640:	0cc30067          	jr	204(t1) # 80001708 <main>

0000000080002644 <either_copyout>:
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    80002654:	02051663          	bnez	a0,80002680 <either_copyout+0x3c>
    80002658:	00058513          	mv	a0,a1
    8000265c:	00060593          	mv	a1,a2
    80002660:	0006861b          	sext.w	a2,a3
    80002664:	00002097          	auipc	ra,0x2
    80002668:	c60080e7          	jalr	-928(ra) # 800042c4 <__memmove>
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	00000513          	li	a0,0
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret
    80002680:	00003517          	auipc	a0,0x3
    80002684:	b3050513          	addi	a0,a0,-1232 # 800051b0 <_ZZ12printIntegermE6digits+0x68>
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	934080e7          	jalr	-1740(ra) # 80002fbc <panic>

0000000080002690 <either_copyin>:
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00813023          	sd	s0,0(sp)
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	01010413          	addi	s0,sp,16
    800026a0:	02059463          	bnez	a1,800026c8 <either_copyin+0x38>
    800026a4:	00060593          	mv	a1,a2
    800026a8:	0006861b          	sext.w	a2,a3
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	c18080e7          	jalr	-1000(ra) # 800042c4 <__memmove>
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	00000513          	li	a0,0
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	b1050513          	addi	a0,a0,-1264 # 800051d8 <_ZZ12printIntegermE6digits+0x90>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	8ec080e7          	jalr	-1812(ra) # 80002fbc <panic>

00000000800026d8 <trapinit>:
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00813423          	sd	s0,8(sp)
    800026e0:	01010413          	addi	s0,sp,16
    800026e4:	00813403          	ld	s0,8(sp)
    800026e8:	00003597          	auipc	a1,0x3
    800026ec:	b1858593          	addi	a1,a1,-1256 # 80005200 <_ZZ12printIntegermE6digits+0xb8>
    800026f0:	00004517          	auipc	a0,0x4
    800026f4:	4c050513          	addi	a0,a0,1216 # 80006bb0 <tickslock>
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00001317          	auipc	t1,0x1
    80002700:	5cc30067          	jr	1484(t1) # 80003cc8 <initlock>

0000000080002704 <trapinithart>:
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813423          	sd	s0,8(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	00000797          	auipc	a5,0x0
    80002714:	30078793          	addi	a5,a5,768 # 80002a10 <kernelvec>
    80002718:	10579073          	csrw	stvec,a5
    8000271c:	00813403          	ld	s0,8(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <usertrap>:
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00813423          	sd	s0,8(sp)
    80002730:	01010413          	addi	s0,sp,16
    80002734:	00813403          	ld	s0,8(sp)
    80002738:	01010113          	addi	sp,sp,16
    8000273c:	00008067          	ret

0000000080002740 <usertrapret>:
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00813423          	sd	s0,8(sp)
    80002748:	01010413          	addi	s0,sp,16
    8000274c:	00813403          	ld	s0,8(sp)
    80002750:	01010113          	addi	sp,sp,16
    80002754:	00008067          	ret

0000000080002758 <kerneltrap>:
    80002758:	fe010113          	addi	sp,sp,-32
    8000275c:	00813823          	sd	s0,16(sp)
    80002760:	00113c23          	sd	ra,24(sp)
    80002764:	00913423          	sd	s1,8(sp)
    80002768:	02010413          	addi	s0,sp,32
    8000276c:	142025f3          	csrr	a1,scause
    80002770:	100027f3          	csrr	a5,sstatus
    80002774:	0027f793          	andi	a5,a5,2
    80002778:	10079c63          	bnez	a5,80002890 <kerneltrap+0x138>
    8000277c:	142027f3          	csrr	a5,scause
    80002780:	0207ce63          	bltz	a5,800027bc <kerneltrap+0x64>
    80002784:	00003517          	auipc	a0,0x3
    80002788:	ac450513          	addi	a0,a0,-1340 # 80005248 <_ZZ12printIntegermE6digits+0x100>
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	88c080e7          	jalr	-1908(ra) # 80003018 <__printf>
    80002794:	141025f3          	csrr	a1,sepc
    80002798:	14302673          	csrr	a2,stval
    8000279c:	00003517          	auipc	a0,0x3
    800027a0:	abc50513          	addi	a0,a0,-1348 # 80005258 <_ZZ12printIntegermE6digits+0x110>
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	874080e7          	jalr	-1932(ra) # 80003018 <__printf>
    800027ac:	00003517          	auipc	a0,0x3
    800027b0:	ac450513          	addi	a0,a0,-1340 # 80005270 <_ZZ12printIntegermE6digits+0x128>
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	808080e7          	jalr	-2040(ra) # 80002fbc <panic>
    800027bc:	0ff7f713          	andi	a4,a5,255
    800027c0:	00900693          	li	a3,9
    800027c4:	04d70063          	beq	a4,a3,80002804 <kerneltrap+0xac>
    800027c8:	fff00713          	li	a4,-1
    800027cc:	03f71713          	slli	a4,a4,0x3f
    800027d0:	00170713          	addi	a4,a4,1
    800027d4:	fae798e3          	bne	a5,a4,80002784 <kerneltrap+0x2c>
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	e00080e7          	jalr	-512(ra) # 800025d8 <cpuid>
    800027e0:	06050663          	beqz	a0,8000284c <kerneltrap+0xf4>
    800027e4:	144027f3          	csrr	a5,sip
    800027e8:	ffd7f793          	andi	a5,a5,-3
    800027ec:	14479073          	csrw	sip,a5
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	01013403          	ld	s0,16(sp)
    800027f8:	00813483          	ld	s1,8(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret
    80002804:	00000097          	auipc	ra,0x0
    80002808:	3d0080e7          	jalr	976(ra) # 80002bd4 <plic_claim>
    8000280c:	00a00793          	li	a5,10
    80002810:	00050493          	mv	s1,a0
    80002814:	06f50863          	beq	a0,a5,80002884 <kerneltrap+0x12c>
    80002818:	fc050ce3          	beqz	a0,800027f0 <kerneltrap+0x98>
    8000281c:	00050593          	mv	a1,a0
    80002820:	00003517          	auipc	a0,0x3
    80002824:	a0850513          	addi	a0,a0,-1528 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	7f0080e7          	jalr	2032(ra) # 80003018 <__printf>
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	01813083          	ld	ra,24(sp)
    80002838:	00048513          	mv	a0,s1
    8000283c:	00813483          	ld	s1,8(sp)
    80002840:	02010113          	addi	sp,sp,32
    80002844:	00000317          	auipc	t1,0x0
    80002848:	3c830067          	jr	968(t1) # 80002c0c <plic_complete>
    8000284c:	00004517          	auipc	a0,0x4
    80002850:	36450513          	addi	a0,a0,868 # 80006bb0 <tickslock>
    80002854:	00001097          	auipc	ra,0x1
    80002858:	498080e7          	jalr	1176(ra) # 80003cec <acquire>
    8000285c:	00003717          	auipc	a4,0x3
    80002860:	24870713          	addi	a4,a4,584 # 80005aa4 <ticks>
    80002864:	00072783          	lw	a5,0(a4)
    80002868:	00004517          	auipc	a0,0x4
    8000286c:	34850513          	addi	a0,a0,840 # 80006bb0 <tickslock>
    80002870:	0017879b          	addiw	a5,a5,1
    80002874:	00f72023          	sw	a5,0(a4)
    80002878:	00001097          	auipc	ra,0x1
    8000287c:	540080e7          	jalr	1344(ra) # 80003db8 <release>
    80002880:	f65ff06f          	j	800027e4 <kerneltrap+0x8c>
    80002884:	00001097          	auipc	ra,0x1
    80002888:	09c080e7          	jalr	156(ra) # 80003920 <uartintr>
    8000288c:	fa5ff06f          	j	80002830 <kerneltrap+0xd8>
    80002890:	00003517          	auipc	a0,0x3
    80002894:	97850513          	addi	a0,a0,-1672 # 80005208 <_ZZ12printIntegermE6digits+0xc0>
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	724080e7          	jalr	1828(ra) # 80002fbc <panic>

00000000800028a0 <clockintr>:
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00813823          	sd	s0,16(sp)
    800028a8:	00913423          	sd	s1,8(sp)
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	02010413          	addi	s0,sp,32
    800028b4:	00004497          	auipc	s1,0x4
    800028b8:	2fc48493          	addi	s1,s1,764 # 80006bb0 <tickslock>
    800028bc:	00048513          	mv	a0,s1
    800028c0:	00001097          	auipc	ra,0x1
    800028c4:	42c080e7          	jalr	1068(ra) # 80003cec <acquire>
    800028c8:	00003717          	auipc	a4,0x3
    800028cc:	1dc70713          	addi	a4,a4,476 # 80005aa4 <ticks>
    800028d0:	00072783          	lw	a5,0(a4)
    800028d4:	01013403          	ld	s0,16(sp)
    800028d8:	01813083          	ld	ra,24(sp)
    800028dc:	00048513          	mv	a0,s1
    800028e0:	0017879b          	addiw	a5,a5,1
    800028e4:	00813483          	ld	s1,8(sp)
    800028e8:	00f72023          	sw	a5,0(a4)
    800028ec:	02010113          	addi	sp,sp,32
    800028f0:	00001317          	auipc	t1,0x1
    800028f4:	4c830067          	jr	1224(t1) # 80003db8 <release>

00000000800028f8 <devintr>:
    800028f8:	142027f3          	csrr	a5,scause
    800028fc:	00000513          	li	a0,0
    80002900:	0007c463          	bltz	a5,80002908 <devintr+0x10>
    80002904:	00008067          	ret
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00813823          	sd	s0,16(sp)
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	0ff7f713          	andi	a4,a5,255
    80002920:	00900693          	li	a3,9
    80002924:	04d70c63          	beq	a4,a3,8000297c <devintr+0x84>
    80002928:	fff00713          	li	a4,-1
    8000292c:	03f71713          	slli	a4,a4,0x3f
    80002930:	00170713          	addi	a4,a4,1
    80002934:	00e78c63          	beq	a5,a4,8000294c <devintr+0x54>
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	c8c080e7          	jalr	-884(ra) # 800025d8 <cpuid>
    80002954:	06050663          	beqz	a0,800029c0 <devintr+0xc8>
    80002958:	144027f3          	csrr	a5,sip
    8000295c:	ffd7f793          	andi	a5,a5,-3
    80002960:	14479073          	csrw	sip,a5
    80002964:	01813083          	ld	ra,24(sp)
    80002968:	01013403          	ld	s0,16(sp)
    8000296c:	00813483          	ld	s1,8(sp)
    80002970:	00200513          	li	a0,2
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00008067          	ret
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	258080e7          	jalr	600(ra) # 80002bd4 <plic_claim>
    80002984:	00a00793          	li	a5,10
    80002988:	00050493          	mv	s1,a0
    8000298c:	06f50663          	beq	a0,a5,800029f8 <devintr+0x100>
    80002990:	00100513          	li	a0,1
    80002994:	fa0482e3          	beqz	s1,80002938 <devintr+0x40>
    80002998:	00048593          	mv	a1,s1
    8000299c:	00003517          	auipc	a0,0x3
    800029a0:	88c50513          	addi	a0,a0,-1908 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	674080e7          	jalr	1652(ra) # 80003018 <__printf>
    800029ac:	00048513          	mv	a0,s1
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	25c080e7          	jalr	604(ra) # 80002c0c <plic_complete>
    800029b8:	00100513          	li	a0,1
    800029bc:	f7dff06f          	j	80002938 <devintr+0x40>
    800029c0:	00004517          	auipc	a0,0x4
    800029c4:	1f050513          	addi	a0,a0,496 # 80006bb0 <tickslock>
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	324080e7          	jalr	804(ra) # 80003cec <acquire>
    800029d0:	00003717          	auipc	a4,0x3
    800029d4:	0d470713          	addi	a4,a4,212 # 80005aa4 <ticks>
    800029d8:	00072783          	lw	a5,0(a4)
    800029dc:	00004517          	auipc	a0,0x4
    800029e0:	1d450513          	addi	a0,a0,468 # 80006bb0 <tickslock>
    800029e4:	0017879b          	addiw	a5,a5,1
    800029e8:	00f72023          	sw	a5,0(a4)
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	3cc080e7          	jalr	972(ra) # 80003db8 <release>
    800029f4:	f65ff06f          	j	80002958 <devintr+0x60>
    800029f8:	00001097          	auipc	ra,0x1
    800029fc:	f28080e7          	jalr	-216(ra) # 80003920 <uartintr>
    80002a00:	fadff06f          	j	800029ac <devintr+0xb4>
	...

0000000080002a10 <kernelvec>:
    80002a10:	f0010113          	addi	sp,sp,-256
    80002a14:	00113023          	sd	ra,0(sp)
    80002a18:	00213423          	sd	sp,8(sp)
    80002a1c:	00313823          	sd	gp,16(sp)
    80002a20:	00413c23          	sd	tp,24(sp)
    80002a24:	02513023          	sd	t0,32(sp)
    80002a28:	02613423          	sd	t1,40(sp)
    80002a2c:	02713823          	sd	t2,48(sp)
    80002a30:	02813c23          	sd	s0,56(sp)
    80002a34:	04913023          	sd	s1,64(sp)
    80002a38:	04a13423          	sd	a0,72(sp)
    80002a3c:	04b13823          	sd	a1,80(sp)
    80002a40:	04c13c23          	sd	a2,88(sp)
    80002a44:	06d13023          	sd	a3,96(sp)
    80002a48:	06e13423          	sd	a4,104(sp)
    80002a4c:	06f13823          	sd	a5,112(sp)
    80002a50:	07013c23          	sd	a6,120(sp)
    80002a54:	09113023          	sd	a7,128(sp)
    80002a58:	09213423          	sd	s2,136(sp)
    80002a5c:	09313823          	sd	s3,144(sp)
    80002a60:	09413c23          	sd	s4,152(sp)
    80002a64:	0b513023          	sd	s5,160(sp)
    80002a68:	0b613423          	sd	s6,168(sp)
    80002a6c:	0b713823          	sd	s7,176(sp)
    80002a70:	0b813c23          	sd	s8,184(sp)
    80002a74:	0d913023          	sd	s9,192(sp)
    80002a78:	0da13423          	sd	s10,200(sp)
    80002a7c:	0db13823          	sd	s11,208(sp)
    80002a80:	0dc13c23          	sd	t3,216(sp)
    80002a84:	0fd13023          	sd	t4,224(sp)
    80002a88:	0fe13423          	sd	t5,232(sp)
    80002a8c:	0ff13823          	sd	t6,240(sp)
    80002a90:	cc9ff0ef          	jal	ra,80002758 <kerneltrap>
    80002a94:	00013083          	ld	ra,0(sp)
    80002a98:	00813103          	ld	sp,8(sp)
    80002a9c:	01013183          	ld	gp,16(sp)
    80002aa0:	02013283          	ld	t0,32(sp)
    80002aa4:	02813303          	ld	t1,40(sp)
    80002aa8:	03013383          	ld	t2,48(sp)
    80002aac:	03813403          	ld	s0,56(sp)
    80002ab0:	04013483          	ld	s1,64(sp)
    80002ab4:	04813503          	ld	a0,72(sp)
    80002ab8:	05013583          	ld	a1,80(sp)
    80002abc:	05813603          	ld	a2,88(sp)
    80002ac0:	06013683          	ld	a3,96(sp)
    80002ac4:	06813703          	ld	a4,104(sp)
    80002ac8:	07013783          	ld	a5,112(sp)
    80002acc:	07813803          	ld	a6,120(sp)
    80002ad0:	08013883          	ld	a7,128(sp)
    80002ad4:	08813903          	ld	s2,136(sp)
    80002ad8:	09013983          	ld	s3,144(sp)
    80002adc:	09813a03          	ld	s4,152(sp)
    80002ae0:	0a013a83          	ld	s5,160(sp)
    80002ae4:	0a813b03          	ld	s6,168(sp)
    80002ae8:	0b013b83          	ld	s7,176(sp)
    80002aec:	0b813c03          	ld	s8,184(sp)
    80002af0:	0c013c83          	ld	s9,192(sp)
    80002af4:	0c813d03          	ld	s10,200(sp)
    80002af8:	0d013d83          	ld	s11,208(sp)
    80002afc:	0d813e03          	ld	t3,216(sp)
    80002b00:	0e013e83          	ld	t4,224(sp)
    80002b04:	0e813f03          	ld	t5,232(sp)
    80002b08:	0f013f83          	ld	t6,240(sp)
    80002b0c:	10010113          	addi	sp,sp,256
    80002b10:	10200073          	sret
    80002b14:	00000013          	nop
    80002b18:	00000013          	nop
    80002b1c:	00000013          	nop

0000000080002b20 <timervec>:
    80002b20:	34051573          	csrrw	a0,mscratch,a0
    80002b24:	00b53023          	sd	a1,0(a0)
    80002b28:	00c53423          	sd	a2,8(a0)
    80002b2c:	00d53823          	sd	a3,16(a0)
    80002b30:	01853583          	ld	a1,24(a0)
    80002b34:	02053603          	ld	a2,32(a0)
    80002b38:	0005b683          	ld	a3,0(a1)
    80002b3c:	00c686b3          	add	a3,a3,a2
    80002b40:	00d5b023          	sd	a3,0(a1)
    80002b44:	00200593          	li	a1,2
    80002b48:	14459073          	csrw	sip,a1
    80002b4c:	01053683          	ld	a3,16(a0)
    80002b50:	00853603          	ld	a2,8(a0)
    80002b54:	00053583          	ld	a1,0(a0)
    80002b58:	34051573          	csrrw	a0,mscratch,a0
    80002b5c:	30200073          	mret

0000000080002b60 <plicinit>:
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00813423          	sd	s0,8(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	00813403          	ld	s0,8(sp)
    80002b70:	0c0007b7          	lui	a5,0xc000
    80002b74:	00100713          	li	a4,1
    80002b78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002b7c:	00e7a223          	sw	a4,4(a5)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <plicinithart>:
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00813023          	sd	s0,0(sp)
    80002b90:	00113423          	sd	ra,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	a40080e7          	jalr	-1472(ra) # 800025d8 <cpuid>
    80002ba0:	0085171b          	slliw	a4,a0,0x8
    80002ba4:	0c0027b7          	lui	a5,0xc002
    80002ba8:	00e787b3          	add	a5,a5,a4
    80002bac:	40200713          	li	a4,1026
    80002bb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	00d5151b          	slliw	a0,a0,0xd
    80002bc0:	0c2017b7          	lui	a5,0xc201
    80002bc4:	00a78533          	add	a0,a5,a0
    80002bc8:	00052023          	sw	zero,0(a0)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <plic_claim>:
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813023          	sd	s0,0(sp)
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	01010413          	addi	s0,sp,16
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	9f4080e7          	jalr	-1548(ra) # 800025d8 <cpuid>
    80002bec:	00813083          	ld	ra,8(sp)
    80002bf0:	00013403          	ld	s0,0(sp)
    80002bf4:	00d5151b          	slliw	a0,a0,0xd
    80002bf8:	0c2017b7          	lui	a5,0xc201
    80002bfc:	00a78533          	add	a0,a5,a0
    80002c00:	00452503          	lw	a0,4(a0)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <plic_complete>:
    80002c0c:	fe010113          	addi	sp,sp,-32
    80002c10:	00813823          	sd	s0,16(sp)
    80002c14:	00913423          	sd	s1,8(sp)
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	02010413          	addi	s0,sp,32
    80002c20:	00050493          	mv	s1,a0
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	9b4080e7          	jalr	-1612(ra) # 800025d8 <cpuid>
    80002c2c:	01813083          	ld	ra,24(sp)
    80002c30:	01013403          	ld	s0,16(sp)
    80002c34:	00d5179b          	slliw	a5,a0,0xd
    80002c38:	0c201737          	lui	a4,0xc201
    80002c3c:	00f707b3          	add	a5,a4,a5
    80002c40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002c44:	00813483          	ld	s1,8(sp)
    80002c48:	02010113          	addi	sp,sp,32
    80002c4c:	00008067          	ret

0000000080002c50 <consolewrite>:
    80002c50:	fb010113          	addi	sp,sp,-80
    80002c54:	04813023          	sd	s0,64(sp)
    80002c58:	04113423          	sd	ra,72(sp)
    80002c5c:	02913c23          	sd	s1,56(sp)
    80002c60:	03213823          	sd	s2,48(sp)
    80002c64:	03313423          	sd	s3,40(sp)
    80002c68:	03413023          	sd	s4,32(sp)
    80002c6c:	01513c23          	sd	s5,24(sp)
    80002c70:	05010413          	addi	s0,sp,80
    80002c74:	06c05c63          	blez	a2,80002cec <consolewrite+0x9c>
    80002c78:	00060993          	mv	s3,a2
    80002c7c:	00050a13          	mv	s4,a0
    80002c80:	00058493          	mv	s1,a1
    80002c84:	00000913          	li	s2,0
    80002c88:	fff00a93          	li	s5,-1
    80002c8c:	01c0006f          	j	80002ca8 <consolewrite+0x58>
    80002c90:	fbf44503          	lbu	a0,-65(s0)
    80002c94:	0019091b          	addiw	s2,s2,1
    80002c98:	00148493          	addi	s1,s1,1
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	a9c080e7          	jalr	-1380(ra) # 80003738 <uartputc>
    80002ca4:	03298063          	beq	s3,s2,80002cc4 <consolewrite+0x74>
    80002ca8:	00048613          	mv	a2,s1
    80002cac:	00100693          	li	a3,1
    80002cb0:	000a0593          	mv	a1,s4
    80002cb4:	fbf40513          	addi	a0,s0,-65
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	9d8080e7          	jalr	-1576(ra) # 80002690 <either_copyin>
    80002cc0:	fd5518e3          	bne	a0,s5,80002c90 <consolewrite+0x40>
    80002cc4:	04813083          	ld	ra,72(sp)
    80002cc8:	04013403          	ld	s0,64(sp)
    80002ccc:	03813483          	ld	s1,56(sp)
    80002cd0:	02813983          	ld	s3,40(sp)
    80002cd4:	02013a03          	ld	s4,32(sp)
    80002cd8:	01813a83          	ld	s5,24(sp)
    80002cdc:	00090513          	mv	a0,s2
    80002ce0:	03013903          	ld	s2,48(sp)
    80002ce4:	05010113          	addi	sp,sp,80
    80002ce8:	00008067          	ret
    80002cec:	00000913          	li	s2,0
    80002cf0:	fd5ff06f          	j	80002cc4 <consolewrite+0x74>

0000000080002cf4 <consoleread>:
    80002cf4:	f9010113          	addi	sp,sp,-112
    80002cf8:	06813023          	sd	s0,96(sp)
    80002cfc:	04913c23          	sd	s1,88(sp)
    80002d00:	05213823          	sd	s2,80(sp)
    80002d04:	05313423          	sd	s3,72(sp)
    80002d08:	05413023          	sd	s4,64(sp)
    80002d0c:	03513c23          	sd	s5,56(sp)
    80002d10:	03613823          	sd	s6,48(sp)
    80002d14:	03713423          	sd	s7,40(sp)
    80002d18:	03813023          	sd	s8,32(sp)
    80002d1c:	06113423          	sd	ra,104(sp)
    80002d20:	01913c23          	sd	s9,24(sp)
    80002d24:	07010413          	addi	s0,sp,112
    80002d28:	00060b93          	mv	s7,a2
    80002d2c:	00050913          	mv	s2,a0
    80002d30:	00058c13          	mv	s8,a1
    80002d34:	00060b1b          	sext.w	s6,a2
    80002d38:	00004497          	auipc	s1,0x4
    80002d3c:	ea048493          	addi	s1,s1,-352 # 80006bd8 <cons>
    80002d40:	00400993          	li	s3,4
    80002d44:	fff00a13          	li	s4,-1
    80002d48:	00a00a93          	li	s5,10
    80002d4c:	05705e63          	blez	s7,80002da8 <consoleread+0xb4>
    80002d50:	09c4a703          	lw	a4,156(s1)
    80002d54:	0984a783          	lw	a5,152(s1)
    80002d58:	0007071b          	sext.w	a4,a4
    80002d5c:	08e78463          	beq	a5,a4,80002de4 <consoleread+0xf0>
    80002d60:	07f7f713          	andi	a4,a5,127
    80002d64:	00e48733          	add	a4,s1,a4
    80002d68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002d6c:	0017869b          	addiw	a3,a5,1
    80002d70:	08d4ac23          	sw	a3,152(s1)
    80002d74:	00070c9b          	sext.w	s9,a4
    80002d78:	0b370663          	beq	a4,s3,80002e24 <consoleread+0x130>
    80002d7c:	00100693          	li	a3,1
    80002d80:	f9f40613          	addi	a2,s0,-97
    80002d84:	000c0593          	mv	a1,s8
    80002d88:	00090513          	mv	a0,s2
    80002d8c:	f8e40fa3          	sb	a4,-97(s0)
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	8b4080e7          	jalr	-1868(ra) # 80002644 <either_copyout>
    80002d98:	01450863          	beq	a0,s4,80002da8 <consoleread+0xb4>
    80002d9c:	001c0c13          	addi	s8,s8,1
    80002da0:	fffb8b9b          	addiw	s7,s7,-1
    80002da4:	fb5c94e3          	bne	s9,s5,80002d4c <consoleread+0x58>
    80002da8:	000b851b          	sext.w	a0,s7
    80002dac:	06813083          	ld	ra,104(sp)
    80002db0:	06013403          	ld	s0,96(sp)
    80002db4:	05813483          	ld	s1,88(sp)
    80002db8:	05013903          	ld	s2,80(sp)
    80002dbc:	04813983          	ld	s3,72(sp)
    80002dc0:	04013a03          	ld	s4,64(sp)
    80002dc4:	03813a83          	ld	s5,56(sp)
    80002dc8:	02813b83          	ld	s7,40(sp)
    80002dcc:	02013c03          	ld	s8,32(sp)
    80002dd0:	01813c83          	ld	s9,24(sp)
    80002dd4:	40ab053b          	subw	a0,s6,a0
    80002dd8:	03013b03          	ld	s6,48(sp)
    80002ddc:	07010113          	addi	sp,sp,112
    80002de0:	00008067          	ret
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	1d8080e7          	jalr	472(ra) # 80003fbc <push_on>
    80002dec:	0984a703          	lw	a4,152(s1)
    80002df0:	09c4a783          	lw	a5,156(s1)
    80002df4:	0007879b          	sext.w	a5,a5
    80002df8:	fef70ce3          	beq	a4,a5,80002df0 <consoleread+0xfc>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	234080e7          	jalr	564(ra) # 80004030 <pop_on>
    80002e04:	0984a783          	lw	a5,152(s1)
    80002e08:	07f7f713          	andi	a4,a5,127
    80002e0c:	00e48733          	add	a4,s1,a4
    80002e10:	01874703          	lbu	a4,24(a4)
    80002e14:	0017869b          	addiw	a3,a5,1
    80002e18:	08d4ac23          	sw	a3,152(s1)
    80002e1c:	00070c9b          	sext.w	s9,a4
    80002e20:	f5371ee3          	bne	a4,s3,80002d7c <consoleread+0x88>
    80002e24:	000b851b          	sext.w	a0,s7
    80002e28:	f96bf2e3          	bgeu	s7,s6,80002dac <consoleread+0xb8>
    80002e2c:	08f4ac23          	sw	a5,152(s1)
    80002e30:	f7dff06f          	j	80002dac <consoleread+0xb8>

0000000080002e34 <consputc>:
    80002e34:	10000793          	li	a5,256
    80002e38:	00f50663          	beq	a0,a5,80002e44 <consputc+0x10>
    80002e3c:	00001317          	auipc	t1,0x1
    80002e40:	9f430067          	jr	-1548(t1) # 80003830 <uartputc_sync>
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00113423          	sd	ra,8(sp)
    80002e4c:	00813023          	sd	s0,0(sp)
    80002e50:	01010413          	addi	s0,sp,16
    80002e54:	00800513          	li	a0,8
    80002e58:	00001097          	auipc	ra,0x1
    80002e5c:	9d8080e7          	jalr	-1576(ra) # 80003830 <uartputc_sync>
    80002e60:	02000513          	li	a0,32
    80002e64:	00001097          	auipc	ra,0x1
    80002e68:	9cc080e7          	jalr	-1588(ra) # 80003830 <uartputc_sync>
    80002e6c:	00013403          	ld	s0,0(sp)
    80002e70:	00813083          	ld	ra,8(sp)
    80002e74:	00800513          	li	a0,8
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00001317          	auipc	t1,0x1
    80002e80:	9b430067          	jr	-1612(t1) # 80003830 <uartputc_sync>

0000000080002e84 <consoleintr>:
    80002e84:	fe010113          	addi	sp,sp,-32
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	01213023          	sd	s2,0(sp)
    80002e94:	00113c23          	sd	ra,24(sp)
    80002e98:	02010413          	addi	s0,sp,32
    80002e9c:	00004917          	auipc	s2,0x4
    80002ea0:	d3c90913          	addi	s2,s2,-708 # 80006bd8 <cons>
    80002ea4:	00050493          	mv	s1,a0
    80002ea8:	00090513          	mv	a0,s2
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	e40080e7          	jalr	-448(ra) # 80003cec <acquire>
    80002eb4:	02048c63          	beqz	s1,80002eec <consoleintr+0x68>
    80002eb8:	0a092783          	lw	a5,160(s2)
    80002ebc:	09892703          	lw	a4,152(s2)
    80002ec0:	07f00693          	li	a3,127
    80002ec4:	40e7873b          	subw	a4,a5,a4
    80002ec8:	02e6e263          	bltu	a3,a4,80002eec <consoleintr+0x68>
    80002ecc:	00d00713          	li	a4,13
    80002ed0:	04e48063          	beq	s1,a4,80002f10 <consoleintr+0x8c>
    80002ed4:	07f7f713          	andi	a4,a5,127
    80002ed8:	00e90733          	add	a4,s2,a4
    80002edc:	0017879b          	addiw	a5,a5,1
    80002ee0:	0af92023          	sw	a5,160(s2)
    80002ee4:	00970c23          	sb	s1,24(a4)
    80002ee8:	08f92e23          	sw	a5,156(s2)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	01813083          	ld	ra,24(sp)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	00013903          	ld	s2,0(sp)
    80002efc:	00004517          	auipc	a0,0x4
    80002f00:	cdc50513          	addi	a0,a0,-804 # 80006bd8 <cons>
    80002f04:	02010113          	addi	sp,sp,32
    80002f08:	00001317          	auipc	t1,0x1
    80002f0c:	eb030067          	jr	-336(t1) # 80003db8 <release>
    80002f10:	00a00493          	li	s1,10
    80002f14:	fc1ff06f          	j	80002ed4 <consoleintr+0x50>

0000000080002f18 <consoleinit>:
    80002f18:	fe010113          	addi	sp,sp,-32
    80002f1c:	00113c23          	sd	ra,24(sp)
    80002f20:	00813823          	sd	s0,16(sp)
    80002f24:	00913423          	sd	s1,8(sp)
    80002f28:	02010413          	addi	s0,sp,32
    80002f2c:	00004497          	auipc	s1,0x4
    80002f30:	cac48493          	addi	s1,s1,-852 # 80006bd8 <cons>
    80002f34:	00048513          	mv	a0,s1
    80002f38:	00002597          	auipc	a1,0x2
    80002f3c:	34858593          	addi	a1,a1,840 # 80005280 <_ZZ12printIntegermE6digits+0x138>
    80002f40:	00001097          	auipc	ra,0x1
    80002f44:	d88080e7          	jalr	-632(ra) # 80003cc8 <initlock>
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	7ac080e7          	jalr	1964(ra) # 800036f4 <uartinit>
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00000797          	auipc	a5,0x0
    80002f5c:	d9c78793          	addi	a5,a5,-612 # 80002cf4 <consoleread>
    80002f60:	0af4bc23          	sd	a5,184(s1)
    80002f64:	00000797          	auipc	a5,0x0
    80002f68:	cec78793          	addi	a5,a5,-788 # 80002c50 <consolewrite>
    80002f6c:	0cf4b023          	sd	a5,192(s1)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	02010113          	addi	sp,sp,32
    80002f78:	00008067          	ret

0000000080002f7c <console_read>:
    80002f7c:	ff010113          	addi	sp,sp,-16
    80002f80:	00813423          	sd	s0,8(sp)
    80002f84:	01010413          	addi	s0,sp,16
    80002f88:	00813403          	ld	s0,8(sp)
    80002f8c:	00004317          	auipc	t1,0x4
    80002f90:	d0433303          	ld	t1,-764(t1) # 80006c90 <devsw+0x10>
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00030067          	jr	t1

0000000080002f9c <console_write>:
    80002f9c:	ff010113          	addi	sp,sp,-16
    80002fa0:	00813423          	sd	s0,8(sp)
    80002fa4:	01010413          	addi	s0,sp,16
    80002fa8:	00813403          	ld	s0,8(sp)
    80002fac:	00004317          	auipc	t1,0x4
    80002fb0:	cec33303          	ld	t1,-788(t1) # 80006c98 <devsw+0x18>
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00030067          	jr	t1

0000000080002fbc <panic>:
    80002fbc:	fe010113          	addi	sp,sp,-32
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00050493          	mv	s1,a0
    80002fd4:	00002517          	auipc	a0,0x2
    80002fd8:	2b450513          	addi	a0,a0,692 # 80005288 <_ZZ12printIntegermE6digits+0x140>
    80002fdc:	00004797          	auipc	a5,0x4
    80002fe0:	d407ae23          	sw	zero,-676(a5) # 80006d38 <pr+0x18>
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	034080e7          	jalr	52(ra) # 80003018 <__printf>
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	028080e7          	jalr	40(ra) # 80003018 <__printf>
    80002ff8:	00002517          	auipc	a0,0x2
    80002ffc:	0f850513          	addi	a0,a0,248 # 800050f0 <CONSOLE_STATUS+0xe0>
    80003000:	00000097          	auipc	ra,0x0
    80003004:	018080e7          	jalr	24(ra) # 80003018 <__printf>
    80003008:	00100793          	li	a5,1
    8000300c:	00003717          	auipc	a4,0x3
    80003010:	a8f72e23          	sw	a5,-1380(a4) # 80005aa8 <panicked>
    80003014:	0000006f          	j	80003014 <panic+0x58>

0000000080003018 <__printf>:
    80003018:	f3010113          	addi	sp,sp,-208
    8000301c:	08813023          	sd	s0,128(sp)
    80003020:	07313423          	sd	s3,104(sp)
    80003024:	09010413          	addi	s0,sp,144
    80003028:	05813023          	sd	s8,64(sp)
    8000302c:	08113423          	sd	ra,136(sp)
    80003030:	06913c23          	sd	s1,120(sp)
    80003034:	07213823          	sd	s2,112(sp)
    80003038:	07413023          	sd	s4,96(sp)
    8000303c:	05513c23          	sd	s5,88(sp)
    80003040:	05613823          	sd	s6,80(sp)
    80003044:	05713423          	sd	s7,72(sp)
    80003048:	03913c23          	sd	s9,56(sp)
    8000304c:	03a13823          	sd	s10,48(sp)
    80003050:	03b13423          	sd	s11,40(sp)
    80003054:	00004317          	auipc	t1,0x4
    80003058:	ccc30313          	addi	t1,t1,-820 # 80006d20 <pr>
    8000305c:	01832c03          	lw	s8,24(t1)
    80003060:	00b43423          	sd	a1,8(s0)
    80003064:	00c43823          	sd	a2,16(s0)
    80003068:	00d43c23          	sd	a3,24(s0)
    8000306c:	02e43023          	sd	a4,32(s0)
    80003070:	02f43423          	sd	a5,40(s0)
    80003074:	03043823          	sd	a6,48(s0)
    80003078:	03143c23          	sd	a7,56(s0)
    8000307c:	00050993          	mv	s3,a0
    80003080:	4a0c1663          	bnez	s8,8000352c <__printf+0x514>
    80003084:	60098c63          	beqz	s3,8000369c <__printf+0x684>
    80003088:	0009c503          	lbu	a0,0(s3)
    8000308c:	00840793          	addi	a5,s0,8
    80003090:	f6f43c23          	sd	a5,-136(s0)
    80003094:	00000493          	li	s1,0
    80003098:	22050063          	beqz	a0,800032b8 <__printf+0x2a0>
    8000309c:	00002a37          	lui	s4,0x2
    800030a0:	00018ab7          	lui	s5,0x18
    800030a4:	000f4b37          	lui	s6,0xf4
    800030a8:	00989bb7          	lui	s7,0x989
    800030ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800030b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800030b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800030b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800030bc:	00148c9b          	addiw	s9,s1,1
    800030c0:	02500793          	li	a5,37
    800030c4:	01998933          	add	s2,s3,s9
    800030c8:	38f51263          	bne	a0,a5,8000344c <__printf+0x434>
    800030cc:	00094783          	lbu	a5,0(s2)
    800030d0:	00078c9b          	sext.w	s9,a5
    800030d4:	1e078263          	beqz	a5,800032b8 <__printf+0x2a0>
    800030d8:	0024849b          	addiw	s1,s1,2
    800030dc:	07000713          	li	a4,112
    800030e0:	00998933          	add	s2,s3,s1
    800030e4:	38e78a63          	beq	a5,a4,80003478 <__printf+0x460>
    800030e8:	20f76863          	bltu	a4,a5,800032f8 <__printf+0x2e0>
    800030ec:	42a78863          	beq	a5,a0,8000351c <__printf+0x504>
    800030f0:	06400713          	li	a4,100
    800030f4:	40e79663          	bne	a5,a4,80003500 <__printf+0x4e8>
    800030f8:	f7843783          	ld	a5,-136(s0)
    800030fc:	0007a603          	lw	a2,0(a5)
    80003100:	00878793          	addi	a5,a5,8
    80003104:	f6f43c23          	sd	a5,-136(s0)
    80003108:	42064a63          	bltz	a2,8000353c <__printf+0x524>
    8000310c:	00a00713          	li	a4,10
    80003110:	02e677bb          	remuw	a5,a2,a4
    80003114:	00002d97          	auipc	s11,0x2
    80003118:	19cd8d93          	addi	s11,s11,412 # 800052b0 <digits>
    8000311c:	00900593          	li	a1,9
    80003120:	0006051b          	sext.w	a0,a2
    80003124:	00000c93          	li	s9,0
    80003128:	02079793          	slli	a5,a5,0x20
    8000312c:	0207d793          	srli	a5,a5,0x20
    80003130:	00fd87b3          	add	a5,s11,a5
    80003134:	0007c783          	lbu	a5,0(a5)
    80003138:	02e656bb          	divuw	a3,a2,a4
    8000313c:	f8f40023          	sb	a5,-128(s0)
    80003140:	14c5d863          	bge	a1,a2,80003290 <__printf+0x278>
    80003144:	06300593          	li	a1,99
    80003148:	00100c93          	li	s9,1
    8000314c:	02e6f7bb          	remuw	a5,a3,a4
    80003150:	02079793          	slli	a5,a5,0x20
    80003154:	0207d793          	srli	a5,a5,0x20
    80003158:	00fd87b3          	add	a5,s11,a5
    8000315c:	0007c783          	lbu	a5,0(a5)
    80003160:	02e6d73b          	divuw	a4,a3,a4
    80003164:	f8f400a3          	sb	a5,-127(s0)
    80003168:	12a5f463          	bgeu	a1,a0,80003290 <__printf+0x278>
    8000316c:	00a00693          	li	a3,10
    80003170:	00900593          	li	a1,9
    80003174:	02d777bb          	remuw	a5,a4,a3
    80003178:	02079793          	slli	a5,a5,0x20
    8000317c:	0207d793          	srli	a5,a5,0x20
    80003180:	00fd87b3          	add	a5,s11,a5
    80003184:	0007c503          	lbu	a0,0(a5)
    80003188:	02d757bb          	divuw	a5,a4,a3
    8000318c:	f8a40123          	sb	a0,-126(s0)
    80003190:	48e5f263          	bgeu	a1,a4,80003614 <__printf+0x5fc>
    80003194:	06300513          	li	a0,99
    80003198:	02d7f5bb          	remuw	a1,a5,a3
    8000319c:	02059593          	slli	a1,a1,0x20
    800031a0:	0205d593          	srli	a1,a1,0x20
    800031a4:	00bd85b3          	add	a1,s11,a1
    800031a8:	0005c583          	lbu	a1,0(a1)
    800031ac:	02d7d7bb          	divuw	a5,a5,a3
    800031b0:	f8b401a3          	sb	a1,-125(s0)
    800031b4:	48e57263          	bgeu	a0,a4,80003638 <__printf+0x620>
    800031b8:	3e700513          	li	a0,999
    800031bc:	02d7f5bb          	remuw	a1,a5,a3
    800031c0:	02059593          	slli	a1,a1,0x20
    800031c4:	0205d593          	srli	a1,a1,0x20
    800031c8:	00bd85b3          	add	a1,s11,a1
    800031cc:	0005c583          	lbu	a1,0(a1)
    800031d0:	02d7d7bb          	divuw	a5,a5,a3
    800031d4:	f8b40223          	sb	a1,-124(s0)
    800031d8:	46e57663          	bgeu	a0,a4,80003644 <__printf+0x62c>
    800031dc:	02d7f5bb          	remuw	a1,a5,a3
    800031e0:	02059593          	slli	a1,a1,0x20
    800031e4:	0205d593          	srli	a1,a1,0x20
    800031e8:	00bd85b3          	add	a1,s11,a1
    800031ec:	0005c583          	lbu	a1,0(a1)
    800031f0:	02d7d7bb          	divuw	a5,a5,a3
    800031f4:	f8b402a3          	sb	a1,-123(s0)
    800031f8:	46ea7863          	bgeu	s4,a4,80003668 <__printf+0x650>
    800031fc:	02d7f5bb          	remuw	a1,a5,a3
    80003200:	02059593          	slli	a1,a1,0x20
    80003204:	0205d593          	srli	a1,a1,0x20
    80003208:	00bd85b3          	add	a1,s11,a1
    8000320c:	0005c583          	lbu	a1,0(a1)
    80003210:	02d7d7bb          	divuw	a5,a5,a3
    80003214:	f8b40323          	sb	a1,-122(s0)
    80003218:	3eeaf863          	bgeu	s5,a4,80003608 <__printf+0x5f0>
    8000321c:	02d7f5bb          	remuw	a1,a5,a3
    80003220:	02059593          	slli	a1,a1,0x20
    80003224:	0205d593          	srli	a1,a1,0x20
    80003228:	00bd85b3          	add	a1,s11,a1
    8000322c:	0005c583          	lbu	a1,0(a1)
    80003230:	02d7d7bb          	divuw	a5,a5,a3
    80003234:	f8b403a3          	sb	a1,-121(s0)
    80003238:	42eb7e63          	bgeu	s6,a4,80003674 <__printf+0x65c>
    8000323c:	02d7f5bb          	remuw	a1,a5,a3
    80003240:	02059593          	slli	a1,a1,0x20
    80003244:	0205d593          	srli	a1,a1,0x20
    80003248:	00bd85b3          	add	a1,s11,a1
    8000324c:	0005c583          	lbu	a1,0(a1)
    80003250:	02d7d7bb          	divuw	a5,a5,a3
    80003254:	f8b40423          	sb	a1,-120(s0)
    80003258:	42ebfc63          	bgeu	s7,a4,80003690 <__printf+0x678>
    8000325c:	02079793          	slli	a5,a5,0x20
    80003260:	0207d793          	srli	a5,a5,0x20
    80003264:	00fd8db3          	add	s11,s11,a5
    80003268:	000dc703          	lbu	a4,0(s11)
    8000326c:	00a00793          	li	a5,10
    80003270:	00900c93          	li	s9,9
    80003274:	f8e404a3          	sb	a4,-119(s0)
    80003278:	00065c63          	bgez	a2,80003290 <__printf+0x278>
    8000327c:	f9040713          	addi	a4,s0,-112
    80003280:	00f70733          	add	a4,a4,a5
    80003284:	02d00693          	li	a3,45
    80003288:	fed70823          	sb	a3,-16(a4)
    8000328c:	00078c93          	mv	s9,a5
    80003290:	f8040793          	addi	a5,s0,-128
    80003294:	01978cb3          	add	s9,a5,s9
    80003298:	f7f40d13          	addi	s10,s0,-129
    8000329c:	000cc503          	lbu	a0,0(s9)
    800032a0:	fffc8c93          	addi	s9,s9,-1
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	b90080e7          	jalr	-1136(ra) # 80002e34 <consputc>
    800032ac:	ffac98e3          	bne	s9,s10,8000329c <__printf+0x284>
    800032b0:	00094503          	lbu	a0,0(s2)
    800032b4:	e00514e3          	bnez	a0,800030bc <__printf+0xa4>
    800032b8:	1a0c1663          	bnez	s8,80003464 <__printf+0x44c>
    800032bc:	08813083          	ld	ra,136(sp)
    800032c0:	08013403          	ld	s0,128(sp)
    800032c4:	07813483          	ld	s1,120(sp)
    800032c8:	07013903          	ld	s2,112(sp)
    800032cc:	06813983          	ld	s3,104(sp)
    800032d0:	06013a03          	ld	s4,96(sp)
    800032d4:	05813a83          	ld	s5,88(sp)
    800032d8:	05013b03          	ld	s6,80(sp)
    800032dc:	04813b83          	ld	s7,72(sp)
    800032e0:	04013c03          	ld	s8,64(sp)
    800032e4:	03813c83          	ld	s9,56(sp)
    800032e8:	03013d03          	ld	s10,48(sp)
    800032ec:	02813d83          	ld	s11,40(sp)
    800032f0:	0d010113          	addi	sp,sp,208
    800032f4:	00008067          	ret
    800032f8:	07300713          	li	a4,115
    800032fc:	1ce78a63          	beq	a5,a4,800034d0 <__printf+0x4b8>
    80003300:	07800713          	li	a4,120
    80003304:	1ee79e63          	bne	a5,a4,80003500 <__printf+0x4e8>
    80003308:	f7843783          	ld	a5,-136(s0)
    8000330c:	0007a703          	lw	a4,0(a5)
    80003310:	00878793          	addi	a5,a5,8
    80003314:	f6f43c23          	sd	a5,-136(s0)
    80003318:	28074263          	bltz	a4,8000359c <__printf+0x584>
    8000331c:	00002d97          	auipc	s11,0x2
    80003320:	f94d8d93          	addi	s11,s11,-108 # 800052b0 <digits>
    80003324:	00f77793          	andi	a5,a4,15
    80003328:	00fd87b3          	add	a5,s11,a5
    8000332c:	0007c683          	lbu	a3,0(a5)
    80003330:	00f00613          	li	a2,15
    80003334:	0007079b          	sext.w	a5,a4
    80003338:	f8d40023          	sb	a3,-128(s0)
    8000333c:	0047559b          	srliw	a1,a4,0x4
    80003340:	0047569b          	srliw	a3,a4,0x4
    80003344:	00000c93          	li	s9,0
    80003348:	0ee65063          	bge	a2,a4,80003428 <__printf+0x410>
    8000334c:	00f6f693          	andi	a3,a3,15
    80003350:	00dd86b3          	add	a3,s11,a3
    80003354:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003358:	0087d79b          	srliw	a5,a5,0x8
    8000335c:	00100c93          	li	s9,1
    80003360:	f8d400a3          	sb	a3,-127(s0)
    80003364:	0cb67263          	bgeu	a2,a1,80003428 <__printf+0x410>
    80003368:	00f7f693          	andi	a3,a5,15
    8000336c:	00dd86b3          	add	a3,s11,a3
    80003370:	0006c583          	lbu	a1,0(a3)
    80003374:	00f00613          	li	a2,15
    80003378:	0047d69b          	srliw	a3,a5,0x4
    8000337c:	f8b40123          	sb	a1,-126(s0)
    80003380:	0047d593          	srli	a1,a5,0x4
    80003384:	28f67e63          	bgeu	a2,a5,80003620 <__printf+0x608>
    80003388:	00f6f693          	andi	a3,a3,15
    8000338c:	00dd86b3          	add	a3,s11,a3
    80003390:	0006c503          	lbu	a0,0(a3)
    80003394:	0087d813          	srli	a6,a5,0x8
    80003398:	0087d69b          	srliw	a3,a5,0x8
    8000339c:	f8a401a3          	sb	a0,-125(s0)
    800033a0:	28b67663          	bgeu	a2,a1,8000362c <__printf+0x614>
    800033a4:	00f6f693          	andi	a3,a3,15
    800033a8:	00dd86b3          	add	a3,s11,a3
    800033ac:	0006c583          	lbu	a1,0(a3)
    800033b0:	00c7d513          	srli	a0,a5,0xc
    800033b4:	00c7d69b          	srliw	a3,a5,0xc
    800033b8:	f8b40223          	sb	a1,-124(s0)
    800033bc:	29067a63          	bgeu	a2,a6,80003650 <__printf+0x638>
    800033c0:	00f6f693          	andi	a3,a3,15
    800033c4:	00dd86b3          	add	a3,s11,a3
    800033c8:	0006c583          	lbu	a1,0(a3)
    800033cc:	0107d813          	srli	a6,a5,0x10
    800033d0:	0107d69b          	srliw	a3,a5,0x10
    800033d4:	f8b402a3          	sb	a1,-123(s0)
    800033d8:	28a67263          	bgeu	a2,a0,8000365c <__printf+0x644>
    800033dc:	00f6f693          	andi	a3,a3,15
    800033e0:	00dd86b3          	add	a3,s11,a3
    800033e4:	0006c683          	lbu	a3,0(a3)
    800033e8:	0147d79b          	srliw	a5,a5,0x14
    800033ec:	f8d40323          	sb	a3,-122(s0)
    800033f0:	21067663          	bgeu	a2,a6,800035fc <__printf+0x5e4>
    800033f4:	02079793          	slli	a5,a5,0x20
    800033f8:	0207d793          	srli	a5,a5,0x20
    800033fc:	00fd8db3          	add	s11,s11,a5
    80003400:	000dc683          	lbu	a3,0(s11)
    80003404:	00800793          	li	a5,8
    80003408:	00700c93          	li	s9,7
    8000340c:	f8d403a3          	sb	a3,-121(s0)
    80003410:	00075c63          	bgez	a4,80003428 <__printf+0x410>
    80003414:	f9040713          	addi	a4,s0,-112
    80003418:	00f70733          	add	a4,a4,a5
    8000341c:	02d00693          	li	a3,45
    80003420:	fed70823          	sb	a3,-16(a4)
    80003424:	00078c93          	mv	s9,a5
    80003428:	f8040793          	addi	a5,s0,-128
    8000342c:	01978cb3          	add	s9,a5,s9
    80003430:	f7f40d13          	addi	s10,s0,-129
    80003434:	000cc503          	lbu	a0,0(s9)
    80003438:	fffc8c93          	addi	s9,s9,-1
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	9f8080e7          	jalr	-1544(ra) # 80002e34 <consputc>
    80003444:	ff9d18e3          	bne	s10,s9,80003434 <__printf+0x41c>
    80003448:	0100006f          	j	80003458 <__printf+0x440>
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	9e8080e7          	jalr	-1560(ra) # 80002e34 <consputc>
    80003454:	000c8493          	mv	s1,s9
    80003458:	00094503          	lbu	a0,0(s2)
    8000345c:	c60510e3          	bnez	a0,800030bc <__printf+0xa4>
    80003460:	e40c0ee3          	beqz	s8,800032bc <__printf+0x2a4>
    80003464:	00004517          	auipc	a0,0x4
    80003468:	8bc50513          	addi	a0,a0,-1860 # 80006d20 <pr>
    8000346c:	00001097          	auipc	ra,0x1
    80003470:	94c080e7          	jalr	-1716(ra) # 80003db8 <release>
    80003474:	e49ff06f          	j	800032bc <__printf+0x2a4>
    80003478:	f7843783          	ld	a5,-136(s0)
    8000347c:	03000513          	li	a0,48
    80003480:	01000d13          	li	s10,16
    80003484:	00878713          	addi	a4,a5,8
    80003488:	0007bc83          	ld	s9,0(a5)
    8000348c:	f6e43c23          	sd	a4,-136(s0)
    80003490:	00000097          	auipc	ra,0x0
    80003494:	9a4080e7          	jalr	-1628(ra) # 80002e34 <consputc>
    80003498:	07800513          	li	a0,120
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	998080e7          	jalr	-1640(ra) # 80002e34 <consputc>
    800034a4:	00002d97          	auipc	s11,0x2
    800034a8:	e0cd8d93          	addi	s11,s11,-500 # 800052b0 <digits>
    800034ac:	03ccd793          	srli	a5,s9,0x3c
    800034b0:	00fd87b3          	add	a5,s11,a5
    800034b4:	0007c503          	lbu	a0,0(a5)
    800034b8:	fffd0d1b          	addiw	s10,s10,-1
    800034bc:	004c9c93          	slli	s9,s9,0x4
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	974080e7          	jalr	-1676(ra) # 80002e34 <consputc>
    800034c8:	fe0d12e3          	bnez	s10,800034ac <__printf+0x494>
    800034cc:	f8dff06f          	j	80003458 <__printf+0x440>
    800034d0:	f7843783          	ld	a5,-136(s0)
    800034d4:	0007bc83          	ld	s9,0(a5)
    800034d8:	00878793          	addi	a5,a5,8
    800034dc:	f6f43c23          	sd	a5,-136(s0)
    800034e0:	000c9a63          	bnez	s9,800034f4 <__printf+0x4dc>
    800034e4:	1080006f          	j	800035ec <__printf+0x5d4>
    800034e8:	001c8c93          	addi	s9,s9,1
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	948080e7          	jalr	-1720(ra) # 80002e34 <consputc>
    800034f4:	000cc503          	lbu	a0,0(s9)
    800034f8:	fe0518e3          	bnez	a0,800034e8 <__printf+0x4d0>
    800034fc:	f5dff06f          	j	80003458 <__printf+0x440>
    80003500:	02500513          	li	a0,37
    80003504:	00000097          	auipc	ra,0x0
    80003508:	930080e7          	jalr	-1744(ra) # 80002e34 <consputc>
    8000350c:	000c8513          	mv	a0,s9
    80003510:	00000097          	auipc	ra,0x0
    80003514:	924080e7          	jalr	-1756(ra) # 80002e34 <consputc>
    80003518:	f41ff06f          	j	80003458 <__printf+0x440>
    8000351c:	02500513          	li	a0,37
    80003520:	00000097          	auipc	ra,0x0
    80003524:	914080e7          	jalr	-1772(ra) # 80002e34 <consputc>
    80003528:	f31ff06f          	j	80003458 <__printf+0x440>
    8000352c:	00030513          	mv	a0,t1
    80003530:	00000097          	auipc	ra,0x0
    80003534:	7bc080e7          	jalr	1980(ra) # 80003cec <acquire>
    80003538:	b4dff06f          	j	80003084 <__printf+0x6c>
    8000353c:	40c0053b          	negw	a0,a2
    80003540:	00a00713          	li	a4,10
    80003544:	02e576bb          	remuw	a3,a0,a4
    80003548:	00002d97          	auipc	s11,0x2
    8000354c:	d68d8d93          	addi	s11,s11,-664 # 800052b0 <digits>
    80003550:	ff700593          	li	a1,-9
    80003554:	02069693          	slli	a3,a3,0x20
    80003558:	0206d693          	srli	a3,a3,0x20
    8000355c:	00dd86b3          	add	a3,s11,a3
    80003560:	0006c683          	lbu	a3,0(a3)
    80003564:	02e557bb          	divuw	a5,a0,a4
    80003568:	f8d40023          	sb	a3,-128(s0)
    8000356c:	10b65e63          	bge	a2,a1,80003688 <__printf+0x670>
    80003570:	06300593          	li	a1,99
    80003574:	02e7f6bb          	remuw	a3,a5,a4
    80003578:	02069693          	slli	a3,a3,0x20
    8000357c:	0206d693          	srli	a3,a3,0x20
    80003580:	00dd86b3          	add	a3,s11,a3
    80003584:	0006c683          	lbu	a3,0(a3)
    80003588:	02e7d73b          	divuw	a4,a5,a4
    8000358c:	00200793          	li	a5,2
    80003590:	f8d400a3          	sb	a3,-127(s0)
    80003594:	bca5ece3          	bltu	a1,a0,8000316c <__printf+0x154>
    80003598:	ce5ff06f          	j	8000327c <__printf+0x264>
    8000359c:	40e007bb          	negw	a5,a4
    800035a0:	00002d97          	auipc	s11,0x2
    800035a4:	d10d8d93          	addi	s11,s11,-752 # 800052b0 <digits>
    800035a8:	00f7f693          	andi	a3,a5,15
    800035ac:	00dd86b3          	add	a3,s11,a3
    800035b0:	0006c583          	lbu	a1,0(a3)
    800035b4:	ff100613          	li	a2,-15
    800035b8:	0047d69b          	srliw	a3,a5,0x4
    800035bc:	f8b40023          	sb	a1,-128(s0)
    800035c0:	0047d59b          	srliw	a1,a5,0x4
    800035c4:	0ac75e63          	bge	a4,a2,80003680 <__printf+0x668>
    800035c8:	00f6f693          	andi	a3,a3,15
    800035cc:	00dd86b3          	add	a3,s11,a3
    800035d0:	0006c603          	lbu	a2,0(a3)
    800035d4:	00f00693          	li	a3,15
    800035d8:	0087d79b          	srliw	a5,a5,0x8
    800035dc:	f8c400a3          	sb	a2,-127(s0)
    800035e0:	d8b6e4e3          	bltu	a3,a1,80003368 <__printf+0x350>
    800035e4:	00200793          	li	a5,2
    800035e8:	e2dff06f          	j	80003414 <__printf+0x3fc>
    800035ec:	00002c97          	auipc	s9,0x2
    800035f0:	ca4c8c93          	addi	s9,s9,-860 # 80005290 <_ZZ12printIntegermE6digits+0x148>
    800035f4:	02800513          	li	a0,40
    800035f8:	ef1ff06f          	j	800034e8 <__printf+0x4d0>
    800035fc:	00700793          	li	a5,7
    80003600:	00600c93          	li	s9,6
    80003604:	e0dff06f          	j	80003410 <__printf+0x3f8>
    80003608:	00700793          	li	a5,7
    8000360c:	00600c93          	li	s9,6
    80003610:	c69ff06f          	j	80003278 <__printf+0x260>
    80003614:	00300793          	li	a5,3
    80003618:	00200c93          	li	s9,2
    8000361c:	c5dff06f          	j	80003278 <__printf+0x260>
    80003620:	00300793          	li	a5,3
    80003624:	00200c93          	li	s9,2
    80003628:	de9ff06f          	j	80003410 <__printf+0x3f8>
    8000362c:	00400793          	li	a5,4
    80003630:	00300c93          	li	s9,3
    80003634:	dddff06f          	j	80003410 <__printf+0x3f8>
    80003638:	00400793          	li	a5,4
    8000363c:	00300c93          	li	s9,3
    80003640:	c39ff06f          	j	80003278 <__printf+0x260>
    80003644:	00500793          	li	a5,5
    80003648:	00400c93          	li	s9,4
    8000364c:	c2dff06f          	j	80003278 <__printf+0x260>
    80003650:	00500793          	li	a5,5
    80003654:	00400c93          	li	s9,4
    80003658:	db9ff06f          	j	80003410 <__printf+0x3f8>
    8000365c:	00600793          	li	a5,6
    80003660:	00500c93          	li	s9,5
    80003664:	dadff06f          	j	80003410 <__printf+0x3f8>
    80003668:	00600793          	li	a5,6
    8000366c:	00500c93          	li	s9,5
    80003670:	c09ff06f          	j	80003278 <__printf+0x260>
    80003674:	00800793          	li	a5,8
    80003678:	00700c93          	li	s9,7
    8000367c:	bfdff06f          	j	80003278 <__printf+0x260>
    80003680:	00100793          	li	a5,1
    80003684:	d91ff06f          	j	80003414 <__printf+0x3fc>
    80003688:	00100793          	li	a5,1
    8000368c:	bf1ff06f          	j	8000327c <__printf+0x264>
    80003690:	00900793          	li	a5,9
    80003694:	00800c93          	li	s9,8
    80003698:	be1ff06f          	j	80003278 <__printf+0x260>
    8000369c:	00002517          	auipc	a0,0x2
    800036a0:	bfc50513          	addi	a0,a0,-1028 # 80005298 <_ZZ12printIntegermE6digits+0x150>
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	918080e7          	jalr	-1768(ra) # 80002fbc <panic>

00000000800036ac <printfinit>:
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	00003497          	auipc	s1,0x3
    800036c4:	66048493          	addi	s1,s1,1632 # 80006d20 <pr>
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00002597          	auipc	a1,0x2
    800036d0:	bdc58593          	addi	a1,a1,-1060 # 800052a8 <_ZZ12printIntegermE6digits+0x160>
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	5f4080e7          	jalr	1524(ra) # 80003cc8 <initlock>
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	0004ac23          	sw	zero,24(s1)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	02010113          	addi	sp,sp,32
    800036f0:	00008067          	ret

00000000800036f4 <uartinit>:
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00813423          	sd	s0,8(sp)
    800036fc:	01010413          	addi	s0,sp,16
    80003700:	100007b7          	lui	a5,0x10000
    80003704:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003708:	f8000713          	li	a4,-128
    8000370c:	00e781a3          	sb	a4,3(a5)
    80003710:	00300713          	li	a4,3
    80003714:	00e78023          	sb	a4,0(a5)
    80003718:	000780a3          	sb	zero,1(a5)
    8000371c:	00e781a3          	sb	a4,3(a5)
    80003720:	00700693          	li	a3,7
    80003724:	00d78123          	sb	a3,2(a5)
    80003728:	00e780a3          	sb	a4,1(a5)
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret

0000000080003738 <uartputc>:
    80003738:	00002797          	auipc	a5,0x2
    8000373c:	3707a783          	lw	a5,880(a5) # 80005aa8 <panicked>
    80003740:	00078463          	beqz	a5,80003748 <uartputc+0x10>
    80003744:	0000006f          	j	80003744 <uartputc+0xc>
    80003748:	fd010113          	addi	sp,sp,-48
    8000374c:	02813023          	sd	s0,32(sp)
    80003750:	00913c23          	sd	s1,24(sp)
    80003754:	01213823          	sd	s2,16(sp)
    80003758:	01313423          	sd	s3,8(sp)
    8000375c:	02113423          	sd	ra,40(sp)
    80003760:	03010413          	addi	s0,sp,48
    80003764:	00002917          	auipc	s2,0x2
    80003768:	34c90913          	addi	s2,s2,844 # 80005ab0 <uart_tx_r>
    8000376c:	00093783          	ld	a5,0(s2)
    80003770:	00002497          	auipc	s1,0x2
    80003774:	34848493          	addi	s1,s1,840 # 80005ab8 <uart_tx_w>
    80003778:	0004b703          	ld	a4,0(s1)
    8000377c:	02078693          	addi	a3,a5,32
    80003780:	00050993          	mv	s3,a0
    80003784:	02e69c63          	bne	a3,a4,800037bc <uartputc+0x84>
    80003788:	00001097          	auipc	ra,0x1
    8000378c:	834080e7          	jalr	-1996(ra) # 80003fbc <push_on>
    80003790:	00093783          	ld	a5,0(s2)
    80003794:	0004b703          	ld	a4,0(s1)
    80003798:	02078793          	addi	a5,a5,32
    8000379c:	00e79463          	bne	a5,a4,800037a4 <uartputc+0x6c>
    800037a0:	0000006f          	j	800037a0 <uartputc+0x68>
    800037a4:	00001097          	auipc	ra,0x1
    800037a8:	88c080e7          	jalr	-1908(ra) # 80004030 <pop_on>
    800037ac:	00093783          	ld	a5,0(s2)
    800037b0:	0004b703          	ld	a4,0(s1)
    800037b4:	02078693          	addi	a3,a5,32
    800037b8:	fce688e3          	beq	a3,a4,80003788 <uartputc+0x50>
    800037bc:	01f77693          	andi	a3,a4,31
    800037c0:	00003597          	auipc	a1,0x3
    800037c4:	58058593          	addi	a1,a1,1408 # 80006d40 <uart_tx_buf>
    800037c8:	00d586b3          	add	a3,a1,a3
    800037cc:	00170713          	addi	a4,a4,1
    800037d0:	01368023          	sb	s3,0(a3)
    800037d4:	00e4b023          	sd	a4,0(s1)
    800037d8:	10000637          	lui	a2,0x10000
    800037dc:	02f71063          	bne	a4,a5,800037fc <uartputc+0xc4>
    800037e0:	0340006f          	j	80003814 <uartputc+0xdc>
    800037e4:	00074703          	lbu	a4,0(a4)
    800037e8:	00f93023          	sd	a5,0(s2)
    800037ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800037f0:	00093783          	ld	a5,0(s2)
    800037f4:	0004b703          	ld	a4,0(s1)
    800037f8:	00f70e63          	beq	a4,a5,80003814 <uartputc+0xdc>
    800037fc:	00564683          	lbu	a3,5(a2)
    80003800:	01f7f713          	andi	a4,a5,31
    80003804:	00e58733          	add	a4,a1,a4
    80003808:	0206f693          	andi	a3,a3,32
    8000380c:	00178793          	addi	a5,a5,1
    80003810:	fc069ae3          	bnez	a3,800037e4 <uartputc+0xac>
    80003814:	02813083          	ld	ra,40(sp)
    80003818:	02013403          	ld	s0,32(sp)
    8000381c:	01813483          	ld	s1,24(sp)
    80003820:	01013903          	ld	s2,16(sp)
    80003824:	00813983          	ld	s3,8(sp)
    80003828:	03010113          	addi	sp,sp,48
    8000382c:	00008067          	ret

0000000080003830 <uartputc_sync>:
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00813423          	sd	s0,8(sp)
    80003838:	01010413          	addi	s0,sp,16
    8000383c:	00002717          	auipc	a4,0x2
    80003840:	26c72703          	lw	a4,620(a4) # 80005aa8 <panicked>
    80003844:	02071663          	bnez	a4,80003870 <uartputc_sync+0x40>
    80003848:	00050793          	mv	a5,a0
    8000384c:	100006b7          	lui	a3,0x10000
    80003850:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003854:	02077713          	andi	a4,a4,32
    80003858:	fe070ce3          	beqz	a4,80003850 <uartputc_sync+0x20>
    8000385c:	0ff7f793          	andi	a5,a5,255
    80003860:	00f68023          	sb	a5,0(a3)
    80003864:	00813403          	ld	s0,8(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret
    80003870:	0000006f          	j	80003870 <uartputc_sync+0x40>

0000000080003874 <uartstart>:
    80003874:	ff010113          	addi	sp,sp,-16
    80003878:	00813423          	sd	s0,8(sp)
    8000387c:	01010413          	addi	s0,sp,16
    80003880:	00002617          	auipc	a2,0x2
    80003884:	23060613          	addi	a2,a2,560 # 80005ab0 <uart_tx_r>
    80003888:	00002517          	auipc	a0,0x2
    8000388c:	23050513          	addi	a0,a0,560 # 80005ab8 <uart_tx_w>
    80003890:	00063783          	ld	a5,0(a2)
    80003894:	00053703          	ld	a4,0(a0)
    80003898:	04f70263          	beq	a4,a5,800038dc <uartstart+0x68>
    8000389c:	100005b7          	lui	a1,0x10000
    800038a0:	00003817          	auipc	a6,0x3
    800038a4:	4a080813          	addi	a6,a6,1184 # 80006d40 <uart_tx_buf>
    800038a8:	01c0006f          	j	800038c4 <uartstart+0x50>
    800038ac:	0006c703          	lbu	a4,0(a3)
    800038b0:	00f63023          	sd	a5,0(a2)
    800038b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038b8:	00063783          	ld	a5,0(a2)
    800038bc:	00053703          	ld	a4,0(a0)
    800038c0:	00f70e63          	beq	a4,a5,800038dc <uartstart+0x68>
    800038c4:	01f7f713          	andi	a4,a5,31
    800038c8:	00e806b3          	add	a3,a6,a4
    800038cc:	0055c703          	lbu	a4,5(a1)
    800038d0:	00178793          	addi	a5,a5,1
    800038d4:	02077713          	andi	a4,a4,32
    800038d8:	fc071ae3          	bnez	a4,800038ac <uartstart+0x38>
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <uartgetc>:
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813423          	sd	s0,8(sp)
    800038f0:	01010413          	addi	s0,sp,16
    800038f4:	10000737          	lui	a4,0x10000
    800038f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800038fc:	0017f793          	andi	a5,a5,1
    80003900:	00078c63          	beqz	a5,80003918 <uartgetc+0x30>
    80003904:	00074503          	lbu	a0,0(a4)
    80003908:	0ff57513          	andi	a0,a0,255
    8000390c:	00813403          	ld	s0,8(sp)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret
    80003918:	fff00513          	li	a0,-1
    8000391c:	ff1ff06f          	j	8000390c <uartgetc+0x24>

0000000080003920 <uartintr>:
    80003920:	100007b7          	lui	a5,0x10000
    80003924:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003928:	0017f793          	andi	a5,a5,1
    8000392c:	0a078463          	beqz	a5,800039d4 <uartintr+0xb4>
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00813823          	sd	s0,16(sp)
    80003938:	00913423          	sd	s1,8(sp)
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	100004b7          	lui	s1,0x10000
    80003948:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000394c:	0ff57513          	andi	a0,a0,255
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	534080e7          	jalr	1332(ra) # 80002e84 <consoleintr>
    80003958:	0054c783          	lbu	a5,5(s1)
    8000395c:	0017f793          	andi	a5,a5,1
    80003960:	fe0794e3          	bnez	a5,80003948 <uartintr+0x28>
    80003964:	00002617          	auipc	a2,0x2
    80003968:	14c60613          	addi	a2,a2,332 # 80005ab0 <uart_tx_r>
    8000396c:	00002517          	auipc	a0,0x2
    80003970:	14c50513          	addi	a0,a0,332 # 80005ab8 <uart_tx_w>
    80003974:	00063783          	ld	a5,0(a2)
    80003978:	00053703          	ld	a4,0(a0)
    8000397c:	04f70263          	beq	a4,a5,800039c0 <uartintr+0xa0>
    80003980:	100005b7          	lui	a1,0x10000
    80003984:	00003817          	auipc	a6,0x3
    80003988:	3bc80813          	addi	a6,a6,956 # 80006d40 <uart_tx_buf>
    8000398c:	01c0006f          	j	800039a8 <uartintr+0x88>
    80003990:	0006c703          	lbu	a4,0(a3)
    80003994:	00f63023          	sd	a5,0(a2)
    80003998:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000399c:	00063783          	ld	a5,0(a2)
    800039a0:	00053703          	ld	a4,0(a0)
    800039a4:	00f70e63          	beq	a4,a5,800039c0 <uartintr+0xa0>
    800039a8:	01f7f713          	andi	a4,a5,31
    800039ac:	00e806b3          	add	a3,a6,a4
    800039b0:	0055c703          	lbu	a4,5(a1)
    800039b4:	00178793          	addi	a5,a5,1
    800039b8:	02077713          	andi	a4,a4,32
    800039bc:	fc071ae3          	bnez	a4,80003990 <uartintr+0x70>
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00813483          	ld	s1,8(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret
    800039d4:	00002617          	auipc	a2,0x2
    800039d8:	0dc60613          	addi	a2,a2,220 # 80005ab0 <uart_tx_r>
    800039dc:	00002517          	auipc	a0,0x2
    800039e0:	0dc50513          	addi	a0,a0,220 # 80005ab8 <uart_tx_w>
    800039e4:	00063783          	ld	a5,0(a2)
    800039e8:	00053703          	ld	a4,0(a0)
    800039ec:	04f70263          	beq	a4,a5,80003a30 <uartintr+0x110>
    800039f0:	100005b7          	lui	a1,0x10000
    800039f4:	00003817          	auipc	a6,0x3
    800039f8:	34c80813          	addi	a6,a6,844 # 80006d40 <uart_tx_buf>
    800039fc:	01c0006f          	j	80003a18 <uartintr+0xf8>
    80003a00:	0006c703          	lbu	a4,0(a3)
    80003a04:	00f63023          	sd	a5,0(a2)
    80003a08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a0c:	00063783          	ld	a5,0(a2)
    80003a10:	00053703          	ld	a4,0(a0)
    80003a14:	02f70063          	beq	a4,a5,80003a34 <uartintr+0x114>
    80003a18:	01f7f713          	andi	a4,a5,31
    80003a1c:	00e806b3          	add	a3,a6,a4
    80003a20:	0055c703          	lbu	a4,5(a1)
    80003a24:	00178793          	addi	a5,a5,1
    80003a28:	02077713          	andi	a4,a4,32
    80003a2c:	fc071ae3          	bnez	a4,80003a00 <uartintr+0xe0>
    80003a30:	00008067          	ret
    80003a34:	00008067          	ret

0000000080003a38 <kinit>:
    80003a38:	fc010113          	addi	sp,sp,-64
    80003a3c:	02913423          	sd	s1,40(sp)
    80003a40:	fffff7b7          	lui	a5,0xfffff
    80003a44:	00004497          	auipc	s1,0x4
    80003a48:	31b48493          	addi	s1,s1,795 # 80007d5f <end+0xfff>
    80003a4c:	02813823          	sd	s0,48(sp)
    80003a50:	01313c23          	sd	s3,24(sp)
    80003a54:	00f4f4b3          	and	s1,s1,a5
    80003a58:	02113c23          	sd	ra,56(sp)
    80003a5c:	03213023          	sd	s2,32(sp)
    80003a60:	01413823          	sd	s4,16(sp)
    80003a64:	01513423          	sd	s5,8(sp)
    80003a68:	04010413          	addi	s0,sp,64
    80003a6c:	000017b7          	lui	a5,0x1
    80003a70:	01100993          	li	s3,17
    80003a74:	00f487b3          	add	a5,s1,a5
    80003a78:	01b99993          	slli	s3,s3,0x1b
    80003a7c:	06f9e063          	bltu	s3,a5,80003adc <kinit+0xa4>
    80003a80:	00003a97          	auipc	s5,0x3
    80003a84:	2e0a8a93          	addi	s5,s5,736 # 80006d60 <end>
    80003a88:	0754ec63          	bltu	s1,s5,80003b00 <kinit+0xc8>
    80003a8c:	0734fa63          	bgeu	s1,s3,80003b00 <kinit+0xc8>
    80003a90:	00088a37          	lui	s4,0x88
    80003a94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003a98:	00002917          	auipc	s2,0x2
    80003a9c:	02890913          	addi	s2,s2,40 # 80005ac0 <kmem>
    80003aa0:	00ca1a13          	slli	s4,s4,0xc
    80003aa4:	0140006f          	j	80003ab8 <kinit+0x80>
    80003aa8:	000017b7          	lui	a5,0x1
    80003aac:	00f484b3          	add	s1,s1,a5
    80003ab0:	0554e863          	bltu	s1,s5,80003b00 <kinit+0xc8>
    80003ab4:	0534f663          	bgeu	s1,s3,80003b00 <kinit+0xc8>
    80003ab8:	00001637          	lui	a2,0x1
    80003abc:	00100593          	li	a1,1
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	00000097          	auipc	ra,0x0
    80003ac8:	5e4080e7          	jalr	1508(ra) # 800040a8 <__memset>
    80003acc:	00093783          	ld	a5,0(s2)
    80003ad0:	00f4b023          	sd	a5,0(s1)
    80003ad4:	00993023          	sd	s1,0(s2)
    80003ad8:	fd4498e3          	bne	s1,s4,80003aa8 <kinit+0x70>
    80003adc:	03813083          	ld	ra,56(sp)
    80003ae0:	03013403          	ld	s0,48(sp)
    80003ae4:	02813483          	ld	s1,40(sp)
    80003ae8:	02013903          	ld	s2,32(sp)
    80003aec:	01813983          	ld	s3,24(sp)
    80003af0:	01013a03          	ld	s4,16(sp)
    80003af4:	00813a83          	ld	s5,8(sp)
    80003af8:	04010113          	addi	sp,sp,64
    80003afc:	00008067          	ret
    80003b00:	00001517          	auipc	a0,0x1
    80003b04:	7c850513          	addi	a0,a0,1992 # 800052c8 <digits+0x18>
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	4b4080e7          	jalr	1204(ra) # 80002fbc <panic>

0000000080003b10 <freerange>:
    80003b10:	fc010113          	addi	sp,sp,-64
    80003b14:	000017b7          	lui	a5,0x1
    80003b18:	02913423          	sd	s1,40(sp)
    80003b1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003b20:	009504b3          	add	s1,a0,s1
    80003b24:	fffff537          	lui	a0,0xfffff
    80003b28:	02813823          	sd	s0,48(sp)
    80003b2c:	02113c23          	sd	ra,56(sp)
    80003b30:	03213023          	sd	s2,32(sp)
    80003b34:	01313c23          	sd	s3,24(sp)
    80003b38:	01413823          	sd	s4,16(sp)
    80003b3c:	01513423          	sd	s5,8(sp)
    80003b40:	01613023          	sd	s6,0(sp)
    80003b44:	04010413          	addi	s0,sp,64
    80003b48:	00a4f4b3          	and	s1,s1,a0
    80003b4c:	00f487b3          	add	a5,s1,a5
    80003b50:	06f5e463          	bltu	a1,a5,80003bb8 <freerange+0xa8>
    80003b54:	00003a97          	auipc	s5,0x3
    80003b58:	20ca8a93          	addi	s5,s5,524 # 80006d60 <end>
    80003b5c:	0954e263          	bltu	s1,s5,80003be0 <freerange+0xd0>
    80003b60:	01100993          	li	s3,17
    80003b64:	01b99993          	slli	s3,s3,0x1b
    80003b68:	0734fc63          	bgeu	s1,s3,80003be0 <freerange+0xd0>
    80003b6c:	00058a13          	mv	s4,a1
    80003b70:	00002917          	auipc	s2,0x2
    80003b74:	f5090913          	addi	s2,s2,-176 # 80005ac0 <kmem>
    80003b78:	00002b37          	lui	s6,0x2
    80003b7c:	0140006f          	j	80003b90 <freerange+0x80>
    80003b80:	000017b7          	lui	a5,0x1
    80003b84:	00f484b3          	add	s1,s1,a5
    80003b88:	0554ec63          	bltu	s1,s5,80003be0 <freerange+0xd0>
    80003b8c:	0534fa63          	bgeu	s1,s3,80003be0 <freerange+0xd0>
    80003b90:	00001637          	lui	a2,0x1
    80003b94:	00100593          	li	a1,1
    80003b98:	00048513          	mv	a0,s1
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	50c080e7          	jalr	1292(ra) # 800040a8 <__memset>
    80003ba4:	00093703          	ld	a4,0(s2)
    80003ba8:	016487b3          	add	a5,s1,s6
    80003bac:	00e4b023          	sd	a4,0(s1)
    80003bb0:	00993023          	sd	s1,0(s2)
    80003bb4:	fcfa76e3          	bgeu	s4,a5,80003b80 <freerange+0x70>
    80003bb8:	03813083          	ld	ra,56(sp)
    80003bbc:	03013403          	ld	s0,48(sp)
    80003bc0:	02813483          	ld	s1,40(sp)
    80003bc4:	02013903          	ld	s2,32(sp)
    80003bc8:	01813983          	ld	s3,24(sp)
    80003bcc:	01013a03          	ld	s4,16(sp)
    80003bd0:	00813a83          	ld	s5,8(sp)
    80003bd4:	00013b03          	ld	s6,0(sp)
    80003bd8:	04010113          	addi	sp,sp,64
    80003bdc:	00008067          	ret
    80003be0:	00001517          	auipc	a0,0x1
    80003be4:	6e850513          	addi	a0,a0,1768 # 800052c8 <digits+0x18>
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	3d4080e7          	jalr	980(ra) # 80002fbc <panic>

0000000080003bf0 <kfree>:
    80003bf0:	fe010113          	addi	sp,sp,-32
    80003bf4:	00813823          	sd	s0,16(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00913423          	sd	s1,8(sp)
    80003c00:	02010413          	addi	s0,sp,32
    80003c04:	03451793          	slli	a5,a0,0x34
    80003c08:	04079c63          	bnez	a5,80003c60 <kfree+0x70>
    80003c0c:	00003797          	auipc	a5,0x3
    80003c10:	15478793          	addi	a5,a5,340 # 80006d60 <end>
    80003c14:	00050493          	mv	s1,a0
    80003c18:	04f56463          	bltu	a0,a5,80003c60 <kfree+0x70>
    80003c1c:	01100793          	li	a5,17
    80003c20:	01b79793          	slli	a5,a5,0x1b
    80003c24:	02f57e63          	bgeu	a0,a5,80003c60 <kfree+0x70>
    80003c28:	00001637          	lui	a2,0x1
    80003c2c:	00100593          	li	a1,1
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	478080e7          	jalr	1144(ra) # 800040a8 <__memset>
    80003c38:	00002797          	auipc	a5,0x2
    80003c3c:	e8878793          	addi	a5,a5,-376 # 80005ac0 <kmem>
    80003c40:	0007b703          	ld	a4,0(a5)
    80003c44:	01813083          	ld	ra,24(sp)
    80003c48:	01013403          	ld	s0,16(sp)
    80003c4c:	00e4b023          	sd	a4,0(s1)
    80003c50:	0097b023          	sd	s1,0(a5)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	66850513          	addi	a0,a0,1640 # 800052c8 <digits+0x18>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	354080e7          	jalr	852(ra) # 80002fbc <panic>

0000000080003c70 <kalloc>:
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00813823          	sd	s0,16(sp)
    80003c78:	00913423          	sd	s1,8(sp)
    80003c7c:	00113c23          	sd	ra,24(sp)
    80003c80:	02010413          	addi	s0,sp,32
    80003c84:	00002797          	auipc	a5,0x2
    80003c88:	e3c78793          	addi	a5,a5,-452 # 80005ac0 <kmem>
    80003c8c:	0007b483          	ld	s1,0(a5)
    80003c90:	02048063          	beqz	s1,80003cb0 <kalloc+0x40>
    80003c94:	0004b703          	ld	a4,0(s1)
    80003c98:	00001637          	lui	a2,0x1
    80003c9c:	00500593          	li	a1,5
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00e7b023          	sd	a4,0(a5)
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	400080e7          	jalr	1024(ra) # 800040a8 <__memset>
    80003cb0:	01813083          	ld	ra,24(sp)
    80003cb4:	01013403          	ld	s0,16(sp)
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	00813483          	ld	s1,8(sp)
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00008067          	ret

0000000080003cc8 <initlock>:
    80003cc8:	ff010113          	addi	sp,sp,-16
    80003ccc:	00813423          	sd	s0,8(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	00b53423          	sd	a1,8(a0)
    80003cdc:	00052023          	sw	zero,0(a0)
    80003ce0:	00053823          	sd	zero,16(a0)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <acquire>:
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00913423          	sd	s1,8(sp)
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	01213023          	sd	s2,0(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	00050493          	mv	s1,a0
    80003d08:	10002973          	csrr	s2,sstatus
    80003d0c:	100027f3          	csrr	a5,sstatus
    80003d10:	ffd7f793          	andi	a5,a5,-3
    80003d14:	10079073          	csrw	sstatus,a5
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	8e0080e7          	jalr	-1824(ra) # 800025f8 <mycpu>
    80003d20:	07852783          	lw	a5,120(a0)
    80003d24:	06078e63          	beqz	a5,80003da0 <acquire+0xb4>
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	8d0080e7          	jalr	-1840(ra) # 800025f8 <mycpu>
    80003d30:	07852783          	lw	a5,120(a0)
    80003d34:	0004a703          	lw	a4,0(s1)
    80003d38:	0017879b          	addiw	a5,a5,1
    80003d3c:	06f52c23          	sw	a5,120(a0)
    80003d40:	04071063          	bnez	a4,80003d80 <acquire+0x94>
    80003d44:	00100713          	li	a4,1
    80003d48:	00070793          	mv	a5,a4
    80003d4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003d50:	0007879b          	sext.w	a5,a5
    80003d54:	fe079ae3          	bnez	a5,80003d48 <acquire+0x5c>
    80003d58:	0ff0000f          	fence
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	89c080e7          	jalr	-1892(ra) # 800025f8 <mycpu>
    80003d64:	01813083          	ld	ra,24(sp)
    80003d68:	01013403          	ld	s0,16(sp)
    80003d6c:	00a4b823          	sd	a0,16(s1)
    80003d70:	00013903          	ld	s2,0(sp)
    80003d74:	00813483          	ld	s1,8(sp)
    80003d78:	02010113          	addi	sp,sp,32
    80003d7c:	00008067          	ret
    80003d80:	0104b903          	ld	s2,16(s1)
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	874080e7          	jalr	-1932(ra) # 800025f8 <mycpu>
    80003d8c:	faa91ce3          	bne	s2,a0,80003d44 <acquire+0x58>
    80003d90:	00001517          	auipc	a0,0x1
    80003d94:	54050513          	addi	a0,a0,1344 # 800052d0 <digits+0x20>
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	224080e7          	jalr	548(ra) # 80002fbc <panic>
    80003da0:	00195913          	srli	s2,s2,0x1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	854080e7          	jalr	-1964(ra) # 800025f8 <mycpu>
    80003dac:	00197913          	andi	s2,s2,1
    80003db0:	07252e23          	sw	s2,124(a0)
    80003db4:	f75ff06f          	j	80003d28 <acquire+0x3c>

0000000080003db8 <release>:
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00052783          	lw	a5,0(a0)
    80003dd4:	00079a63          	bnez	a5,80003de8 <release+0x30>
    80003dd8:	00001517          	auipc	a0,0x1
    80003ddc:	50050513          	addi	a0,a0,1280 # 800052d8 <digits+0x28>
    80003de0:	fffff097          	auipc	ra,0xfffff
    80003de4:	1dc080e7          	jalr	476(ra) # 80002fbc <panic>
    80003de8:	01053903          	ld	s2,16(a0)
    80003dec:	00050493          	mv	s1,a0
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	808080e7          	jalr	-2040(ra) # 800025f8 <mycpu>
    80003df8:	fea910e3          	bne	s2,a0,80003dd8 <release+0x20>
    80003dfc:	0004b823          	sd	zero,16(s1)
    80003e00:	0ff0000f          	fence
    80003e04:	0f50000f          	fence	iorw,ow
    80003e08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	7ec080e7          	jalr	2028(ra) # 800025f8 <mycpu>
    80003e14:	100027f3          	csrr	a5,sstatus
    80003e18:	0027f793          	andi	a5,a5,2
    80003e1c:	04079a63          	bnez	a5,80003e70 <release+0xb8>
    80003e20:	07852783          	lw	a5,120(a0)
    80003e24:	02f05e63          	blez	a5,80003e60 <release+0xa8>
    80003e28:	fff7871b          	addiw	a4,a5,-1
    80003e2c:	06e52c23          	sw	a4,120(a0)
    80003e30:	00071c63          	bnez	a4,80003e48 <release+0x90>
    80003e34:	07c52783          	lw	a5,124(a0)
    80003e38:	00078863          	beqz	a5,80003e48 <release+0x90>
    80003e3c:	100027f3          	csrr	a5,sstatus
    80003e40:	0027e793          	ori	a5,a5,2
    80003e44:	10079073          	csrw	sstatus,a5
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	00013903          	ld	s2,0(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret
    80003e60:	00001517          	auipc	a0,0x1
    80003e64:	49850513          	addi	a0,a0,1176 # 800052f8 <digits+0x48>
    80003e68:	fffff097          	auipc	ra,0xfffff
    80003e6c:	154080e7          	jalr	340(ra) # 80002fbc <panic>
    80003e70:	00001517          	auipc	a0,0x1
    80003e74:	47050513          	addi	a0,a0,1136 # 800052e0 <digits+0x30>
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	144080e7          	jalr	324(ra) # 80002fbc <panic>

0000000080003e80 <holding>:
    80003e80:	00052783          	lw	a5,0(a0)
    80003e84:	00079663          	bnez	a5,80003e90 <holding+0x10>
    80003e88:	00000513          	li	a0,0
    80003e8c:	00008067          	ret
    80003e90:	fe010113          	addi	sp,sp,-32
    80003e94:	00813823          	sd	s0,16(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	00113c23          	sd	ra,24(sp)
    80003ea0:	02010413          	addi	s0,sp,32
    80003ea4:	01053483          	ld	s1,16(a0)
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	750080e7          	jalr	1872(ra) # 800025f8 <mycpu>
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	40a48533          	sub	a0,s1,a0
    80003ebc:	00153513          	seqz	a0,a0
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	02010113          	addi	sp,sp,32
    80003ec8:	00008067          	ret

0000000080003ecc <push_off>:
    80003ecc:	fe010113          	addi	sp,sp,-32
    80003ed0:	00813823          	sd	s0,16(sp)
    80003ed4:	00113c23          	sd	ra,24(sp)
    80003ed8:	00913423          	sd	s1,8(sp)
    80003edc:	02010413          	addi	s0,sp,32
    80003ee0:	100024f3          	csrr	s1,sstatus
    80003ee4:	100027f3          	csrr	a5,sstatus
    80003ee8:	ffd7f793          	andi	a5,a5,-3
    80003eec:	10079073          	csrw	sstatus,a5
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	708080e7          	jalr	1800(ra) # 800025f8 <mycpu>
    80003ef8:	07852783          	lw	a5,120(a0)
    80003efc:	02078663          	beqz	a5,80003f28 <push_off+0x5c>
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	6f8080e7          	jalr	1784(ra) # 800025f8 <mycpu>
    80003f08:	07852783          	lw	a5,120(a0)
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	01013403          	ld	s0,16(sp)
    80003f14:	0017879b          	addiw	a5,a5,1
    80003f18:	06f52c23          	sw	a5,120(a0)
    80003f1c:	00813483          	ld	s1,8(sp)
    80003f20:	02010113          	addi	sp,sp,32
    80003f24:	00008067          	ret
    80003f28:	0014d493          	srli	s1,s1,0x1
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	6cc080e7          	jalr	1740(ra) # 800025f8 <mycpu>
    80003f34:	0014f493          	andi	s1,s1,1
    80003f38:	06952e23          	sw	s1,124(a0)
    80003f3c:	fc5ff06f          	j	80003f00 <push_off+0x34>

0000000080003f40 <pop_off>:
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00813023          	sd	s0,0(sp)
    80003f48:	00113423          	sd	ra,8(sp)
    80003f4c:	01010413          	addi	s0,sp,16
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	6a8080e7          	jalr	1704(ra) # 800025f8 <mycpu>
    80003f58:	100027f3          	csrr	a5,sstatus
    80003f5c:	0027f793          	andi	a5,a5,2
    80003f60:	04079663          	bnez	a5,80003fac <pop_off+0x6c>
    80003f64:	07852783          	lw	a5,120(a0)
    80003f68:	02f05a63          	blez	a5,80003f9c <pop_off+0x5c>
    80003f6c:	fff7871b          	addiw	a4,a5,-1
    80003f70:	06e52c23          	sw	a4,120(a0)
    80003f74:	00071c63          	bnez	a4,80003f8c <pop_off+0x4c>
    80003f78:	07c52783          	lw	a5,124(a0)
    80003f7c:	00078863          	beqz	a5,80003f8c <pop_off+0x4c>
    80003f80:	100027f3          	csrr	a5,sstatus
    80003f84:	0027e793          	ori	a5,a5,2
    80003f88:	10079073          	csrw	sstatus,a5
    80003f8c:	00813083          	ld	ra,8(sp)
    80003f90:	00013403          	ld	s0,0(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret
    80003f9c:	00001517          	auipc	a0,0x1
    80003fa0:	35c50513          	addi	a0,a0,860 # 800052f8 <digits+0x48>
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	018080e7          	jalr	24(ra) # 80002fbc <panic>
    80003fac:	00001517          	auipc	a0,0x1
    80003fb0:	33450513          	addi	a0,a0,820 # 800052e0 <digits+0x30>
    80003fb4:	fffff097          	auipc	ra,0xfffff
    80003fb8:	008080e7          	jalr	8(ra) # 80002fbc <panic>

0000000080003fbc <push_on>:
    80003fbc:	fe010113          	addi	sp,sp,-32
    80003fc0:	00813823          	sd	s0,16(sp)
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00913423          	sd	s1,8(sp)
    80003fcc:	02010413          	addi	s0,sp,32
    80003fd0:	100024f3          	csrr	s1,sstatus
    80003fd4:	100027f3          	csrr	a5,sstatus
    80003fd8:	0027e793          	ori	a5,a5,2
    80003fdc:	10079073          	csrw	sstatus,a5
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	618080e7          	jalr	1560(ra) # 800025f8 <mycpu>
    80003fe8:	07852783          	lw	a5,120(a0)
    80003fec:	02078663          	beqz	a5,80004018 <push_on+0x5c>
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	608080e7          	jalr	1544(ra) # 800025f8 <mycpu>
    80003ff8:	07852783          	lw	a5,120(a0)
    80003ffc:	01813083          	ld	ra,24(sp)
    80004000:	01013403          	ld	s0,16(sp)
    80004004:	0017879b          	addiw	a5,a5,1
    80004008:	06f52c23          	sw	a5,120(a0)
    8000400c:	00813483          	ld	s1,8(sp)
    80004010:	02010113          	addi	sp,sp,32
    80004014:	00008067          	ret
    80004018:	0014d493          	srli	s1,s1,0x1
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	5dc080e7          	jalr	1500(ra) # 800025f8 <mycpu>
    80004024:	0014f493          	andi	s1,s1,1
    80004028:	06952e23          	sw	s1,124(a0)
    8000402c:	fc5ff06f          	j	80003ff0 <push_on+0x34>

0000000080004030 <pop_on>:
    80004030:	ff010113          	addi	sp,sp,-16
    80004034:	00813023          	sd	s0,0(sp)
    80004038:	00113423          	sd	ra,8(sp)
    8000403c:	01010413          	addi	s0,sp,16
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	5b8080e7          	jalr	1464(ra) # 800025f8 <mycpu>
    80004048:	100027f3          	csrr	a5,sstatus
    8000404c:	0027f793          	andi	a5,a5,2
    80004050:	04078463          	beqz	a5,80004098 <pop_on+0x68>
    80004054:	07852783          	lw	a5,120(a0)
    80004058:	02f05863          	blez	a5,80004088 <pop_on+0x58>
    8000405c:	fff7879b          	addiw	a5,a5,-1
    80004060:	06f52c23          	sw	a5,120(a0)
    80004064:	07853783          	ld	a5,120(a0)
    80004068:	00079863          	bnez	a5,80004078 <pop_on+0x48>
    8000406c:	100027f3          	csrr	a5,sstatus
    80004070:	ffd7f793          	andi	a5,a5,-3
    80004074:	10079073          	csrw	sstatus,a5
    80004078:	00813083          	ld	ra,8(sp)
    8000407c:	00013403          	ld	s0,0(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret
    80004088:	00001517          	auipc	a0,0x1
    8000408c:	29850513          	addi	a0,a0,664 # 80005320 <digits+0x70>
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	f2c080e7          	jalr	-212(ra) # 80002fbc <panic>
    80004098:	00001517          	auipc	a0,0x1
    8000409c:	26850513          	addi	a0,a0,616 # 80005300 <digits+0x50>
    800040a0:	fffff097          	auipc	ra,0xfffff
    800040a4:	f1c080e7          	jalr	-228(ra) # 80002fbc <panic>

00000000800040a8 <__memset>:
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00813423          	sd	s0,8(sp)
    800040b0:	01010413          	addi	s0,sp,16
    800040b4:	1a060e63          	beqz	a2,80004270 <__memset+0x1c8>
    800040b8:	40a007b3          	neg	a5,a0
    800040bc:	0077f793          	andi	a5,a5,7
    800040c0:	00778693          	addi	a3,a5,7
    800040c4:	00b00813          	li	a6,11
    800040c8:	0ff5f593          	andi	a1,a1,255
    800040cc:	fff6071b          	addiw	a4,a2,-1
    800040d0:	1b06e663          	bltu	a3,a6,8000427c <__memset+0x1d4>
    800040d4:	1cd76463          	bltu	a4,a3,8000429c <__memset+0x1f4>
    800040d8:	1a078e63          	beqz	a5,80004294 <__memset+0x1ec>
    800040dc:	00b50023          	sb	a1,0(a0)
    800040e0:	00100713          	li	a4,1
    800040e4:	1ae78463          	beq	a5,a4,8000428c <__memset+0x1e4>
    800040e8:	00b500a3          	sb	a1,1(a0)
    800040ec:	00200713          	li	a4,2
    800040f0:	1ae78a63          	beq	a5,a4,800042a4 <__memset+0x1fc>
    800040f4:	00b50123          	sb	a1,2(a0)
    800040f8:	00300713          	li	a4,3
    800040fc:	18e78463          	beq	a5,a4,80004284 <__memset+0x1dc>
    80004100:	00b501a3          	sb	a1,3(a0)
    80004104:	00400713          	li	a4,4
    80004108:	1ae78263          	beq	a5,a4,800042ac <__memset+0x204>
    8000410c:	00b50223          	sb	a1,4(a0)
    80004110:	00500713          	li	a4,5
    80004114:	1ae78063          	beq	a5,a4,800042b4 <__memset+0x20c>
    80004118:	00b502a3          	sb	a1,5(a0)
    8000411c:	00700713          	li	a4,7
    80004120:	18e79e63          	bne	a5,a4,800042bc <__memset+0x214>
    80004124:	00b50323          	sb	a1,6(a0)
    80004128:	00700e93          	li	t4,7
    8000412c:	00859713          	slli	a4,a1,0x8
    80004130:	00e5e733          	or	a4,a1,a4
    80004134:	01059e13          	slli	t3,a1,0x10
    80004138:	01c76e33          	or	t3,a4,t3
    8000413c:	01859313          	slli	t1,a1,0x18
    80004140:	006e6333          	or	t1,t3,t1
    80004144:	02059893          	slli	a7,a1,0x20
    80004148:	40f60e3b          	subw	t3,a2,a5
    8000414c:	011368b3          	or	a7,t1,a7
    80004150:	02859813          	slli	a6,a1,0x28
    80004154:	0108e833          	or	a6,a7,a6
    80004158:	03059693          	slli	a3,a1,0x30
    8000415c:	003e589b          	srliw	a7,t3,0x3
    80004160:	00d866b3          	or	a3,a6,a3
    80004164:	03859713          	slli	a4,a1,0x38
    80004168:	00389813          	slli	a6,a7,0x3
    8000416c:	00f507b3          	add	a5,a0,a5
    80004170:	00e6e733          	or	a4,a3,a4
    80004174:	000e089b          	sext.w	a7,t3
    80004178:	00f806b3          	add	a3,a6,a5
    8000417c:	00e7b023          	sd	a4,0(a5)
    80004180:	00878793          	addi	a5,a5,8
    80004184:	fed79ce3          	bne	a5,a3,8000417c <__memset+0xd4>
    80004188:	ff8e7793          	andi	a5,t3,-8
    8000418c:	0007871b          	sext.w	a4,a5
    80004190:	01d787bb          	addw	a5,a5,t4
    80004194:	0ce88e63          	beq	a7,a4,80004270 <__memset+0x1c8>
    80004198:	00f50733          	add	a4,a0,a5
    8000419c:	00b70023          	sb	a1,0(a4)
    800041a0:	0017871b          	addiw	a4,a5,1
    800041a4:	0cc77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041a8:	00e50733          	add	a4,a0,a4
    800041ac:	00b70023          	sb	a1,0(a4)
    800041b0:	0027871b          	addiw	a4,a5,2
    800041b4:	0ac77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041b8:	00e50733          	add	a4,a0,a4
    800041bc:	00b70023          	sb	a1,0(a4)
    800041c0:	0037871b          	addiw	a4,a5,3
    800041c4:	0ac77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041c8:	00e50733          	add	a4,a0,a4
    800041cc:	00b70023          	sb	a1,0(a4)
    800041d0:	0047871b          	addiw	a4,a5,4
    800041d4:	08c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	0057871b          	addiw	a4,a5,5
    800041e4:	08c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	0067871b          	addiw	a4,a5,6
    800041f4:	06c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	0077871b          	addiw	a4,a5,7
    80004204:	06c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00b70023          	sb	a1,0(a4)
    80004210:	0087871b          	addiw	a4,a5,8
    80004214:	04c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004218:	00e50733          	add	a4,a0,a4
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	0097871b          	addiw	a4,a5,9
    80004224:	04c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	00a7871b          	addiw	a4,a5,10
    80004234:	02c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	00b7871b          	addiw	a4,a5,11
    80004244:	02c77663          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	00c7871b          	addiw	a4,a5,12
    80004254:	00c77e63          	bgeu	a4,a2,80004270 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	00d7879b          	addiw	a5,a5,13
    80004264:	00c7f663          	bgeu	a5,a2,80004270 <__memset+0x1c8>
    80004268:	00f507b3          	add	a5,a0,a5
    8000426c:	00b78023          	sb	a1,0(a5)
    80004270:	00813403          	ld	s0,8(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret
    8000427c:	00b00693          	li	a3,11
    80004280:	e55ff06f          	j	800040d4 <__memset+0x2c>
    80004284:	00300e93          	li	t4,3
    80004288:	ea5ff06f          	j	8000412c <__memset+0x84>
    8000428c:	00100e93          	li	t4,1
    80004290:	e9dff06f          	j	8000412c <__memset+0x84>
    80004294:	00000e93          	li	t4,0
    80004298:	e95ff06f          	j	8000412c <__memset+0x84>
    8000429c:	00000793          	li	a5,0
    800042a0:	ef9ff06f          	j	80004198 <__memset+0xf0>
    800042a4:	00200e93          	li	t4,2
    800042a8:	e85ff06f          	j	8000412c <__memset+0x84>
    800042ac:	00400e93          	li	t4,4
    800042b0:	e7dff06f          	j	8000412c <__memset+0x84>
    800042b4:	00500e93          	li	t4,5
    800042b8:	e75ff06f          	j	8000412c <__memset+0x84>
    800042bc:	00600e93          	li	t4,6
    800042c0:	e6dff06f          	j	8000412c <__memset+0x84>

00000000800042c4 <__memmove>:
    800042c4:	ff010113          	addi	sp,sp,-16
    800042c8:	00813423          	sd	s0,8(sp)
    800042cc:	01010413          	addi	s0,sp,16
    800042d0:	0e060863          	beqz	a2,800043c0 <__memmove+0xfc>
    800042d4:	fff6069b          	addiw	a3,a2,-1
    800042d8:	0006881b          	sext.w	a6,a3
    800042dc:	0ea5e863          	bltu	a1,a0,800043cc <__memmove+0x108>
    800042e0:	00758713          	addi	a4,a1,7
    800042e4:	00a5e7b3          	or	a5,a1,a0
    800042e8:	40a70733          	sub	a4,a4,a0
    800042ec:	0077f793          	andi	a5,a5,7
    800042f0:	00f73713          	sltiu	a4,a4,15
    800042f4:	00174713          	xori	a4,a4,1
    800042f8:	0017b793          	seqz	a5,a5
    800042fc:	00e7f7b3          	and	a5,a5,a4
    80004300:	10078863          	beqz	a5,80004410 <__memmove+0x14c>
    80004304:	00900793          	li	a5,9
    80004308:	1107f463          	bgeu	a5,a6,80004410 <__memmove+0x14c>
    8000430c:	0036581b          	srliw	a6,a2,0x3
    80004310:	fff8081b          	addiw	a6,a6,-1
    80004314:	02081813          	slli	a6,a6,0x20
    80004318:	01d85893          	srli	a7,a6,0x1d
    8000431c:	00858813          	addi	a6,a1,8
    80004320:	00058793          	mv	a5,a1
    80004324:	00050713          	mv	a4,a0
    80004328:	01088833          	add	a6,a7,a6
    8000432c:	0007b883          	ld	a7,0(a5)
    80004330:	00878793          	addi	a5,a5,8
    80004334:	00870713          	addi	a4,a4,8
    80004338:	ff173c23          	sd	a7,-8(a4)
    8000433c:	ff0798e3          	bne	a5,a6,8000432c <__memmove+0x68>
    80004340:	ff867713          	andi	a4,a2,-8
    80004344:	02071793          	slli	a5,a4,0x20
    80004348:	0207d793          	srli	a5,a5,0x20
    8000434c:	00f585b3          	add	a1,a1,a5
    80004350:	40e686bb          	subw	a3,a3,a4
    80004354:	00f507b3          	add	a5,a0,a5
    80004358:	06e60463          	beq	a2,a4,800043c0 <__memmove+0xfc>
    8000435c:	0005c703          	lbu	a4,0(a1)
    80004360:	00e78023          	sb	a4,0(a5)
    80004364:	04068e63          	beqz	a3,800043c0 <__memmove+0xfc>
    80004368:	0015c603          	lbu	a2,1(a1)
    8000436c:	00100713          	li	a4,1
    80004370:	00c780a3          	sb	a2,1(a5)
    80004374:	04e68663          	beq	a3,a4,800043c0 <__memmove+0xfc>
    80004378:	0025c603          	lbu	a2,2(a1)
    8000437c:	00200713          	li	a4,2
    80004380:	00c78123          	sb	a2,2(a5)
    80004384:	02e68e63          	beq	a3,a4,800043c0 <__memmove+0xfc>
    80004388:	0035c603          	lbu	a2,3(a1)
    8000438c:	00300713          	li	a4,3
    80004390:	00c781a3          	sb	a2,3(a5)
    80004394:	02e68663          	beq	a3,a4,800043c0 <__memmove+0xfc>
    80004398:	0045c603          	lbu	a2,4(a1)
    8000439c:	00400713          	li	a4,4
    800043a0:	00c78223          	sb	a2,4(a5)
    800043a4:	00e68e63          	beq	a3,a4,800043c0 <__memmove+0xfc>
    800043a8:	0055c603          	lbu	a2,5(a1)
    800043ac:	00500713          	li	a4,5
    800043b0:	00c782a3          	sb	a2,5(a5)
    800043b4:	00e68663          	beq	a3,a4,800043c0 <__memmove+0xfc>
    800043b8:	0065c703          	lbu	a4,6(a1)
    800043bc:	00e78323          	sb	a4,6(a5)
    800043c0:	00813403          	ld	s0,8(sp)
    800043c4:	01010113          	addi	sp,sp,16
    800043c8:	00008067          	ret
    800043cc:	02061713          	slli	a4,a2,0x20
    800043d0:	02075713          	srli	a4,a4,0x20
    800043d4:	00e587b3          	add	a5,a1,a4
    800043d8:	f0f574e3          	bgeu	a0,a5,800042e0 <__memmove+0x1c>
    800043dc:	02069613          	slli	a2,a3,0x20
    800043e0:	02065613          	srli	a2,a2,0x20
    800043e4:	fff64613          	not	a2,a2
    800043e8:	00e50733          	add	a4,a0,a4
    800043ec:	00c78633          	add	a2,a5,a2
    800043f0:	fff7c683          	lbu	a3,-1(a5)
    800043f4:	fff78793          	addi	a5,a5,-1
    800043f8:	fff70713          	addi	a4,a4,-1
    800043fc:	00d70023          	sb	a3,0(a4)
    80004400:	fec798e3          	bne	a5,a2,800043f0 <__memmove+0x12c>
    80004404:	00813403          	ld	s0,8(sp)
    80004408:	01010113          	addi	sp,sp,16
    8000440c:	00008067          	ret
    80004410:	02069713          	slli	a4,a3,0x20
    80004414:	02075713          	srli	a4,a4,0x20
    80004418:	00170713          	addi	a4,a4,1
    8000441c:	00e50733          	add	a4,a0,a4
    80004420:	00050793          	mv	a5,a0
    80004424:	0005c683          	lbu	a3,0(a1)
    80004428:	00178793          	addi	a5,a5,1
    8000442c:	00158593          	addi	a1,a1,1
    80004430:	fed78fa3          	sb	a3,-1(a5)
    80004434:	fee798e3          	bne	a5,a4,80004424 <__memmove+0x160>
    80004438:	f89ff06f          	j	800043c0 <__memmove+0xfc>

000000008000443c <__putc>:
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00813823          	sd	s0,16(sp)
    80004444:	00113c23          	sd	ra,24(sp)
    80004448:	02010413          	addi	s0,sp,32
    8000444c:	00050793          	mv	a5,a0
    80004450:	fef40593          	addi	a1,s0,-17
    80004454:	00100613          	li	a2,1
    80004458:	00000513          	li	a0,0
    8000445c:	fef407a3          	sb	a5,-17(s0)
    80004460:	fffff097          	auipc	ra,0xfffff
    80004464:	b3c080e7          	jalr	-1220(ra) # 80002f9c <console_write>
    80004468:	01813083          	ld	ra,24(sp)
    8000446c:	01013403          	ld	s0,16(sp)
    80004470:	02010113          	addi	sp,sp,32
    80004474:	00008067          	ret

0000000080004478 <__getc>:
    80004478:	fe010113          	addi	sp,sp,-32
    8000447c:	00813823          	sd	s0,16(sp)
    80004480:	00113c23          	sd	ra,24(sp)
    80004484:	02010413          	addi	s0,sp,32
    80004488:	fe840593          	addi	a1,s0,-24
    8000448c:	00100613          	li	a2,1
    80004490:	00000513          	li	a0,0
    80004494:	fffff097          	auipc	ra,0xfffff
    80004498:	ae8080e7          	jalr	-1304(ra) # 80002f7c <console_read>
    8000449c:	fe844503          	lbu	a0,-24(s0)
    800044a0:	01813083          	ld	ra,24(sp)
    800044a4:	01013403          	ld	s0,16(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	00008067          	ret

00000000800044b0 <console_handler>:
    800044b0:	fe010113          	addi	sp,sp,-32
    800044b4:	00813823          	sd	s0,16(sp)
    800044b8:	00113c23          	sd	ra,24(sp)
    800044bc:	00913423          	sd	s1,8(sp)
    800044c0:	02010413          	addi	s0,sp,32
    800044c4:	14202773          	csrr	a4,scause
    800044c8:	100027f3          	csrr	a5,sstatus
    800044cc:	0027f793          	andi	a5,a5,2
    800044d0:	06079e63          	bnez	a5,8000454c <console_handler+0x9c>
    800044d4:	00074c63          	bltz	a4,800044ec <console_handler+0x3c>
    800044d8:	01813083          	ld	ra,24(sp)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	00813483          	ld	s1,8(sp)
    800044e4:	02010113          	addi	sp,sp,32
    800044e8:	00008067          	ret
    800044ec:	0ff77713          	andi	a4,a4,255
    800044f0:	00900793          	li	a5,9
    800044f4:	fef712e3          	bne	a4,a5,800044d8 <console_handler+0x28>
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	6dc080e7          	jalr	1756(ra) # 80002bd4 <plic_claim>
    80004500:	00a00793          	li	a5,10
    80004504:	00050493          	mv	s1,a0
    80004508:	02f50c63          	beq	a0,a5,80004540 <console_handler+0x90>
    8000450c:	fc0506e3          	beqz	a0,800044d8 <console_handler+0x28>
    80004510:	00050593          	mv	a1,a0
    80004514:	00001517          	auipc	a0,0x1
    80004518:	d1450513          	addi	a0,a0,-748 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    8000451c:	fffff097          	auipc	ra,0xfffff
    80004520:	afc080e7          	jalr	-1284(ra) # 80003018 <__printf>
    80004524:	01013403          	ld	s0,16(sp)
    80004528:	01813083          	ld	ra,24(sp)
    8000452c:	00048513          	mv	a0,s1
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	02010113          	addi	sp,sp,32
    80004538:	ffffe317          	auipc	t1,0xffffe
    8000453c:	6d430067          	jr	1748(t1) # 80002c0c <plic_complete>
    80004540:	fffff097          	auipc	ra,0xfffff
    80004544:	3e0080e7          	jalr	992(ra) # 80003920 <uartintr>
    80004548:	fddff06f          	j	80004524 <console_handler+0x74>
    8000454c:	00001517          	auipc	a0,0x1
    80004550:	ddc50513          	addi	a0,a0,-548 # 80005328 <digits+0x78>
    80004554:	fffff097          	auipc	ra,0xfffff
    80004558:	a68080e7          	jalr	-1432(ra) # 80002fbc <panic>
	...
