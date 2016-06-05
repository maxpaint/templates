package com.mdanylenko.rs.controller;

import com.mdanylenko.rs.interfaces.Greeting;
import com.mdanylenko.rs.dto.GreetingDTO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController implements Greeting {

    private static final String template = "Hello, %s!";

    @RequestMapping("/greeting")
    public GreetingDTO greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new GreetingDTO(1, template);
    }
}
