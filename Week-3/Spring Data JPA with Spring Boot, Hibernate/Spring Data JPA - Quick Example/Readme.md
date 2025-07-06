OrmLearn - Spring Data JPA & Hibernate Demo
This project demonstrates how to use Spring Data JPA and Hibernate with MySQL using Spring Boot.

🔧 Software Pre-requisites
MySQL Server 8.0
MySQL Workbench 8
Eclipse IDE for Enterprise Java Developers (2019-03 R)
Maven 3.6.2

🚀 Project Setup
1.Go to https://start.spring.io/

2.Set Group as com.cognizant

3.Set Artifact as orm-learn

4.Set Description to “Demo project for Spring Data JPA and Hibernate”

5.Add dependencies:
*Spring Boot DevTools
*Spring Data JPA
*MySQL Driver

6.Generate the project, download the zip file, extract it, and import it into Eclipse as a Maven project.

🗃️ Database Setup
1.Open MySQL client

2.Create a schema named ormlearn

3.Insert sample country data (e.g., IN - India, US - United States of America)

⚙️ Configuration
*Update the application.properties file with:
*Logging levels for Spring and Hibernate
*JDBC URL, username, and password for MySQL
*Hibernate dialect and ddl-auto mode

🧪 Building the Project
Use the mvn clean package command with proxy settings if required by your network environment.

📁 Project Structure
src/main/java: Application source code
src/main/resources: Configuration files
src/test/java: Test classes
OrmLearnApplication.java: Entry point of the Spring Boot application

💡 Spring Boot Annotations
@SpringBootApplication: Main annotation that enables component scanning, auto-configuration, and configuration.

📦 pom.xml
Contains all project dependencies and plugin configurations.
Use the Dependency Hierarchy tab in Eclipse to view the complete tree of dependencies.

🧩 Country Table
Create a country table with code and name columns. Insert a few records to test data retrieval.

🔄 Entity, Repository, Service Layers
1.Define a Country entity mapped to the database table
2.Create a CountryRepository interface extending JpaRepository
3.Create a CountryService class to encapsulate business logic and perform operations using the repository

🧪 Application Testing
In the main application class, autowire the CountryService
Use it to fetch all countries from the database
Log the results to verify the setup

✅ Expected Output
Logs confirming that the main method was executed
List of countries fetched from the database printed in logs

📝 Notes
Use @Entity, @Table, @Id, @Column annotations for JPA mapping
Use @Repository, @Service, @Transactional for repository and service layers
