FROM node:18-alpine
RUN mkdir -p /home/node/chii/node_modules && chown -R node:node /home/node/chii
RUN mkdir -p /home/node/chii/certs && chown -R node:node /home/node/chii/certs
COPY ./certs/* /home/node/chii/certs
RUN chmod 777 /home/node/chii/certs/*
WORKDIR /home/node/chii
USER node
RUN npm install chii
EXPOSE 9000
CMD ./node_modules/.bin/chii start  -d chii-docker.onrender.com -p 9000 
# --https --ssl-cert ./certs/chii-docker.onrender.com.pem --ssl-key ./certs/chii-docker.onrender.com-key.pem
