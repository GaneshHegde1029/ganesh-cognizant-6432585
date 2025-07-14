# SpringLearn – Country RESTful Web Service

This module adds a REST API to return details of the country **India** using Spring Web and Spring Core XML configuration.

---

## ✅ Objective

- Create a REST endpoint `/country` to return information about India.
- Load the `Country` bean using Spring XML configuration.
- Automatically return the response as JSON.

---

## 🌐 Endpoint Details

| Attribute         | Value                                         |
|------------------|-----------------------------------------------|
| HTTP Method       | GET                                           |
| URL               | `http://localhost:8083/country`              |
| Controller        | `com.cognizant.springlearn.controller.CountryController` |
| Method Name       | `getCountryIndia()`                          |
| Response Type     | JSON                                          |
| Response Example  | `{ "code": "IN", "name": "India" }`          |

---

## ⚙️ How It Works

### 💡 Controller Logic

- The controller handles incoming HTTP GET requests at `/country`.
- It loads the `Country` bean for India from an XML configuration file using Spring’s `ApplicationContext`.
- The method returns the bean directly.

### 🔄 Automatic JSON Conversion

- Spring Boot uses **Jackson** (a JSON processor) by default.
- When a Java object (like the `Country` bean) is returned from a controller method, Spring automatically serializes it into a JSON response.

---

## 🧪 Testing the Endpoint

### 1. Browser (Chrome)

- Go to: `http://localhost:8083/country`
- The JSON response is displayed:
  ```json
  {
    "code": "IN",
    "name": "India"
  }

Open Dev Tools → Network tab:
Click on the /country request.
Review Response Headers:
*Content-Type: application/json
*Content-Length
*Date
*Connection

2. Postman
Set method to GET and URL to: http://localhost:8083/country

Click Send

Response JSON:
{
  "code": "IN",
  "name": "India"
}


#Click on the "Headers" tab to inspect:

*Content-Type: application/json
*Date
*Content-Length
*Server

📌 Summary
This module shows how to:

Build a RESTful service in Spring Boot using Spring XML configuration.
Return a custom Java bean as a JSON response.
Understand automatic serialization with Jackson.
Test API behavior and inspect HTTP headers using browser tools and Postman.

