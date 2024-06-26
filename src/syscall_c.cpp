//
// Created by os on 5/18/24.
//

#include "../h/syscall_c.hpp"

void* mem_alloc (size_t size){
    size_t real;
    if(size % MEM_BLOCK_SIZE == 0)  real = size;
    else {
        size_t rem = size % MEM_BLOCK_SIZE;
        real = size - rem + MEM_BLOCK_SIZE;
    }

    __asm__ volatile("mv a1, %0" :: "r"(real));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");
    void* r;
    __asm__ volatile("mv %0,a0":"=r"(r));
    return  r;
}
int mem_free (void* p){
    __asm__ volatile("mv a1, %0":: "r"(p));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

int thread_exit() {
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile("ecall");
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {

    void* stek;
    stek = start_routine != nullptr ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    __asm__ volatile("mv a4, %0" :: "r"(stek));
    __asm__ volatile("mv a3, %0" :: "r"(arg));
    __asm__ volatile("mv a2, %0" :: "r"(start_routine));
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

int sem_open(sem_t *handle, unsigned int init) {
    __asm__ volatile("mv a2, %0" :: "r"(init));
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile("ecall");

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return (int)r;
}

int sem_close(sem_t handle) {

    __asm__ volatile("mv a1, %0" :: "r"(handle));
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile("ecall");
    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1, %0" :: "r"(id));
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile("ecall");

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1, %0" :: "r"(id));
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile("ecall");

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

int sem_trywait(sem_t id) {

    __asm__ volatile("mv a1, %0" :: "r"(id));
    __asm__ volatile("li a0, 0x26");
    __asm__ volatile("ecall");

    int r;
    __asm__ volatile("mv %0, a0": "=r"(r));
    return r;
}

char getc() {
    return __getc();
}

void putc(char a) {
    __putc(a);
}

int sem_timedwait(sem_t id, time_t timeout) {
    return 0;
}

int time_sleep(time_t) {
    return 0;
}
