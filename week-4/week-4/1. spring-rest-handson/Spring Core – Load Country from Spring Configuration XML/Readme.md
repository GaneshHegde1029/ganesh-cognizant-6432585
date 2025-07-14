# SpringLearn – Shared SimpleDateFormat using Spring XML Configuration

This module demonstrates how to manage a shared instance of `SimpleDateFormat` across the application using **Spring Core XML-based configuration**. It avoids the creation of duplicate `SimpleDateFormat` objects in multiple places, following good practice in resource reuse.

---

## 🧩 Objective

- Define `SimpleDateFormat` as a reusable bean using Spring’s `ApplicationContext`.
- Load the bean from an XML configuration (`date-format.xml`).
- Use the bean to parse a date string (`31/12/2018`) and display the `Date` object.

---

## 📂 Project Structure Overview

### ➤ `src/main/resources/date-format.xml`

Spring XML configuration to declare a shared `SimpleDateFormat` bean:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
           https://www.springframework.org/schema/beans/spring-beans.xsd">

    <bean id="dateFormat" class="java.text.SimpleDateFormat">
        <constructor-arg value="dd/MM/yyyy"/>
    </bean>

</beans>


🔧 Implementation Steps
1.Create date-format.xml in src/main/resources.
2.Define a bean for SimpleDateFormat with pattern dd/MM/yyyy.
3.In SpringLearnApplication.java, add a new method displayDate():
public static void displayDate() {
    ApplicationContext context = new ClassPathXmlApplicationContext("date-format.xml");
    SimpleDateFormat format = context.getBean("dateFormat", SimpleDateFormat.class);
    try {
        Date date = format.parse("31/12/2018");
        System.out.println("Parsed Date: " + date);
    } catch (ParseException e) {
        e.printStackTrace();
    }
}
4.Call displayDate() from the main() method.

🧪 Running the Application
1.Run SpringLearnApplication as a Java Application.
2.You should see output similar to:
Parsed Date: Mon Dec 31 00:00:00 IST 2018

🛠️ Troubleshooting Tips
If the default port (8080) causes conflicts, add the following in application.properties:
server.port=8081


✅ Benefits
Promotes reuse of the same SimpleDateFormat instance.
Centralizes configuration for easy updates (e.g., changing date format).
Demonstrates Spring's XML-based configuration and bean lifecycle.
