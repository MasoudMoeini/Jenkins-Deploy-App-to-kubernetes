pipeline{
    agent any
     stages {
        stage('Build docker image'){
            steps{
                sh 'docker build -t masodatc/rest-api-nodejs:01 .'
            }
        }
        stage('Pushing app image to hub'){
            steps{
            sh 'docker push masodatc/rest-api-nodejs:01 '
            }
        }
        
        stage('Deploy app to kubenetes'){
            steps{
            sh 'cd kubernetes_deployment'
            sh 'kubectl apply -k ./'
            sh 'kubectl get svc rest-node-app-svc'
            }
        }
    }
}

