# DappInDocker image
#
# VERSION 0.1
FROM ruby:slim

RUN apt-get update && apt-get install -y libssh2-1-dev cmake pkg-config gettext-base curl
RUN curl https://download.docker.com/linux/static/stable/x86_64/docker-18.03.0-ce.tgz | tar -xz -C /tmp && mv /tmp/docker/docker /usr/local/bin/docker
RUN gem install dapp