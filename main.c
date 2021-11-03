#include <stdio.h>
#include <math.h>
#include "NumClass.h"


int main() {
    int num1, num2;
    printf("enter 2 positive numbers: \n");
    scanf("%d %d", &num1, &num2);

    if (num1 <= 0 || num2 <= 0) {
        printf("both numbers weren't positive: \n");
        return 0;
    }

    printf("\n The Armstrong numbers are: ");
    for (int i = num1; i <= num2; i++) {
        if (isArmstrong(i) == 1) {
            printf("%d , ", i);
        }
    }

    printf("\n The Palindromes are: ");
    for (int i = num1; i <= num2; i++) {
        if (isPalindrome(i) == 1) {
            printf("%d , ", i);
        }
    }

    printf("\n The Prime numbers are: ");
    for (int i = num1; i <= num2; i++) {
        if (isPrime(i) == 1) {
            printf("%d , ", i);
        }
    }

    printf("\n The Strong numbers are: ");

    for (int i = num1; i <= num2; i++) {
        if (isStrong(i) == 1) {
            printf("%d , ", i);
        }
    }
    printf("\n");
    return 0;
}
