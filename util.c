#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

void print(uint32_t n) {
    printf("%d", n);
}

void printl(uint32_t n) {
    printf("%d\n", n);
}
int32_t readchar() {
    int res = 0;
    scanf("%d", &res);
    return res;
}