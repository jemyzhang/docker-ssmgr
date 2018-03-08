FROM node:alpine
MAINTAINER Jemy Zhang <jemy.zhang@gmail.com>

ENV LANG C.UTF-8
ENV TZ 'Asia/Shanghai'

RUN apk upgrade --update \
    && apk add sqlite python tzdata ca-certificates \
    && npm i -g shadowsocks-manager --unsafe \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

ENTRYPOINT ["/usr/local/bin/ssmgr"]
