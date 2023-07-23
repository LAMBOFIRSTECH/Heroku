pipeline {
    agent any

    stages {
        stage('show files') {
            steps {
                sh 'ls '
     
            }
        }
        stage("creation de l'image docker") {
             steps {
                 sh 'docker build --no-cache -t arturlambodocker/nginx_web .' 
            }
        }
    }
}
