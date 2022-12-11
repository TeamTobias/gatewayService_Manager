```yml
server:
  port: 8002

eureka:
  instance:
    hostname: localhost
  client:
    register-with-eureka: true
    fetch-registry: true
    service-url:
      defaultZone: http://localhost:8761/eureka
    registry-fetch-interval-seconds: 1


spring:
  application:
    name: gateWayService_Manager
  cloud:
    gateway:
      routes:
        - id: manager-login-service
          uri: lb://manager-login-service
          predicates:
            - Path=/manager-login-service/**
        - id: manager-service
          uri: lb://manager-service
          predicates:
            - Path=/manager-service/**
```

- `server.port`：서버 포트를 지정합니다.
- `eureka.client.register-with-eureka`：Eureka 서버에 등록할지 여부를 지정합니다.
- `eureka.client.fetch-registry`：Eureka 서버에서 레지스트리를 가져올지 여부를 지정합니다.
- `eureka.client.service-url.defaultZone`：Eureka 서버 주소를 지정합니다.
- `eureka.client.registry-fetch-interval-seconds`：Eureka 서버에서 레지스트리를 가져오는 간격을 지정합니다.
- `spring.application.name`：서비스 이름을 지정합니다.
- `spring.cloud.gateway.routes`：게이트웨이 라우팅을 지정합니다.
- `spring.cloud.gateway.routes.id`：라우팅 ID를 지정합니다.
- `spring.cloud.gateway.routes.uri`：라우팅할 서비스 이름을 지정합니다.
- `spring.cloud.gateway.routes.predicates`：라우팅할 경로를 지정합니다.
