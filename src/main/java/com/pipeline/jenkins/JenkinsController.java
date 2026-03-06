package com.pipeline.jenkins;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("jenkins")
public class JenkinsController {

    @GetMapping("welcome")
    public String welcome(){
        return "Welcome to Jenkins!";
    }
    @GetMapping("hello")
    public String hello(){
        return "Hello World!";
    }
    // added comment for maven
}
