# SpringLearn – Hello World RESTful Web Service

This module demonstrates how to build a simple **RESTful API** in the `spring-learn` application using the Spring Web Framework. The API returns a plain text response `"Hello World!!"` when accessed via a GET request.

---

## ✅ Objective

- Create a REST endpoint at `/hello` using Spring Boot.
- Respond with the hardcoded string `"Hello World!!"`.
- Add logging at the start and end of the controller method.
- Test the API using a browser and Postman.
- Inspect HTTP response headers in both tools.

---

## 🔧 Endpoint Details

| Attribute         | Value                                   |
|------------------|-----------------------------------------|
| HTTP Method       | GET                                     |
| URL               | `http://localhost:8083/hello`           |
| Response Type     | `text/plain`                            |
| Expected Output   | `Hello World!!`                         |
| Logging Required  | Yes, at start and end of the method     |

---

## 🧪 Testing Steps

### 1. Chrome Browser

- Open the browser and go to: `http://localhost:8083/hello`
- You will see the message:  
Hello World!!

- Open Developer Tools (F12) → Go to **Network** tab:
- Refresh the page.
- Click on the `/hello` request.
- Review the **Response Headers**, which may include:
  - `Content-Type: text/plain;charset=UTF-8`
  - `Content-Length`
  - `Date`
  - `Server`

### 2. Postman

- Open Postman and make a **GET** request to: `http://localhost:8083/hello`
- You will receive the plain text response:  
Hello World!!

- Click on the **"Headers"** tab in the response section to view HTTP headers such as:
- `Content-Type`
- `Content-Length`
- `Date`
- `Server`

---

## 🌐 Server Configuration

- The server runs on port **8083**, configured in the `application.properties` file.
- If the port is busy, you can change it using:
server.port=808X

---

## 📌 Summary

This module provides a minimal, working example of how to:

- Expose a REST endpoint using Spring Boot.
- Return a simple plain-text response.
- Use logging to track method execution.
- Analyze HTTP headers using browser developer tools and Postman.

