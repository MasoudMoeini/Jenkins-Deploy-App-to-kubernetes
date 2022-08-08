FROM node:latest

WORKDIR /Jenkins-Deploy-App-to-kubernetes
COPY .. ./current-app
EXPOSE 3000
CMD [ "node", "server.js" ]