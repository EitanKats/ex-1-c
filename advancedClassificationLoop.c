#include "NumClass.h"

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
