# LibraryManagement – Dependency Injection with Spring (Exercise 2)

This exercise demonstrates **Dependency Injection (DI)** in a Spring-based Java application using XML configuration. The goal is to wire `BookRepository` into `BookService` using Spring’s Inversion of Control (IoC) container.

## 📚 Scenario

You are building a backend for a library management system. To follow best practices and ensure loose coupling, dependencies between components (e.g., services and repositories) should be managed by Spring using Dependency Injection.

---

## ✅ Objectives

- Configure Spring IoC container to manage dependencies
- Use setter-based dependency injection in a service class
- Validate bean wiring using a test class

---

## 🗂️ Project Structure
LibraryManagement/
├── src/
│ ├── main/
│ │ ├── java/
│ │ │ └── com/library/
│ │ │ ├── repository/
│ │ │ │ └── BookRepository.java
│ │ │ ├── service/
│ │ │ │ └── BookService.java
│ │ │ └── LibraryManagementApplication.java
│ │ └── resources/
│ │ └── applicationContext.xml
└── pom.xml


---

## 🔧 Configuration Steps

### 1. Update XML Configuration

In `applicationContext.xml`, define both beans and inject the `BookRepository` into `BookService` using the `property` tag. This is setter-based injection.

### 2. Update `BookService` Class

Ensure the class includes a public **setter method** (`setBookRepository`) so Spring can inject the dependency.

### 3. Run and Test

Use the `LibraryManagementApplication` main class to load the Spring context and retrieve the `BookService` bean. Call a method (like `addBook()`) to verify that the dependency is successfully injected and functional.

---

## 🧠 What You’ll Learn

- Basics of Spring IoC container
- How to configure and wire beans via XML
- How to perform setter injection in a real-world scenario

---

## ▶️ How to Run

1. Clone the repository or open in your IDE.
2. Build the project using Maven (`mvn clean install`).
3. Run the `LibraryManagementApplication` main class.
4. Check the console output to ensure the `BookRepository` is injected into `BookService`.

---

## 📝 Sample Console Output
Adding book via BookService...
Book saved to the repository.


---

## 📌 Notes

- This exercise uses **setter-based dependency injection**, which is easy to configure and read.
- All bean configurations are done using **XML**, which is helpful for understanding the basics before using annotations or Java config.

---



