FROM eclipse-temurin:17-jdk-alpine
WORKDIR /opt/app
RUN mvnw clean package
COPY target/apiusuarios-0.0.1-SNAPSHOT.jar apiusuarios-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","apiusuarios-0.0.1-SNAPSHOT.jar"]
