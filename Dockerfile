FROM openjdk:11
VOLUME /tmp 
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins
ARG JAR_FILE=build/libs/msa-back1-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar 
EXPOSE 9090 
ENTRYPOINT ["java","-jar","/app.jar"]