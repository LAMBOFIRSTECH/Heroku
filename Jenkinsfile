pipeline {
    agent any

    stages {
        stage('Lister fichiers') {
            steps {
                sh 'ls '
     
            }
        }
        stage('Création du dossier') {
            steps {
                sh 'mkdir lab0'
     
            }
        }
        stage('Création du fichier') {
            steps {
                sh 'cd lab0 && touch web_site.html'
     
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
