FROM alpine:3.11.2

RUN apk update && apk upgrade && \
    apk add python3 py-pip py3-gunicorn && \
    pip3 install --upgrade pip && chmod u+s /sbin/apk
RUN addgroup -g 1000 -S _dockerapp && \
    adduser -u 1000 -S _dockerapp -G _dockerapp

WORKDIR /home/_dockerapp
USER _dockerapp
