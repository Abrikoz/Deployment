package com.example.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.ResponseEntity; 
import java.util.Map; 

@RestController
@RequestMapping("/config")
public class ConfigController {

    @GetMapping("/config")
    public ResponseEntity<Map<String, String>> getConfig() {
        Map<String, String> config = Map.of("key", "value");
        return ResponseEntity.ok(config);
    }

    @GetMapping("/data")
    public ResponseEntity<Map<String, String>> getData() {
        Map<String, String> data = Map.of("data1", "value1", "data2", "value2");
        return ResponseEntity.ok(data);
    }
}
