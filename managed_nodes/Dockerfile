FROM debian:bullseye-slim

ARG ssh_pub_key

RUN mkdir -p /root/.ssh \
    && chmod 0700 /root/.ssh \
    && echo "$ssh_pub_key" > /root/.ssh/authorized_keys \
    && apt update \
    && apt install curl openssh-server iproute2 nano python3 -yq \
    && ssh-keygen -A \
    && echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

ENTRYPOINT service ssh restart && bash
