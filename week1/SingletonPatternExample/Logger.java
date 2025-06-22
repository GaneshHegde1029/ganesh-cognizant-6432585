package SingletonPatternExample;
public class Logger {

    // Private static instance
    private static Logger instance;

    // Private constructor to prevent external instantiation
    private Logger() {
        System.out.println("Logger initialized.");
    }

    // Public static method to get the single instance
    public static synchronized Logger getInstance() {
        if (instance == null) {
            instance = new Logger(); // Lazy initialization
        }
        return instance;
    }

    // Logging method
    public void log(String message) {
        System.out.println("LOG: " + message);
    }
}
