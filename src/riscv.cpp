//
// Created by os on 5/17/24.
//

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"


void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 ra = r_a0();
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){//pomera registar a3??
        //environment call
        uint64 volatile sepc = r_sepc() +4;
        uint64 volatile sstatus = r_sstatus();
        int ret;
        sem_t * shandle;
        sem_t id;
        switch (ra) {
            case 0x01:
                size_t size;
                void *mallocr;
                __asm__ volatile("ld %0, 88(x8)":"=r"(size));
                mallocr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile("mv t0, %0"::"r"(mallocr));
                __asm__ volatile("sd t0, 80(x8)");
                break;

            case 0x02:
                void *freep;
                int greska;
                __asm__ volatile("ld %0, 88(x8)":"=r"(freep));
                greska = MemoryAllocator::mem_free(freep);
                __asm__ volatile("mv t0, %0" ::"r"(greska));
                __asm__ volatile("sd t0, 80(x8)");
                break;

            case 0x11:
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

            case 0x12:
                ret = TCB::exitThread();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x13:
                TCB::timeSliceCounter=0;
                TCB::dispatch();
                break;

            case 0x21:
                int val;
                __asm__ volatile("ld %0, 88(x8)": "=r"(shandle));
                __asm__ volatile("ld %0, 96(x8)": "=r"(val));
                *shandle = sem::openSemaphore(val);
                if(*shandle != nullptr) ret =0;
                else ret = -1;
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x22:
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->sem::closeSemaphore();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x23:
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->sem::wait();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x24:
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->sem::signal();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            case 0x26:
                __asm__ volatile("ld %0, 88(x8)": "=r"(id));
                ret = id->sem::trywait();
                __asm__ volatile("mv t0, %0" ::"r"(ret));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            default:
                    break;

        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        //supervisor software interrupt; timer
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {

            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter=0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }


    }else if(scause == 0x8000000000000009UL){
        // supervisor external interrupt; console

        console_handler();
    }else{
        //unexpected interrupt;
        printInteger(scause);
        printInteger(r_sepc());
        printInteger(r_stval());
    }
};