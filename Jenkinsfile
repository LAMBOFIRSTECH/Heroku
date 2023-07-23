pipeline {
    agent any

    stages {
        stage('show files') {
            steps {
                sh 'ls '
     
            }
        }
        stage('create folder') {
            steps {
                sh 'mkdir lab0 '
            }
        }

        stage('create file') {
             steps {
                 sh 'cd lab0/ && touch web_site.html' 
            }
        }
    }
}