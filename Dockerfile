FROM cargo.caicloudprivatetest.com/caicloud/centos7jdk1.8

ARG JAR_FILE
ADD ${JAR_FILE} app.jar


ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

