FROM openjdk:8

EXPOSE 8091
ENTRYPOINT ["java", "-jar", "spring-boot-rest-0.0.1-SNAPSHOT.jar"]
