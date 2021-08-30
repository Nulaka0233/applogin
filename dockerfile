FROM ubuntu
MAINTAINER nag@gmail.com
RUN apt-get update && apt-get install openjdk-8-jdk -y
EXPOSE 8080
ADD https://get.jenkins.io/war/2.298/jenkins.war jenkins.war
CMD ["java", "-jar", "jenkins.war"]
