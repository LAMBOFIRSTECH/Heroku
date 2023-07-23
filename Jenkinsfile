pipeline {
    agent any

    stages {
        stage('show files') {
            steps {
                sh 'ls '
     
            }
        }
        stage('create file') {
            steps {
                sh 'mkdir lab0 && touch web_site.html'
            }
        }
    }
}