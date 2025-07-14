package com.cognizant.springlearn.controller;

import com.cognizant.springlearn.model.JwtResponse;
import com.cognizant.springlearn.util.JwtUtil;
import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
public class AuthenticationController {

    private static final Logger LOGGER = LoggerFactory.getLogger(AuthenticationController.class);
    private final JwtUtil jwtUtil;

    public AuthenticationController(JwtUtil jwtUtil) {
        this.jwtUtil = jwtUtil;
    }

    @GetMapping("/authenticate")
    public JwtResponse authenticate(HttpServletRequest request) {
        String authHeader = request.getHeader(HttpHeaders.AUTHORIZATION);
        if (authHeader != null && authHeader.startsWith("Basic ")) {
            String base64Credentials = authHeader.substring("Basic ".length());
            byte[] credDecoded = Base64.decodeBase64(base64Credentials);
            String credentials = new String(credDecoded);
            String[] values = credentials.split(":", 2);

            String username = values[0];
            String password = values[1];

            // Hardcoded user validation
            if ("user".equals(username) && "pwd".equals(password)) {
                String token = jwtUtil.generateToken(username);
                return new JwtResponse(token);
            }
        }
        throw new RuntimeException("Invalid Credentials");
    }
}
