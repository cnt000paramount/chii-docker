FROM node:18-alpine
RUN npm install chii
EXPOSE 9000
CMD ./node_modules/.bin/chii start -p 9000
