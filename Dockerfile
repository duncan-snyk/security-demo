FROM maven:3-jdk-8-slim 

WORKDIR /app

COPY target/security-demo-0.0.1-SNAPSHOT.jar /app/security-demo.jar
COPY run-app.sh /app/run-app.sh

##ENTRYPOINT ["java", "-jar", "security-demo.jar"]

ENTRYPOINT ["/bin/bash", "-c", "/app/run-app.sh \"$@\"", "--"]
