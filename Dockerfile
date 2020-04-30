FROM openjdk:8
ADD target/spring-boot-rest-0.0.1-SNAPSHOT.jar spring-boot-rest-0.0.1-SNAPSHOT.jar
EXPOSE 8091
ENTRYPOINT ["java", "-jar", "spring-boot-rest-0.0.1-SNAPSHOT.jar"]
