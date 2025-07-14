# 🔐 JWT Authentication Service – Spring Boot

This module provides a simple **JWT-based authentication service** that generates a JSON Web Token (JWT) upon validating user credentials. It is designed as the first step in implementing secure REST APIs using JWT.

---

## ✅ Objective

- Implement an endpoint `/authenticate` that accepts user credentials and responds with a signed JWT token.
- Credentials are passed using Basic Auth (`-u user:pwd`).
- Token is generated only if the credentials are valid.

---

## 🚀 Sample Request and Response

### 🧪 cURL Command
```bash
curl -s -u user:pwd http://localhost:8090/authenticate

✅ Sample Response
{
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiw..."
}


📦 Components Overview
1. Authentication Controller
Defines the endpoint /authenticate.
Reads Authorization header (Basic Auth).
Decodes the Base64-encoded username and password.
Validates credentials (hardcoded or from a user service).

2. Security Configuration (SecurityConfig)
Enables Spring Security.
Configures endpoint access rules.
Disables default login form.
Allows unauthenticated access to /authenticate.

3. JWT Utility
Generates JWT tokens using a secret key.
Sets expiration and subject fields.
Uses a library like io.jsonwebtoken.Jwts for signing.

🔐 Authentication Flow
User sends request to /authenticate with Basic Auth credentials.
Credentials are decoded and validated by the controller.
If valid, a JWT token is generated with subject, issue time, and expiry.
Token is sent back in the JSON response.

⚙️ Dependencies
Make sure the following dependencies are included in pom.xml:
spring-boot-starter-security
jjwt (Java JWT library)

📌 Notes
Token expiration and signing key can be externalized to application.properties.
You can expand this service later to include:
User roles
Token validation filters
Authorization for protected endpoints

🛠 Future Enhancements
Store users in a database and validate using a UserDetailsService.
Implement refresh token mechanism.
Secure APIs using @PreAuthorize and roles.


Let me know when you're ready for the implementation (controller, config, utility classes) or if you want to secure endpoints using the generated JWT!
