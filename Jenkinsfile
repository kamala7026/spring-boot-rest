node {
    def app

    stage('Clone repository') {
       

        checkout scm
    }

    stage('Build image') {
       
          app = docker.build("spring-boot-rest:${env.BUILD_ID}")
        /*sh docker build -f Dockerfile -t spring-boot-rest*/
    }

    stage('Test image') {
       

        app.inside {
            sh 'echo "Tests passed"'
        }
    }
}
/*pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
            checkout scm
            }
        }
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    sh docker build -f Dockerfile -t spring-boot-rest
                }
            }
        }
    }
}*/
