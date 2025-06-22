package FinancialForecast;

public class Main {
    public static void main(String[] args) {
        double initialInvestment = 1000.0;
        double annualGrowthRate = 0.1;  // 10%
        int years = 5;

        System.out.println("📈 Recursive Prediction:");
        double futureValue = Forecast.predictFutureValue(initialInvestment, annualGrowthRate, years);
        System.out.println("Future value after " + years + " years: ₹" + futureValue);

        System.out.println("⚡ Optimized Recursive (Memoization):");
        double[] memo = new double[years + 1];
        double memoizedValue = Forecast.predictWithMemo(initialInvestment, annualGrowthRate, years, memo);
        System.out.println("Future value after " + years + " years: ₹" + memoizedValue);
    }
}
