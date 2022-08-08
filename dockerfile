FROM node:latest

WORKDIR /app
COPY . /app
RUN npm install express 
RUN npm install mongoose --save
RUN npm install dotenv
EXPOSE 3000
CMD [ "node", "server.js" ]