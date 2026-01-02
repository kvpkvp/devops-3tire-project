package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {

    @Autowired
    private JdbcTemplate jdbcTemplate;   // ✅ THIS WAS MISSING

    @GetMapping("/health")
    public String health() {
        return "Backend is UP";
    }

    @GetMapping("/db-check")
    public String dbCheck() {
        return jdbcTemplate.queryForObject(
                "SELECT 'DB Connected Successfully'",
                String.class
        );
    }
}

