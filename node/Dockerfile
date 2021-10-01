FROM node:16.10.0-alpine3.14

WORKDIR /home/node/app

COPY . .

RUN npm install

ENTRYPOINT [ "node", "index.js" ]