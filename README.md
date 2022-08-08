# Deploy Applications to kubernetes with Jenkins Pipeline: Node Js App
[Node wesite](https://nodejs.org/en/docs/guides/getting-started-guide/)<br>
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
->Pipline script from SCM->Git -> branch /NodeJs-App
```
## Set up Node Js application
[Code Reference](https://github.com/WebDevSimplified/Your-First-Node-REST-API)<br/>
Install node js on macOS from [here](https://nodejs.org/en/download/)
```
sudo npm install npm --global 
```
```
npm init
```
```
npm i express mongoose
```
```
npm install dotenv
```
```
node server.js
```
You may see application running  on http://0.0.0.0:3000/ <br>
### Building Docker image from app
```
docker build -t hello-js-app:01 . 
```
To check image 
```
docker run -it --rm --name nodeJs hello-js-app:01 bash
```
To test builded image locally 
```
docker run --rm -p 3000:3000 --name nodeJs hello-js-app:01 
or 
docker run -d --rm -p 3000:3000 --name nodeJs hello-js-app:01
```
To stop or remove container
```
docker stop nodeJs
or 
docker rm -f nodeJs
```
### Publishing app docker image to docker hub
Create repository in [docker hub](https://hub.docker.com/)
```
docker tag hello-js-app:01  <your docker hub repository perfix eg. masodatc>/nodejs-app:01 
```
```
docker tag hello-js-app:01 masodatc/nodejs-app:01 
docker push masodatc/nodejs-app:01 
```
Test pushed image to docker hub
``` 
docker run -d --rm -p 3000:3000 --name nodeJs masodatc/nodejs-app:01
```
## Set up Jenkins Pipeline
```
Dashboard -> Build Now
```
You shoud be able to see something similar on your dashboard<br/>
<img width="880" alt="Screenshot 2022-08-04 at 14 57 34" src="https://user-images.githubusercontent.com/43514418/182852723-06f185c2-e860-4471-9fd8-cba99d0e709a.png">
<br>
Anytime missing Jenkins on browser run
```
brew services restart jenkins-lts
```
