package SingletonPatternExample;

public class Main {
    public static void main(String[] args) {

        // Get two references to Logger
        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();

        // Use the logger
        logger1.log("First message");
        logger2.log("Second message");

        // Check if both instances are the same
        if (logger1 == logger2) {
            System.out.println("Both loggers are the same instance.");
        } else {
            System.out.println("Different logger instances (error).");
        }
    }
}
