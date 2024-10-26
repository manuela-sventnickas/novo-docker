package br.simple.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthChecker {
    
    @GetMapping("/checker")
    public String resp(){
        return "Deu bom";
    }
}
