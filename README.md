# Chii repository with docker file to help deployng chii in you own server

https://github.com/liriliri/chii

## docker

`docker stop chii-image`
`docker remove chii-image`

`docker image build -t chii-image .`

`docker run --name chii-image -p 9000:9000 -d chii-image`

## to start in local

Assuming you installed chii as global npm module, and your IP in the local network is: 192.168.8.162

```shell
chii start -d 192.168.8.162:9000 -p 9000 --https --ssl-cert ~/certs/debug.pluto.tv.pem --ssl-key ~/certs/debug.pluto.tv-key.pem
```
