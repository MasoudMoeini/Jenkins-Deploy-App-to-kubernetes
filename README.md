# Deploy Applications to kubernetes with Jenkins Pipeline
In order to deploy kubernetes deployment infraustruture using Jenkins Pipeline<br/>
First set up Kubernetes plug in on Jenkins <br/>
```
Dashboard->Manage Jenkins->Plugin Manager->available->Install kubernetes and Docker plugins
```
You have to create Credential to allow jenkins to access kubernetes cluster
```
Dashboard->Manage Jenkins->Manage Credentials-> Global Configuration-> add credential-> Kind-> kubenetese credential-> 
```
You need to copy the kubententes config file contents to empty box
```
cat ~/.kube/config 
```
Copy and submit your new ceredential<br/> 
Go back to Dashboard 
```
Jenkins Dashboard-> new Item-> Pipline->Configure
->Pipline script from SCM->Git
```
```
Dashboard -> Build Now
```
You shoud be able to see something similar on your dashboard<br/>
<img width="782" alt="Screenshot 2022-08-04 at 10 11 10" src="https://user-images.githubusercontent.com/43514418/182798420-13839b2e-9914-44c3-a13c-d44d5b87497c.png"><br>
Anytime missing Jenkins on browser run
```
brew services restart jenkins-lts
```
