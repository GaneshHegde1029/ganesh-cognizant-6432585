Exercise 3: Assertions in JUnit 
Scenario: 
You need to use different assertions in JUnit to validate your test results. 
Steps: 
1. Write tests using various JUnit assertions. 
Solution Code: 
 
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
        assertNull(null); 
 
        // Assert not null 
        assertNotNull(new Object()); 
    } 
} 
