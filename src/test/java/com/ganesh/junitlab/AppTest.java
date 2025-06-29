package com.ganesh.junitlab;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class AppTest {

    @Test
    public void testAddition() {
        App app = new App();
        int result = app.add(10, 5);
        assertEquals(15, result);
    }

    @Test
    public void testSubtraction() {
        App app = new App();
        int result = app.subtract(10, 5);
        assertEquals(5, result);
    }
}
