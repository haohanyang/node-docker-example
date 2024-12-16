FROM node:18

RUN mkdir -p /home/node/node-docker-example

COPY package.json /home/node/node-docker-example
COPY package-lock.json /home/node/node-docker-example
COPY index.js /home/node/node-docker-example

RUN chown -R node:node /home/node/node-docker-example

WORKDIR /home/node/node-docker-example

USER node

ENV NODE_ENV=production

RUN npm ci

CMD [ "npm", "run", "start" ]