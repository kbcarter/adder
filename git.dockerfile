FROM ubuntu:20.04

RUN apt-get -qq update -y && apt-get -qq install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos "" \
    --uid 1000 --shell /bin/bash/ jenkins

RUN git config --system user.email jenkins@vagrant.local
RUN git config --system user.name "Vagrant Jenkins"
