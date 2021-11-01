#include "NumClass.h"
#include <math.h>


int getNumberLength(int num) {
    if (num == 0) {
        return 0;
    }
    return 1 + getNumberLength(num / 10);
}

int getArmstrongSum(int numLength, int num) {
    if (num == 0) {
        return 0;
    }
    return pow((num % 10), numLength) + getArmstrongSum(numLength, num / 10);
}

int isArmstrong(int num) {
    if (getArmstrongSum(getNumberLength(num), num) == num) {
        return 1;
    }
    return getArmstrongSum(getNumberLength(num), num);
}

int isPalindrome(int num) { return 0; }