
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	a7013103          	ld	sp,-1424(sp) # 80005a70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	394020ef          	jal	ra,800023b0 <start>

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
    80001184:	37d000ef          	jal	ra,80001d00 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800013b4:	00000097          	auipc	ra,0x0
    800013b8:	654080e7          	jalr	1620(ra) # 80001a08 <_ZN3TCB5yieldEv>
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
    8000141c:	e6c080e7          	jalr	-404(ra) # 80002284 <_Z11printStringPKc>
        printInteger(i);
    80001420:	00048513          	mv	a0,s1
    80001424:	00001097          	auipc	ra,0x1
    80001428:	ed0080e7          	jalr	-304(ra) # 800022f4 <_Z12printIntegerm>
        printString("\n");
    8000142c:	00004517          	auipc	a0,0x4
    80001430:	cc450513          	addi	a0,a0,-828 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001434:	00001097          	auipc	ra,0x1
    80001438:	e50080e7          	jalr	-432(ra) # 80002284 <_Z11printStringPKc>
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
    800014bc:	dcc080e7          	jalr	-564(ra) # 80002284 <_Z11printStringPKc>
        printInteger(i);
    800014c0:	00048513          	mv	a0,s1
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	e30080e7          	jalr	-464(ra) # 800022f4 <_Z12printIntegerm>
        printString("\n");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	c2450513          	addi	a0,a0,-988 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	db0080e7          	jalr	-592(ra) # 80002284 <_Z11printStringPKc>
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
    80001530:	d58080e7          	jalr	-680(ra) # 80002284 <_Z11printStringPKc>
        printInteger(i);
    80001534:	00048513          	mv	a0,s1
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	dbc080e7          	jalr	-580(ra) # 800022f4 <_Z12printIntegerm>
        printString("\n");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	bb050513          	addi	a0,a0,-1104 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	d3c080e7          	jalr	-708(ra) # 80002284 <_Z11printStringPKc>
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
    8000156c:	d1c080e7          	jalr	-740(ra) # 80002284 <_Z11printStringPKc>
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
    8000158c:	cfc080e7          	jalr	-772(ra) # 80002284 <_Z11printStringPKc>
    printInteger(t1);
    80001590:	00090513          	mv	a0,s2
    80001594:	00001097          	auipc	ra,0x1
    80001598:	d60080e7          	jalr	-672(ra) # 800022f4 <_Z12printIntegerm>
    printString("\n");
    8000159c:	00004517          	auipc	a0,0x4
    800015a0:	b5450513          	addi	a0,a0,-1196 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	ce0080e7          	jalr	-800(ra) # 80002284 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015ac:	00c00513          	li	a0,12
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	d9c080e7          	jalr	-612(ra) # 8000134c <_ZL9fibonaccim>
    800015b8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	a9450513          	addi	a0,a0,-1388 # 80005050 <CONSOLE_STATUS+0x40>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	cc0080e7          	jalr	-832(ra) # 80002284 <_Z11printStringPKc>
    printInteger(result);
    800015cc:	00090513          	mv	a0,s2
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	d24080e7          	jalr	-732(ra) # 800022f4 <_Z12printIntegerm>
    printString("\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	b1850513          	addi	a0,a0,-1256 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	ca4080e7          	jalr	-860(ra) # 80002284 <_Z11printStringPKc>
    800015e8:	0380006f          	j	80001620 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800015ec:	00004517          	auipc	a0,0x4
    800015f0:	a4450513          	addi	a0,a0,-1468 # 80005030 <CONSOLE_STATUS+0x20>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	c90080e7          	jalr	-880(ra) # 80002284 <_Z11printStringPKc>
        printInteger(i);
    800015fc:	00048513          	mv	a0,s1
    80001600:	00001097          	auipc	ra,0x1
    80001604:	cf4080e7          	jalr	-780(ra) # 800022f4 <_Z12printIntegerm>
        printString("\n");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	ae850513          	addi	a0,a0,-1304 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	c74080e7          	jalr	-908(ra) # 80002284 <_Z11printStringPKc>
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
    8000166c:	c1c080e7          	jalr	-996(ra) # 80002284 <_Z11printStringPKc>
        printInteger(i);
    80001670:	00048513          	mv	a0,s1
    80001674:	00001097          	auipc	ra,0x1
    80001678:	c80080e7          	jalr	-896(ra) # 800022f4 <_Z12printIntegerm>
        printString("\n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	a7450513          	addi	a0,a0,-1420 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001684:	00001097          	auipc	ra,0x1
    80001688:	c00080e7          	jalr	-1024(ra) # 80002284 <_Z11printStringPKc>
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
    800016a8:	be0080e7          	jalr	-1056(ra) # 80002284 <_Z11printStringPKc>
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
    800016d4:	bb4080e7          	jalr	-1100(ra) # 80002284 <_Z11printStringPKc>
    printInteger(result);
    800016d8:	00090513          	mv	a0,s2
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	c18080e7          	jalr	-1000(ra) # 800022f4 <_Z12printIntegerm>
    printString("\n");
    800016e4:	00004517          	auipc	a0,0x4
    800016e8:	a0c50513          	addi	a0,a0,-1524 # 800050f0 <CONSOLE_STATUS+0xe0>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	b98080e7          	jalr	-1128(ra) # 80002284 <_Z11printStringPKc>
    800016f4:	0380006f          	j	8000172c <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800016f8:	00004517          	auipc	a0,0x4
    800016fc:	96850513          	addi	a0,a0,-1688 # 80005060 <CONSOLE_STATUS+0x50>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	b84080e7          	jalr	-1148(ra) # 80002284 <_Z11printStringPKc>
        printInteger(i);
    80001708:	00048513          	mv	a0,s1
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	be8080e7          	jalr	-1048(ra) # 800022f4 <_Z12printIntegerm>
        printString("\n");
    80001714:	00004517          	auipc	a0,0x4
    80001718:	9dc50513          	addi	a0,a0,-1572 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	b68080e7          	jalr	-1176(ra) # 80002284 <_Z11printStringPKc>
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

000000008000174c <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    8000174c:	fb010113          	addi	sp,sp,-80
    80001750:	04113423          	sd	ra,72(sp)
    80001754:	04813023          	sd	s0,64(sp)
    80001758:	02913c23          	sd	s1,56(sp)
    8000175c:	05010413          	addi	s0,sp,80
    MemoryAllocator::init();
    80001760:	00001097          	auipc	ra,0x1
    80001764:	9b0080e7          	jalr	-1616(ra) # 80002110 <_ZN15MemoryAllocator4initEv>
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001768:	00004797          	auipc	a5,0x4
    8000176c:	2f87b783          	ld	a5,760(a5) # 80005a60 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001770:	10579073          	csrw	stvec,a5

    int velicinaZaglavlja = 2 *sizeof(size_t); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE) *MEM_BLOCK_SIZE;
    80001774:	00004797          	auipc	a5,0x4
    80001778:	3147b783          	ld	a5,788(a5) # 80005a88 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000177c:	0007b503          	ld	a0,0(a5)
    80001780:	00004797          	auipc	a5,0x4
    80001784:	2d07b783          	ld	a5,720(a5) # 80005a50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001788:	0007b783          	ld	a5,0(a5)
    8000178c:	40f50533          	sub	a0,a0,a5
    80001790:	ff050513          	addi	a0,a0,-16
    char* niz = (char*)mem_alloc(maxMemorija); // celokupan prostor
    80001794:	fc057513          	andi	a0,a0,-64
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	a8c080e7          	jalr	-1396(ra) # 80001224 <_Z9mem_allocm>
    800017a0:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    800017a4:	10050263          	beqz	a0,800018a8 <main+0x15c>
        __putc('?');
    }

    int n = 10;
    char* niz2 = (char*)mem_alloc(n*sizeof(char));
    800017a8:	00a00513          	li	a0,10
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	a78080e7          	jalr	-1416(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    800017b4:	10050263          	beqz	a0,800018b8 <main+0x16c>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	9ec080e7          	jalr	-1556(ra) # 800021a8 <_ZN15MemoryAllocator8mem_freeEPKv>
    if(status != 0) {
    800017c4:	10051263          	bnez	a0,800018c8 <main+0x17c>
        __putc('?');
    }
    niz2 = (char*)mem_alloc(n*sizeof(char));
    800017c8:	00a00513          	li	a0,10
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	a58080e7          	jalr	-1448(ra) # 80001224 <_Z9mem_allocm>
    if(niz2 == nullptr) {
    800017d4:	10050263          	beqz	a0,800018d8 <main+0x18c>
    }



    //threads[0] = TCB::createThread(nullptr, nullptr);
    thread_create(&threads[0],nullptr, nullptr);
    800017d8:	00000613          	li	a2,0
    800017dc:	00000593          	li	a1,0
    800017e0:	fb840513          	addi	a0,s0,-72
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	aec080e7          	jalr	-1300(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    800017ec:	fb843703          	ld	a4,-72(s0)
    800017f0:	00004797          	auipc	a5,0x4
    800017f4:	2907b783          	ld	a5,656(a5) # 80005a80 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017f8:	00e7b023          	sd	a4,0(a5)

    //threads[1] = TCB::createThread(workerBodyA, nullptr);
    thread_create(&threads[1],workerBodyA, nullptr);
    800017fc:	00000613          	li	a2,0
    80001800:	00004597          	auipc	a1,0x4
    80001804:	2785b583          	ld	a1,632(a1) # 80005a78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001808:	fc040513          	addi	a0,s0,-64
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	ac4080e7          	jalr	-1340(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001814:	00004517          	auipc	a0,0x4
    80001818:	87450513          	addi	a0,a0,-1932 # 80005088 <CONSOLE_STATUS+0x78>
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	a68080e7          	jalr	-1432(ra) # 80002284 <_Z11printStringPKc>
    //threads[2] = TCB::createThread(workerBodyB , nullptr);
    thread_create(&threads[2],workerBodyB, nullptr);
    80001824:	00000613          	li	a2,0
    80001828:	00004597          	auipc	a1,0x4
    8000182c:	2685b583          	ld	a1,616(a1) # 80005a90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001830:	fc840513          	addi	a0,s0,-56
    80001834:	00000097          	auipc	ra,0x0
    80001838:	a9c080e7          	jalr	-1380(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000183c:	00004517          	auipc	a0,0x4
    80001840:	86450513          	addi	a0,a0,-1948 # 800050a0 <CONSOLE_STATUS+0x90>
    80001844:	00001097          	auipc	ra,0x1
    80001848:	a40080e7          	jalr	-1472(ra) # 80002284 <_Z11printStringPKc>
    //threads[3] = TCB::createThread(workerBodyC, nullptr);
    thread_create(&threads[3],workerBodyC, nullptr);
    8000184c:	00000613          	li	a2,0
    80001850:	00004597          	auipc	a1,0x4
    80001854:	2085b583          	ld	a1,520(a1) # 80005a58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001858:	fd040513          	addi	a0,s0,-48
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	a74080e7          	jalr	-1420(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001864:	00004517          	auipc	a0,0x4
    80001868:	85450513          	addi	a0,a0,-1964 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	a18080e7          	jalr	-1512(ra) # 80002284 <_Z11printStringPKc>
    //threads[4] = TCB::createThread(workerBodyD, nullptr);
    thread_create(&threads[4],workerBodyD, nullptr);
    80001874:	00000613          	li	a2,0
    80001878:	00004597          	auipc	a1,0x4
    8000187c:	2205b583          	ld	a1,544(a1) # 80005a98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001880:	fd840513          	addi	a0,s0,-40
    80001884:	00000097          	auipc	ra,0x0
    80001888:	a4c080e7          	jalr	-1460(ra) # 800012d0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000188c:	00004517          	auipc	a0,0x4
    80001890:	84450513          	addi	a0,a0,-1980 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001894:	00001097          	auipc	ra,0x1
    80001898:	9f0080e7          	jalr	-1552(ra) # 80002284 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000189c:	00200793          	li	a5,2
    800018a0:	1007a073          	csrs	sstatus,a5
}
    800018a4:	04c0006f          	j	800018f0 <main+0x1a4>
        __putc('?');
    800018a8:	03f00513          	li	a0,63
    800018ac:	00003097          	auipc	ra,0x3
    800018b0:	bc0080e7          	jalr	-1088(ra) # 8000446c <__putc>
    800018b4:	ef5ff06f          	j	800017a8 <main+0x5c>
        __putc('k');
    800018b8:	06b00513          	li	a0,107
    800018bc:	00003097          	auipc	ra,0x3
    800018c0:	bb0080e7          	jalr	-1104(ra) # 8000446c <__putc>
    800018c4:	ef5ff06f          	j	800017b8 <main+0x6c>
        __putc('?');
    800018c8:	03f00513          	li	a0,63
    800018cc:	00003097          	auipc	ra,0x3
    800018d0:	ba0080e7          	jalr	-1120(ra) # 8000446c <__putc>
    800018d4:	ef5ff06f          	j	800017c8 <main+0x7c>
        __putc('?');
    800018d8:	03f00513          	li	a0,63
    800018dc:	00003097          	auipc	ra,0x3
    800018e0:	b90080e7          	jalr	-1136(ra) # 8000446c <__putc>
    800018e4:	ef5ff06f          	j	800017d8 <main+0x8c>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	9a0080e7          	jalr	-1632(ra) # 80001288 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    800018f0:	fc043783          	ld	a5,-64(s0)

    void operator delete[](void *p) noexcept;

public:
    ~TCB(){TCB::operator delete[](stack);}
    bool isFinished() const {return finished;}
    800018f4:	0307c783          	lbu	a5,48(a5)
    800018f8:	fe0788e3          	beqz	a5,800018e8 <main+0x19c>
             threads[2]->isFinished() &&
    800018fc:	fc843783          	ld	a5,-56(s0)
    80001900:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    80001904:	fe0782e3          	beqz	a5,800018e8 <main+0x19c>
             threads[3]->isFinished() &&
    80001908:	fd043783          	ld	a5,-48(s0)
    8000190c:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    80001910:	fc078ce3          	beqz	a5,800018e8 <main+0x19c>
             threads[4]->isFinished()))
    80001914:	fd843783          	ld	a5,-40(s0)
    80001918:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    8000191c:	fc0786e3          	beqz	a5,800018e8 <main+0x19c>
    80001920:	fb840493          	addi	s1,s0,-72
    }

    for (auto &thread: threads)
    80001924:	fe040793          	addi	a5,s0,-32
    80001928:	00f48c63          	beq	s1,a5,80001940 <main+0x1f4>
    {
        TCB::deleteThread(thread);
    8000192c:	0004b503          	ld	a0,0(s1)
    80001930:	00000097          	auipc	ra,0x0
    80001934:	288080e7          	jalr	648(ra) # 80001bb8 <_ZN3TCB12deleteThreadEPS_>
    for (auto &thread: threads)
    80001938:	00848493          	addi	s1,s1,8
    8000193c:	fe9ff06f          	j	80001924 <main+0x1d8>
    }
    printString("Finished\n");
    80001940:	00003517          	auipc	a0,0x3
    80001944:	7a850513          	addi	a0,a0,1960 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	93c080e7          	jalr	-1732(ra) # 80002284 <_Z11printStringPKc>

    return 0;
}
    80001950:	00000513          	li	a0,0
    80001954:	04813083          	ld	ra,72(sp)
    80001958:	04013403          	ld	s0,64(sp)
    8000195c:	03813483          	ld	s1,56(sp)
    80001960:	05010113          	addi	sp,sp,80
    80001964:	00008067          	ret

0000000080001968 <_ZN3TCBnwEm>:

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

void *TCB::operator new(size_t n)
{
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00113423          	sd	ra,8(sp)
    80001970:	00813023          	sd	s0,0(sp)
    80001974:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	6dc080e7          	jalr	1756(ra) # 80002054 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t n)
{
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	6b4080e7          	jalr	1716(ra) # 80002054 <_ZN15MemoryAllocator9mem_allocEm>
}
    800019a8:	00813083          	ld	ra,8(sp)
    800019ac:	00013403          	ld	s0,0(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) noexcept
{
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	7e0080e7          	jalr	2016(ra) # 800021a8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800019d0:	00813083          	ld	ra,8(sp)
    800019d4:	00013403          	ld	s0,0(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *p) noexcept
{
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00113423          	sd	ra,8(sp)
    800019e8:	00813023          	sd	s0,0(sp)
    800019ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	7b8080e7          	jalr	1976(ra) # 800021a8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret

0000000080001a08 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00813423          	sd	s0,8(sp)
    80001a10:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001a14:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001a18:	00000073          	ecall
}
    80001a1c:	00813403          	ld	s0,8(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_ZN3TCB13threadWrapperEv>:
    TCB::dispatch();
    return 0;
}


void TCB::threadWrapper() {
    80001a28:	fe010113          	addi	sp,sp,-32
    80001a2c:	00113c23          	sd	ra,24(sp)
    80001a30:	00813823          	sd	s0,16(sp)
    80001a34:	00913423          	sd	s1,8(sp)
    80001a38:	02010413          	addi	s0,sp,32

    Riscv::popSppSpie();
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	2a4080e7          	jalr	676(ra) # 80001ce0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80001a44:	00004497          	auipc	s1,0x4
    80001a48:	0ac48493          	addi	s1,s1,172 # 80005af0 <_ZN3TCB7runningE>
    80001a4c:	0004b783          	ld	a5,0(s1)
    80001a50:	0007b703          	ld	a4,0(a5)
    80001a54:	0087b503          	ld	a0,8(a5)
    80001a58:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a5c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool f) { TCB::finished = f;}
    80001a60:	00100713          	li	a4,1
    80001a64:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	fa0080e7          	jalr	-96(ra) # 80001a08 <_ZN3TCB5yieldEv>
}
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	02010113          	addi	sp,sp,32
    80001a80:	00008067          	ret

0000000080001a84 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001a84:	fe010113          	addi	sp,sp,-32
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00913423          	sd	s1,8(sp)
    80001a94:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80001a98:	00004497          	auipc	s1,0x4
    80001a9c:	0584b483          	ld	s1,88(s1) # 80005af0 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001aa0:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){
    80001aa4:	02078c63          	beqz	a5,80001adc <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	4a4080e7          	jalr	1188(ra) # 80001f4c <_ZN9Scheduler3getEv>
    80001ab0:	00004797          	auipc	a5,0x4
    80001ab4:	04a7b023          	sd	a0,64(a5) # 80005af0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001ab8:	01850593          	addi	a1,a0,24
    80001abc:	01848513          	addi	a0,s1,24
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	750080e7          	jalr	1872(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ac8:	01813083          	ld	ra,24(sp)
    80001acc:	01013403          	ld	s0,16(sp)
    80001ad0:	00813483          	ld	s1,8(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret
        Scheduler::put(old);
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	4d4080e7          	jalr	1236(ra) # 80001fb4 <_ZN9Scheduler3putEP3TCB>
    80001ae8:	fc1ff06f          	j	80001aa8 <_ZN3TCB8dispatchEv+0x24>

0000000080001aec <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(Body body, void * argument, void*stek) {
    80001aec:	fd010113          	addi	sp,sp,-48
    80001af0:	02113423          	sd	ra,40(sp)
    80001af4:	02813023          	sd	s0,32(sp)
    80001af8:	00913c23          	sd	s1,24(sp)
    80001afc:	01213823          	sd	s2,16(sp)
    80001b00:	01313423          	sd	s3,8(sp)
    80001b04:	01413023          	sd	s4,0(sp)
    80001b08:	03010413          	addi	s0,sp,48
    80001b0c:	00050993          	mv	s3,a0
    80001b10:	00058a13          	mv	s4,a1
    80001b14:	00060913          	mv	s2,a2
    return new TCB(body,DEFAULT_TIME_SLICE, argument, stek);
    80001b18:	03800513          	li	a0,56
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	e4c080e7          	jalr	-436(ra) # 80001968 <_ZN3TCBnwEm>
    80001b24:	00050493          	mv	s1,a0
    context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                }),
                timeSlice(timeSlice),
                finished(false)
    80001b28:	01353023          	sd	s3,0(a0)
    80001b2c:	01453423          	sd	s4,8(a0)
    80001b30:	01253823          	sd	s2,16(a0)
    80001b34:	00000797          	auipc	a5,0x0
    80001b38:	ef478793          	addi	a5,a5,-268 # 80001a28 <_ZN3TCB13threadWrapperEv>
    80001b3c:	00f53c23          	sd	a5,24(a0)
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b40:	02090863          	beqz	s2,80001b70 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x84>
    80001b44:	00008637          	lui	a2,0x8
    80001b48:	00c90933          	add	s2,s2,a2
                finished(false)
    80001b4c:	0324b023          	sd	s2,32(s1)
    80001b50:	00200793          	li	a5,2
    80001b54:	02f4b423          	sd	a5,40(s1)
    80001b58:	02048823          	sb	zero,48(s1)
    {
        if(body!= nullptr) Scheduler::put(this);
    80001b5c:	02098c63          	beqz	s3,80001b94 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa8>
    80001b60:	00048513          	mv	a0,s1
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	450080e7          	jalr	1104(ra) # 80001fb4 <_ZN9Scheduler3putEP3TCB>
    80001b6c:	0280006f          	j	80001b94 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa8>
            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001b70:	00000913          	li	s2,0
    80001b74:	fd9ff06f          	j	80001b4c <_ZN3TCB12createThreadEPFvPvES0_S0_+0x60>
    80001b78:	00050913          	mv	s2,a0
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	e38080e7          	jalr	-456(ra) # 800019b8 <_ZN3TCBdlEPv>
    80001b88:	00090513          	mv	a0,s2
    80001b8c:	00005097          	auipc	ra,0x5
    80001b90:	05c080e7          	jalr	92(ra) # 80006be8 <_Unwind_Resume>
}
    80001b94:	00048513          	mv	a0,s1
    80001b98:	02813083          	ld	ra,40(sp)
    80001b9c:	02013403          	ld	s0,32(sp)
    80001ba0:	01813483          	ld	s1,24(sp)
    80001ba4:	01013903          	ld	s2,16(sp)
    80001ba8:	00813983          	ld	s3,8(sp)
    80001bac:	00013a03          	ld	s4,0(sp)
    80001bb0:	03010113          	addi	sp,sp,48
    80001bb4:	00008067          	ret

0000000080001bb8 <_ZN3TCB12deleteThreadEPS_>:
    delete thread;
    80001bb8:	04050463          	beqz	a0,80001c00 <_ZN3TCB12deleteThreadEPS_+0x48>
void TCB::deleteThread(TCB* thread){
    80001bbc:	fe010113          	addi	sp,sp,-32
    80001bc0:	00113c23          	sd	ra,24(sp)
    80001bc4:	00813823          	sd	s0,16(sp)
    80001bc8:	00913423          	sd	s1,8(sp)
    80001bcc:	02010413          	addi	s0,sp,32
    80001bd0:	00050493          	mv	s1,a0
    ~TCB(){TCB::operator delete[](stack);}
    80001bd4:	01053503          	ld	a0,16(a0)
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	e08080e7          	jalr	-504(ra) # 800019e0 <_ZN3TCBdaEPv>
    delete thread;
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	dd4080e7          	jalr	-556(ra) # 800019b8 <_ZN3TCBdlEPv>
}
    80001bec:	01813083          	ld	ra,24(sp)
    80001bf0:	01013403          	ld	s0,16(sp)
    80001bf4:	00813483          	ld	s1,8(sp)
    80001bf8:	02010113          	addi	sp,sp,32
    80001bfc:	00008067          	ret
    80001c00:	00008067          	ret

0000000080001c04 <_ZN3TCB10exitThreadEv>:
int TCB::exitThread(){
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    void setFinished(bool f) { TCB::finished = f;}
    80001c14:	00004797          	auipc	a5,0x4
    80001c18:	edc7b783          	ld	a5,-292(a5) # 80005af0 <_ZN3TCB7runningE>
    80001c1c:	00100713          	li	a4,1
    80001c20:	02e78823          	sb	a4,48(a5)
    TCB::dispatch();
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	e60080e7          	jalr	-416(ra) # 80001a84 <_ZN3TCB8dispatchEv>
}
    80001c2c:	00000513          	li	a0,0
    80001c30:	00813083          	ld	ra,8(sp)
    80001c34:	00013403          	ld	s0,0(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00113423          	sd	ra,8(sp)
    80001c48:	00813023          	sd	s0,0(sp)
    80001c4c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	5d4080e7          	jalr	1492(ra) # 80001224 <_Z9mem_allocm>
}
    80001c58:	00813083          	ld	ra,8(sp)
    80001c5c:	00013403          	ld	s0,0(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_Znam>:

void *operator new[](size_t n)
{
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001c78:	fffff097          	auipc	ra,0xfffff
    80001c7c:	5ac080e7          	jalr	1452(ra) # 80001224 <_Z9mem_allocm>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00113423          	sd	ra,8(sp)
    80001c98:	00813023          	sd	s0,0(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	5bc080e7          	jalr	1468(ra) # 8000125c <_Z8mem_freePv>
}
    80001ca8:	00813083          	ld	ra,8(sp)
    80001cac:	00013403          	ld	s0,0(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00113423          	sd	ra,8(sp)
    80001cc0:	00813023          	sd	s0,0(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001cc8:	fffff097          	auipc	ra,0xfffff
    80001ccc:	594080e7          	jalr	1428(ra) # 8000125c <_Z8mem_freePv>
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN5Riscv10popSppSpieEv>:

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001cec:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001cf0:	10200073          	sret
}
    80001cf4:	00813403          	ld	s0,8(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001d00:	f8010113          	addi	sp,sp,-128
    80001d04:	06113c23          	sd	ra,120(sp)
    80001d08:	06813823          	sd	s0,112(sp)
    80001d0c:	06913423          	sd	s1,104(sp)
    80001d10:	08010413          	addi	s0,sp,128

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001d14:	00050793          	mv	a5,a0
    80001d18:	faf43423          	sd	a5,-88(s0)
    return a0;
    80001d1c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d20:	14202773          	csrr	a4,scause
    80001d24:	fae43023          	sd	a4,-96(s0)
    return scause;
    80001d28:	fa043503          	ld	a0,-96(s0)

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
    80001d2c:	ff850693          	addi	a3,a0,-8
    80001d30:	00100713          	li	a4,1
    80001d34:	04d77c63          	bgeu	a4,a3,80001d8c <_ZN5Riscv20handleSupervisorTrapEv+0x8c>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001d38:	fff00793          	li	a5,-1
    80001d3c:	03f79793          	slli	a5,a5,0x3f
    80001d40:	00178793          	addi	a5,a5,1
    80001d44:	14f50263          	beq	a0,a5,80001e88 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
    80001d48:	fff00793          	li	a5,-1
    80001d4c:	03f79793          	slli	a5,a5,0x3f
    80001d50:	00978793          	addi	a5,a5,9
    80001d54:	1af50663          	beq	a0,a5,80001f00 <_ZN5Riscv20handleSupervisorTrapEv+0x200>
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	59c080e7          	jalr	1436(ra) # 800022f4 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d60:	141027f3          	csrr	a5,sepc
    80001d64:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d68:	fd843503          	ld	a0,-40(s0)
        printInteger(r_sepc());
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	588080e7          	jalr	1416(ra) # 800022f4 <_Z12printIntegerm>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001d74:	143027f3          	csrr	a5,stval
    80001d78:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80001d7c:	fd043503          	ld	a0,-48(s0)
        printInteger(r_stval());
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	574080e7          	jalr	1396(ra) # 800022f4 <_Z12printIntegerm>
    }
    80001d88:	0700006f          	j	80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d8c:	14102773          	csrr	a4,sepc
    80001d90:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001d94:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() +4;
    80001d98:	00470713          	addi	a4,a4,4
    80001d9c:	f8e43023          	sd	a4,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001da0:	10002773          	csrr	a4,sstatus
    80001da4:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    80001da8:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80001dac:	f8e43423          	sd	a4,-120(s0)
        switch (ra) {
    80001db0:	01300713          	li	a4,19
    80001db4:	02f76a63          	bltu	a4,a5,80001de8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80001db8:	00279793          	slli	a5,a5,0x2
    80001dbc:	00003717          	auipc	a4,0x3
    80001dc0:	33870713          	addi	a4,a4,824 # 800050f4 <CONSOLE_STATUS+0xe4>
    80001dc4:	00e787b3          	add	a5,a5,a4
    80001dc8:	0007a783          	lw	a5,0(a5)
    80001dcc:	00e787b3          	add	a5,a5,a4
    80001dd0:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1":"=r"(size));
    80001dd4:	00058513          	mv	a0,a1
                mallocr = MemoryAllocator::mem_alloc(size);
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	27c080e7          	jalr	636(ra) # 80002054 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
    80001de0:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80001de4:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    80001de8:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001dec:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001df0:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001df4:	14179073          	csrw	sepc,a5
    80001df8:	07813083          	ld	ra,120(sp)
    80001dfc:	07013403          	ld	s0,112(sp)
    80001e00:	06813483          	ld	s1,104(sp)
    80001e04:	08010113          	addi	sp,sp,128
    80001e08:	00008067          	ret
                __asm__ volatile("mv %0, a1":"=r"(freep));
    80001e0c:	00058513          	mv	a0,a1
                greska = MemoryAllocator::mem_free(freep);
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	398080e7          	jalr	920(ra) # 800021a8 <_ZN15MemoryAllocator8mem_freeEPKv>
                __asm__ volatile("mv t0, %0" ::"r"(greska));
    80001e18:	00050293          	mv	t0,a0
                __asm__ volatile("sd t0, 80(x8)");
    80001e1c:	04543823          	sd	t0,80(s0)
                break;
    80001e20:	fc9ff06f          	j	80001de8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                __asm__ volatile("ld %0, 88(x8)": "=r"(handle));
    80001e24:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
    80001e28:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
    80001e2c:	06843583          	ld	a1,104(s0)
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
    80001e30:	07043603          	ld	a2,112(s0)
                *handle = TCB::createThread(start_routine,arg, stek);
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	cb8080e7          	jalr	-840(ra) # 80001aec <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80001e3c:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) ret =0;
    80001e40:	00050a63          	beqz	a0,80001e54 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    80001e44:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80001e48:	00078293          	mv	t0,a5
                __asm__ volatile("sd t0, 80(x8)");
    80001e4c:	04543823          	sd	t0,80(s0)
                break;
    80001e50:	f99ff06f          	j	80001de8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                else ret = -1;
    80001e54:	fff00793          	li	a5,-1
    80001e58:	ff1ff06f          	j	80001e48 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                ret = TCB::exitThread();
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	da8080e7          	jalr	-600(ra) # 80001c04 <_ZN3TCB10exitThreadEv>
                __asm__ volatile("mv t0, %0" ::"r"(ret));
    80001e64:	00050293          	mv	t0,a0
                __asm__ volatile("sw t0, 80(x8)");
    80001e68:	04542823          	sw	t0,80(s0)
                break;
    80001e6c:	f7dff06f          	j	80001de8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
                TCB::timeSliceCounter=0;
    80001e70:	00004797          	auipc	a5,0x4
    80001e74:	bf87b783          	ld	a5,-1032(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e78:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	c08080e7          	jalr	-1016(ra) # 80001a84 <_ZN3TCB8dispatchEv>
                break;
    80001e84:	f65ff06f          	j	80001de8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e88:	00200793          	li	a5,2
    80001e8c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001e90:	00004717          	auipc	a4,0x4
    80001e94:	bd873703          	ld	a4,-1064(a4) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e98:	00073783          	ld	a5,0(a4)
    80001e9c:	00178793          	addi	a5,a5,1
    80001ea0:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80001ea4:	00004717          	auipc	a4,0x4
    80001ea8:	bdc73703          	ld	a4,-1060(a4) # 80005a80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001eac:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001eb0:	02873703          	ld	a4,40(a4)
    80001eb4:	f4e7e2e3          	bltu	a5,a4,80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001eb8:	141027f3          	csrr	a5,sepc
    80001ebc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001ec0:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    80001ec4:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ec8:	100027f3          	csrr	a5,sstatus
    80001ecc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001ed0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    80001ed4:	f8f43c23          	sd	a5,-104(s0)
            TCB::timeSliceCounter=0;
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	b907b783          	ld	a5,-1136(a5) # 80005a68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ee0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	ba0080e7          	jalr	-1120(ra) # 80001a84 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001eec:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ef0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001ef4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ef8:	14179073          	csrw	sepc,a5
}
    80001efc:	efdff06f          	j	80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        console_handler();
    80001f00:	00002097          	auipc	ra,0x2
    80001f04:	5e0080e7          	jalr	1504(ra) # 800044e0 <console_handler>
    80001f08:	ef1ff06f          	j	80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>

0000000080001f0c <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void    Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00813423          	sd	s0,8(sp)
    80001f14:	01010413          	addi	s0,sp,16
    80001f18:	00100793          	li	a5,1
    80001f1c:	00f50863          	beq	a0,a5,80001f2c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret
    80001f2c:	000107b7          	lui	a5,0x10
    80001f30:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f34:	fef596e3          	bne	a1,a5,80001f20 <_Z41__static_initialization_and_destruction_0ii+0x14>
                Elem(T*data,Elem * next) : data(data), next(next){};
            };
            Elem*head,*tail;

        public:
            List():head(0), tail(0){}
    80001f38:	00004797          	auipc	a5,0x4
    80001f3c:	bc878793          	addi	a5,a5,-1080 # 80005b00 <_ZN9Scheduler16readyThreadQueueE>
    80001f40:	0007b023          	sd	zero,0(a5)
    80001f44:	0007b423          	sd	zero,8(a5)
    80001f48:	fd9ff06f          	j	80001f20 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f4c <_ZN9Scheduler3getEv>:
TCB * Scheduler::get() {
    80001f4c:	fe010113          	addi	sp,sp,-32
    80001f50:	00113c23          	sd	ra,24(sp)
    80001f54:	00813823          	sd	s0,16(sp)
    80001f58:	00913423          	sd	s1,8(sp)
    80001f5c:	02010413          	addi	s0,sp,32
                    head= tail = elem;
                }
            }

            T* removeFirst(){
                if(!head)return 0;
    80001f60:	00004517          	auipc	a0,0x4
    80001f64:	ba053503          	ld	a0,-1120(a0) # 80005b00 <_ZN9Scheduler16readyThreadQueueE>
    80001f68:	04050263          	beqz	a0,80001fac <_ZN9Scheduler3getEv+0x60>
                Elem *elem = head;
                head = head->next;
    80001f6c:	00853783          	ld	a5,8(a0)
    80001f70:	00004717          	auipc	a4,0x4
    80001f74:	b8f73823          	sd	a5,-1136(a4) # 80005b00 <_ZN9Scheduler16readyThreadQueueE>
                if(!head) tail = 0;
    80001f78:	02078463          	beqz	a5,80001fa0 <_ZN9Scheduler3getEv+0x54>
                T *ret = elem->data;
    80001f7c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(p);
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	228080e7          	jalr	552(ra) # 800021a8 <_ZN15MemoryAllocator8mem_freeEPKv>
}
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret
                if(!head) tail = 0;
    80001fa0:	00004797          	auipc	a5,0x4
    80001fa4:	b607b423          	sd	zero,-1176(a5) # 80005b08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fa8:	fd5ff06f          	j	80001f7c <_ZN9Scheduler3getEv+0x30>
                if(!head)return 0;
    80001fac:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001fb0:	fd9ff06f          	j	80001f88 <_ZN9Scheduler3getEv+0x3c>

0000000080001fb4 <_ZN9Scheduler3putEP3TCB>:
void    Scheduler::put(TCB *ccb) {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050493          	mv	s1,a0
        return MemoryAllocator::mem_alloc(n);
    80001fcc:	01000513          	li	a0,16
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	084080e7          	jalr	132(ra) # 80002054 <_ZN15MemoryAllocator9mem_allocEm>
                elem->data=data;
    80001fd8:	00953023          	sd	s1,0(a0)
                elem->next=0;
    80001fdc:	00053423          	sd	zero,8(a0)
                if(tail){
    80001fe0:	00004797          	auipc	a5,0x4
    80001fe4:	b287b783          	ld	a5,-1240(a5) # 80005b08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001fe8:	02078263          	beqz	a5,8000200c <_ZN9Scheduler3putEP3TCB+0x58>
                    tail->next = elem;
    80001fec:	00a7b423          	sd	a0,8(a5)
                    tail = elem;
    80001ff0:	00004797          	auipc	a5,0x4
    80001ff4:	b0a7bc23          	sd	a0,-1256(a5) # 80005b08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret
                    head= tail = elem;
    8000200c:	00004797          	auipc	a5,0x4
    80002010:	af478793          	addi	a5,a5,-1292 # 80005b00 <_ZN9Scheduler16readyThreadQueueE>
    80002014:	00a7b423          	sd	a0,8(a5)
    80002018:	00a7b023          	sd	a0,0(a5)
    8000201c:	fddff06f          	j	80001ff8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002020 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    80002030:	000105b7          	lui	a1,0x10
    80002034:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002038:	00100513          	li	a0,1
    8000203c:	00000097          	auipc	ra,0x0
    80002040:	ed0080e7          	jalr	-304(ra) # 80001f0c <_Z41__static_initialization_and_destruction_0ii>
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeMem *MemoryAllocator::freememhead = nullptr;
void* MemoryAllocator::mem_alloc( size_t size) {
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00813423          	sd	s0,8(sp)
    8000205c:	01010413          	addi	s0,sp,16
    80002060:	00050793          	mv	a5,a0
   else freememhead = sledeci;
   return (void *)(tek+1);


*/
    FreeMem* tek = freememhead;
    80002064:	00004517          	auipc	a0,0x4
    80002068:	aac53503          	ld	a0,-1364(a0) # 80005b10 <_ZN15MemoryAllocator11freememheadE>
    FreeMem* predhodni = nullptr;
    FreeMem* sledeci = nullptr;

    size_t sizei = 0;

    if(size % MEM_BLOCK_SIZE == 0)  sizei = size;
    8000206c:	03f7f713          	andi	a4,a5,63
    80002070:	00070663          	beqz	a4,8000207c <_ZN15MemoryAllocator9mem_allocEm+0x28>
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        sizei = size - rem + MEM_BLOCK_SIZE;
    80002074:	fc07f793          	andi	a5,a5,-64
    80002078:	04078793          	addi	a5,a5,64
    }


    if(tek && tek->size < sizei){
    8000207c:	02050863          	beqz	a0,800020ac <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002080:	00853703          	ld	a4,8(a0)
    80002084:	02f77863          	bgeu	a4,a5,800020b4 <_ZN15MemoryAllocator9mem_allocEm+0x60>
        predhodni = tek;
    80002088:	00050693          	mv	a3,a0
        tek = tek->sled;
    8000208c:	00053503          	ld	a0,0(a0)
    80002090:	00c0006f          	j	8000209c <_ZN15MemoryAllocator9mem_allocEm+0x48>
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
            predhodni = tek;
    80002094:	00050693          	mv	a3,a0
        for(; tek!= nullptr && tek->size < sizei; tek =tek->sled){
    80002098:	00053503          	ld	a0,0(a0)
    8000209c:	00050e63          	beqz	a0,800020b8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800020a0:	00853703          	ld	a4,8(a0)
    800020a4:	fef768e3          	bltu	a4,a5,80002094 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800020a8:	0100006f          	j	800020b8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    FreeMem* predhodni = nullptr;
    800020ac:	00050693          	mv	a3,a0
    800020b0:	0080006f          	j	800020b8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800020b4:	00000693          	li	a3,0
        };
    }

    if(tek == nullptr) return nullptr; // nema mesta
    800020b8:	02050c63          	beqz	a0,800020f0 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    else if(tek->size > sizei){ // nisu iste
    800020bc:	00853703          	ld	a4,8(a0)
    800020c0:	02e7fe63          	bgeu	a5,a4,800020fc <_ZN15MemoryAllocator9mem_allocEm+0xa8>
        size_t pom = tek->size;
        tek->size = sizei;
    800020c4:	00f53423          	sd	a5,8(a0)
        sledeci =(FreeMem*) (sizei + sizeof(FreeMem) + (size_t)tek);
    800020c8:	00f505b3          	add	a1,a0,a5
    800020cc:	01058613          	addi	a2,a1,16
        sledeci->size = pom -sizei -sizeof(FreeMem);
    800020d0:	40f707b3          	sub	a5,a4,a5
    800020d4:	ff078793          	addi	a5,a5,-16
    800020d8:	00f63423          	sd	a5,8(a2) # 8008 <_entry-0x7fff7ff8>
        sledeci->sled = tek->sled;
    800020dc:	00053783          	ld	a5,0(a0)
    800020e0:	00f5b823          	sd	a5,16(a1)
    }
    else sledeci = tek->sled; //iste su vel

    if (predhodni != nullptr) predhodni->sled = sledeci;
    800020e4:	02068063          	beqz	a3,80002104 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800020e8:	00c6b023          	sd	a2,0(a3)
    else freememhead = sledeci;

    return (void* ) (tek+1);
    800020ec:	01050513          	addi	a0,a0,16
}
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
    else sledeci = tek->sled; //iste su vel
    800020fc:	00053603          	ld	a2,0(a0)
    80002100:	fe5ff06f          	j	800020e4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    else freememhead = sledeci;
    80002104:	00004797          	auipc	a5,0x4
    80002108:	a0c7b623          	sd	a2,-1524(a5) # 80005b10 <_ZN15MemoryAllocator11freememheadE>
    8000210c:	fe1ff06f          	j	800020ec <_ZN15MemoryAllocator9mem_allocEm+0x98>

0000000080002110 <_ZN15MemoryAllocator4initEv>:
        join(tek);
        join(currFree);
    }
    return 0;
}
void MemoryAllocator::init() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    MemoryAllocator::freememhead = (MemoryAllocator::FreeMem*) HEAP_START_ADDR;
    8000211c:	00004797          	auipc	a5,0x4
    80002120:	9347b783          	ld	a5,-1740(a5) # 80005a50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002124:	0007b703          	ld	a4,0(a5)
    80002128:	00004797          	auipc	a5,0x4
    8000212c:	9ee7b423          	sd	a4,-1560(a5) # 80005b10 <_ZN15MemoryAllocator11freememheadE>
    * MemoryAllocator::freememhead = {nullptr, (uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR - sizeof(FreeMem)};
    80002130:	00004797          	auipc	a5,0x4
    80002134:	9587b783          	ld	a5,-1704(a5) # 80005a88 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002138:	0007b783          	ld	a5,0(a5)
    8000213c:	40e787b3          	sub	a5,a5,a4
    80002140:	ff078793          	addi	a5,a5,-16
    80002144:	00073023          	sd	zero,0(a4)
    80002148:	00f73423          	sd	a5,8(a4)
};
    8000214c:	00813403          	ld	s0,8(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>:


int MemoryAllocator::join (FreeMem* tek) {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00813423          	sd	s0,8(sp)
    80002160:	01010413          	addi	s0,sp,16

    if(tek->sled && (size_t)tek + sizeof(FreeMem) + tek->size == (size_t)tek->sled) {
    80002164:	00053783          	ld	a5,0(a0)
    80002168:	00078a63          	beqz	a5,8000217c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>
    8000216c:	00853683          	ld	a3,8(a0)
    80002170:	00d50733          	add	a4,a0,a3
    80002174:	01070713          	addi	a4,a4,16
    80002178:	00f70a63          	beq	a4,a5,8000218c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x34>

        tek->size += tek->sled->size + sizeof(FreeMem);
        tek->sled = tek->sled->sled;
    }
    return 0;
}
    8000217c:	00000513          	li	a0,0
    80002180:	00813403          	ld	s0,8(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret
        tek->size += tek->sled->size + sizeof(FreeMem);
    8000218c:	0087b703          	ld	a4,8(a5)
    80002190:	00e686b3          	add	a3,a3,a4
    80002194:	01068693          	addi	a3,a3,16
    80002198:	00d53423          	sd	a3,8(a0)
        tek->sled = tek->sled->sled;
    8000219c:	0007b783          	ld	a5,0(a5)
    800021a0:	00f53023          	sd	a5,0(a0)
    800021a4:	fd9ff06f          	j	8000217c <_ZN15MemoryAllocator4joinEPNS_7FreeMemE+0x24>

00000000800021a8 <_ZN15MemoryAllocator8mem_freeEPKv>:
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    800021a8:	0c050263          	beqz	a0,8000226c <_ZN15MemoryAllocator8mem_freeEPKv+0xc4>
    800021ac:	00050713          	mv	a4,a0
    800021b0:	00004797          	auipc	a5,0x4
    800021b4:	8a07b783          	ld	a5,-1888(a5) # 80005a50 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021b8:	0007b783          	ld	a5,0(a5)
    800021bc:	0af56c63          	bltu	a0,a5,80002274 <_ZN15MemoryAllocator8mem_freeEPKv+0xcc>
    800021c0:	00004797          	auipc	a5,0x4
    800021c4:	8c87b783          	ld	a5,-1848(a5) # 80005a88 <_GLOBAL_OFFSET_TABLE_+0x40>
    800021c8:	0007b783          	ld	a5,0(a5)
    800021cc:	0af57863          	bgeu	a0,a5,8000227c <_ZN15MemoryAllocator8mem_freeEPKv+0xd4>
    FreeMem* tek = (FreeMem*)((char*)addr - sizeof(FreeMem));
    800021d0:	ff050513          	addi	a0,a0,-16
    if (freememhead == nullptr) {
    800021d4:	00004797          	auipc	a5,0x4
    800021d8:	93c7b783          	ld	a5,-1732(a5) # 80005b10 <_ZN15MemoryAllocator11freememheadE>
    800021dc:	06078063          	beqz	a5,8000223c <_ZN15MemoryAllocator8mem_freeEPKv+0x94>
int MemoryAllocator::mem_free(const void * addr) {
    800021e0:	fe010113          	addi	sp,sp,-32
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	00813823          	sd	s0,16(sp)
    800021ec:	00913423          	sd	s1,8(sp)
    800021f0:	02010413          	addi	s0,sp,32
    else if((char*)tek < (char*)freememhead) {
    800021f4:	04f56e63          	bltu	a0,a5,80002250 <_ZN15MemoryAllocator8mem_freeEPKv+0xa8>
        for(currFree = freememhead; currFree->sled && (size_t)(currFree->sled) < (size_t) tek; currFree = currFree->sled);
    800021f8:	00078493          	mv	s1,a5
    800021fc:	0007b783          	ld	a5,0(a5)
    80002200:	00078463          	beqz	a5,80002208 <_ZN15MemoryAllocator8mem_freeEPKv+0x60>
    80002204:	fea7eae3          	bltu	a5,a0,800021f8 <_ZN15MemoryAllocator8mem_freeEPKv+0x50>
        tek->sled = currFree->sled;
    80002208:	fef73823          	sd	a5,-16(a4)
        currFree->sled = tek;
    8000220c:	00a4b023          	sd	a0,0(s1)
        join(tek);
    80002210:	00000097          	auipc	ra,0x0
    80002214:	f48080e7          	jalr	-184(ra) # 80002158 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
        join(currFree);
    80002218:	00048513          	mv	a0,s1
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	f3c080e7          	jalr	-196(ra) # 80002158 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002224:	00000513          	li	a0,0
}
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret
        freememhead = tek;
    8000223c:	00004797          	auipc	a5,0x4
    80002240:	8ca7ba23          	sd	a0,-1836(a5) # 80005b10 <_ZN15MemoryAllocator11freememheadE>
        tek->sled = nullptr;
    80002244:	fe073823          	sd	zero,-16(a4)
    return 0;
    80002248:	00000513          	li	a0,0
    8000224c:	00008067          	ret
        tek->sled = freememhead;
    80002250:	fef73823          	sd	a5,-16(a4)
        freememhead = tek;
    80002254:	00004797          	auipc	a5,0x4
    80002258:	8aa7be23          	sd	a0,-1860(a5) # 80005b10 <_ZN15MemoryAllocator11freememheadE>
        join(freememhead);
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	efc080e7          	jalr	-260(ra) # 80002158 <_ZN15MemoryAllocator4joinEPNS_7FreeMemE>
    return 0;
    80002264:	00000513          	li	a0,0
    80002268:	fc1ff06f          	j	80002228 <_ZN15MemoryAllocator8mem_freeEPKv+0x80>
    if(addr == nullptr || addr < HEAP_START_ADDR || addr >= HEAP_END_ADDR) return -1;
    8000226c:	fff00513          	li	a0,-1
    80002270:	00008067          	ret
    80002274:	fff00513          	li	a0,-1
    80002278:	00008067          	ret
    8000227c:	fff00513          	li	a0,-1
}
    80002280:	00008067          	ret

0000000080002284 <_Z11printStringPKc>:
//

#include "../h/print.hpp"


void printString(char const *string){
    80002284:	fd010113          	addi	sp,sp,-48
    80002288:	02113423          	sd	ra,40(sp)
    8000228c:	02813023          	sd	s0,32(sp)
    80002290:	00913c23          	sd	s1,24(sp)
    80002294:	01213823          	sd	s2,16(sp)
    80002298:	03010413          	addi	s0,sp,48
    8000229c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022a0:	100027f3          	csrr	a5,sstatus
    800022a4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800022a8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022ac:	00200793          	li	a5,2
    800022b0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(*string !='\0'){
    800022b4:	0004c503          	lbu	a0,0(s1)
    800022b8:	00050a63          	beqz	a0,800022cc <_Z11printStringPKc+0x48>
        __putc(*string);
    800022bc:	00002097          	auipc	ra,0x2
    800022c0:	1b0080e7          	jalr	432(ra) # 8000446c <__putc>
        string++;
    800022c4:	00148493          	addi	s1,s1,1
    while(*string !='\0'){
    800022c8:	fedff06f          	j	800022b4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800022cc:	0009091b          	sext.w	s2,s2
    800022d0:	00297913          	andi	s2,s2,2
    800022d4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800022d8:	10092073          	csrs	sstatus,s2
}
    800022dc:	02813083          	ld	ra,40(sp)
    800022e0:	02013403          	ld	s0,32(sp)
    800022e4:	01813483          	ld	s1,24(sp)
    800022e8:	01013903          	ld	s2,16(sp)
    800022ec:	03010113          	addi	sp,sp,48
    800022f0:	00008067          	ret

00000000800022f4 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    800022f4:	fc010113          	addi	sp,sp,-64
    800022f8:	02113c23          	sd	ra,56(sp)
    800022fc:	02813823          	sd	s0,48(sp)
    80002300:	02913423          	sd	s1,40(sp)
    80002304:	03213023          	sd	s2,32(sp)
    80002308:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000230c:	100027f3          	csrr	a5,sstatus
    80002310:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002314:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002318:	00200793          	li	a5,2
    8000231c:	1007b073          	csrc	sstatus,a5

    neg = 0;
    if(integer<0){
        neg= 1;
        x= -integer;
    }else x=integer;
    80002320:	0005051b          	sext.w	a0,a0
    i=0;
    80002324:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x%10];
    80002328:	00a00613          	li	a2,10
    8000232c:	02c5773b          	remuw	a4,a0,a2
    80002330:	02071693          	slli	a3,a4,0x20
    80002334:	0206d693          	srli	a3,a3,0x20
    80002338:	00003717          	auipc	a4,0x3
    8000233c:	e1070713          	addi	a4,a4,-496 # 80005148 <_ZZ12printIntegermE6digits>
    80002340:	00d70733          	add	a4,a4,a3
    80002344:	00074703          	lbu	a4,0(a4)
    80002348:	fe040693          	addi	a3,s0,-32
    8000234c:	009687b3          	add	a5,a3,s1
    80002350:	0014849b          	addiw	s1,s1,1
    80002354:	fee78823          	sb	a4,-16(a5)
    }while ((x/=10)!=0);
    80002358:	0005071b          	sext.w	a4,a0
    8000235c:	02c5553b          	divuw	a0,a0,a2
    80002360:	00900793          	li	a5,9
    80002364:	fce7e2e3          	bltu	a5,a4,80002328 <_Z12printIntegerm+0x34>
    if(neg)
        buf[i++]='-';
    while(--i >=0) __putc(buf[i]);
    80002368:	fff4849b          	addiw	s1,s1,-1
    8000236c:	0004ce63          	bltz	s1,80002388 <_Z12printIntegerm+0x94>
    80002370:	fe040793          	addi	a5,s0,-32
    80002374:	009787b3          	add	a5,a5,s1
    80002378:	ff07c503          	lbu	a0,-16(a5)
    8000237c:	00002097          	auipc	ra,0x2
    80002380:	0f0080e7          	jalr	240(ra) # 8000446c <__putc>
    80002384:	fe5ff06f          	j	80002368 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002388:	0009091b          	sext.w	s2,s2
    8000238c:	00297913          	andi	s2,s2,2
    80002390:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002394:	10092073          	csrs	sstatus,s2

    80002398:	03813083          	ld	ra,56(sp)
    8000239c:	03013403          	ld	s0,48(sp)
    800023a0:	02813483          	ld	s1,40(sp)
    800023a4:	02013903          	ld	s2,32(sp)
    800023a8:	04010113          	addi	sp,sp,64
    800023ac:	00008067          	ret

00000000800023b0 <start>:
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    800023bc:	300027f3          	csrr	a5,mstatus
    800023c0:	ffffe737          	lui	a4,0xffffe
    800023c4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7a7f>
    800023c8:	00e7f7b3          	and	a5,a5,a4
    800023cc:	00001737          	lui	a4,0x1
    800023d0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800023d4:	00e7e7b3          	or	a5,a5,a4
    800023d8:	30079073          	csrw	mstatus,a5
    800023dc:	00000797          	auipc	a5,0x0
    800023e0:	16078793          	addi	a5,a5,352 # 8000253c <system_main>
    800023e4:	34179073          	csrw	mepc,a5
    800023e8:	00000793          	li	a5,0
    800023ec:	18079073          	csrw	satp,a5
    800023f0:	000107b7          	lui	a5,0x10
    800023f4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023f8:	30279073          	csrw	medeleg,a5
    800023fc:	30379073          	csrw	mideleg,a5
    80002400:	104027f3          	csrr	a5,sie
    80002404:	2227e793          	ori	a5,a5,546
    80002408:	10479073          	csrw	sie,a5
    8000240c:	fff00793          	li	a5,-1
    80002410:	00a7d793          	srli	a5,a5,0xa
    80002414:	3b079073          	csrw	pmpaddr0,a5
    80002418:	00f00793          	li	a5,15
    8000241c:	3a079073          	csrw	pmpcfg0,a5
    80002420:	f14027f3          	csrr	a5,mhartid
    80002424:	0200c737          	lui	a4,0x200c
    80002428:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000242c:	0007869b          	sext.w	a3,a5
    80002430:	00269713          	slli	a4,a3,0x2
    80002434:	000f4637          	lui	a2,0xf4
    80002438:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000243c:	00d70733          	add	a4,a4,a3
    80002440:	0037979b          	slliw	a5,a5,0x3
    80002444:	020046b7          	lui	a3,0x2004
    80002448:	00d787b3          	add	a5,a5,a3
    8000244c:	00c585b3          	add	a1,a1,a2
    80002450:	00371693          	slli	a3,a4,0x3
    80002454:	00003717          	auipc	a4,0x3
    80002458:	6cc70713          	addi	a4,a4,1740 # 80005b20 <timer_scratch>
    8000245c:	00b7b023          	sd	a1,0(a5)
    80002460:	00d70733          	add	a4,a4,a3
    80002464:	00f73c23          	sd	a5,24(a4)
    80002468:	02c73023          	sd	a2,32(a4)
    8000246c:	34071073          	csrw	mscratch,a4
    80002470:	00000797          	auipc	a5,0x0
    80002474:	6e078793          	addi	a5,a5,1760 # 80002b50 <timervec>
    80002478:	30579073          	csrw	mtvec,a5
    8000247c:	300027f3          	csrr	a5,mstatus
    80002480:	0087e793          	ori	a5,a5,8
    80002484:	30079073          	csrw	mstatus,a5
    80002488:	304027f3          	csrr	a5,mie
    8000248c:	0807e793          	ori	a5,a5,128
    80002490:	30479073          	csrw	mie,a5
    80002494:	f14027f3          	csrr	a5,mhartid
    80002498:	0007879b          	sext.w	a5,a5
    8000249c:	00078213          	mv	tp,a5
    800024a0:	30200073          	mret
    800024a4:	00813403          	ld	s0,8(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <timerinit>:
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00813423          	sd	s0,8(sp)
    800024b8:	01010413          	addi	s0,sp,16
    800024bc:	f14027f3          	csrr	a5,mhartid
    800024c0:	0200c737          	lui	a4,0x200c
    800024c4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800024c8:	0007869b          	sext.w	a3,a5
    800024cc:	00269713          	slli	a4,a3,0x2
    800024d0:	000f4637          	lui	a2,0xf4
    800024d4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800024d8:	00d70733          	add	a4,a4,a3
    800024dc:	0037979b          	slliw	a5,a5,0x3
    800024e0:	020046b7          	lui	a3,0x2004
    800024e4:	00d787b3          	add	a5,a5,a3
    800024e8:	00c585b3          	add	a1,a1,a2
    800024ec:	00371693          	slli	a3,a4,0x3
    800024f0:	00003717          	auipc	a4,0x3
    800024f4:	63070713          	addi	a4,a4,1584 # 80005b20 <timer_scratch>
    800024f8:	00b7b023          	sd	a1,0(a5)
    800024fc:	00d70733          	add	a4,a4,a3
    80002500:	00f73c23          	sd	a5,24(a4)
    80002504:	02c73023          	sd	a2,32(a4)
    80002508:	34071073          	csrw	mscratch,a4
    8000250c:	00000797          	auipc	a5,0x0
    80002510:	64478793          	addi	a5,a5,1604 # 80002b50 <timervec>
    80002514:	30579073          	csrw	mtvec,a5
    80002518:	300027f3          	csrr	a5,mstatus
    8000251c:	0087e793          	ori	a5,a5,8
    80002520:	30079073          	csrw	mstatus,a5
    80002524:	304027f3          	csrr	a5,mie
    80002528:	0807e793          	ori	a5,a5,128
    8000252c:	30479073          	csrw	mie,a5
    80002530:	00813403          	ld	s0,8(sp)
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00008067          	ret

000000008000253c <system_main>:
    8000253c:	fe010113          	addi	sp,sp,-32
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	00913423          	sd	s1,8(sp)
    80002548:	00113c23          	sd	ra,24(sp)
    8000254c:	02010413          	addi	s0,sp,32
    80002550:	00000097          	auipc	ra,0x0
    80002554:	0c4080e7          	jalr	196(ra) # 80002614 <cpuid>
    80002558:	00003497          	auipc	s1,0x3
    8000255c:	56848493          	addi	s1,s1,1384 # 80005ac0 <started>
    80002560:	02050263          	beqz	a0,80002584 <system_main+0x48>
    80002564:	0004a783          	lw	a5,0(s1)
    80002568:	0007879b          	sext.w	a5,a5
    8000256c:	fe078ce3          	beqz	a5,80002564 <system_main+0x28>
    80002570:	0ff0000f          	fence
    80002574:	00003517          	auipc	a0,0x3
    80002578:	c1450513          	addi	a0,a0,-1004 # 80005188 <_ZZ12printIntegermE6digits+0x40>
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	a70080e7          	jalr	-1424(ra) # 80002fec <panic>
    80002584:	00001097          	auipc	ra,0x1
    80002588:	9c4080e7          	jalr	-1596(ra) # 80002f48 <consoleinit>
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	150080e7          	jalr	336(ra) # 800036dc <printfinit>
    80002594:	00003517          	auipc	a0,0x3
    80002598:	b5c50513          	addi	a0,a0,-1188 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000259c:	00001097          	auipc	ra,0x1
    800025a0:	aac080e7          	jalr	-1364(ra) # 80003048 <__printf>
    800025a4:	00003517          	auipc	a0,0x3
    800025a8:	bb450513          	addi	a0,a0,-1100 # 80005158 <_ZZ12printIntegermE6digits+0x10>
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	a9c080e7          	jalr	-1380(ra) # 80003048 <__printf>
    800025b4:	00003517          	auipc	a0,0x3
    800025b8:	b3c50513          	addi	a0,a0,-1220 # 800050f0 <CONSOLE_STATUS+0xe0>
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	a8c080e7          	jalr	-1396(ra) # 80003048 <__printf>
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	4a4080e7          	jalr	1188(ra) # 80003a68 <kinit>
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	148080e7          	jalr	328(ra) # 80002714 <trapinit>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	16c080e7          	jalr	364(ra) # 80002740 <trapinithart>
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	5b4080e7          	jalr	1460(ra) # 80002b90 <plicinit>
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	5d4080e7          	jalr	1492(ra) # 80002bb8 <plicinithart>
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	078080e7          	jalr	120(ra) # 80002664 <userinit>
    800025f4:	0ff0000f          	fence
    800025f8:	00100793          	li	a5,1
    800025fc:	00003517          	auipc	a0,0x3
    80002600:	b7450513          	addi	a0,a0,-1164 # 80005170 <_ZZ12printIntegermE6digits+0x28>
    80002604:	00f4a023          	sw	a5,0(s1)
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	a40080e7          	jalr	-1472(ra) # 80003048 <__printf>
    80002610:	0000006f          	j	80002610 <system_main+0xd4>

0000000080002614 <cpuid>:
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    80002620:	00020513          	mv	a0,tp
    80002624:	00813403          	ld	s0,8(sp)
    80002628:	0005051b          	sext.w	a0,a0
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <mycpu>:
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00020793          	mv	a5,tp
    80002644:	00813403          	ld	s0,8(sp)
    80002648:	0007879b          	sext.w	a5,a5
    8000264c:	00779793          	slli	a5,a5,0x7
    80002650:	00004517          	auipc	a0,0x4
    80002654:	50050513          	addi	a0,a0,1280 # 80006b50 <cpus>
    80002658:	00f50533          	add	a0,a0,a5
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <userinit>:
    80002664:	ff010113          	addi	sp,sp,-16
    80002668:	00813423          	sd	s0,8(sp)
    8000266c:	01010413          	addi	s0,sp,16
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	fffff317          	auipc	t1,0xfffff
    8000267c:	0d430067          	jr	212(t1) # 8000174c <main>

0000000080002680 <either_copyout>:
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
    80002690:	02051663          	bnez	a0,800026bc <either_copyout+0x3c>
    80002694:	00058513          	mv	a0,a1
    80002698:	00060593          	mv	a1,a2
    8000269c:	0006861b          	sext.w	a2,a3
    800026a0:	00002097          	auipc	ra,0x2
    800026a4:	c54080e7          	jalr	-940(ra) # 800042f4 <__memmove>
    800026a8:	00813083          	ld	ra,8(sp)
    800026ac:	00013403          	ld	s0,0(sp)
    800026b0:	00000513          	li	a0,0
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret
    800026bc:	00003517          	auipc	a0,0x3
    800026c0:	af450513          	addi	a0,a0,-1292 # 800051b0 <_ZZ12printIntegermE6digits+0x68>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	928080e7          	jalr	-1752(ra) # 80002fec <panic>

00000000800026cc <either_copyin>:
    800026cc:	ff010113          	addi	sp,sp,-16
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	02059463          	bnez	a1,80002704 <either_copyin+0x38>
    800026e0:	00060593          	mv	a1,a2
    800026e4:	0006861b          	sext.w	a2,a3
    800026e8:	00002097          	auipc	ra,0x2
    800026ec:	c0c080e7          	jalr	-1012(ra) # 800042f4 <__memmove>
    800026f0:	00813083          	ld	ra,8(sp)
    800026f4:	00013403          	ld	s0,0(sp)
    800026f8:	00000513          	li	a0,0
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret
    80002704:	00003517          	auipc	a0,0x3
    80002708:	ad450513          	addi	a0,a0,-1324 # 800051d8 <_ZZ12printIntegermE6digits+0x90>
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	8e0080e7          	jalr	-1824(ra) # 80002fec <panic>

0000000080002714 <trapinit>:
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00813423          	sd	s0,8(sp)
    8000271c:	01010413          	addi	s0,sp,16
    80002720:	00813403          	ld	s0,8(sp)
    80002724:	00003597          	auipc	a1,0x3
    80002728:	adc58593          	addi	a1,a1,-1316 # 80005200 <_ZZ12printIntegermE6digits+0xb8>
    8000272c:	00004517          	auipc	a0,0x4
    80002730:	4a450513          	addi	a0,a0,1188 # 80006bd0 <tickslock>
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00001317          	auipc	t1,0x1
    8000273c:	5c030067          	jr	1472(t1) # 80003cf8 <initlock>

0000000080002740 <trapinithart>:
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00813423          	sd	s0,8(sp)
    80002748:	01010413          	addi	s0,sp,16
    8000274c:	00000797          	auipc	a5,0x0
    80002750:	2f478793          	addi	a5,a5,756 # 80002a40 <kernelvec>
    80002754:	10579073          	csrw	stvec,a5
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <usertrap>:
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00813423          	sd	s0,8(sp)
    8000276c:	01010413          	addi	s0,sp,16
    80002770:	00813403          	ld	s0,8(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <usertrapret>:
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00813423          	sd	s0,8(sp)
    80002784:	01010413          	addi	s0,sp,16
    80002788:	00813403          	ld	s0,8(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <kerneltrap>:
    80002794:	fe010113          	addi	sp,sp,-32
    80002798:	00813823          	sd	s0,16(sp)
    8000279c:	00113c23          	sd	ra,24(sp)
    800027a0:	00913423          	sd	s1,8(sp)
    800027a4:	02010413          	addi	s0,sp,32
    800027a8:	142025f3          	csrr	a1,scause
    800027ac:	100027f3          	csrr	a5,sstatus
    800027b0:	0027f793          	andi	a5,a5,2
    800027b4:	10079c63          	bnez	a5,800028cc <kerneltrap+0x138>
    800027b8:	142027f3          	csrr	a5,scause
    800027bc:	0207ce63          	bltz	a5,800027f8 <kerneltrap+0x64>
    800027c0:	00003517          	auipc	a0,0x3
    800027c4:	a8850513          	addi	a0,a0,-1400 # 80005248 <_ZZ12printIntegermE6digits+0x100>
    800027c8:	00001097          	auipc	ra,0x1
    800027cc:	880080e7          	jalr	-1920(ra) # 80003048 <__printf>
    800027d0:	141025f3          	csrr	a1,sepc
    800027d4:	14302673          	csrr	a2,stval
    800027d8:	00003517          	auipc	a0,0x3
    800027dc:	a8050513          	addi	a0,a0,-1408 # 80005258 <_ZZ12printIntegermE6digits+0x110>
    800027e0:	00001097          	auipc	ra,0x1
    800027e4:	868080e7          	jalr	-1944(ra) # 80003048 <__printf>
    800027e8:	00003517          	auipc	a0,0x3
    800027ec:	a8850513          	addi	a0,a0,-1400 # 80005270 <_ZZ12printIntegermE6digits+0x128>
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	7fc080e7          	jalr	2044(ra) # 80002fec <panic>
    800027f8:	0ff7f713          	andi	a4,a5,255
    800027fc:	00900693          	li	a3,9
    80002800:	04d70063          	beq	a4,a3,80002840 <kerneltrap+0xac>
    80002804:	fff00713          	li	a4,-1
    80002808:	03f71713          	slli	a4,a4,0x3f
    8000280c:	00170713          	addi	a4,a4,1
    80002810:	fae798e3          	bne	a5,a4,800027c0 <kerneltrap+0x2c>
    80002814:	00000097          	auipc	ra,0x0
    80002818:	e00080e7          	jalr	-512(ra) # 80002614 <cpuid>
    8000281c:	06050663          	beqz	a0,80002888 <kerneltrap+0xf4>
    80002820:	144027f3          	csrr	a5,sip
    80002824:	ffd7f793          	andi	a5,a5,-3
    80002828:	14479073          	csrw	sip,a5
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	02010113          	addi	sp,sp,32
    8000283c:	00008067          	ret
    80002840:	00000097          	auipc	ra,0x0
    80002844:	3c4080e7          	jalr	964(ra) # 80002c04 <plic_claim>
    80002848:	00a00793          	li	a5,10
    8000284c:	00050493          	mv	s1,a0
    80002850:	06f50863          	beq	a0,a5,800028c0 <kerneltrap+0x12c>
    80002854:	fc050ce3          	beqz	a0,8000282c <kerneltrap+0x98>
    80002858:	00050593          	mv	a1,a0
    8000285c:	00003517          	auipc	a0,0x3
    80002860:	9cc50513          	addi	a0,a0,-1588 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002864:	00000097          	auipc	ra,0x0
    80002868:	7e4080e7          	jalr	2020(ra) # 80003048 <__printf>
    8000286c:	01013403          	ld	s0,16(sp)
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	00048513          	mv	a0,s1
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	02010113          	addi	sp,sp,32
    80002880:	00000317          	auipc	t1,0x0
    80002884:	3bc30067          	jr	956(t1) # 80002c3c <plic_complete>
    80002888:	00004517          	auipc	a0,0x4
    8000288c:	34850513          	addi	a0,a0,840 # 80006bd0 <tickslock>
    80002890:	00001097          	auipc	ra,0x1
    80002894:	48c080e7          	jalr	1164(ra) # 80003d1c <acquire>
    80002898:	00003717          	auipc	a4,0x3
    8000289c:	22c70713          	addi	a4,a4,556 # 80005ac4 <ticks>
    800028a0:	00072783          	lw	a5,0(a4)
    800028a4:	00004517          	auipc	a0,0x4
    800028a8:	32c50513          	addi	a0,a0,812 # 80006bd0 <tickslock>
    800028ac:	0017879b          	addiw	a5,a5,1
    800028b0:	00f72023          	sw	a5,0(a4)
    800028b4:	00001097          	auipc	ra,0x1
    800028b8:	534080e7          	jalr	1332(ra) # 80003de8 <release>
    800028bc:	f65ff06f          	j	80002820 <kerneltrap+0x8c>
    800028c0:	00001097          	auipc	ra,0x1
    800028c4:	090080e7          	jalr	144(ra) # 80003950 <uartintr>
    800028c8:	fa5ff06f          	j	8000286c <kerneltrap+0xd8>
    800028cc:	00003517          	auipc	a0,0x3
    800028d0:	93c50513          	addi	a0,a0,-1732 # 80005208 <_ZZ12printIntegermE6digits+0xc0>
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	718080e7          	jalr	1816(ra) # 80002fec <panic>

00000000800028dc <clockintr>:
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	00113c23          	sd	ra,24(sp)
    800028ec:	02010413          	addi	s0,sp,32
    800028f0:	00004497          	auipc	s1,0x4
    800028f4:	2e048493          	addi	s1,s1,736 # 80006bd0 <tickslock>
    800028f8:	00048513          	mv	a0,s1
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	420080e7          	jalr	1056(ra) # 80003d1c <acquire>
    80002904:	00003717          	auipc	a4,0x3
    80002908:	1c070713          	addi	a4,a4,448 # 80005ac4 <ticks>
    8000290c:	00072783          	lw	a5,0(a4)
    80002910:	01013403          	ld	s0,16(sp)
    80002914:	01813083          	ld	ra,24(sp)
    80002918:	00048513          	mv	a0,s1
    8000291c:	0017879b          	addiw	a5,a5,1
    80002920:	00813483          	ld	s1,8(sp)
    80002924:	00f72023          	sw	a5,0(a4)
    80002928:	02010113          	addi	sp,sp,32
    8000292c:	00001317          	auipc	t1,0x1
    80002930:	4bc30067          	jr	1212(t1) # 80003de8 <release>

0000000080002934 <devintr>:
    80002934:	142027f3          	csrr	a5,scause
    80002938:	00000513          	li	a0,0
    8000293c:	0007c463          	bltz	a5,80002944 <devintr+0x10>
    80002940:	00008067          	ret
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00813823          	sd	s0,16(sp)
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	02010413          	addi	s0,sp,32
    80002958:	0ff7f713          	andi	a4,a5,255
    8000295c:	00900693          	li	a3,9
    80002960:	04d70c63          	beq	a4,a3,800029b8 <devintr+0x84>
    80002964:	fff00713          	li	a4,-1
    80002968:	03f71713          	slli	a4,a4,0x3f
    8000296c:	00170713          	addi	a4,a4,1
    80002970:	00e78c63          	beq	a5,a4,80002988 <devintr+0x54>
    80002974:	01813083          	ld	ra,24(sp)
    80002978:	01013403          	ld	s0,16(sp)
    8000297c:	00813483          	ld	s1,8(sp)
    80002980:	02010113          	addi	sp,sp,32
    80002984:	00008067          	ret
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	c8c080e7          	jalr	-884(ra) # 80002614 <cpuid>
    80002990:	06050663          	beqz	a0,800029fc <devintr+0xc8>
    80002994:	144027f3          	csrr	a5,sip
    80002998:	ffd7f793          	andi	a5,a5,-3
    8000299c:	14479073          	csrw	sip,a5
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00813483          	ld	s1,8(sp)
    800029ac:	00200513          	li	a0,2
    800029b0:	02010113          	addi	sp,sp,32
    800029b4:	00008067          	ret
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	24c080e7          	jalr	588(ra) # 80002c04 <plic_claim>
    800029c0:	00a00793          	li	a5,10
    800029c4:	00050493          	mv	s1,a0
    800029c8:	06f50663          	beq	a0,a5,80002a34 <devintr+0x100>
    800029cc:	00100513          	li	a0,1
    800029d0:	fa0482e3          	beqz	s1,80002974 <devintr+0x40>
    800029d4:	00048593          	mv	a1,s1
    800029d8:	00003517          	auipc	a0,0x3
    800029dc:	85050513          	addi	a0,a0,-1968 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	668080e7          	jalr	1640(ra) # 80003048 <__printf>
    800029e8:	00048513          	mv	a0,s1
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	250080e7          	jalr	592(ra) # 80002c3c <plic_complete>
    800029f4:	00100513          	li	a0,1
    800029f8:	f7dff06f          	j	80002974 <devintr+0x40>
    800029fc:	00004517          	auipc	a0,0x4
    80002a00:	1d450513          	addi	a0,a0,468 # 80006bd0 <tickslock>
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	318080e7          	jalr	792(ra) # 80003d1c <acquire>
    80002a0c:	00003717          	auipc	a4,0x3
    80002a10:	0b870713          	addi	a4,a4,184 # 80005ac4 <ticks>
    80002a14:	00072783          	lw	a5,0(a4)
    80002a18:	00004517          	auipc	a0,0x4
    80002a1c:	1b850513          	addi	a0,a0,440 # 80006bd0 <tickslock>
    80002a20:	0017879b          	addiw	a5,a5,1
    80002a24:	00f72023          	sw	a5,0(a4)
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	3c0080e7          	jalr	960(ra) # 80003de8 <release>
    80002a30:	f65ff06f          	j	80002994 <devintr+0x60>
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	f1c080e7          	jalr	-228(ra) # 80003950 <uartintr>
    80002a3c:	fadff06f          	j	800029e8 <devintr+0xb4>

0000000080002a40 <kernelvec>:
    80002a40:	f0010113          	addi	sp,sp,-256
    80002a44:	00113023          	sd	ra,0(sp)
    80002a48:	00213423          	sd	sp,8(sp)
    80002a4c:	00313823          	sd	gp,16(sp)
    80002a50:	00413c23          	sd	tp,24(sp)
    80002a54:	02513023          	sd	t0,32(sp)
    80002a58:	02613423          	sd	t1,40(sp)
    80002a5c:	02713823          	sd	t2,48(sp)
    80002a60:	02813c23          	sd	s0,56(sp)
    80002a64:	04913023          	sd	s1,64(sp)
    80002a68:	04a13423          	sd	a0,72(sp)
    80002a6c:	04b13823          	sd	a1,80(sp)
    80002a70:	04c13c23          	sd	a2,88(sp)
    80002a74:	06d13023          	sd	a3,96(sp)
    80002a78:	06e13423          	sd	a4,104(sp)
    80002a7c:	06f13823          	sd	a5,112(sp)
    80002a80:	07013c23          	sd	a6,120(sp)
    80002a84:	09113023          	sd	a7,128(sp)
    80002a88:	09213423          	sd	s2,136(sp)
    80002a8c:	09313823          	sd	s3,144(sp)
    80002a90:	09413c23          	sd	s4,152(sp)
    80002a94:	0b513023          	sd	s5,160(sp)
    80002a98:	0b613423          	sd	s6,168(sp)
    80002a9c:	0b713823          	sd	s7,176(sp)
    80002aa0:	0b813c23          	sd	s8,184(sp)
    80002aa4:	0d913023          	sd	s9,192(sp)
    80002aa8:	0da13423          	sd	s10,200(sp)
    80002aac:	0db13823          	sd	s11,208(sp)
    80002ab0:	0dc13c23          	sd	t3,216(sp)
    80002ab4:	0fd13023          	sd	t4,224(sp)
    80002ab8:	0fe13423          	sd	t5,232(sp)
    80002abc:	0ff13823          	sd	t6,240(sp)
    80002ac0:	cd5ff0ef          	jal	ra,80002794 <kerneltrap>
    80002ac4:	00013083          	ld	ra,0(sp)
    80002ac8:	00813103          	ld	sp,8(sp)
    80002acc:	01013183          	ld	gp,16(sp)
    80002ad0:	02013283          	ld	t0,32(sp)
    80002ad4:	02813303          	ld	t1,40(sp)
    80002ad8:	03013383          	ld	t2,48(sp)
    80002adc:	03813403          	ld	s0,56(sp)
    80002ae0:	04013483          	ld	s1,64(sp)
    80002ae4:	04813503          	ld	a0,72(sp)
    80002ae8:	05013583          	ld	a1,80(sp)
    80002aec:	05813603          	ld	a2,88(sp)
    80002af0:	06013683          	ld	a3,96(sp)
    80002af4:	06813703          	ld	a4,104(sp)
    80002af8:	07013783          	ld	a5,112(sp)
    80002afc:	07813803          	ld	a6,120(sp)
    80002b00:	08013883          	ld	a7,128(sp)
    80002b04:	08813903          	ld	s2,136(sp)
    80002b08:	09013983          	ld	s3,144(sp)
    80002b0c:	09813a03          	ld	s4,152(sp)
    80002b10:	0a013a83          	ld	s5,160(sp)
    80002b14:	0a813b03          	ld	s6,168(sp)
    80002b18:	0b013b83          	ld	s7,176(sp)
    80002b1c:	0b813c03          	ld	s8,184(sp)
    80002b20:	0c013c83          	ld	s9,192(sp)
    80002b24:	0c813d03          	ld	s10,200(sp)
    80002b28:	0d013d83          	ld	s11,208(sp)
    80002b2c:	0d813e03          	ld	t3,216(sp)
    80002b30:	0e013e83          	ld	t4,224(sp)
    80002b34:	0e813f03          	ld	t5,232(sp)
    80002b38:	0f013f83          	ld	t6,240(sp)
    80002b3c:	10010113          	addi	sp,sp,256
    80002b40:	10200073          	sret
    80002b44:	00000013          	nop
    80002b48:	00000013          	nop
    80002b4c:	00000013          	nop

0000000080002b50 <timervec>:
    80002b50:	34051573          	csrrw	a0,mscratch,a0
    80002b54:	00b53023          	sd	a1,0(a0)
    80002b58:	00c53423          	sd	a2,8(a0)
    80002b5c:	00d53823          	sd	a3,16(a0)
    80002b60:	01853583          	ld	a1,24(a0)
    80002b64:	02053603          	ld	a2,32(a0)
    80002b68:	0005b683          	ld	a3,0(a1)
    80002b6c:	00c686b3          	add	a3,a3,a2
    80002b70:	00d5b023          	sd	a3,0(a1)
    80002b74:	00200593          	li	a1,2
    80002b78:	14459073          	csrw	sip,a1
    80002b7c:	01053683          	ld	a3,16(a0)
    80002b80:	00853603          	ld	a2,8(a0)
    80002b84:	00053583          	ld	a1,0(a0)
    80002b88:	34051573          	csrrw	a0,mscratch,a0
    80002b8c:	30200073          	mret

0000000080002b90 <plicinit>:
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00813423          	sd	s0,8(sp)
    80002b98:	01010413          	addi	s0,sp,16
    80002b9c:	00813403          	ld	s0,8(sp)
    80002ba0:	0c0007b7          	lui	a5,0xc000
    80002ba4:	00100713          	li	a4,1
    80002ba8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002bac:	00e7a223          	sw	a4,4(a5)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <plicinithart>:
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813023          	sd	s0,0(sp)
    80002bc0:	00113423          	sd	ra,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	a4c080e7          	jalr	-1460(ra) # 80002614 <cpuid>
    80002bd0:	0085171b          	slliw	a4,a0,0x8
    80002bd4:	0c0027b7          	lui	a5,0xc002
    80002bd8:	00e787b3          	add	a5,a5,a4
    80002bdc:	40200713          	li	a4,1026
    80002be0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002be4:	00813083          	ld	ra,8(sp)
    80002be8:	00013403          	ld	s0,0(sp)
    80002bec:	00d5151b          	slliw	a0,a0,0xd
    80002bf0:	0c2017b7          	lui	a5,0xc201
    80002bf4:	00a78533          	add	a0,a5,a0
    80002bf8:	00052023          	sw	zero,0(a0)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <plic_claim>:
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00813023          	sd	s0,0(sp)
    80002c0c:	00113423          	sd	ra,8(sp)
    80002c10:	01010413          	addi	s0,sp,16
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	a00080e7          	jalr	-1536(ra) # 80002614 <cpuid>
    80002c1c:	00813083          	ld	ra,8(sp)
    80002c20:	00013403          	ld	s0,0(sp)
    80002c24:	00d5151b          	slliw	a0,a0,0xd
    80002c28:	0c2017b7          	lui	a5,0xc201
    80002c2c:	00a78533          	add	a0,a5,a0
    80002c30:	00452503          	lw	a0,4(a0)
    80002c34:	01010113          	addi	sp,sp,16
    80002c38:	00008067          	ret

0000000080002c3c <plic_complete>:
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00813823          	sd	s0,16(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	02010413          	addi	s0,sp,32
    80002c50:	00050493          	mv	s1,a0
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	9c0080e7          	jalr	-1600(ra) # 80002614 <cpuid>
    80002c5c:	01813083          	ld	ra,24(sp)
    80002c60:	01013403          	ld	s0,16(sp)
    80002c64:	00d5179b          	slliw	a5,a0,0xd
    80002c68:	0c201737          	lui	a4,0xc201
    80002c6c:	00f707b3          	add	a5,a4,a5
    80002c70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	02010113          	addi	sp,sp,32
    80002c7c:	00008067          	ret

0000000080002c80 <consolewrite>:
    80002c80:	fb010113          	addi	sp,sp,-80
    80002c84:	04813023          	sd	s0,64(sp)
    80002c88:	04113423          	sd	ra,72(sp)
    80002c8c:	02913c23          	sd	s1,56(sp)
    80002c90:	03213823          	sd	s2,48(sp)
    80002c94:	03313423          	sd	s3,40(sp)
    80002c98:	03413023          	sd	s4,32(sp)
    80002c9c:	01513c23          	sd	s5,24(sp)
    80002ca0:	05010413          	addi	s0,sp,80
    80002ca4:	06c05c63          	blez	a2,80002d1c <consolewrite+0x9c>
    80002ca8:	00060993          	mv	s3,a2
    80002cac:	00050a13          	mv	s4,a0
    80002cb0:	00058493          	mv	s1,a1
    80002cb4:	00000913          	li	s2,0
    80002cb8:	fff00a93          	li	s5,-1
    80002cbc:	01c0006f          	j	80002cd8 <consolewrite+0x58>
    80002cc0:	fbf44503          	lbu	a0,-65(s0)
    80002cc4:	0019091b          	addiw	s2,s2,1
    80002cc8:	00148493          	addi	s1,s1,1
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	a9c080e7          	jalr	-1380(ra) # 80003768 <uartputc>
    80002cd4:	03298063          	beq	s3,s2,80002cf4 <consolewrite+0x74>
    80002cd8:	00048613          	mv	a2,s1
    80002cdc:	00100693          	li	a3,1
    80002ce0:	000a0593          	mv	a1,s4
    80002ce4:	fbf40513          	addi	a0,s0,-65
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	9e4080e7          	jalr	-1564(ra) # 800026cc <either_copyin>
    80002cf0:	fd5518e3          	bne	a0,s5,80002cc0 <consolewrite+0x40>
    80002cf4:	04813083          	ld	ra,72(sp)
    80002cf8:	04013403          	ld	s0,64(sp)
    80002cfc:	03813483          	ld	s1,56(sp)
    80002d00:	02813983          	ld	s3,40(sp)
    80002d04:	02013a03          	ld	s4,32(sp)
    80002d08:	01813a83          	ld	s5,24(sp)
    80002d0c:	00090513          	mv	a0,s2
    80002d10:	03013903          	ld	s2,48(sp)
    80002d14:	05010113          	addi	sp,sp,80
    80002d18:	00008067          	ret
    80002d1c:	00000913          	li	s2,0
    80002d20:	fd5ff06f          	j	80002cf4 <consolewrite+0x74>

0000000080002d24 <consoleread>:
    80002d24:	f9010113          	addi	sp,sp,-112
    80002d28:	06813023          	sd	s0,96(sp)
    80002d2c:	04913c23          	sd	s1,88(sp)
    80002d30:	05213823          	sd	s2,80(sp)
    80002d34:	05313423          	sd	s3,72(sp)
    80002d38:	05413023          	sd	s4,64(sp)
    80002d3c:	03513c23          	sd	s5,56(sp)
    80002d40:	03613823          	sd	s6,48(sp)
    80002d44:	03713423          	sd	s7,40(sp)
    80002d48:	03813023          	sd	s8,32(sp)
    80002d4c:	06113423          	sd	ra,104(sp)
    80002d50:	01913c23          	sd	s9,24(sp)
    80002d54:	07010413          	addi	s0,sp,112
    80002d58:	00060b93          	mv	s7,a2
    80002d5c:	00050913          	mv	s2,a0
    80002d60:	00058c13          	mv	s8,a1
    80002d64:	00060b1b          	sext.w	s6,a2
    80002d68:	00004497          	auipc	s1,0x4
    80002d6c:	e9048493          	addi	s1,s1,-368 # 80006bf8 <cons>
    80002d70:	00400993          	li	s3,4
    80002d74:	fff00a13          	li	s4,-1
    80002d78:	00a00a93          	li	s5,10
    80002d7c:	05705e63          	blez	s7,80002dd8 <consoleread+0xb4>
    80002d80:	09c4a703          	lw	a4,156(s1)
    80002d84:	0984a783          	lw	a5,152(s1)
    80002d88:	0007071b          	sext.w	a4,a4
    80002d8c:	08e78463          	beq	a5,a4,80002e14 <consoleread+0xf0>
    80002d90:	07f7f713          	andi	a4,a5,127
    80002d94:	00e48733          	add	a4,s1,a4
    80002d98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002d9c:	0017869b          	addiw	a3,a5,1
    80002da0:	08d4ac23          	sw	a3,152(s1)
    80002da4:	00070c9b          	sext.w	s9,a4
    80002da8:	0b370663          	beq	a4,s3,80002e54 <consoleread+0x130>
    80002dac:	00100693          	li	a3,1
    80002db0:	f9f40613          	addi	a2,s0,-97
    80002db4:	000c0593          	mv	a1,s8
    80002db8:	00090513          	mv	a0,s2
    80002dbc:	f8e40fa3          	sb	a4,-97(s0)
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	8c0080e7          	jalr	-1856(ra) # 80002680 <either_copyout>
    80002dc8:	01450863          	beq	a0,s4,80002dd8 <consoleread+0xb4>
    80002dcc:	001c0c13          	addi	s8,s8,1
    80002dd0:	fffb8b9b          	addiw	s7,s7,-1
    80002dd4:	fb5c94e3          	bne	s9,s5,80002d7c <consoleread+0x58>
    80002dd8:	000b851b          	sext.w	a0,s7
    80002ddc:	06813083          	ld	ra,104(sp)
    80002de0:	06013403          	ld	s0,96(sp)
    80002de4:	05813483          	ld	s1,88(sp)
    80002de8:	05013903          	ld	s2,80(sp)
    80002dec:	04813983          	ld	s3,72(sp)
    80002df0:	04013a03          	ld	s4,64(sp)
    80002df4:	03813a83          	ld	s5,56(sp)
    80002df8:	02813b83          	ld	s7,40(sp)
    80002dfc:	02013c03          	ld	s8,32(sp)
    80002e00:	01813c83          	ld	s9,24(sp)
    80002e04:	40ab053b          	subw	a0,s6,a0
    80002e08:	03013b03          	ld	s6,48(sp)
    80002e0c:	07010113          	addi	sp,sp,112
    80002e10:	00008067          	ret
    80002e14:	00001097          	auipc	ra,0x1
    80002e18:	1d8080e7          	jalr	472(ra) # 80003fec <push_on>
    80002e1c:	0984a703          	lw	a4,152(s1)
    80002e20:	09c4a783          	lw	a5,156(s1)
    80002e24:	0007879b          	sext.w	a5,a5
    80002e28:	fef70ce3          	beq	a4,a5,80002e20 <consoleread+0xfc>
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	234080e7          	jalr	564(ra) # 80004060 <pop_on>
    80002e34:	0984a783          	lw	a5,152(s1)
    80002e38:	07f7f713          	andi	a4,a5,127
    80002e3c:	00e48733          	add	a4,s1,a4
    80002e40:	01874703          	lbu	a4,24(a4)
    80002e44:	0017869b          	addiw	a3,a5,1
    80002e48:	08d4ac23          	sw	a3,152(s1)
    80002e4c:	00070c9b          	sext.w	s9,a4
    80002e50:	f5371ee3          	bne	a4,s3,80002dac <consoleread+0x88>
    80002e54:	000b851b          	sext.w	a0,s7
    80002e58:	f96bf2e3          	bgeu	s7,s6,80002ddc <consoleread+0xb8>
    80002e5c:	08f4ac23          	sw	a5,152(s1)
    80002e60:	f7dff06f          	j	80002ddc <consoleread+0xb8>

0000000080002e64 <consputc>:
    80002e64:	10000793          	li	a5,256
    80002e68:	00f50663          	beq	a0,a5,80002e74 <consputc+0x10>
    80002e6c:	00001317          	auipc	t1,0x1
    80002e70:	9f430067          	jr	-1548(t1) # 80003860 <uartputc_sync>
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00113423          	sd	ra,8(sp)
    80002e7c:	00813023          	sd	s0,0(sp)
    80002e80:	01010413          	addi	s0,sp,16
    80002e84:	00800513          	li	a0,8
    80002e88:	00001097          	auipc	ra,0x1
    80002e8c:	9d8080e7          	jalr	-1576(ra) # 80003860 <uartputc_sync>
    80002e90:	02000513          	li	a0,32
    80002e94:	00001097          	auipc	ra,0x1
    80002e98:	9cc080e7          	jalr	-1588(ra) # 80003860 <uartputc_sync>
    80002e9c:	00013403          	ld	s0,0(sp)
    80002ea0:	00813083          	ld	ra,8(sp)
    80002ea4:	00800513          	li	a0,8
    80002ea8:	01010113          	addi	sp,sp,16
    80002eac:	00001317          	auipc	t1,0x1
    80002eb0:	9b430067          	jr	-1612(t1) # 80003860 <uartputc_sync>

0000000080002eb4 <consoleintr>:
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00813823          	sd	s0,16(sp)
    80002ebc:	00913423          	sd	s1,8(sp)
    80002ec0:	01213023          	sd	s2,0(sp)
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00004917          	auipc	s2,0x4
    80002ed0:	d2c90913          	addi	s2,s2,-724 # 80006bf8 <cons>
    80002ed4:	00050493          	mv	s1,a0
    80002ed8:	00090513          	mv	a0,s2
    80002edc:	00001097          	auipc	ra,0x1
    80002ee0:	e40080e7          	jalr	-448(ra) # 80003d1c <acquire>
    80002ee4:	02048c63          	beqz	s1,80002f1c <consoleintr+0x68>
    80002ee8:	0a092783          	lw	a5,160(s2)
    80002eec:	09892703          	lw	a4,152(s2)
    80002ef0:	07f00693          	li	a3,127
    80002ef4:	40e7873b          	subw	a4,a5,a4
    80002ef8:	02e6e263          	bltu	a3,a4,80002f1c <consoleintr+0x68>
    80002efc:	00d00713          	li	a4,13
    80002f00:	04e48063          	beq	s1,a4,80002f40 <consoleintr+0x8c>
    80002f04:	07f7f713          	andi	a4,a5,127
    80002f08:	00e90733          	add	a4,s2,a4
    80002f0c:	0017879b          	addiw	a5,a5,1
    80002f10:	0af92023          	sw	a5,160(s2)
    80002f14:	00970c23          	sb	s1,24(a4)
    80002f18:	08f92e23          	sw	a5,156(s2)
    80002f1c:	01013403          	ld	s0,16(sp)
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	00813483          	ld	s1,8(sp)
    80002f28:	00013903          	ld	s2,0(sp)
    80002f2c:	00004517          	auipc	a0,0x4
    80002f30:	ccc50513          	addi	a0,a0,-820 # 80006bf8 <cons>
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00001317          	auipc	t1,0x1
    80002f3c:	eb030067          	jr	-336(t1) # 80003de8 <release>
    80002f40:	00a00493          	li	s1,10
    80002f44:	fc1ff06f          	j	80002f04 <consoleintr+0x50>

0000000080002f48 <consoleinit>:
    80002f48:	fe010113          	addi	sp,sp,-32
    80002f4c:	00113c23          	sd	ra,24(sp)
    80002f50:	00813823          	sd	s0,16(sp)
    80002f54:	00913423          	sd	s1,8(sp)
    80002f58:	02010413          	addi	s0,sp,32
    80002f5c:	00004497          	auipc	s1,0x4
    80002f60:	c9c48493          	addi	s1,s1,-868 # 80006bf8 <cons>
    80002f64:	00048513          	mv	a0,s1
    80002f68:	00002597          	auipc	a1,0x2
    80002f6c:	31858593          	addi	a1,a1,792 # 80005280 <_ZZ12printIntegermE6digits+0x138>
    80002f70:	00001097          	auipc	ra,0x1
    80002f74:	d88080e7          	jalr	-632(ra) # 80003cf8 <initlock>
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	7ac080e7          	jalr	1964(ra) # 80003724 <uartinit>
    80002f80:	01813083          	ld	ra,24(sp)
    80002f84:	01013403          	ld	s0,16(sp)
    80002f88:	00000797          	auipc	a5,0x0
    80002f8c:	d9c78793          	addi	a5,a5,-612 # 80002d24 <consoleread>
    80002f90:	0af4bc23          	sd	a5,184(s1)
    80002f94:	00000797          	auipc	a5,0x0
    80002f98:	cec78793          	addi	a5,a5,-788 # 80002c80 <consolewrite>
    80002f9c:	0cf4b023          	sd	a5,192(s1)
    80002fa0:	00813483          	ld	s1,8(sp)
    80002fa4:	02010113          	addi	sp,sp,32
    80002fa8:	00008067          	ret

0000000080002fac <console_read>:
    80002fac:	ff010113          	addi	sp,sp,-16
    80002fb0:	00813423          	sd	s0,8(sp)
    80002fb4:	01010413          	addi	s0,sp,16
    80002fb8:	00813403          	ld	s0,8(sp)
    80002fbc:	00004317          	auipc	t1,0x4
    80002fc0:	cf433303          	ld	t1,-780(t1) # 80006cb0 <devsw+0x10>
    80002fc4:	01010113          	addi	sp,sp,16
    80002fc8:	00030067          	jr	t1

0000000080002fcc <console_write>:
    80002fcc:	ff010113          	addi	sp,sp,-16
    80002fd0:	00813423          	sd	s0,8(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    80002fd8:	00813403          	ld	s0,8(sp)
    80002fdc:	00004317          	auipc	t1,0x4
    80002fe0:	cdc33303          	ld	t1,-804(t1) # 80006cb8 <devsw+0x18>
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00030067          	jr	t1

0000000080002fec <panic>:
    80002fec:	fe010113          	addi	sp,sp,-32
    80002ff0:	00113c23          	sd	ra,24(sp)
    80002ff4:	00813823          	sd	s0,16(sp)
    80002ff8:	00913423          	sd	s1,8(sp)
    80002ffc:	02010413          	addi	s0,sp,32
    80003000:	00050493          	mv	s1,a0
    80003004:	00002517          	auipc	a0,0x2
    80003008:	28450513          	addi	a0,a0,644 # 80005288 <_ZZ12printIntegermE6digits+0x140>
    8000300c:	00004797          	auipc	a5,0x4
    80003010:	d407a623          	sw	zero,-692(a5) # 80006d58 <pr+0x18>
    80003014:	00000097          	auipc	ra,0x0
    80003018:	034080e7          	jalr	52(ra) # 80003048 <__printf>
    8000301c:	00048513          	mv	a0,s1
    80003020:	00000097          	auipc	ra,0x0
    80003024:	028080e7          	jalr	40(ra) # 80003048 <__printf>
    80003028:	00002517          	auipc	a0,0x2
    8000302c:	0c850513          	addi	a0,a0,200 # 800050f0 <CONSOLE_STATUS+0xe0>
    80003030:	00000097          	auipc	ra,0x0
    80003034:	018080e7          	jalr	24(ra) # 80003048 <__printf>
    80003038:	00100793          	li	a5,1
    8000303c:	00003717          	auipc	a4,0x3
    80003040:	a8f72623          	sw	a5,-1396(a4) # 80005ac8 <panicked>
    80003044:	0000006f          	j	80003044 <panic+0x58>

0000000080003048 <__printf>:
    80003048:	f3010113          	addi	sp,sp,-208
    8000304c:	08813023          	sd	s0,128(sp)
    80003050:	07313423          	sd	s3,104(sp)
    80003054:	09010413          	addi	s0,sp,144
    80003058:	05813023          	sd	s8,64(sp)
    8000305c:	08113423          	sd	ra,136(sp)
    80003060:	06913c23          	sd	s1,120(sp)
    80003064:	07213823          	sd	s2,112(sp)
    80003068:	07413023          	sd	s4,96(sp)
    8000306c:	05513c23          	sd	s5,88(sp)
    80003070:	05613823          	sd	s6,80(sp)
    80003074:	05713423          	sd	s7,72(sp)
    80003078:	03913c23          	sd	s9,56(sp)
    8000307c:	03a13823          	sd	s10,48(sp)
    80003080:	03b13423          	sd	s11,40(sp)
    80003084:	00004317          	auipc	t1,0x4
    80003088:	cbc30313          	addi	t1,t1,-836 # 80006d40 <pr>
    8000308c:	01832c03          	lw	s8,24(t1)
    80003090:	00b43423          	sd	a1,8(s0)
    80003094:	00c43823          	sd	a2,16(s0)
    80003098:	00d43c23          	sd	a3,24(s0)
    8000309c:	02e43023          	sd	a4,32(s0)
    800030a0:	02f43423          	sd	a5,40(s0)
    800030a4:	03043823          	sd	a6,48(s0)
    800030a8:	03143c23          	sd	a7,56(s0)
    800030ac:	00050993          	mv	s3,a0
    800030b0:	4a0c1663          	bnez	s8,8000355c <__printf+0x514>
    800030b4:	60098c63          	beqz	s3,800036cc <__printf+0x684>
    800030b8:	0009c503          	lbu	a0,0(s3)
    800030bc:	00840793          	addi	a5,s0,8
    800030c0:	f6f43c23          	sd	a5,-136(s0)
    800030c4:	00000493          	li	s1,0
    800030c8:	22050063          	beqz	a0,800032e8 <__printf+0x2a0>
    800030cc:	00002a37          	lui	s4,0x2
    800030d0:	00018ab7          	lui	s5,0x18
    800030d4:	000f4b37          	lui	s6,0xf4
    800030d8:	00989bb7          	lui	s7,0x989
    800030dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800030e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800030e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800030e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800030ec:	00148c9b          	addiw	s9,s1,1
    800030f0:	02500793          	li	a5,37
    800030f4:	01998933          	add	s2,s3,s9
    800030f8:	38f51263          	bne	a0,a5,8000347c <__printf+0x434>
    800030fc:	00094783          	lbu	a5,0(s2)
    80003100:	00078c9b          	sext.w	s9,a5
    80003104:	1e078263          	beqz	a5,800032e8 <__printf+0x2a0>
    80003108:	0024849b          	addiw	s1,s1,2
    8000310c:	07000713          	li	a4,112
    80003110:	00998933          	add	s2,s3,s1
    80003114:	38e78a63          	beq	a5,a4,800034a8 <__printf+0x460>
    80003118:	20f76863          	bltu	a4,a5,80003328 <__printf+0x2e0>
    8000311c:	42a78863          	beq	a5,a0,8000354c <__printf+0x504>
    80003120:	06400713          	li	a4,100
    80003124:	40e79663          	bne	a5,a4,80003530 <__printf+0x4e8>
    80003128:	f7843783          	ld	a5,-136(s0)
    8000312c:	0007a603          	lw	a2,0(a5)
    80003130:	00878793          	addi	a5,a5,8
    80003134:	f6f43c23          	sd	a5,-136(s0)
    80003138:	42064a63          	bltz	a2,8000356c <__printf+0x524>
    8000313c:	00a00713          	li	a4,10
    80003140:	02e677bb          	remuw	a5,a2,a4
    80003144:	00002d97          	auipc	s11,0x2
    80003148:	16cd8d93          	addi	s11,s11,364 # 800052b0 <digits>
    8000314c:	00900593          	li	a1,9
    80003150:	0006051b          	sext.w	a0,a2
    80003154:	00000c93          	li	s9,0
    80003158:	02079793          	slli	a5,a5,0x20
    8000315c:	0207d793          	srli	a5,a5,0x20
    80003160:	00fd87b3          	add	a5,s11,a5
    80003164:	0007c783          	lbu	a5,0(a5)
    80003168:	02e656bb          	divuw	a3,a2,a4
    8000316c:	f8f40023          	sb	a5,-128(s0)
    80003170:	14c5d863          	bge	a1,a2,800032c0 <__printf+0x278>
    80003174:	06300593          	li	a1,99
    80003178:	00100c93          	li	s9,1
    8000317c:	02e6f7bb          	remuw	a5,a3,a4
    80003180:	02079793          	slli	a5,a5,0x20
    80003184:	0207d793          	srli	a5,a5,0x20
    80003188:	00fd87b3          	add	a5,s11,a5
    8000318c:	0007c783          	lbu	a5,0(a5)
    80003190:	02e6d73b          	divuw	a4,a3,a4
    80003194:	f8f400a3          	sb	a5,-127(s0)
    80003198:	12a5f463          	bgeu	a1,a0,800032c0 <__printf+0x278>
    8000319c:	00a00693          	li	a3,10
    800031a0:	00900593          	li	a1,9
    800031a4:	02d777bb          	remuw	a5,a4,a3
    800031a8:	02079793          	slli	a5,a5,0x20
    800031ac:	0207d793          	srli	a5,a5,0x20
    800031b0:	00fd87b3          	add	a5,s11,a5
    800031b4:	0007c503          	lbu	a0,0(a5)
    800031b8:	02d757bb          	divuw	a5,a4,a3
    800031bc:	f8a40123          	sb	a0,-126(s0)
    800031c0:	48e5f263          	bgeu	a1,a4,80003644 <__printf+0x5fc>
    800031c4:	06300513          	li	a0,99
    800031c8:	02d7f5bb          	remuw	a1,a5,a3
    800031cc:	02059593          	slli	a1,a1,0x20
    800031d0:	0205d593          	srli	a1,a1,0x20
    800031d4:	00bd85b3          	add	a1,s11,a1
    800031d8:	0005c583          	lbu	a1,0(a1)
    800031dc:	02d7d7bb          	divuw	a5,a5,a3
    800031e0:	f8b401a3          	sb	a1,-125(s0)
    800031e4:	48e57263          	bgeu	a0,a4,80003668 <__printf+0x620>
    800031e8:	3e700513          	li	a0,999
    800031ec:	02d7f5bb          	remuw	a1,a5,a3
    800031f0:	02059593          	slli	a1,a1,0x20
    800031f4:	0205d593          	srli	a1,a1,0x20
    800031f8:	00bd85b3          	add	a1,s11,a1
    800031fc:	0005c583          	lbu	a1,0(a1)
    80003200:	02d7d7bb          	divuw	a5,a5,a3
    80003204:	f8b40223          	sb	a1,-124(s0)
    80003208:	46e57663          	bgeu	a0,a4,80003674 <__printf+0x62c>
    8000320c:	02d7f5bb          	remuw	a1,a5,a3
    80003210:	02059593          	slli	a1,a1,0x20
    80003214:	0205d593          	srli	a1,a1,0x20
    80003218:	00bd85b3          	add	a1,s11,a1
    8000321c:	0005c583          	lbu	a1,0(a1)
    80003220:	02d7d7bb          	divuw	a5,a5,a3
    80003224:	f8b402a3          	sb	a1,-123(s0)
    80003228:	46ea7863          	bgeu	s4,a4,80003698 <__printf+0x650>
    8000322c:	02d7f5bb          	remuw	a1,a5,a3
    80003230:	02059593          	slli	a1,a1,0x20
    80003234:	0205d593          	srli	a1,a1,0x20
    80003238:	00bd85b3          	add	a1,s11,a1
    8000323c:	0005c583          	lbu	a1,0(a1)
    80003240:	02d7d7bb          	divuw	a5,a5,a3
    80003244:	f8b40323          	sb	a1,-122(s0)
    80003248:	3eeaf863          	bgeu	s5,a4,80003638 <__printf+0x5f0>
    8000324c:	02d7f5bb          	remuw	a1,a5,a3
    80003250:	02059593          	slli	a1,a1,0x20
    80003254:	0205d593          	srli	a1,a1,0x20
    80003258:	00bd85b3          	add	a1,s11,a1
    8000325c:	0005c583          	lbu	a1,0(a1)
    80003260:	02d7d7bb          	divuw	a5,a5,a3
    80003264:	f8b403a3          	sb	a1,-121(s0)
    80003268:	42eb7e63          	bgeu	s6,a4,800036a4 <__printf+0x65c>
    8000326c:	02d7f5bb          	remuw	a1,a5,a3
    80003270:	02059593          	slli	a1,a1,0x20
    80003274:	0205d593          	srli	a1,a1,0x20
    80003278:	00bd85b3          	add	a1,s11,a1
    8000327c:	0005c583          	lbu	a1,0(a1)
    80003280:	02d7d7bb          	divuw	a5,a5,a3
    80003284:	f8b40423          	sb	a1,-120(s0)
    80003288:	42ebfc63          	bgeu	s7,a4,800036c0 <__printf+0x678>
    8000328c:	02079793          	slli	a5,a5,0x20
    80003290:	0207d793          	srli	a5,a5,0x20
    80003294:	00fd8db3          	add	s11,s11,a5
    80003298:	000dc703          	lbu	a4,0(s11)
    8000329c:	00a00793          	li	a5,10
    800032a0:	00900c93          	li	s9,9
    800032a4:	f8e404a3          	sb	a4,-119(s0)
    800032a8:	00065c63          	bgez	a2,800032c0 <__printf+0x278>
    800032ac:	f9040713          	addi	a4,s0,-112
    800032b0:	00f70733          	add	a4,a4,a5
    800032b4:	02d00693          	li	a3,45
    800032b8:	fed70823          	sb	a3,-16(a4)
    800032bc:	00078c93          	mv	s9,a5
    800032c0:	f8040793          	addi	a5,s0,-128
    800032c4:	01978cb3          	add	s9,a5,s9
    800032c8:	f7f40d13          	addi	s10,s0,-129
    800032cc:	000cc503          	lbu	a0,0(s9)
    800032d0:	fffc8c93          	addi	s9,s9,-1
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	b90080e7          	jalr	-1136(ra) # 80002e64 <consputc>
    800032dc:	ffac98e3          	bne	s9,s10,800032cc <__printf+0x284>
    800032e0:	00094503          	lbu	a0,0(s2)
    800032e4:	e00514e3          	bnez	a0,800030ec <__printf+0xa4>
    800032e8:	1a0c1663          	bnez	s8,80003494 <__printf+0x44c>
    800032ec:	08813083          	ld	ra,136(sp)
    800032f0:	08013403          	ld	s0,128(sp)
    800032f4:	07813483          	ld	s1,120(sp)
    800032f8:	07013903          	ld	s2,112(sp)
    800032fc:	06813983          	ld	s3,104(sp)
    80003300:	06013a03          	ld	s4,96(sp)
    80003304:	05813a83          	ld	s5,88(sp)
    80003308:	05013b03          	ld	s6,80(sp)
    8000330c:	04813b83          	ld	s7,72(sp)
    80003310:	04013c03          	ld	s8,64(sp)
    80003314:	03813c83          	ld	s9,56(sp)
    80003318:	03013d03          	ld	s10,48(sp)
    8000331c:	02813d83          	ld	s11,40(sp)
    80003320:	0d010113          	addi	sp,sp,208
    80003324:	00008067          	ret
    80003328:	07300713          	li	a4,115
    8000332c:	1ce78a63          	beq	a5,a4,80003500 <__printf+0x4b8>
    80003330:	07800713          	li	a4,120
    80003334:	1ee79e63          	bne	a5,a4,80003530 <__printf+0x4e8>
    80003338:	f7843783          	ld	a5,-136(s0)
    8000333c:	0007a703          	lw	a4,0(a5)
    80003340:	00878793          	addi	a5,a5,8
    80003344:	f6f43c23          	sd	a5,-136(s0)
    80003348:	28074263          	bltz	a4,800035cc <__printf+0x584>
    8000334c:	00002d97          	auipc	s11,0x2
    80003350:	f64d8d93          	addi	s11,s11,-156 # 800052b0 <digits>
    80003354:	00f77793          	andi	a5,a4,15
    80003358:	00fd87b3          	add	a5,s11,a5
    8000335c:	0007c683          	lbu	a3,0(a5)
    80003360:	00f00613          	li	a2,15
    80003364:	0007079b          	sext.w	a5,a4
    80003368:	f8d40023          	sb	a3,-128(s0)
    8000336c:	0047559b          	srliw	a1,a4,0x4
    80003370:	0047569b          	srliw	a3,a4,0x4
    80003374:	00000c93          	li	s9,0
    80003378:	0ee65063          	bge	a2,a4,80003458 <__printf+0x410>
    8000337c:	00f6f693          	andi	a3,a3,15
    80003380:	00dd86b3          	add	a3,s11,a3
    80003384:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003388:	0087d79b          	srliw	a5,a5,0x8
    8000338c:	00100c93          	li	s9,1
    80003390:	f8d400a3          	sb	a3,-127(s0)
    80003394:	0cb67263          	bgeu	a2,a1,80003458 <__printf+0x410>
    80003398:	00f7f693          	andi	a3,a5,15
    8000339c:	00dd86b3          	add	a3,s11,a3
    800033a0:	0006c583          	lbu	a1,0(a3)
    800033a4:	00f00613          	li	a2,15
    800033a8:	0047d69b          	srliw	a3,a5,0x4
    800033ac:	f8b40123          	sb	a1,-126(s0)
    800033b0:	0047d593          	srli	a1,a5,0x4
    800033b4:	28f67e63          	bgeu	a2,a5,80003650 <__printf+0x608>
    800033b8:	00f6f693          	andi	a3,a3,15
    800033bc:	00dd86b3          	add	a3,s11,a3
    800033c0:	0006c503          	lbu	a0,0(a3)
    800033c4:	0087d813          	srli	a6,a5,0x8
    800033c8:	0087d69b          	srliw	a3,a5,0x8
    800033cc:	f8a401a3          	sb	a0,-125(s0)
    800033d0:	28b67663          	bgeu	a2,a1,8000365c <__printf+0x614>
    800033d4:	00f6f693          	andi	a3,a3,15
    800033d8:	00dd86b3          	add	a3,s11,a3
    800033dc:	0006c583          	lbu	a1,0(a3)
    800033e0:	00c7d513          	srli	a0,a5,0xc
    800033e4:	00c7d69b          	srliw	a3,a5,0xc
    800033e8:	f8b40223          	sb	a1,-124(s0)
    800033ec:	29067a63          	bgeu	a2,a6,80003680 <__printf+0x638>
    800033f0:	00f6f693          	andi	a3,a3,15
    800033f4:	00dd86b3          	add	a3,s11,a3
    800033f8:	0006c583          	lbu	a1,0(a3)
    800033fc:	0107d813          	srli	a6,a5,0x10
    80003400:	0107d69b          	srliw	a3,a5,0x10
    80003404:	f8b402a3          	sb	a1,-123(s0)
    80003408:	28a67263          	bgeu	a2,a0,8000368c <__printf+0x644>
    8000340c:	00f6f693          	andi	a3,a3,15
    80003410:	00dd86b3          	add	a3,s11,a3
    80003414:	0006c683          	lbu	a3,0(a3)
    80003418:	0147d79b          	srliw	a5,a5,0x14
    8000341c:	f8d40323          	sb	a3,-122(s0)
    80003420:	21067663          	bgeu	a2,a6,8000362c <__printf+0x5e4>
    80003424:	02079793          	slli	a5,a5,0x20
    80003428:	0207d793          	srli	a5,a5,0x20
    8000342c:	00fd8db3          	add	s11,s11,a5
    80003430:	000dc683          	lbu	a3,0(s11)
    80003434:	00800793          	li	a5,8
    80003438:	00700c93          	li	s9,7
    8000343c:	f8d403a3          	sb	a3,-121(s0)
    80003440:	00075c63          	bgez	a4,80003458 <__printf+0x410>
    80003444:	f9040713          	addi	a4,s0,-112
    80003448:	00f70733          	add	a4,a4,a5
    8000344c:	02d00693          	li	a3,45
    80003450:	fed70823          	sb	a3,-16(a4)
    80003454:	00078c93          	mv	s9,a5
    80003458:	f8040793          	addi	a5,s0,-128
    8000345c:	01978cb3          	add	s9,a5,s9
    80003460:	f7f40d13          	addi	s10,s0,-129
    80003464:	000cc503          	lbu	a0,0(s9)
    80003468:	fffc8c93          	addi	s9,s9,-1
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	9f8080e7          	jalr	-1544(ra) # 80002e64 <consputc>
    80003474:	ff9d18e3          	bne	s10,s9,80003464 <__printf+0x41c>
    80003478:	0100006f          	j	80003488 <__printf+0x440>
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	9e8080e7          	jalr	-1560(ra) # 80002e64 <consputc>
    80003484:	000c8493          	mv	s1,s9
    80003488:	00094503          	lbu	a0,0(s2)
    8000348c:	c60510e3          	bnez	a0,800030ec <__printf+0xa4>
    80003490:	e40c0ee3          	beqz	s8,800032ec <__printf+0x2a4>
    80003494:	00004517          	auipc	a0,0x4
    80003498:	8ac50513          	addi	a0,a0,-1876 # 80006d40 <pr>
    8000349c:	00001097          	auipc	ra,0x1
    800034a0:	94c080e7          	jalr	-1716(ra) # 80003de8 <release>
    800034a4:	e49ff06f          	j	800032ec <__printf+0x2a4>
    800034a8:	f7843783          	ld	a5,-136(s0)
    800034ac:	03000513          	li	a0,48
    800034b0:	01000d13          	li	s10,16
    800034b4:	00878713          	addi	a4,a5,8
    800034b8:	0007bc83          	ld	s9,0(a5)
    800034bc:	f6e43c23          	sd	a4,-136(s0)
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	9a4080e7          	jalr	-1628(ra) # 80002e64 <consputc>
    800034c8:	07800513          	li	a0,120
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	998080e7          	jalr	-1640(ra) # 80002e64 <consputc>
    800034d4:	00002d97          	auipc	s11,0x2
    800034d8:	ddcd8d93          	addi	s11,s11,-548 # 800052b0 <digits>
    800034dc:	03ccd793          	srli	a5,s9,0x3c
    800034e0:	00fd87b3          	add	a5,s11,a5
    800034e4:	0007c503          	lbu	a0,0(a5)
    800034e8:	fffd0d1b          	addiw	s10,s10,-1
    800034ec:	004c9c93          	slli	s9,s9,0x4
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	974080e7          	jalr	-1676(ra) # 80002e64 <consputc>
    800034f8:	fe0d12e3          	bnez	s10,800034dc <__printf+0x494>
    800034fc:	f8dff06f          	j	80003488 <__printf+0x440>
    80003500:	f7843783          	ld	a5,-136(s0)
    80003504:	0007bc83          	ld	s9,0(a5)
    80003508:	00878793          	addi	a5,a5,8
    8000350c:	f6f43c23          	sd	a5,-136(s0)
    80003510:	000c9a63          	bnez	s9,80003524 <__printf+0x4dc>
    80003514:	1080006f          	j	8000361c <__printf+0x5d4>
    80003518:	001c8c93          	addi	s9,s9,1
    8000351c:	00000097          	auipc	ra,0x0
    80003520:	948080e7          	jalr	-1720(ra) # 80002e64 <consputc>
    80003524:	000cc503          	lbu	a0,0(s9)
    80003528:	fe0518e3          	bnez	a0,80003518 <__printf+0x4d0>
    8000352c:	f5dff06f          	j	80003488 <__printf+0x440>
    80003530:	02500513          	li	a0,37
    80003534:	00000097          	auipc	ra,0x0
    80003538:	930080e7          	jalr	-1744(ra) # 80002e64 <consputc>
    8000353c:	000c8513          	mv	a0,s9
    80003540:	00000097          	auipc	ra,0x0
    80003544:	924080e7          	jalr	-1756(ra) # 80002e64 <consputc>
    80003548:	f41ff06f          	j	80003488 <__printf+0x440>
    8000354c:	02500513          	li	a0,37
    80003550:	00000097          	auipc	ra,0x0
    80003554:	914080e7          	jalr	-1772(ra) # 80002e64 <consputc>
    80003558:	f31ff06f          	j	80003488 <__printf+0x440>
    8000355c:	00030513          	mv	a0,t1
    80003560:	00000097          	auipc	ra,0x0
    80003564:	7bc080e7          	jalr	1980(ra) # 80003d1c <acquire>
    80003568:	b4dff06f          	j	800030b4 <__printf+0x6c>
    8000356c:	40c0053b          	negw	a0,a2
    80003570:	00a00713          	li	a4,10
    80003574:	02e576bb          	remuw	a3,a0,a4
    80003578:	00002d97          	auipc	s11,0x2
    8000357c:	d38d8d93          	addi	s11,s11,-712 # 800052b0 <digits>
    80003580:	ff700593          	li	a1,-9
    80003584:	02069693          	slli	a3,a3,0x20
    80003588:	0206d693          	srli	a3,a3,0x20
    8000358c:	00dd86b3          	add	a3,s11,a3
    80003590:	0006c683          	lbu	a3,0(a3)
    80003594:	02e557bb          	divuw	a5,a0,a4
    80003598:	f8d40023          	sb	a3,-128(s0)
    8000359c:	10b65e63          	bge	a2,a1,800036b8 <__printf+0x670>
    800035a0:	06300593          	li	a1,99
    800035a4:	02e7f6bb          	remuw	a3,a5,a4
    800035a8:	02069693          	slli	a3,a3,0x20
    800035ac:	0206d693          	srli	a3,a3,0x20
    800035b0:	00dd86b3          	add	a3,s11,a3
    800035b4:	0006c683          	lbu	a3,0(a3)
    800035b8:	02e7d73b          	divuw	a4,a5,a4
    800035bc:	00200793          	li	a5,2
    800035c0:	f8d400a3          	sb	a3,-127(s0)
    800035c4:	bca5ece3          	bltu	a1,a0,8000319c <__printf+0x154>
    800035c8:	ce5ff06f          	j	800032ac <__printf+0x264>
    800035cc:	40e007bb          	negw	a5,a4
    800035d0:	00002d97          	auipc	s11,0x2
    800035d4:	ce0d8d93          	addi	s11,s11,-800 # 800052b0 <digits>
    800035d8:	00f7f693          	andi	a3,a5,15
    800035dc:	00dd86b3          	add	a3,s11,a3
    800035e0:	0006c583          	lbu	a1,0(a3)
    800035e4:	ff100613          	li	a2,-15
    800035e8:	0047d69b          	srliw	a3,a5,0x4
    800035ec:	f8b40023          	sb	a1,-128(s0)
    800035f0:	0047d59b          	srliw	a1,a5,0x4
    800035f4:	0ac75e63          	bge	a4,a2,800036b0 <__printf+0x668>
    800035f8:	00f6f693          	andi	a3,a3,15
    800035fc:	00dd86b3          	add	a3,s11,a3
    80003600:	0006c603          	lbu	a2,0(a3)
    80003604:	00f00693          	li	a3,15
    80003608:	0087d79b          	srliw	a5,a5,0x8
    8000360c:	f8c400a3          	sb	a2,-127(s0)
    80003610:	d8b6e4e3          	bltu	a3,a1,80003398 <__printf+0x350>
    80003614:	00200793          	li	a5,2
    80003618:	e2dff06f          	j	80003444 <__printf+0x3fc>
    8000361c:	00002c97          	auipc	s9,0x2
    80003620:	c74c8c93          	addi	s9,s9,-908 # 80005290 <_ZZ12printIntegermE6digits+0x148>
    80003624:	02800513          	li	a0,40
    80003628:	ef1ff06f          	j	80003518 <__printf+0x4d0>
    8000362c:	00700793          	li	a5,7
    80003630:	00600c93          	li	s9,6
    80003634:	e0dff06f          	j	80003440 <__printf+0x3f8>
    80003638:	00700793          	li	a5,7
    8000363c:	00600c93          	li	s9,6
    80003640:	c69ff06f          	j	800032a8 <__printf+0x260>
    80003644:	00300793          	li	a5,3
    80003648:	00200c93          	li	s9,2
    8000364c:	c5dff06f          	j	800032a8 <__printf+0x260>
    80003650:	00300793          	li	a5,3
    80003654:	00200c93          	li	s9,2
    80003658:	de9ff06f          	j	80003440 <__printf+0x3f8>
    8000365c:	00400793          	li	a5,4
    80003660:	00300c93          	li	s9,3
    80003664:	dddff06f          	j	80003440 <__printf+0x3f8>
    80003668:	00400793          	li	a5,4
    8000366c:	00300c93          	li	s9,3
    80003670:	c39ff06f          	j	800032a8 <__printf+0x260>
    80003674:	00500793          	li	a5,5
    80003678:	00400c93          	li	s9,4
    8000367c:	c2dff06f          	j	800032a8 <__printf+0x260>
    80003680:	00500793          	li	a5,5
    80003684:	00400c93          	li	s9,4
    80003688:	db9ff06f          	j	80003440 <__printf+0x3f8>
    8000368c:	00600793          	li	a5,6
    80003690:	00500c93          	li	s9,5
    80003694:	dadff06f          	j	80003440 <__printf+0x3f8>
    80003698:	00600793          	li	a5,6
    8000369c:	00500c93          	li	s9,5
    800036a0:	c09ff06f          	j	800032a8 <__printf+0x260>
    800036a4:	00800793          	li	a5,8
    800036a8:	00700c93          	li	s9,7
    800036ac:	bfdff06f          	j	800032a8 <__printf+0x260>
    800036b0:	00100793          	li	a5,1
    800036b4:	d91ff06f          	j	80003444 <__printf+0x3fc>
    800036b8:	00100793          	li	a5,1
    800036bc:	bf1ff06f          	j	800032ac <__printf+0x264>
    800036c0:	00900793          	li	a5,9
    800036c4:	00800c93          	li	s9,8
    800036c8:	be1ff06f          	j	800032a8 <__printf+0x260>
    800036cc:	00002517          	auipc	a0,0x2
    800036d0:	bcc50513          	addi	a0,a0,-1076 # 80005298 <_ZZ12printIntegermE6digits+0x150>
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	918080e7          	jalr	-1768(ra) # 80002fec <panic>

00000000800036dc <printfinit>:
    800036dc:	fe010113          	addi	sp,sp,-32
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00913423          	sd	s1,8(sp)
    800036e8:	00113c23          	sd	ra,24(sp)
    800036ec:	02010413          	addi	s0,sp,32
    800036f0:	00003497          	auipc	s1,0x3
    800036f4:	65048493          	addi	s1,s1,1616 # 80006d40 <pr>
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00002597          	auipc	a1,0x2
    80003700:	bac58593          	addi	a1,a1,-1108 # 800052a8 <_ZZ12printIntegermE6digits+0x160>
    80003704:	00000097          	auipc	ra,0x0
    80003708:	5f4080e7          	jalr	1524(ra) # 80003cf8 <initlock>
    8000370c:	01813083          	ld	ra,24(sp)
    80003710:	01013403          	ld	s0,16(sp)
    80003714:	0004ac23          	sw	zero,24(s1)
    80003718:	00813483          	ld	s1,8(sp)
    8000371c:	02010113          	addi	sp,sp,32
    80003720:	00008067          	ret

0000000080003724 <uartinit>:
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00813423          	sd	s0,8(sp)
    8000372c:	01010413          	addi	s0,sp,16
    80003730:	100007b7          	lui	a5,0x10000
    80003734:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003738:	f8000713          	li	a4,-128
    8000373c:	00e781a3          	sb	a4,3(a5)
    80003740:	00300713          	li	a4,3
    80003744:	00e78023          	sb	a4,0(a5)
    80003748:	000780a3          	sb	zero,1(a5)
    8000374c:	00e781a3          	sb	a4,3(a5)
    80003750:	00700693          	li	a3,7
    80003754:	00d78123          	sb	a3,2(a5)
    80003758:	00e780a3          	sb	a4,1(a5)
    8000375c:	00813403          	ld	s0,8(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	00008067          	ret

0000000080003768 <uartputc>:
    80003768:	00002797          	auipc	a5,0x2
    8000376c:	3607a783          	lw	a5,864(a5) # 80005ac8 <panicked>
    80003770:	00078463          	beqz	a5,80003778 <uartputc+0x10>
    80003774:	0000006f          	j	80003774 <uartputc+0xc>
    80003778:	fd010113          	addi	sp,sp,-48
    8000377c:	02813023          	sd	s0,32(sp)
    80003780:	00913c23          	sd	s1,24(sp)
    80003784:	01213823          	sd	s2,16(sp)
    80003788:	01313423          	sd	s3,8(sp)
    8000378c:	02113423          	sd	ra,40(sp)
    80003790:	03010413          	addi	s0,sp,48
    80003794:	00002917          	auipc	s2,0x2
    80003798:	33c90913          	addi	s2,s2,828 # 80005ad0 <uart_tx_r>
    8000379c:	00093783          	ld	a5,0(s2)
    800037a0:	00002497          	auipc	s1,0x2
    800037a4:	33848493          	addi	s1,s1,824 # 80005ad8 <uart_tx_w>
    800037a8:	0004b703          	ld	a4,0(s1)
    800037ac:	02078693          	addi	a3,a5,32
    800037b0:	00050993          	mv	s3,a0
    800037b4:	02e69c63          	bne	a3,a4,800037ec <uartputc+0x84>
    800037b8:	00001097          	auipc	ra,0x1
    800037bc:	834080e7          	jalr	-1996(ra) # 80003fec <push_on>
    800037c0:	00093783          	ld	a5,0(s2)
    800037c4:	0004b703          	ld	a4,0(s1)
    800037c8:	02078793          	addi	a5,a5,32
    800037cc:	00e79463          	bne	a5,a4,800037d4 <uartputc+0x6c>
    800037d0:	0000006f          	j	800037d0 <uartputc+0x68>
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	88c080e7          	jalr	-1908(ra) # 80004060 <pop_on>
    800037dc:	00093783          	ld	a5,0(s2)
    800037e0:	0004b703          	ld	a4,0(s1)
    800037e4:	02078693          	addi	a3,a5,32
    800037e8:	fce688e3          	beq	a3,a4,800037b8 <uartputc+0x50>
    800037ec:	01f77693          	andi	a3,a4,31
    800037f0:	00003597          	auipc	a1,0x3
    800037f4:	57058593          	addi	a1,a1,1392 # 80006d60 <uart_tx_buf>
    800037f8:	00d586b3          	add	a3,a1,a3
    800037fc:	00170713          	addi	a4,a4,1
    80003800:	01368023          	sb	s3,0(a3)
    80003804:	00e4b023          	sd	a4,0(s1)
    80003808:	10000637          	lui	a2,0x10000
    8000380c:	02f71063          	bne	a4,a5,8000382c <uartputc+0xc4>
    80003810:	0340006f          	j	80003844 <uartputc+0xdc>
    80003814:	00074703          	lbu	a4,0(a4)
    80003818:	00f93023          	sd	a5,0(s2)
    8000381c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003820:	00093783          	ld	a5,0(s2)
    80003824:	0004b703          	ld	a4,0(s1)
    80003828:	00f70e63          	beq	a4,a5,80003844 <uartputc+0xdc>
    8000382c:	00564683          	lbu	a3,5(a2)
    80003830:	01f7f713          	andi	a4,a5,31
    80003834:	00e58733          	add	a4,a1,a4
    80003838:	0206f693          	andi	a3,a3,32
    8000383c:	00178793          	addi	a5,a5,1
    80003840:	fc069ae3          	bnez	a3,80003814 <uartputc+0xac>
    80003844:	02813083          	ld	ra,40(sp)
    80003848:	02013403          	ld	s0,32(sp)
    8000384c:	01813483          	ld	s1,24(sp)
    80003850:	01013903          	ld	s2,16(sp)
    80003854:	00813983          	ld	s3,8(sp)
    80003858:	03010113          	addi	sp,sp,48
    8000385c:	00008067          	ret

0000000080003860 <uartputc_sync>:
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00813423          	sd	s0,8(sp)
    80003868:	01010413          	addi	s0,sp,16
    8000386c:	00002717          	auipc	a4,0x2
    80003870:	25c72703          	lw	a4,604(a4) # 80005ac8 <panicked>
    80003874:	02071663          	bnez	a4,800038a0 <uartputc_sync+0x40>
    80003878:	00050793          	mv	a5,a0
    8000387c:	100006b7          	lui	a3,0x10000
    80003880:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003884:	02077713          	andi	a4,a4,32
    80003888:	fe070ce3          	beqz	a4,80003880 <uartputc_sync+0x20>
    8000388c:	0ff7f793          	andi	a5,a5,255
    80003890:	00f68023          	sb	a5,0(a3)
    80003894:	00813403          	ld	s0,8(sp)
    80003898:	01010113          	addi	sp,sp,16
    8000389c:	00008067          	ret
    800038a0:	0000006f          	j	800038a0 <uartputc_sync+0x40>

00000000800038a4 <uartstart>:
    800038a4:	ff010113          	addi	sp,sp,-16
    800038a8:	00813423          	sd	s0,8(sp)
    800038ac:	01010413          	addi	s0,sp,16
    800038b0:	00002617          	auipc	a2,0x2
    800038b4:	22060613          	addi	a2,a2,544 # 80005ad0 <uart_tx_r>
    800038b8:	00002517          	auipc	a0,0x2
    800038bc:	22050513          	addi	a0,a0,544 # 80005ad8 <uart_tx_w>
    800038c0:	00063783          	ld	a5,0(a2)
    800038c4:	00053703          	ld	a4,0(a0)
    800038c8:	04f70263          	beq	a4,a5,8000390c <uartstart+0x68>
    800038cc:	100005b7          	lui	a1,0x10000
    800038d0:	00003817          	auipc	a6,0x3
    800038d4:	49080813          	addi	a6,a6,1168 # 80006d60 <uart_tx_buf>
    800038d8:	01c0006f          	j	800038f4 <uartstart+0x50>
    800038dc:	0006c703          	lbu	a4,0(a3)
    800038e0:	00f63023          	sd	a5,0(a2)
    800038e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038e8:	00063783          	ld	a5,0(a2)
    800038ec:	00053703          	ld	a4,0(a0)
    800038f0:	00f70e63          	beq	a4,a5,8000390c <uartstart+0x68>
    800038f4:	01f7f713          	andi	a4,a5,31
    800038f8:	00e806b3          	add	a3,a6,a4
    800038fc:	0055c703          	lbu	a4,5(a1)
    80003900:	00178793          	addi	a5,a5,1
    80003904:	02077713          	andi	a4,a4,32
    80003908:	fc071ae3          	bnez	a4,800038dc <uartstart+0x38>
    8000390c:	00813403          	ld	s0,8(sp)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret

0000000080003918 <uartgetc>:
    80003918:	ff010113          	addi	sp,sp,-16
    8000391c:	00813423          	sd	s0,8(sp)
    80003920:	01010413          	addi	s0,sp,16
    80003924:	10000737          	lui	a4,0x10000
    80003928:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000392c:	0017f793          	andi	a5,a5,1
    80003930:	00078c63          	beqz	a5,80003948 <uartgetc+0x30>
    80003934:	00074503          	lbu	a0,0(a4)
    80003938:	0ff57513          	andi	a0,a0,255
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret
    80003948:	fff00513          	li	a0,-1
    8000394c:	ff1ff06f          	j	8000393c <uartgetc+0x24>

0000000080003950 <uartintr>:
    80003950:	100007b7          	lui	a5,0x10000
    80003954:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003958:	0017f793          	andi	a5,a5,1
    8000395c:	0a078463          	beqz	a5,80003a04 <uartintr+0xb4>
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	00113c23          	sd	ra,24(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	100004b7          	lui	s1,0x10000
    80003978:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000397c:	0ff57513          	andi	a0,a0,255
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	534080e7          	jalr	1332(ra) # 80002eb4 <consoleintr>
    80003988:	0054c783          	lbu	a5,5(s1)
    8000398c:	0017f793          	andi	a5,a5,1
    80003990:	fe0794e3          	bnez	a5,80003978 <uartintr+0x28>
    80003994:	00002617          	auipc	a2,0x2
    80003998:	13c60613          	addi	a2,a2,316 # 80005ad0 <uart_tx_r>
    8000399c:	00002517          	auipc	a0,0x2
    800039a0:	13c50513          	addi	a0,a0,316 # 80005ad8 <uart_tx_w>
    800039a4:	00063783          	ld	a5,0(a2)
    800039a8:	00053703          	ld	a4,0(a0)
    800039ac:	04f70263          	beq	a4,a5,800039f0 <uartintr+0xa0>
    800039b0:	100005b7          	lui	a1,0x10000
    800039b4:	00003817          	auipc	a6,0x3
    800039b8:	3ac80813          	addi	a6,a6,940 # 80006d60 <uart_tx_buf>
    800039bc:	01c0006f          	j	800039d8 <uartintr+0x88>
    800039c0:	0006c703          	lbu	a4,0(a3)
    800039c4:	00f63023          	sd	a5,0(a2)
    800039c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800039cc:	00063783          	ld	a5,0(a2)
    800039d0:	00053703          	ld	a4,0(a0)
    800039d4:	00f70e63          	beq	a4,a5,800039f0 <uartintr+0xa0>
    800039d8:	01f7f713          	andi	a4,a5,31
    800039dc:	00e806b3          	add	a3,a6,a4
    800039e0:	0055c703          	lbu	a4,5(a1)
    800039e4:	00178793          	addi	a5,a5,1
    800039e8:	02077713          	andi	a4,a4,32
    800039ec:	fc071ae3          	bnez	a4,800039c0 <uartintr+0x70>
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret
    80003a04:	00002617          	auipc	a2,0x2
    80003a08:	0cc60613          	addi	a2,a2,204 # 80005ad0 <uart_tx_r>
    80003a0c:	00002517          	auipc	a0,0x2
    80003a10:	0cc50513          	addi	a0,a0,204 # 80005ad8 <uart_tx_w>
    80003a14:	00063783          	ld	a5,0(a2)
    80003a18:	00053703          	ld	a4,0(a0)
    80003a1c:	04f70263          	beq	a4,a5,80003a60 <uartintr+0x110>
    80003a20:	100005b7          	lui	a1,0x10000
    80003a24:	00003817          	auipc	a6,0x3
    80003a28:	33c80813          	addi	a6,a6,828 # 80006d60 <uart_tx_buf>
    80003a2c:	01c0006f          	j	80003a48 <uartintr+0xf8>
    80003a30:	0006c703          	lbu	a4,0(a3)
    80003a34:	00f63023          	sd	a5,0(a2)
    80003a38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a3c:	00063783          	ld	a5,0(a2)
    80003a40:	00053703          	ld	a4,0(a0)
    80003a44:	02f70063          	beq	a4,a5,80003a64 <uartintr+0x114>
    80003a48:	01f7f713          	andi	a4,a5,31
    80003a4c:	00e806b3          	add	a3,a6,a4
    80003a50:	0055c703          	lbu	a4,5(a1)
    80003a54:	00178793          	addi	a5,a5,1
    80003a58:	02077713          	andi	a4,a4,32
    80003a5c:	fc071ae3          	bnez	a4,80003a30 <uartintr+0xe0>
    80003a60:	00008067          	ret
    80003a64:	00008067          	ret

0000000080003a68 <kinit>:
    80003a68:	fc010113          	addi	sp,sp,-64
    80003a6c:	02913423          	sd	s1,40(sp)
    80003a70:	fffff7b7          	lui	a5,0xfffff
    80003a74:	00004497          	auipc	s1,0x4
    80003a78:	30b48493          	addi	s1,s1,779 # 80007d7f <end+0xfff>
    80003a7c:	02813823          	sd	s0,48(sp)
    80003a80:	01313c23          	sd	s3,24(sp)
    80003a84:	00f4f4b3          	and	s1,s1,a5
    80003a88:	02113c23          	sd	ra,56(sp)
    80003a8c:	03213023          	sd	s2,32(sp)
    80003a90:	01413823          	sd	s4,16(sp)
    80003a94:	01513423          	sd	s5,8(sp)
    80003a98:	04010413          	addi	s0,sp,64
    80003a9c:	000017b7          	lui	a5,0x1
    80003aa0:	01100993          	li	s3,17
    80003aa4:	00f487b3          	add	a5,s1,a5
    80003aa8:	01b99993          	slli	s3,s3,0x1b
    80003aac:	06f9e063          	bltu	s3,a5,80003b0c <kinit+0xa4>
    80003ab0:	00003a97          	auipc	s5,0x3
    80003ab4:	2d0a8a93          	addi	s5,s5,720 # 80006d80 <end>
    80003ab8:	0754ec63          	bltu	s1,s5,80003b30 <kinit+0xc8>
    80003abc:	0734fa63          	bgeu	s1,s3,80003b30 <kinit+0xc8>
    80003ac0:	00088a37          	lui	s4,0x88
    80003ac4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ac8:	00002917          	auipc	s2,0x2
    80003acc:	01890913          	addi	s2,s2,24 # 80005ae0 <kmem>
    80003ad0:	00ca1a13          	slli	s4,s4,0xc
    80003ad4:	0140006f          	j	80003ae8 <kinit+0x80>
    80003ad8:	000017b7          	lui	a5,0x1
    80003adc:	00f484b3          	add	s1,s1,a5
    80003ae0:	0554e863          	bltu	s1,s5,80003b30 <kinit+0xc8>
    80003ae4:	0534f663          	bgeu	s1,s3,80003b30 <kinit+0xc8>
    80003ae8:	00001637          	lui	a2,0x1
    80003aec:	00100593          	li	a1,1
    80003af0:	00048513          	mv	a0,s1
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	5e4080e7          	jalr	1508(ra) # 800040d8 <__memset>
    80003afc:	00093783          	ld	a5,0(s2)
    80003b00:	00f4b023          	sd	a5,0(s1)
    80003b04:	00993023          	sd	s1,0(s2)
    80003b08:	fd4498e3          	bne	s1,s4,80003ad8 <kinit+0x70>
    80003b0c:	03813083          	ld	ra,56(sp)
    80003b10:	03013403          	ld	s0,48(sp)
    80003b14:	02813483          	ld	s1,40(sp)
    80003b18:	02013903          	ld	s2,32(sp)
    80003b1c:	01813983          	ld	s3,24(sp)
    80003b20:	01013a03          	ld	s4,16(sp)
    80003b24:	00813a83          	ld	s5,8(sp)
    80003b28:	04010113          	addi	sp,sp,64
    80003b2c:	00008067          	ret
    80003b30:	00001517          	auipc	a0,0x1
    80003b34:	79850513          	addi	a0,a0,1944 # 800052c8 <digits+0x18>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	4b4080e7          	jalr	1204(ra) # 80002fec <panic>

0000000080003b40 <freerange>:
    80003b40:	fc010113          	addi	sp,sp,-64
    80003b44:	000017b7          	lui	a5,0x1
    80003b48:	02913423          	sd	s1,40(sp)
    80003b4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003b50:	009504b3          	add	s1,a0,s1
    80003b54:	fffff537          	lui	a0,0xfffff
    80003b58:	02813823          	sd	s0,48(sp)
    80003b5c:	02113c23          	sd	ra,56(sp)
    80003b60:	03213023          	sd	s2,32(sp)
    80003b64:	01313c23          	sd	s3,24(sp)
    80003b68:	01413823          	sd	s4,16(sp)
    80003b6c:	01513423          	sd	s5,8(sp)
    80003b70:	01613023          	sd	s6,0(sp)
    80003b74:	04010413          	addi	s0,sp,64
    80003b78:	00a4f4b3          	and	s1,s1,a0
    80003b7c:	00f487b3          	add	a5,s1,a5
    80003b80:	06f5e463          	bltu	a1,a5,80003be8 <freerange+0xa8>
    80003b84:	00003a97          	auipc	s5,0x3
    80003b88:	1fca8a93          	addi	s5,s5,508 # 80006d80 <end>
    80003b8c:	0954e263          	bltu	s1,s5,80003c10 <freerange+0xd0>
    80003b90:	01100993          	li	s3,17
    80003b94:	01b99993          	slli	s3,s3,0x1b
    80003b98:	0734fc63          	bgeu	s1,s3,80003c10 <freerange+0xd0>
    80003b9c:	00058a13          	mv	s4,a1
    80003ba0:	00002917          	auipc	s2,0x2
    80003ba4:	f4090913          	addi	s2,s2,-192 # 80005ae0 <kmem>
    80003ba8:	00002b37          	lui	s6,0x2
    80003bac:	0140006f          	j	80003bc0 <freerange+0x80>
    80003bb0:	000017b7          	lui	a5,0x1
    80003bb4:	00f484b3          	add	s1,s1,a5
    80003bb8:	0554ec63          	bltu	s1,s5,80003c10 <freerange+0xd0>
    80003bbc:	0534fa63          	bgeu	s1,s3,80003c10 <freerange+0xd0>
    80003bc0:	00001637          	lui	a2,0x1
    80003bc4:	00100593          	li	a1,1
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	50c080e7          	jalr	1292(ra) # 800040d8 <__memset>
    80003bd4:	00093703          	ld	a4,0(s2)
    80003bd8:	016487b3          	add	a5,s1,s6
    80003bdc:	00e4b023          	sd	a4,0(s1)
    80003be0:	00993023          	sd	s1,0(s2)
    80003be4:	fcfa76e3          	bgeu	s4,a5,80003bb0 <freerange+0x70>
    80003be8:	03813083          	ld	ra,56(sp)
    80003bec:	03013403          	ld	s0,48(sp)
    80003bf0:	02813483          	ld	s1,40(sp)
    80003bf4:	02013903          	ld	s2,32(sp)
    80003bf8:	01813983          	ld	s3,24(sp)
    80003bfc:	01013a03          	ld	s4,16(sp)
    80003c00:	00813a83          	ld	s5,8(sp)
    80003c04:	00013b03          	ld	s6,0(sp)
    80003c08:	04010113          	addi	sp,sp,64
    80003c0c:	00008067          	ret
    80003c10:	00001517          	auipc	a0,0x1
    80003c14:	6b850513          	addi	a0,a0,1720 # 800052c8 <digits+0x18>
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	3d4080e7          	jalr	980(ra) # 80002fec <panic>

0000000080003c20 <kfree>:
    80003c20:	fe010113          	addi	sp,sp,-32
    80003c24:	00813823          	sd	s0,16(sp)
    80003c28:	00113c23          	sd	ra,24(sp)
    80003c2c:	00913423          	sd	s1,8(sp)
    80003c30:	02010413          	addi	s0,sp,32
    80003c34:	03451793          	slli	a5,a0,0x34
    80003c38:	04079c63          	bnez	a5,80003c90 <kfree+0x70>
    80003c3c:	00003797          	auipc	a5,0x3
    80003c40:	14478793          	addi	a5,a5,324 # 80006d80 <end>
    80003c44:	00050493          	mv	s1,a0
    80003c48:	04f56463          	bltu	a0,a5,80003c90 <kfree+0x70>
    80003c4c:	01100793          	li	a5,17
    80003c50:	01b79793          	slli	a5,a5,0x1b
    80003c54:	02f57e63          	bgeu	a0,a5,80003c90 <kfree+0x70>
    80003c58:	00001637          	lui	a2,0x1
    80003c5c:	00100593          	li	a1,1
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	478080e7          	jalr	1144(ra) # 800040d8 <__memset>
    80003c68:	00002797          	auipc	a5,0x2
    80003c6c:	e7878793          	addi	a5,a5,-392 # 80005ae0 <kmem>
    80003c70:	0007b703          	ld	a4,0(a5)
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	00e4b023          	sd	a4,0(s1)
    80003c80:	0097b023          	sd	s1,0(a5)
    80003c84:	00813483          	ld	s1,8(sp)
    80003c88:	02010113          	addi	sp,sp,32
    80003c8c:	00008067          	ret
    80003c90:	00001517          	auipc	a0,0x1
    80003c94:	63850513          	addi	a0,a0,1592 # 800052c8 <digits+0x18>
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	354080e7          	jalr	852(ra) # 80002fec <panic>

0000000080003ca0 <kalloc>:
    80003ca0:	fe010113          	addi	sp,sp,-32
    80003ca4:	00813823          	sd	s0,16(sp)
    80003ca8:	00913423          	sd	s1,8(sp)
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	02010413          	addi	s0,sp,32
    80003cb4:	00002797          	auipc	a5,0x2
    80003cb8:	e2c78793          	addi	a5,a5,-468 # 80005ae0 <kmem>
    80003cbc:	0007b483          	ld	s1,0(a5)
    80003cc0:	02048063          	beqz	s1,80003ce0 <kalloc+0x40>
    80003cc4:	0004b703          	ld	a4,0(s1)
    80003cc8:	00001637          	lui	a2,0x1
    80003ccc:	00500593          	li	a1,5
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00e7b023          	sd	a4,0(a5)
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	400080e7          	jalr	1024(ra) # 800040d8 <__memset>
    80003ce0:	01813083          	ld	ra,24(sp)
    80003ce4:	01013403          	ld	s0,16(sp)
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00813483          	ld	s1,8(sp)
    80003cf0:	02010113          	addi	sp,sp,32
    80003cf4:	00008067          	ret

0000000080003cf8 <initlock>:
    80003cf8:	ff010113          	addi	sp,sp,-16
    80003cfc:	00813423          	sd	s0,8(sp)
    80003d00:	01010413          	addi	s0,sp,16
    80003d04:	00813403          	ld	s0,8(sp)
    80003d08:	00b53423          	sd	a1,8(a0)
    80003d0c:	00052023          	sw	zero,0(a0)
    80003d10:	00053823          	sd	zero,16(a0)
    80003d14:	01010113          	addi	sp,sp,16
    80003d18:	00008067          	ret

0000000080003d1c <acquire>:
    80003d1c:	fe010113          	addi	sp,sp,-32
    80003d20:	00813823          	sd	s0,16(sp)
    80003d24:	00913423          	sd	s1,8(sp)
    80003d28:	00113c23          	sd	ra,24(sp)
    80003d2c:	01213023          	sd	s2,0(sp)
    80003d30:	02010413          	addi	s0,sp,32
    80003d34:	00050493          	mv	s1,a0
    80003d38:	10002973          	csrr	s2,sstatus
    80003d3c:	100027f3          	csrr	a5,sstatus
    80003d40:	ffd7f793          	andi	a5,a5,-3
    80003d44:	10079073          	csrw	sstatus,a5
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	8ec080e7          	jalr	-1812(ra) # 80002634 <mycpu>
    80003d50:	07852783          	lw	a5,120(a0)
    80003d54:	06078e63          	beqz	a5,80003dd0 <acquire+0xb4>
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	8dc080e7          	jalr	-1828(ra) # 80002634 <mycpu>
    80003d60:	07852783          	lw	a5,120(a0)
    80003d64:	0004a703          	lw	a4,0(s1)
    80003d68:	0017879b          	addiw	a5,a5,1
    80003d6c:	06f52c23          	sw	a5,120(a0)
    80003d70:	04071063          	bnez	a4,80003db0 <acquire+0x94>
    80003d74:	00100713          	li	a4,1
    80003d78:	00070793          	mv	a5,a4
    80003d7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003d80:	0007879b          	sext.w	a5,a5
    80003d84:	fe079ae3          	bnez	a5,80003d78 <acquire+0x5c>
    80003d88:	0ff0000f          	fence
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	8a8080e7          	jalr	-1880(ra) # 80002634 <mycpu>
    80003d94:	01813083          	ld	ra,24(sp)
    80003d98:	01013403          	ld	s0,16(sp)
    80003d9c:	00a4b823          	sd	a0,16(s1)
    80003da0:	00013903          	ld	s2,0(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
    80003db0:	0104b903          	ld	s2,16(s1)
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	880080e7          	jalr	-1920(ra) # 80002634 <mycpu>
    80003dbc:	faa91ce3          	bne	s2,a0,80003d74 <acquire+0x58>
    80003dc0:	00001517          	auipc	a0,0x1
    80003dc4:	51050513          	addi	a0,a0,1296 # 800052d0 <digits+0x20>
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	224080e7          	jalr	548(ra) # 80002fec <panic>
    80003dd0:	00195913          	srli	s2,s2,0x1
    80003dd4:	fffff097          	auipc	ra,0xfffff
    80003dd8:	860080e7          	jalr	-1952(ra) # 80002634 <mycpu>
    80003ddc:	00197913          	andi	s2,s2,1
    80003de0:	07252e23          	sw	s2,124(a0)
    80003de4:	f75ff06f          	j	80003d58 <acquire+0x3c>

0000000080003de8 <release>:
    80003de8:	fe010113          	addi	sp,sp,-32
    80003dec:	00813823          	sd	s0,16(sp)
    80003df0:	00113c23          	sd	ra,24(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	01213023          	sd	s2,0(sp)
    80003dfc:	02010413          	addi	s0,sp,32
    80003e00:	00052783          	lw	a5,0(a0)
    80003e04:	00079a63          	bnez	a5,80003e18 <release+0x30>
    80003e08:	00001517          	auipc	a0,0x1
    80003e0c:	4d050513          	addi	a0,a0,1232 # 800052d8 <digits+0x28>
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	1dc080e7          	jalr	476(ra) # 80002fec <panic>
    80003e18:	01053903          	ld	s2,16(a0)
    80003e1c:	00050493          	mv	s1,a0
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	814080e7          	jalr	-2028(ra) # 80002634 <mycpu>
    80003e28:	fea910e3          	bne	s2,a0,80003e08 <release+0x20>
    80003e2c:	0004b823          	sd	zero,16(s1)
    80003e30:	0ff0000f          	fence
    80003e34:	0f50000f          	fence	iorw,ow
    80003e38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	7f8080e7          	jalr	2040(ra) # 80002634 <mycpu>
    80003e44:	100027f3          	csrr	a5,sstatus
    80003e48:	0027f793          	andi	a5,a5,2
    80003e4c:	04079a63          	bnez	a5,80003ea0 <release+0xb8>
    80003e50:	07852783          	lw	a5,120(a0)
    80003e54:	02f05e63          	blez	a5,80003e90 <release+0xa8>
    80003e58:	fff7871b          	addiw	a4,a5,-1
    80003e5c:	06e52c23          	sw	a4,120(a0)
    80003e60:	00071c63          	bnez	a4,80003e78 <release+0x90>
    80003e64:	07c52783          	lw	a5,124(a0)
    80003e68:	00078863          	beqz	a5,80003e78 <release+0x90>
    80003e6c:	100027f3          	csrr	a5,sstatus
    80003e70:	0027e793          	ori	a5,a5,2
    80003e74:	10079073          	csrw	sstatus,a5
    80003e78:	01813083          	ld	ra,24(sp)
    80003e7c:	01013403          	ld	s0,16(sp)
    80003e80:	00813483          	ld	s1,8(sp)
    80003e84:	00013903          	ld	s2,0(sp)
    80003e88:	02010113          	addi	sp,sp,32
    80003e8c:	00008067          	ret
    80003e90:	00001517          	auipc	a0,0x1
    80003e94:	46850513          	addi	a0,a0,1128 # 800052f8 <digits+0x48>
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	154080e7          	jalr	340(ra) # 80002fec <panic>
    80003ea0:	00001517          	auipc	a0,0x1
    80003ea4:	44050513          	addi	a0,a0,1088 # 800052e0 <digits+0x30>
    80003ea8:	fffff097          	auipc	ra,0xfffff
    80003eac:	144080e7          	jalr	324(ra) # 80002fec <panic>

0000000080003eb0 <holding>:
    80003eb0:	00052783          	lw	a5,0(a0)
    80003eb4:	00079663          	bnez	a5,80003ec0 <holding+0x10>
    80003eb8:	00000513          	li	a0,0
    80003ebc:	00008067          	ret
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	02010413          	addi	s0,sp,32
    80003ed4:	01053483          	ld	s1,16(a0)
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	75c080e7          	jalr	1884(ra) # 80002634 <mycpu>
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	40a48533          	sub	a0,s1,a0
    80003eec:	00153513          	seqz	a0,a0
    80003ef0:	00813483          	ld	s1,8(sp)
    80003ef4:	02010113          	addi	sp,sp,32
    80003ef8:	00008067          	ret

0000000080003efc <push_off>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	00913423          	sd	s1,8(sp)
    80003f0c:	02010413          	addi	s0,sp,32
    80003f10:	100024f3          	csrr	s1,sstatus
    80003f14:	100027f3          	csrr	a5,sstatus
    80003f18:	ffd7f793          	andi	a5,a5,-3
    80003f1c:	10079073          	csrw	sstatus,a5
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	714080e7          	jalr	1812(ra) # 80002634 <mycpu>
    80003f28:	07852783          	lw	a5,120(a0)
    80003f2c:	02078663          	beqz	a5,80003f58 <push_off+0x5c>
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	704080e7          	jalr	1796(ra) # 80002634 <mycpu>
    80003f38:	07852783          	lw	a5,120(a0)
    80003f3c:	01813083          	ld	ra,24(sp)
    80003f40:	01013403          	ld	s0,16(sp)
    80003f44:	0017879b          	addiw	a5,a5,1
    80003f48:	06f52c23          	sw	a5,120(a0)
    80003f4c:	00813483          	ld	s1,8(sp)
    80003f50:	02010113          	addi	sp,sp,32
    80003f54:	00008067          	ret
    80003f58:	0014d493          	srli	s1,s1,0x1
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	6d8080e7          	jalr	1752(ra) # 80002634 <mycpu>
    80003f64:	0014f493          	andi	s1,s1,1
    80003f68:	06952e23          	sw	s1,124(a0)
    80003f6c:	fc5ff06f          	j	80003f30 <push_off+0x34>

0000000080003f70 <pop_off>:
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00813023          	sd	s0,0(sp)
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	01010413          	addi	s0,sp,16
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	6b4080e7          	jalr	1716(ra) # 80002634 <mycpu>
    80003f88:	100027f3          	csrr	a5,sstatus
    80003f8c:	0027f793          	andi	a5,a5,2
    80003f90:	04079663          	bnez	a5,80003fdc <pop_off+0x6c>
    80003f94:	07852783          	lw	a5,120(a0)
    80003f98:	02f05a63          	blez	a5,80003fcc <pop_off+0x5c>
    80003f9c:	fff7871b          	addiw	a4,a5,-1
    80003fa0:	06e52c23          	sw	a4,120(a0)
    80003fa4:	00071c63          	bnez	a4,80003fbc <pop_off+0x4c>
    80003fa8:	07c52783          	lw	a5,124(a0)
    80003fac:	00078863          	beqz	a5,80003fbc <pop_off+0x4c>
    80003fb0:	100027f3          	csrr	a5,sstatus
    80003fb4:	0027e793          	ori	a5,a5,2
    80003fb8:	10079073          	csrw	sstatus,a5
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret
    80003fcc:	00001517          	auipc	a0,0x1
    80003fd0:	32c50513          	addi	a0,a0,812 # 800052f8 <digits+0x48>
    80003fd4:	fffff097          	auipc	ra,0xfffff
    80003fd8:	018080e7          	jalr	24(ra) # 80002fec <panic>
    80003fdc:	00001517          	auipc	a0,0x1
    80003fe0:	30450513          	addi	a0,a0,772 # 800052e0 <digits+0x30>
    80003fe4:	fffff097          	auipc	ra,0xfffff
    80003fe8:	008080e7          	jalr	8(ra) # 80002fec <panic>

0000000080003fec <push_on>:
    80003fec:	fe010113          	addi	sp,sp,-32
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00113c23          	sd	ra,24(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	100024f3          	csrr	s1,sstatus
    80004004:	100027f3          	csrr	a5,sstatus
    80004008:	0027e793          	ori	a5,a5,2
    8000400c:	10079073          	csrw	sstatus,a5
    80004010:	ffffe097          	auipc	ra,0xffffe
    80004014:	624080e7          	jalr	1572(ra) # 80002634 <mycpu>
    80004018:	07852783          	lw	a5,120(a0)
    8000401c:	02078663          	beqz	a5,80004048 <push_on+0x5c>
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	614080e7          	jalr	1556(ra) # 80002634 <mycpu>
    80004028:	07852783          	lw	a5,120(a0)
    8000402c:	01813083          	ld	ra,24(sp)
    80004030:	01013403          	ld	s0,16(sp)
    80004034:	0017879b          	addiw	a5,a5,1
    80004038:	06f52c23          	sw	a5,120(a0)
    8000403c:	00813483          	ld	s1,8(sp)
    80004040:	02010113          	addi	sp,sp,32
    80004044:	00008067          	ret
    80004048:	0014d493          	srli	s1,s1,0x1
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	5e8080e7          	jalr	1512(ra) # 80002634 <mycpu>
    80004054:	0014f493          	andi	s1,s1,1
    80004058:	06952e23          	sw	s1,124(a0)
    8000405c:	fc5ff06f          	j	80004020 <push_on+0x34>

0000000080004060 <pop_on>:
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813023          	sd	s0,0(sp)
    80004068:	00113423          	sd	ra,8(sp)
    8000406c:	01010413          	addi	s0,sp,16
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	5c4080e7          	jalr	1476(ra) # 80002634 <mycpu>
    80004078:	100027f3          	csrr	a5,sstatus
    8000407c:	0027f793          	andi	a5,a5,2
    80004080:	04078463          	beqz	a5,800040c8 <pop_on+0x68>
    80004084:	07852783          	lw	a5,120(a0)
    80004088:	02f05863          	blez	a5,800040b8 <pop_on+0x58>
    8000408c:	fff7879b          	addiw	a5,a5,-1
    80004090:	06f52c23          	sw	a5,120(a0)
    80004094:	07853783          	ld	a5,120(a0)
    80004098:	00079863          	bnez	a5,800040a8 <pop_on+0x48>
    8000409c:	100027f3          	csrr	a5,sstatus
    800040a0:	ffd7f793          	andi	a5,a5,-3
    800040a4:	10079073          	csrw	sstatus,a5
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret
    800040b8:	00001517          	auipc	a0,0x1
    800040bc:	26850513          	addi	a0,a0,616 # 80005320 <digits+0x70>
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	f2c080e7          	jalr	-212(ra) # 80002fec <panic>
    800040c8:	00001517          	auipc	a0,0x1
    800040cc:	23850513          	addi	a0,a0,568 # 80005300 <digits+0x50>
    800040d0:	fffff097          	auipc	ra,0xfffff
    800040d4:	f1c080e7          	jalr	-228(ra) # 80002fec <panic>

00000000800040d8 <__memset>:
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00813423          	sd	s0,8(sp)
    800040e0:	01010413          	addi	s0,sp,16
    800040e4:	1a060e63          	beqz	a2,800042a0 <__memset+0x1c8>
    800040e8:	40a007b3          	neg	a5,a0
    800040ec:	0077f793          	andi	a5,a5,7
    800040f0:	00778693          	addi	a3,a5,7
    800040f4:	00b00813          	li	a6,11
    800040f8:	0ff5f593          	andi	a1,a1,255
    800040fc:	fff6071b          	addiw	a4,a2,-1
    80004100:	1b06e663          	bltu	a3,a6,800042ac <__memset+0x1d4>
    80004104:	1cd76463          	bltu	a4,a3,800042cc <__memset+0x1f4>
    80004108:	1a078e63          	beqz	a5,800042c4 <__memset+0x1ec>
    8000410c:	00b50023          	sb	a1,0(a0)
    80004110:	00100713          	li	a4,1
    80004114:	1ae78463          	beq	a5,a4,800042bc <__memset+0x1e4>
    80004118:	00b500a3          	sb	a1,1(a0)
    8000411c:	00200713          	li	a4,2
    80004120:	1ae78a63          	beq	a5,a4,800042d4 <__memset+0x1fc>
    80004124:	00b50123          	sb	a1,2(a0)
    80004128:	00300713          	li	a4,3
    8000412c:	18e78463          	beq	a5,a4,800042b4 <__memset+0x1dc>
    80004130:	00b501a3          	sb	a1,3(a0)
    80004134:	00400713          	li	a4,4
    80004138:	1ae78263          	beq	a5,a4,800042dc <__memset+0x204>
    8000413c:	00b50223          	sb	a1,4(a0)
    80004140:	00500713          	li	a4,5
    80004144:	1ae78063          	beq	a5,a4,800042e4 <__memset+0x20c>
    80004148:	00b502a3          	sb	a1,5(a0)
    8000414c:	00700713          	li	a4,7
    80004150:	18e79e63          	bne	a5,a4,800042ec <__memset+0x214>
    80004154:	00b50323          	sb	a1,6(a0)
    80004158:	00700e93          	li	t4,7
    8000415c:	00859713          	slli	a4,a1,0x8
    80004160:	00e5e733          	or	a4,a1,a4
    80004164:	01059e13          	slli	t3,a1,0x10
    80004168:	01c76e33          	or	t3,a4,t3
    8000416c:	01859313          	slli	t1,a1,0x18
    80004170:	006e6333          	or	t1,t3,t1
    80004174:	02059893          	slli	a7,a1,0x20
    80004178:	40f60e3b          	subw	t3,a2,a5
    8000417c:	011368b3          	or	a7,t1,a7
    80004180:	02859813          	slli	a6,a1,0x28
    80004184:	0108e833          	or	a6,a7,a6
    80004188:	03059693          	slli	a3,a1,0x30
    8000418c:	003e589b          	srliw	a7,t3,0x3
    80004190:	00d866b3          	or	a3,a6,a3
    80004194:	03859713          	slli	a4,a1,0x38
    80004198:	00389813          	slli	a6,a7,0x3
    8000419c:	00f507b3          	add	a5,a0,a5
    800041a0:	00e6e733          	or	a4,a3,a4
    800041a4:	000e089b          	sext.w	a7,t3
    800041a8:	00f806b3          	add	a3,a6,a5
    800041ac:	00e7b023          	sd	a4,0(a5)
    800041b0:	00878793          	addi	a5,a5,8
    800041b4:	fed79ce3          	bne	a5,a3,800041ac <__memset+0xd4>
    800041b8:	ff8e7793          	andi	a5,t3,-8
    800041bc:	0007871b          	sext.w	a4,a5
    800041c0:	01d787bb          	addw	a5,a5,t4
    800041c4:	0ce88e63          	beq	a7,a4,800042a0 <__memset+0x1c8>
    800041c8:	00f50733          	add	a4,a0,a5
    800041cc:	00b70023          	sb	a1,0(a4)
    800041d0:	0017871b          	addiw	a4,a5,1
    800041d4:	0cc77663          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    800041d8:	00e50733          	add	a4,a0,a4
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	0027871b          	addiw	a4,a5,2
    800041e4:	0ac77e63          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	0037871b          	addiw	a4,a5,3
    800041f4:	0ac77663          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	0047871b          	addiw	a4,a5,4
    80004204:	08c77e63          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00b70023          	sb	a1,0(a4)
    80004210:	0057871b          	addiw	a4,a5,5
    80004214:	08c77663          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004218:	00e50733          	add	a4,a0,a4
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	0067871b          	addiw	a4,a5,6
    80004224:	06c77e63          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	0077871b          	addiw	a4,a5,7
    80004234:	06c77663          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	0087871b          	addiw	a4,a5,8
    80004244:	04c77e63          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	0097871b          	addiw	a4,a5,9
    80004254:	04c77663          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	00a7871b          	addiw	a4,a5,10
    80004264:	02c77e63          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004268:	00e50733          	add	a4,a0,a4
    8000426c:	00b70023          	sb	a1,0(a4)
    80004270:	00b7871b          	addiw	a4,a5,11
    80004274:	02c77663          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004278:	00e50733          	add	a4,a0,a4
    8000427c:	00b70023          	sb	a1,0(a4)
    80004280:	00c7871b          	addiw	a4,a5,12
    80004284:	00c77e63          	bgeu	a4,a2,800042a0 <__memset+0x1c8>
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00b70023          	sb	a1,0(a4)
    80004290:	00d7879b          	addiw	a5,a5,13
    80004294:	00c7f663          	bgeu	a5,a2,800042a0 <__memset+0x1c8>
    80004298:	00f507b3          	add	a5,a0,a5
    8000429c:	00b78023          	sb	a1,0(a5)
    800042a0:	00813403          	ld	s0,8(sp)
    800042a4:	01010113          	addi	sp,sp,16
    800042a8:	00008067          	ret
    800042ac:	00b00693          	li	a3,11
    800042b0:	e55ff06f          	j	80004104 <__memset+0x2c>
    800042b4:	00300e93          	li	t4,3
    800042b8:	ea5ff06f          	j	8000415c <__memset+0x84>
    800042bc:	00100e93          	li	t4,1
    800042c0:	e9dff06f          	j	8000415c <__memset+0x84>
    800042c4:	00000e93          	li	t4,0
    800042c8:	e95ff06f          	j	8000415c <__memset+0x84>
    800042cc:	00000793          	li	a5,0
    800042d0:	ef9ff06f          	j	800041c8 <__memset+0xf0>
    800042d4:	00200e93          	li	t4,2
    800042d8:	e85ff06f          	j	8000415c <__memset+0x84>
    800042dc:	00400e93          	li	t4,4
    800042e0:	e7dff06f          	j	8000415c <__memset+0x84>
    800042e4:	00500e93          	li	t4,5
    800042e8:	e75ff06f          	j	8000415c <__memset+0x84>
    800042ec:	00600e93          	li	t4,6
    800042f0:	e6dff06f          	j	8000415c <__memset+0x84>

00000000800042f4 <__memmove>:
    800042f4:	ff010113          	addi	sp,sp,-16
    800042f8:	00813423          	sd	s0,8(sp)
    800042fc:	01010413          	addi	s0,sp,16
    80004300:	0e060863          	beqz	a2,800043f0 <__memmove+0xfc>
    80004304:	fff6069b          	addiw	a3,a2,-1
    80004308:	0006881b          	sext.w	a6,a3
    8000430c:	0ea5e863          	bltu	a1,a0,800043fc <__memmove+0x108>
    80004310:	00758713          	addi	a4,a1,7
    80004314:	00a5e7b3          	or	a5,a1,a0
    80004318:	40a70733          	sub	a4,a4,a0
    8000431c:	0077f793          	andi	a5,a5,7
    80004320:	00f73713          	sltiu	a4,a4,15
    80004324:	00174713          	xori	a4,a4,1
    80004328:	0017b793          	seqz	a5,a5
    8000432c:	00e7f7b3          	and	a5,a5,a4
    80004330:	10078863          	beqz	a5,80004440 <__memmove+0x14c>
    80004334:	00900793          	li	a5,9
    80004338:	1107f463          	bgeu	a5,a6,80004440 <__memmove+0x14c>
    8000433c:	0036581b          	srliw	a6,a2,0x3
    80004340:	fff8081b          	addiw	a6,a6,-1
    80004344:	02081813          	slli	a6,a6,0x20
    80004348:	01d85893          	srli	a7,a6,0x1d
    8000434c:	00858813          	addi	a6,a1,8
    80004350:	00058793          	mv	a5,a1
    80004354:	00050713          	mv	a4,a0
    80004358:	01088833          	add	a6,a7,a6
    8000435c:	0007b883          	ld	a7,0(a5)
    80004360:	00878793          	addi	a5,a5,8
    80004364:	00870713          	addi	a4,a4,8
    80004368:	ff173c23          	sd	a7,-8(a4)
    8000436c:	ff0798e3          	bne	a5,a6,8000435c <__memmove+0x68>
    80004370:	ff867713          	andi	a4,a2,-8
    80004374:	02071793          	slli	a5,a4,0x20
    80004378:	0207d793          	srli	a5,a5,0x20
    8000437c:	00f585b3          	add	a1,a1,a5
    80004380:	40e686bb          	subw	a3,a3,a4
    80004384:	00f507b3          	add	a5,a0,a5
    80004388:	06e60463          	beq	a2,a4,800043f0 <__memmove+0xfc>
    8000438c:	0005c703          	lbu	a4,0(a1)
    80004390:	00e78023          	sb	a4,0(a5)
    80004394:	04068e63          	beqz	a3,800043f0 <__memmove+0xfc>
    80004398:	0015c603          	lbu	a2,1(a1)
    8000439c:	00100713          	li	a4,1
    800043a0:	00c780a3          	sb	a2,1(a5)
    800043a4:	04e68663          	beq	a3,a4,800043f0 <__memmove+0xfc>
    800043a8:	0025c603          	lbu	a2,2(a1)
    800043ac:	00200713          	li	a4,2
    800043b0:	00c78123          	sb	a2,2(a5)
    800043b4:	02e68e63          	beq	a3,a4,800043f0 <__memmove+0xfc>
    800043b8:	0035c603          	lbu	a2,3(a1)
    800043bc:	00300713          	li	a4,3
    800043c0:	00c781a3          	sb	a2,3(a5)
    800043c4:	02e68663          	beq	a3,a4,800043f0 <__memmove+0xfc>
    800043c8:	0045c603          	lbu	a2,4(a1)
    800043cc:	00400713          	li	a4,4
    800043d0:	00c78223          	sb	a2,4(a5)
    800043d4:	00e68e63          	beq	a3,a4,800043f0 <__memmove+0xfc>
    800043d8:	0055c603          	lbu	a2,5(a1)
    800043dc:	00500713          	li	a4,5
    800043e0:	00c782a3          	sb	a2,5(a5)
    800043e4:	00e68663          	beq	a3,a4,800043f0 <__memmove+0xfc>
    800043e8:	0065c703          	lbu	a4,6(a1)
    800043ec:	00e78323          	sb	a4,6(a5)
    800043f0:	00813403          	ld	s0,8(sp)
    800043f4:	01010113          	addi	sp,sp,16
    800043f8:	00008067          	ret
    800043fc:	02061713          	slli	a4,a2,0x20
    80004400:	02075713          	srli	a4,a4,0x20
    80004404:	00e587b3          	add	a5,a1,a4
    80004408:	f0f574e3          	bgeu	a0,a5,80004310 <__memmove+0x1c>
    8000440c:	02069613          	slli	a2,a3,0x20
    80004410:	02065613          	srli	a2,a2,0x20
    80004414:	fff64613          	not	a2,a2
    80004418:	00e50733          	add	a4,a0,a4
    8000441c:	00c78633          	add	a2,a5,a2
    80004420:	fff7c683          	lbu	a3,-1(a5)
    80004424:	fff78793          	addi	a5,a5,-1
    80004428:	fff70713          	addi	a4,a4,-1
    8000442c:	00d70023          	sb	a3,0(a4)
    80004430:	fec798e3          	bne	a5,a2,80004420 <__memmove+0x12c>
    80004434:	00813403          	ld	s0,8(sp)
    80004438:	01010113          	addi	sp,sp,16
    8000443c:	00008067          	ret
    80004440:	02069713          	slli	a4,a3,0x20
    80004444:	02075713          	srli	a4,a4,0x20
    80004448:	00170713          	addi	a4,a4,1
    8000444c:	00e50733          	add	a4,a0,a4
    80004450:	00050793          	mv	a5,a0
    80004454:	0005c683          	lbu	a3,0(a1)
    80004458:	00178793          	addi	a5,a5,1
    8000445c:	00158593          	addi	a1,a1,1
    80004460:	fed78fa3          	sb	a3,-1(a5)
    80004464:	fee798e3          	bne	a5,a4,80004454 <__memmove+0x160>
    80004468:	f89ff06f          	j	800043f0 <__memmove+0xfc>

000000008000446c <__putc>:
    8000446c:	fe010113          	addi	sp,sp,-32
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00113c23          	sd	ra,24(sp)
    80004478:	02010413          	addi	s0,sp,32
    8000447c:	00050793          	mv	a5,a0
    80004480:	fef40593          	addi	a1,s0,-17
    80004484:	00100613          	li	a2,1
    80004488:	00000513          	li	a0,0
    8000448c:	fef407a3          	sb	a5,-17(s0)
    80004490:	fffff097          	auipc	ra,0xfffff
    80004494:	b3c080e7          	jalr	-1220(ra) # 80002fcc <console_write>
    80004498:	01813083          	ld	ra,24(sp)
    8000449c:	01013403          	ld	s0,16(sp)
    800044a0:	02010113          	addi	sp,sp,32
    800044a4:	00008067          	ret

00000000800044a8 <__getc>:
    800044a8:	fe010113          	addi	sp,sp,-32
    800044ac:	00813823          	sd	s0,16(sp)
    800044b0:	00113c23          	sd	ra,24(sp)
    800044b4:	02010413          	addi	s0,sp,32
    800044b8:	fe840593          	addi	a1,s0,-24
    800044bc:	00100613          	li	a2,1
    800044c0:	00000513          	li	a0,0
    800044c4:	fffff097          	auipc	ra,0xfffff
    800044c8:	ae8080e7          	jalr	-1304(ra) # 80002fac <console_read>
    800044cc:	fe844503          	lbu	a0,-24(s0)
    800044d0:	01813083          	ld	ra,24(sp)
    800044d4:	01013403          	ld	s0,16(sp)
    800044d8:	02010113          	addi	sp,sp,32
    800044dc:	00008067          	ret

00000000800044e0 <console_handler>:
    800044e0:	fe010113          	addi	sp,sp,-32
    800044e4:	00813823          	sd	s0,16(sp)
    800044e8:	00113c23          	sd	ra,24(sp)
    800044ec:	00913423          	sd	s1,8(sp)
    800044f0:	02010413          	addi	s0,sp,32
    800044f4:	14202773          	csrr	a4,scause
    800044f8:	100027f3          	csrr	a5,sstatus
    800044fc:	0027f793          	andi	a5,a5,2
    80004500:	06079e63          	bnez	a5,8000457c <console_handler+0x9c>
    80004504:	00074c63          	bltz	a4,8000451c <console_handler+0x3c>
    80004508:	01813083          	ld	ra,24(sp)
    8000450c:	01013403          	ld	s0,16(sp)
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret
    8000451c:	0ff77713          	andi	a4,a4,255
    80004520:	00900793          	li	a5,9
    80004524:	fef712e3          	bne	a4,a5,80004508 <console_handler+0x28>
    80004528:	ffffe097          	auipc	ra,0xffffe
    8000452c:	6dc080e7          	jalr	1756(ra) # 80002c04 <plic_claim>
    80004530:	00a00793          	li	a5,10
    80004534:	00050493          	mv	s1,a0
    80004538:	02f50c63          	beq	a0,a5,80004570 <console_handler+0x90>
    8000453c:	fc0506e3          	beqz	a0,80004508 <console_handler+0x28>
    80004540:	00050593          	mv	a1,a0
    80004544:	00001517          	auipc	a0,0x1
    80004548:	ce450513          	addi	a0,a0,-796 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    8000454c:	fffff097          	auipc	ra,0xfffff
    80004550:	afc080e7          	jalr	-1284(ra) # 80003048 <__printf>
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	01813083          	ld	ra,24(sp)
    8000455c:	00048513          	mv	a0,s1
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	02010113          	addi	sp,sp,32
    80004568:	ffffe317          	auipc	t1,0xffffe
    8000456c:	6d430067          	jr	1748(t1) # 80002c3c <plic_complete>
    80004570:	fffff097          	auipc	ra,0xfffff
    80004574:	3e0080e7          	jalr	992(ra) # 80003950 <uartintr>
    80004578:	fddff06f          	j	80004554 <console_handler+0x74>
    8000457c:	00001517          	auipc	a0,0x1
    80004580:	dac50513          	addi	a0,a0,-596 # 80005328 <digits+0x78>
    80004584:	fffff097          	auipc	ra,0xfffff
    80004588:	a68080e7          	jalr	-1432(ra) # 80002fec <panic>
	...
