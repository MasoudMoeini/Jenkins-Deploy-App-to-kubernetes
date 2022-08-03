pipeline{
    agent any
     stages {
        stage('Deploy App on k8s') {
      steps {
            sshagent(['k8s']) {
            sh "scp -o StrictHostKeyChecking=no azure-vote.yaml ubuntu@IPofk8scluster:/home/ubuntu"
            script {
                try{
                    sh "ssh ubuntu@IPofk8scluster kubectl create -f ."
                }catch(error){
                    sh "ssh ubuntu@IPofk8scluster kubectl create -f ."
            }
        }

     }
    }
   }
  }
}