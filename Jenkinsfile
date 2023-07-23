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
        stage("Build") {
             steps {
                 sh 'docker build --no-cache -t arturlambodocker/nginx_web .' 
            }
        }
        stage("Lister les images") {
             steps {
                 sh 'docker images' 
            }
        }
        stage("Installation de npm") {
             steps {
                 sh 'apt install npm' 
                 sh 'npm install -g heroku'
            }
        }
        
         
        stage('Deploy to Heroku') {
            steps {
                // Utilisez l'outil Heroku CLI pour vous connecter à Heroku (si ce n'est pas déjà fait)
                sh 'heroku login -i'
                
                // Déployez votre application sur Heroku à partir de l'image Docker
                sh 'heroku container:push web -a nginx_web'
                sh 'heroku container:release web -a nginx_web'
            }
        }
    }
}
