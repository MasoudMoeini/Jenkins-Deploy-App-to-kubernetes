pipeline{
    agent any
     stages {
        stage('Deploy App on k8s') {
      steps {
           steps {
        script {
          kubernetesDeploy(configs: "azure-vote.yml", kubeconfigId: "kubernetes08")
        }

     }
    }
   }
  }
}