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
        stage('Deploy Node App to kubernetes cluster') {
          steps {
             sh 'kubectl apply -f rest-node-app.yaml'
            }
        }
        stage('test service exists'){
             steps {
              sh 'kubectl get service/rest-node-app-svc'
               }
           }
    }
}

