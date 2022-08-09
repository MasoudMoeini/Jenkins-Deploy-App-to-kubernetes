FROM node:latest

WORKDIR /app 
COPY . /app
EXPOSE 3000
CMD [ "node", "app.js" ]