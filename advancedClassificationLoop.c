#include "NumClass.h"
#include <math.h>


int isArmstrong(int num) {
    int length = numOfDigits(num);
    int lastDigit;
    int power;
    int sum = 0;
    int number = num;

    while (number > 0) {
        lastDigit = number % 10;
        power = pow(lastDigit, length);
        sum += power;
        number = number / 10;
    }
    if (sum == number) {
        return 1;
    }
    return 0;
}


int numOfDigits(int num) {
    int counter = 0;
    while (num > 0) {
        num = num / 10;
        counter++;
    }
    return counter;
}

int isPalindrome(int num) {
    int originalNum = num;
    int reversedNum = 0;
    while (num > 0) {
        int lastDigit = num % 10;
        reversedNum = reversedNum * 10 + lastDigit;
        num = num / 10;
    }
    if (originalNum == reversedNum) {
        return 1;
    }
    return 0;


}
