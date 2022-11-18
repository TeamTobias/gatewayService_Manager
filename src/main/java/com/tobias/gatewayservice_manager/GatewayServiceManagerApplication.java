package com.tobias.gatewayservice_manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class GatewayServiceManagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(GatewayServiceManagerApplication.class, args);
    }

}
