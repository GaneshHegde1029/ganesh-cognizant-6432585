package FinancialForecast;

public class Forecast {

    // Recursive method to calculate future value
    public static double predictFutureValue(double initialValue, double rate, int years) {
        if (years == 0) return initialValue;
        return predictFutureValue(initialValue, rate, years - 1) * (1 + rate);
    }

    // Optimized recursive method using memoization (optional)
    public static double predictWithMemo(double initialValue, double rate, int years, double[] memo) {
        if (years == 0) return initialValue;
        if (memo[years] != 0) return memo[years];
        memo[years] = predictWithMemo(initialValue, rate, years - 1, memo) * (1 + rate);
        return memo[years];
    }
}

