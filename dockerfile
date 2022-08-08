FROM node:latest

WORKDIR /app 
COPY app.js ./app
EXPOSE 3000
CMD [ "node", "app.js" ]