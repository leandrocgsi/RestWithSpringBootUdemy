package br.com.erudio.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;

@Configuration
public class OpenApiConfig {

	@Bean
	public OpenAPI customOpenApi() {
		return new OpenAPI()
		        .info(new Info()
		                .title("RESTful API With Java 15 and Spring Boot 2.4.1")
		                .version("v1")
		                .description("Some description about your API.")
		                .termsOfService("http://swagger.io/terms/")
		                .license(new License().name("Apache 2.0").url("http://springdoc.org")));
	}
}
