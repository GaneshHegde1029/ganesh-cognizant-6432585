# Spring Learn

This project is a **Spring Boot Web Application** scaffolded using [Spring Initializr](https://start.spring.io/). It is configured for development using Maven and includes key Spring modules like Spring Web and Spring Boot DevTools.

---

## Project Structure Overview

### 📁 `src/main/java`
- Contains the **application source code**.
- This includes the `com.cognizant.springlearn` package where the `SpringLearnApplication.java` class resides.

### 📁 `src/main/resources`
- Holds the **application configuration files**, such as:
  - `application.properties` — Spring Boot configuration settings.

### 📁 `src/test/java`
- Contains **unit and integration test code** for the application.

---

## Application Entry Point

### 🔹 `SpringLearnApplication.java`
- This is the **main class** and starting point of the Spring Boot application.
- Located at: `com.cognizant.springlearn.SpringLearnApplication`
- Contains the `main()` method:
  ```java
  public static void main(String[] args) {
      SpringApplication.run(SpringLearnApplication.class, args);
  }
Includes logging to verify execution of the main() method.


Annotations
✅ @SpringBootApplication
A convenience annotation that combines:

@Configuration: Tags the class as a source of bean definitions.
@EnableAutoConfiguration: Enables Spring Boot’s auto-configuration mechanism.
@ComponentScan: Enables scanning for Spring components in the package.

Build Instructions
🔨 Maven Build Command (behind proxy):
mvn clean package \
  -Dhttp.proxyHost=proxy.cognizant.com \
  -Dhttp.proxyPort=6050 \
  -Dhttps.proxyHost=proxy.cognizant.com \
  -Dhttps.proxyPort=6050 \
  -Dhttp.proxyUser=123456

Eclipse Setup Instructions
1.Download Project
Go to: https://start.spring.io/
Group: com.cognizant
Artifact: spring-learn
Dependencies: Spring Web, Spring Boot DevTools
Generate and download as .zip
2.Extract to Eclipse Workspace Root
3.Import Project
File → Import → Maven → Existing Maven Projects → Browse to extracted folder → Finish

pom.xml Overview
Contains project configuration and dependency management.

Main dependencies:
spring-boot-starter-web
spring-boot-devtools
Plugin section defines build goals and Maven lifecycle management.
🔍 Dependency Hierarchy
Viewable in Eclipse:
Right-click pom.xml → Open With → Dependency Hierarchy
Helps trace transitive dependencies and resolve conflicts.

Getting Started
Run SpringLearnApplication from Eclipse as a Java Application.
Check logs to ensure main() method is invoked successfully.
