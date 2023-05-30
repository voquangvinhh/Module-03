package com.codegym.C11;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class CgCinemaApplication {

	public static void main(String[] args) {
		SpringApplication.run(CgCinemaApplication.class, args);
	}

}
