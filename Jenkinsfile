#!/usr/bin/env groovy

pipeline {

    agent none

    stages {
        stage('Build') {
            agent { docker 'cargo.caicloudprivatetest.com/caicloud/centos7jdk1.8gradle4.4.1' }
            steps {
                when { branch 'master' }
                echo 'build jar'
                sh 'gradle bootRepackage'
            }
         }
    }
}