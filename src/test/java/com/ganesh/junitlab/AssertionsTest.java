package com.ganesh.junitlab;

import org.junit.Test;
import static org.junit.Assert.*;

public class AssertionsTest {

    @Test
    public void testAssertions() {
        // Assert equals
        assertEquals(5, 2 + 3);

        // Assert true
        assertTrue(5 > 3);

        // Assert false
        assertFalse(5 < 3);

        // Assert null
        Object obj = null;
        assertNull(obj);

        // Assert not null
        Object anotherObj = new Object();
        assertNotNull(anotherObj);
    }
}
