FROM alpine:3.10.3

RUN apk update && apk upgrade && \
    apk add python3 py-pip && \
    pip3 install --upgrade pip
RUN addgroup -g 1000 -S _dockerapp && \
    adduser -u 1000 -S _dockerapp -G _dockerapp

WORKDIR /home/_dockerapp
USER _dockerapp
