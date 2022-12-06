FROM openjdk:11
RUN yum install -y sudo
VOLUME /tmp 
ARG JAR_FILE=build/libs/msa-back1-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar 
EXPOSE 9090 
ENTRYPOINT ["java","-jar","/app.jar"]