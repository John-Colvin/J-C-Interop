#include "lib.h"
#include "test.h"
#include <stdio.h>

void bar(void) {
    printf("bar\n");
    baz();
}
