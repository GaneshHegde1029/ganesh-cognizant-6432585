package com.ganesh.junitlab;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.After;
import org.junit.Test;

public class CalculatorTest {

    private Calculator calculator;

    @Before
    public void setUp() {
        // Arrange: Initialize Calculator before each test
        calculator = new Calculator();
        System.out.println("Setup complete.");
    }

    @After
    public void tearDown() {
        // Cleanup after each test
        calculator = null;
        System.out.println("Teardown complete.");
    }

    @Test
    public void testAddition() {
        // Arrange is handled in @Before

        // Act
        int result = calculator.add(5, 3);

        // Assert
        assertEquals(8, result);
    }

    @Test
    public void testSubtraction() {
        // Act
        int result = calculator.subtract(10, 4);

        // Assert
        assertEquals(6, result);
    }

    @Test
    public void testMultiplication() {
        int result = calculator.multiply(4, 3);
        assertEquals(12, result);
    }

    @Test
    public void testDivision() {
        int result = calculator.divide(12, 4);
        assertEquals(3, result);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testDivisionByZero() {
        calculator.divide(10, 0);
    }
}
