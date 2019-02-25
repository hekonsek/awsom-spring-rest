FROM fedora:29

RUN dnf install -y java aws

RUN mkdir /app
ADD target/*.jar /app

CMD ["/usr/bin/java", "-jar", "/app/*.jar"]