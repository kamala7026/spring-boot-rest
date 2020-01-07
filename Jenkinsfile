node {
    def app

    stage('Clone repository') {
       

        checkout scm
    }
    
    stage('Build image') {
       
          app = docker.build("spring-boot-rest")
          kubectl expose deployment spring-boot-rest --type=LoadBalancer --name=spring-boot-rest-service --port=8090 --target-port=8080
        /*sh docker build -f Dockerfile -t spring-boot-rest*/
        
    }

    /*stage('Test image') {
       

        app.inside {
            sh 'echo "Tests passed"'
        }
    }*/
    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
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
