#include "test.h"
#include "lib.h"
#include <stdio.h>

void foo(void) {
    printf("\nfoo\n");
    bar();
}

void baz(void) {
    printf("baz\n");
}

int main(void) {
    foo();
}
