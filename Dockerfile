FROM alpine:latest

RUN mkdir -p /root/.ssh

ARG ssh_pub_key
ARG ssh_pri_key

RUN echo "$ssh_pub_key" > /root/.ssh/id_rsa.pub \
    && echo "$ssh_pri_key" > /root/.ssh/id_rsa \
    && chmod -R 0700 /root/.ssh \
    && apk update \
    && apk add py3-pip curl openssh bash nano vim \
    && pip install ansible
