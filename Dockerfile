FROM cargo.caicloudprivatetest.com/caicloud/centos7jdk1.8

EXPOSE [8080, 10053]

ENTRYPOINT ["app.jar", "start"]

