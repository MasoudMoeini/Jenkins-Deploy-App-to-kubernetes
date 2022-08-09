# Deploy Applications to kubernetes with Jenkins Pipeline: Node Js App
[Node Website](https://nodejs.org/en/docs/guides/getting-started-guide/)<br>
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
## Set up MongoDB on macOS
[Reference: MongoDb Home brew tap](https://github.com/mongodb/homebrew-brew)<br>
[Reference: Install MongoDB Community Edition on macOS](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/)<br>
```
brew tap mongodb/brew
```
```
brew install mongodb-community
```
To start running mongo DB
```
brew services start mongodb/brew/mongodb-community
```
To stop running mongo DB 
```
brew services stop mongodb-community
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
npm i express
```
```
npm install mongoose --save
```
```
npm install dotenv
```
To run application
```
npm run devStart
or
node server.js
```
```
Install Rest Client extension on VS-Code
```
You may test rest api application on route.rest file or by Postman <br>
### Building Docker image from app
```
docker build -t masodatc/rest-api-nodejs:01 .
```
### Publishing app docker image to docker hub
Create repository in [docker hub](https://hub.docker.com/)<br>
```
docker push masodatc/rest-api-nodejs:01 
```
Test pushed image to docker hub
```
docker run --rm -p 3000:3000 --name restNodeJs masodatc/rest-api-nodejs:01
```
or
``` 
docker run -d --rm -p 3000:3000 --name restNodeJs masodatc/rest-api-nodejs:01
```
## Set up Docker Compose 
[Reference:Docker and MongoDB](https://www.mongodb.com/compatibility/docker)<br>
[Reference:docker compose](https://docs.docker.com/compose/gettingstarted/)<br>
```
docker-compose up --detach  
```
You may test rest api application on route.rest file or by Postman <br>
Stop docker compose and remove containers<br>
```
docker compose down 
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
