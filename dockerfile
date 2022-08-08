FROM node:latest

WORKDIR /Jenkins-Deploy-App-to-kubernetes
COPY . ./current-app
RUN npm i express mongoose
RUN npm install dotenv
EXPOSE 3000
CMD [ "node", "server.js" ]