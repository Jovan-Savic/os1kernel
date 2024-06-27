//
// Created by os on 5/17/24.
//
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../test/printing.hpp"

void Riscv::popSppSpie() {
    //restorovanje konteksta niti tj vracanje iz prekidne rutine sretom

    if(TCB::running->body != nullptr) {
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(Riscv::BitMaskSstatus::SSTATUS_SPP));
    }
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 kod = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
        //environment call
        uint64 volatile sepc = r_sepc() +4;
        uint64 volatile sstatus = r_sstatus();
        int ret;
        char c;
        semaphore ** shandle;
        semaphore * id;

        switch (kod) {
            case 0x01: //mem_alloc
                size_t size;
                void *mallocr;
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
                mallocr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
                __asm__ volatile("sd t0, 80(x8)");
                break;

            case 0x02: //mem_free
                void *freep;
                int greska;
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
                greska = MemoryAllocator::mem_free(freep);
                __asm__ volatile("mv t0, %0" ::"r"(greska));
                __asm__ volatile("sd t0, 80(x8)");
                break;

            case 0x11: //thread_create
                TCB::Body start_routine;
                void* arg;
                thread_t* thandle;
                void* stek;
                __asm__ volatile("ld %0, 88(x8)": "=r"(thandle));
                __asm__ volatile("ld %0, 96(x8)": "=r"(start_routine));
                __asm__ volatile("ld %0, 104(x8)": "=r"(arg));
                __asm__ volatile("ld %0, 112(x8)": "=r"(stek));
                *thandle = TCB::createThread(start_routine,arg, stek);
                if(*thandle != nullptr) ret =0;
                else ret = -1;

                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sd t0, 80(x8)");
                break;

            case 0x12: //thread_exit
                ret = TCB::exitThread();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x13: //dispatch
                TCB::timeSliceCounter=0;
                TCB::dispatch();
                break;

            case 0x21: //sem_open
                int val;
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
                *shandle = semaphore::openSemaphore(val);
                if(*shandle != nullptr) ret =0;
                else ret = -1;
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x22: //sem_close
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->semaphore::closeSemaphore();
                MemoryAllocator::mem_free(id);
                id = nullptr;
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x23: // sem_wait
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                if(id != nullptr) ret = id->semaphore::wait();
                else ret = -1;
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x24: //sem_signal
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->semaphore::signal();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x26: //sem_trywait
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->semaphore::trywait();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            case 0x41: //getc
                c = __getc();
                __asm__ volatile ("mv t0, %0" : : "r"(c));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x42: //putc
                __asm__ volatile("ld %0, 88(x8)": "=r"(c));
                __putc(c);
                break;
            default:
                    break;

        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){ //timer interrupt

        mc_sip(SIP_SSIP);
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();

        TCB::timeSliceCounter++;
        //supervisor software interrupt; timer
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }

        w_sstatus(sstatus);
        w_sepc(sepc);


    }else if(scause == 0x8000000000000009UL){
        // console interrupt
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();

        console_handler();

        w_sstatus(sstatus);
        w_sepc(sepc);

    }else if(scause == 0x0000000000000002UL){
        //forbidden command interrupt
        //printInteger(scause);
        //printInteger(r_sepc());
        //printInteger(r_stval());
        printString("greska\n");

        __asm__ volatile("li t0, 0x5555");
        __asm__ volatile("li t1, 0x100000");
        __asm__ volatile("sw t0, 0(t1)");
    }
};