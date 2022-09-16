#include <stdio.h>
#include <CLibSampleA.h>
#include <CLibSampleB.h>

int main(void) {
    printf("C\n");
    printf("A %d\n", doCA1(42));
    printf("B %d\n", doCB1(42));
}
