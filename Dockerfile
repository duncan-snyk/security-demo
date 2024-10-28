FROM maven:3-jdk-8-slim 

WORKDIR /app

COPY target/security-demo-0.0.1-SNAPSHOT.jar /app/security-demo.jar

ENTRYPOINT ["java", "-jar", "security-demo.jar"]
