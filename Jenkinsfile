#!/usr/bin/env groovy

node {
    checkout scm

    docker.withRegistry('http://cargo.caicloudprivatetest.com/', '9306f204-a839-420f-bb3f-74864299a335') {

        stage 'Build'

        def gradle = docker.image('cargo.caicloudprivatetest.com/caicloud/centos7jdk1.8gradle4.4.1')
        gradle.pull()
        gradle.inside('--mount scr=/var/lib/jenkins/.gradle,dst=/root/.gradle') {
            sh 'gradle bootRepackage'
        }
    }
}