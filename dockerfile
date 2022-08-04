FROM node:latest

WORKDIR /Jenkins-Deploy-App-to-kubernetes
COPY app.js ./
EXPOSE 3000
CMD [ "node", "app.js" ]