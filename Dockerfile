FROM alpine
ENV version=v1.4.0
EXPOSE 8888
WORKDIR /
RUN apk update && apk add zip
RUN wget https://github.com/jthomperoo/simple-proxy/releases/download/${version}/simple-proxy_linux_amd64.zip

RUN unzip -d /simple-proxy /simple-proxy_linux_amd64.zip
COPY run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]