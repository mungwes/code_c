#include <stdio.h>
#include "abs_value.h"
#include "abs_value_int.h"

int main() {
    double num;
    int num_int;

    // Test floating-point version
    printf("Enter a floating-point number: ");
    scanf_s("%lf", &num);
    printf("Absolute value (double): %lf\n", absolute_value(num));

    // Test integer version
    printf("Enter an integer: ");
    scanf_s("%d", &num_int);
    printf("Absolute value (int): %d\n", absolute_value_int(num_int));

    return 0;
}
