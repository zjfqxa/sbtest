FROM cargo.caicloudprivatetest.com/caicloud/centos7jdk1.8

COPY app.jar app.jar

EXPOSE 8080

#ENTRYPOINT ["app.jar", "start"]