#include <stdio.h>

// Function to calculate factorial of a number
double factorial(int num) {
    double result = 1.0;
    for (int i = 2; i <= num; i++) {
        result *= i;
    }
    return result;
}