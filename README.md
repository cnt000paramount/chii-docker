## creare certificato

openssl genrsa -aes256 -passout pass:password -out chii-server.pass.key 4096
openssl rsa -passin pass:password -in chii-server.pass.key -out chii-server.key
rm chii-server.pass.key
openssl req -new -key chii-server.key -out chii-server.csr
openssl x509 -req -sha256 -days 365 -in chii-server.csr -signkey chii-server.key -out chii-server.crt
cp chii-server\* ~/certs
---

mkcert localhost

## comandi docker

docker stop chii-image
docker remove chii-image

docker image build -t chii-image .

docker run --name chii-image -p 9000:9000 -d chii-image

## comando originale

node bin/chii.js start -d 127.0.0.1:9000 -p 9000 --https --ssl-cert ~/certs/chii-server.crt --ssl-key ~/certs/chii-server.key
