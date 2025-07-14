# SpringLearn – REST: Get Country by Code

This module enhances the Country RESTful Web Service to return a specific country by its **country code**, provided dynamically as a **path variable** in the request.

---

## ✅ Objective

- Create a REST endpoint to retrieve a specific country using a dynamic URL path.
- Make the search case-insensitive for usability.
- Use a service layer to encapsulate the country retrieval logic.

---

## 🌐 Endpoint Details

| Attribute         | Value                                           |
|------------------|-------------------------------------------------|
| HTTP Method       | GET                                             |
| URL Pattern       | `/countries/{code}`                             |
| Path Variable     | `code` (e.g., `in`, `US`, `FR`)                 |
| Response Type     | JSON                                            |
| Sample Request    | `http://localhost:8083/countries/in`           |
| Sample Response   | `{ "code": "IN", "name": "India" }`            |

---

## ⚙️ Flow Overview

1. **Controller Layer**
   - Accepts a `GET` request with a dynamic country code.
   - Delegates the request to the `CountryService`.

2. **Service Layer**
   - Loads a list of countries from the Spring XML configuration (`country.xml`).
   - Iterates through the list (or uses a lambda expression) to find a country with a matching code.
   - Matching is done **case-insensitively** for robustness.
   - Returns the matched country object.

3. **Spring Serialization**
   - The returned country object is automatically serialized to JSON using Spring Boot’s built-in support (Jackson).

---

## 🧪 Testing the Endpoint

### 1. Browser / Postman

- Example URL:  
http://localhost:8083/countries/in

- Expected JSON Response:
```json
{
  "code": "IN",
  "name": "India"
}

2. HTTP Headers (in Developer Tools or Postman)
Header	Value
Content-Type	application/json
Content-Length	Varies by response
Connection	keep-alive
Date	Current timestamp

📌 Summary
This module demonstrates:

Use of @GetMapping with path variables in RESTful services.

Delegation to a service layer for cleaner code and separation of concerns.

Reading bean lists from Spring XML configuration.

Dynamic and case-insensitive data filtering.

JSON response generation using Spring Boot auto-configuration.
Let me know if you’d like the Java implementation for this feature or an enhancement like exception handling for invalid country codes!
