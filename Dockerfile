FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY build/libs/gatewayService_Manager-1.0.jar gatewayservice_manager.jar
#ENTRYPOINT exec java $JAVA_OPTS -jar discoveryservice.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar gatewayservice_manager.jar