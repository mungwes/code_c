#include <stdio.h>

// Optimized sine function using Taylor series up to the nth term
double sine_taylor(double x, int n) {
    const double PI = 3.14159265358979323846;
    const double TWO_PI = 2 * PI;

    // Reduce x to the range [-pi, pi] to improve the approximation
    while (x > PI) x -= TWO_PI;
    while (x < -PI) x += TWO_PI;

    double term = x;  // First term is x
    double result = term;  // Initialize the result with the first term

    // Sign alternates between + and -
    int sign = -1;

    // Taylor series for sine: x - x^3/3! + x^5/5! - x^7/7! + ... up to x^(2n-1)/(2n-1)!
    for (int i = 1; i < n; i++) {
        int exp = 2 * i + 1;  // Calculate exponent for the term (3, 5, 7, ...)
        term *= (x * x) / (exp * (exp - 1));  // Efficient calculation of x^exp / exp!
        result += sign * term;  // Add or subtract the current term
        sign = -sign;  // Flip the sign for the next term
    }
    
    return result;
}