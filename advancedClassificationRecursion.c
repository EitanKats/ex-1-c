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
    if(num == 0 || num == 1) {
        return 1;
    }

    if (getArmstrongSum(getNumberLength(num), num) == num) {
        return 1;
    }
    return 0;
}

int getReversed(int num, int reversed) {
    if (num == 0) {
        return reversed;
    }
    return (getReversed(num / 10, (reversed * 10) + (num % 10)));
}

int isPalindrome(int num) {

    if (getReversed(num, 0) == num) {
        return 1;
    }

    return 0;
}