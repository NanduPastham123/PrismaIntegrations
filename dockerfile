#Get the node base file from docker-hub
FROM node:18-alpine

#Create a app directory
WORKDIR /app

#Install app dependencies
COPY  package*.json ./

#Run npm install
RUN npm install

#Bundle app source
COPY .  .

EXPOSE 8080

CMD [ "npm","run","dev" ]