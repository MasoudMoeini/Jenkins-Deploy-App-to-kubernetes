pipeline{
    agent any
     stages {
        stage('Deploy App on k8s') {
      steps {
        script {
          kubernetesDeploy(configs: "azure-vote.yaml", kubeconfigId: "kubernetes08")
        }

     }
    }
   }
  }
