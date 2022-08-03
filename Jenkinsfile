pipeline{
    agent any
     stages {
        stage('Deploy Azur vote Application to kubernetes') {
          steps {
             sh 'kubectl apply -f azure-vote.yaml'
            }
        }
        stage('test service exists'){
             steps {
              sh 'kubectl get service/azure-vote-front'
              sh 'kubectl get ingress'
               }
           }
    }
}

