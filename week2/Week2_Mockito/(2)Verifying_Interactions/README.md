Exercise 2: Verifying Interactions 
Scenario: 
You need to ensure that a method is called with specific arguments. 
Steps: 
1. Create a mock object. 
2. Call the method with specific arguments. 
3. Verify the interaction. 
 
Solution Code: 
import static org.mockito.Mockito.*; 
import org.junit.jupiter.api.Test; 
import org.mockito.Mockito; 
 
public class MyServiceTest { 
    @Test 
    public void testVerifyInteraction() { 
        ExternalApi mockApi = Mockito.mock(ExternalApi.class); 
        MyService service = new MyService(mockApi); 
        service.fetchData(); 
        verify(mockApi).getData(); 
    } 
} 
