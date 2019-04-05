package com.poc.webservice.service;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VersionController {

    private static final String VERSION = "1.0.0";

    @GetMapping("/version")
    public ResponseEntity showVersion() {
        return new ResponseEntity<>("version: " + VERSION, HttpStatus.CREATED);
    }
}
