FROM node:16-bullseye

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

#COPY COMMAND takes 2 parameters First - Host (Local machine) to Second Image
COPY . .

EXPOSE 3000

ENTRYPOINT ["node", "server.js"]
