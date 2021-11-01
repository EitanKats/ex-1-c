#include <stdio.h>
#include <math.h>
#include "NumClass.h"



int main() {
    int num1,num2;
    printf("enter 2 positive numbers: \n");
    scanf("%d %d",&num1,&num2);
    for (int i = num1 + 1 ; i <num2 ; ++i) {
        if (isPalindrome(i) == 1) {
            printf("%d\n",i);
            continue;
        }
        if (isPrime(i) == 1) {
            printf("%d\n",i);
            continue;
        }
        if (isStrong(i) == 1) {
            printf("%d\n",i);
            continue;
        }
        if (isArmstrong(i) == 1) {
            printf("%d\n",i);
            continue;
        }
    }
    return 0;


}
