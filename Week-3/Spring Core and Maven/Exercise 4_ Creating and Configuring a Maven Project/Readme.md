# LibraryManagement – Maven Project Setup (Exercise 4)

This exercise demonstrates how to create and configure a Maven-based Java project for the **Library Management System**. It includes adding necessary Spring dependencies and configuring the Maven Compiler Plugin.

---

## 📚 Scenario

As part of the Library Management backend application, this setup focuses on:

- Creating a Maven project
- Adding Spring dependencies
- Configuring Maven plugins for Java 1.8

---

## ✅ Objectives

- Set up a new Maven project named `LibraryManagement`
- Include Spring Core, AOP, and WebMVC dependencies
- Configure the Maven Compiler Plugin to use Java 1.8

---

## 🛠 Technologies Used

- Java 8
- Spring Framework (Core, AOP, WebMVC)
- Maven
- IDE: Eclipse / IntelliJ IDEA

---

## 🗂 Project Structure
LibraryManagement/
├── src/
│ ├── main/
│ │ ├── java/ # Java source files
│ │ └── resources/ # Configuration files (like applicationContext.xml)
├── pom.xml # Maven build file


---

## 📦 Step-by-Step Instructions

### 1. Create the Maven Project

- Use your IDE to create a new Maven project
- Set the project name as: `LibraryManagement`
- Define the base package: `com.library`

### 2. Add Spring Dependencies

Add the following dependencies in `pom.xml`:

- **Spring Context**: For managing beans and application context
- **Spring AOP**: For enabling aspect-oriented programming features
- **Spring WebMVC**: For future expansion into web-based controllers

### 3. Configure Maven Compiler Plugin

In the same `pom.xml`, configure the Maven Compiler Plugin to use **Java 1.8** for both source and target versions.

---

## 💡 Sample pom.xml Sections

You should ensure the `pom.xml` contains:

- Project metadata (groupId, artifactId, version)
- Dependencies for Spring modules
- Maven Compiler Plugin configuration for Java 1.8

---

## 🚀 What's Next?

After completing this setup:

- You can start defining your Spring beans and services
- Integrate XML or annotation-based configuration
- Optionally add support for REST controllers or database integration

---
 
