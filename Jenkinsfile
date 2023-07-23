pipeline {
    agent any

    stages {
        stage('Lister fichiers') {
            steps {
                sh 'ls '
     
            }
        }
        stage("Création de l'image docker") {
             steps {
                 sh 'docker build --no-cache -t arturlambodocker/nginx_web .' 
            }
        }
        stage("Lister les images") {
             steps {
                 sh 'docker images' 
            }
        }
    }
}
