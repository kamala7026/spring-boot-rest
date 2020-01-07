/*node {
    def app

    stage('Clone repository') {
       

        checkout scm
    }

    stage('Build image') {
       
        app = docker.build("spring-boot-rest:${env.BUILD_ID}")
      
    }

    stage('Test image') {
       

        app.inside {
            sh 'echo "Tests passed"'
        }
    }
}*/
pipeline {
    agent any
    stages {
        stage('Clone repository') {
            checkout scm
        }
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push()
                }
            }
        }
    }
}
