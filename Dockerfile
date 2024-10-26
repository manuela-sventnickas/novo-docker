FROM maven:3.9.9-eclipse-temurin-23-alpine as build

COPY . /usr/src/mymaven

WORKDIR /usr/src/mymaven
RUN mvn clean install -Dmaven.test.skip=true

EXPOSE 8080

ENTRYPOINT ["java","-jar","target/api-0.0.1-SNAPSHOT.jar"]

#comandos docker executados para buildar e rodar imagem:
#docker build -t my-app .
#docker run --name app-java -d -p 8080:8080 my-app
