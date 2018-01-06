#!/usr/bin/env groovy

pipeline {

    agent none

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'cargo.caicloudprivatetest.com/caicloud/centos7jdk1.8gradle4.4.1'
                    args '；--mount scr=/var/lib/jenkins/.gradle,dst=/root/.gradle'
                }
             }
            steps {
                when { branch 'master' }
                echo 'build jar'
                sh 'gradle bootRepackage'
            }
         }
    }
}
