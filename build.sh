#!/bin/sh

version=v1.2.0
rm -f *.zip simple-proxy
wget https://github.com/jthomperoo/simple-proxy/releases/download/${version}/simple-proxy_linux_amd64.zip
unzip simple-proxy_linux_amd64.zip simple-proxy
docker build -t xieyanbo/simple-proxy:${version} .
docker push xieyanbo/simple-proxy:${version}
docker tag xieyanbo/simple-proxy:${version} xieyanbo/simple-proxy
docker push xieyanbo/simple-proxy
