package org.reni;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GreetAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(GreetAppApplication.class, args);
	}
	
	@GetMapping("/")
	public String greet() {
		return "Hello from Jenkins once again";
	}
	

}
