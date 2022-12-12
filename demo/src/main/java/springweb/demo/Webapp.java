package springweb.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
public class Webapp extends SpringBootServletInitializer {
	@Autowired
	private CustomerRepo customerRepo;
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(Webapp.class);
	}
	
	
	public static void main(String[] args) {
		SpringApplication.run(Webapp.class,args);
	}
	
}
