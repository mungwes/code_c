#include <stdio.h>

// Optimized cosine function using Taylor series up to the nth term
double cosine_taylor(double x, int n) {
    const double PI = 3.14159265358979323846;
    const double TWO_PI = 2 * PI;

    // Reduce x to the range [-pi, pi] to improve the approximation
    while (x > PI) x -= TWO_PI;
    while (x < -PI) x += TWO_PI;

    double term = 1;  // First term is 1 (cos(0) = 1)
    double result = term;  // Initialize the result with the first term

    // Taylor series for cosine: 1 - x^2/2! + x^4/4! - x^6/6! + ... up to x^(2n)/(2n)!
    for (int i = 1; i <= n; i++) {
        int exp = 2 * i;  // Calculate exponent for the term (2, 4, 6, ...)
        term *= -(x * x) / (exp * (exp - 1));  // Efficient calculation of x^exp / exp!
        result += term;  // Add or subtract the current term
    }

    return result;
}
