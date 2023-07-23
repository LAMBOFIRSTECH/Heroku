pipeline {
    agent any

    stages {
        stage('show files') {
            steps {
                sh 'cd totodir && ls '
     
            }
        }
        stage('create file') {
            steps {
                sh 'cd totodir && touch noyaux'
            }
        }
    }
}