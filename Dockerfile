# Build Stage for Spring boot application image
FROM spring:version1
#RUN apt update && apt upgrade -y && apt install openjdk-11-jdk openjdk-11-jre maven -y

WORKDIR /home
RUN pwd
COPY springudemy /home
RUN ls -la

EXPOSE 8080
EXPOSE 5005
RUN mvn install -DskipTests
