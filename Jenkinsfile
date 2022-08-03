pipeline{
    agent any
     stages {
        stage('Deploy Azur vote Application to kubernetes') {
          steps {
             sh 'kubectl apply -f azure-vote.yaml'
    
            }
       }
    }
}
