//
// Created by os on 5.16.22..
// Implementacija operatora new i delete za korisnicke niti

#include "../h/syscall_c.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    mem_free(p);
}

void operator delete[](void *p) noexcept
{
    mem_free(p);
}