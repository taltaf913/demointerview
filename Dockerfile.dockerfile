FROM node:10-alpine

RUN mkdir -p /home/node/src && chown -R node:node /home/node/src

WORKDIR /home/node/src

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]