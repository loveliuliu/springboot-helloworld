FROM harbor.mobilemd.cn/baseimg/codecentric/springboot-maven3-centos:latest

COPY . /data/springboot-helloworld
WORKDIR /data/springboot-helloworld

RUN ["mvn", "clean", "install"]

EXPOSE 8080

CMD ["java", "-jar", "target/helloworld-0.0.1-SNAPSHOT.jar"]
