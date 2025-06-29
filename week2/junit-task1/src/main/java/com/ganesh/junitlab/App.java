package com.ganesh.junitlab;

public class App {

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }

    public static void main(String[] args) {
        App app = new App();
        System.out.println("Addition of 5 and 3: " + app.add(5, 3));
        System.out.println("Subtraction of 5 and 3: " + app.subtract(5, 3));
    }
}
