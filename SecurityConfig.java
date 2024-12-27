package com.example.controller;

import org.springframework.web.bind.annotation.*;
import lombok.Data;

@RestController
@RequestMapping("/auth")
public class AuthController {

    @PostMapping("/login")
    public String login(@RequestBody LoginRequest loginRequest) {
        
        return "User logged in successfully";
    }

    @PostMapping("/register")
    public String register(@RequestBody RegisterRequest registerRequest) {
        
        return "User registered successfully";
    }

    @GetMapping("/me")
    public String me() {
        
        return "User info";
    }

    @Data
    public static class LoginRequest {
        private String username;
        private String password;
    }

    @Data
    public static class RegisterRequest {
        private String username;
        private String password;
        private String email;
    }
}
