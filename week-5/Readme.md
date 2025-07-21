# Microservices: Account and Loan Services

This project demonstrates the creation of two independent microservices using Spring Boot. The services are designed for a banking application and handle account and loan information respectively. This is a basic demonstration without any backend database connectivity.

## Project Structure
D:
└── [Your_Employee_ID]
└── microservices
├── account
└── loan\


Each microservice is a standalone Maven-based Spring Boot application with its own `pom.xml`.

---

## Microservices Overview

### 1. Account Microservice

- **Base URL**: `http://localhost:8080`
- **Endpoint**: `/accounts/{number}`
- **Method**: `GET`
- **Description**: Returns account details based on the account number.
- **Sample Response**:
```json
{
  "number": "00987987973432",
  "type": "savings",
  "balance": 234343
}

2. Loan Microservice
Base URL: http://localhost:8081

Endpoint: /loans/{number}

Method: GET

Description: Returns loan details based on the loan account number.

Sample Response:
{
  "number": "H00987987972342",
  "type": "car",
  "loan": 400000,
  "emi": 3258,
  "tenure": 18
}

Getting Started
Account Microservice Setup
1.Create project using Spring Initializr

*Group: com.cognizant
*Artifact: account
*Dependencies: Spring Web, Spring Boot DevTools

2.Extract and place inside the microservices folder.
3.Build using:
mvn clean package

4.Import into Eclipse and run the application.
5.Test using browser or Postman at:
http://localhost:8080/accounts/{number}

Loan Microservice Setup
1.Repeat the same steps as the account service, with artifact name loan.
2.Add the following property in application.properties to change the port:
server.port=8081
3.Build and run the application.
4.Test using browser or Postman at:
http://localhost:8081/loans/{number}

Note
*Both services run on different ports to avoid port conflict (Account on 8080, Loan on 8081).
*No database or backend connectivity is used. All responses are static/dummy data.
*This project is intended for educational and learning purposes around Spring Boot microservices architecture.


