
int isPrime(int num) {
    if(num == 1) {
        return 1;
    }
    int i;
    for (i = 2; i <= num / 2; i++) {
        if (num % i != 0) {
            continue;
        } else {
            return 0;
        }
    }
    return 1;
}

int factorial(int num) {
    int i;
    for (i = num - 1; i > 0; i--) {
        num *= i;
    }
    return num;
}

int isStrong(int num) {
    int sum = 0;
    int newNum = num;
    while (newNum > 0) {
        sum += factorial(newNum % 10);
        newNum = newNum / 10;
    }
    return sum == num;
}








