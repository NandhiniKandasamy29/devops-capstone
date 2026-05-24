pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git branch: 'dev',
                url: 'https://github.com/NandhiniKandasamy29/devops-capstone.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t final-devops-app .'
            }
        }

        stage('Tag Docker Image') {
            steps {
                sh 'docker tag final-devops-app nandhini209/nandhini-dev-app'
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push nandhini209/nandhini-dev-app'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop final-react-app || true
                docker rm final-react-app || true
                docker run -d -p 80:80 --name final-react-app nandhini209/nandhini-dev-app
                '''
            }
        }
    }
}