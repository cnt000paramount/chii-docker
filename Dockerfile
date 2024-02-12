FROM node:18-alpine
RUN mkdir -p /home/node/chii/node_modules && chown -R node:node /home/node/chii
WORKDIR /home/node/chii
USER node
RUN npm install chii
EXPOSE 9000
CMD ./node_modules/.bin/chii start -p 9000