FROM alpine:latest

ARG ssh_pub_key

RUN mkdir -p /root/.ssh \
    && chmod 0700 /root/.ssh \
    && echo "$ssh_pub_key" > /root/.ssh/authorized_keys \
    && apk update \
    && apk add curl openssh nano python3 \
    && ssh-keygen -A \
    && echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

ENTRYPOINT /usr/sbin/sshd -D && bash
