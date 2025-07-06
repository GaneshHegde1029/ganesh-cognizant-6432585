# LibraryManagement

A basic Spring Framework-based backend application for managing a library system. This project demonstrates fundamental Spring features like dependency injection using XML configuration.

## 📌 Project Overview

This application is built as part of the CTS Java Full Stack Engineer (Java FSE) training. It illustrates how to:

- Set up a Spring project using Maven
- Configure Spring beans via XML
- Define and wire service and repository layers
- Load the application context and test bean configurations

## 🛠️ Technologies Used

- Java 8+
- Spring Core (XML-based configuration)
- Maven
- IntelliJ IDEA / Eclipse
- JDK 8 or later

## 🗂️ Project Structure
LibraryManagement/
├── src/
│ ├── main/
│ │ ├── java/
│ │ │ └── com/
│ │ │ └── library/
│ │ │ ├── repository/
│ │ │ │ └── BookRepository.java
│ │ │ └── service/
│ │ │ └── BookService.java
│ │ └── resources/
│ │ └── applicationContext.xml
└── pom.xml


## 📦 Step-by-Step Setup

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/LibraryManagement.git
cd LibraryManagement

2. Build the Project
Ensure Maven is installed, then build the project:
mvn clean install

3. Add Spring Dependencies
Inside pom.xml:
<dependencies>
    <!-- Spring Core -->
    <dependency>
        <groupId>org.springframework</groupId>
        <artifactId>spring-context</artifactId>
        <version>5.3.36</version>
    </dependency>
</dependencies>

4. Define Beans in applicationContext.xml
Create applicationContext.xml in src/main/resources:
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans 
           http://www.springframework.org/schema/beans/spring-beans.xsd">

    <bean id="bookRepository" class="com.library.repository.BookRepository"/>
    <bean id="bookService" class="com.library.service.BookService">
        <property name="bookRepository" ref="bookRepository"/>
    </bean>

</beans>

5.implement classes
6.Run the Application

✅ Expected Output
Adding book via BookService...
Book saved to the repository.

📚 Learning Outcome
1.Master Spring XML-based bean configuration
2.Understand core Spring DI concepts
3.Familiarity with basic project structuring using Maven

