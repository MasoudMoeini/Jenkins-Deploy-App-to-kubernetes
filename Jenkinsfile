pipeline{
    agent any
     stages {
        stage('Build docker image'){
            steps{
                sh 'docker build -t masodatc/nodejs-app:02 .'
            }
        }
        stage('Pushing image'){
            steps{
            sh 'docker push masodatc/nodejs-app:02 '
            }
        }
        stage('Deploy Node App to kubernetes cluster') {
          steps {
             sh 'kubectl apply -f node-app.yaml'
            }
        }
        stage('test service exists'){
             steps {
              sh 'kubectl get service/node-app-svc'
               }
           }
    }
}

