pipeline{
    agent any
     stages {
        stage('Build docker image'){
            steps{
                sh 'docker build -t masodatc/rest-api-nodejs:01 .'
            }
        }
        stage('Pushing image'){
            steps{
            sh 'docker push masodatc/rest-api-nodejs:01 '
            }
        }
        stage('Deploy Node App with docker compose'){
            steps{
                sh 'docker-compose up --detach'
            }
        }
        stage('Stop docker compose and remove containers'){
            steps{
                sh 'docker compose down'
            }
        }
       
    }
}

