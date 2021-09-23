FROM openjdk:8-jre
RUN mkdir -p /opt/auditplan
COPY ./target/auditlog-0.0.1-SNAPSHOT.jar /opt/auditplan/auditplan.jar
WORKDIR /opt/auditplan
EXPOSE 8080
CMD ["java", "-jar", "auditplan.jar"]
