#include <stdio.h>
#include "cosine.h"

int main() {
    double angle;
    int degree;

    printf("Enter the angle in radians: ");
    scanf_s("%lf", &angle);  // Using scanf_s

    printf("Enter the degree of the polynomial: ");
    scanf_s("%d", &degree);  // Using scanf_s

    // Call the sine function with Taylor series up to the given degree
    double result = cosine_taylor(angle, degree);
    printf("The sine of %lf radians using degree %d polynomial is approximately: %lf\n", angle, degree, result);

    return 0;
}
