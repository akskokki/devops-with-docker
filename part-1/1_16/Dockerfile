# We need Java 8
FROM amazoncorretto:8

EXPOSE 8080

COPY . .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
