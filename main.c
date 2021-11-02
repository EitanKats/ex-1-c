#include <stdio.h>
#include <math.h>
#include "NumClass.h"


int main() {
    int num1, num2;
    printf("enter 2 positive numbers: \n");
    scanf("%d %d", &num1, &num2);
    for (int i = num1; i < num2 - 1; ++i) {
        if (isPalindrome(i) == 1) {
            printf("%d , ", i);
        }
    }
    printf("\n");
    for (int i = num1; i < num2 - 1; ++i) {
        if (isPrime(i) == 1) {
            printf("%d , ", i);
        }
    }
    printf("\n");

    for (int i = num1; i < num2 - 1; ++i) {
        if (isStrong(i) == 1) {
            printf("%d , ", i);
        }
    }
    printf("\n");
    for (int i = num1; i < num2 - 1; ++i) {
        if (isArmstrong(i) == 1) {
            printf("%d , ", i);
        }
    }
    printf("\n");
    return 0;
}
