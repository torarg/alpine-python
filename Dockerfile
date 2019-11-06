FROM alpine:3.10.3

RUN apk update && apk upgrade && \
    apk add python3 py-pip && \
    pip3 install --upgrade pip 
