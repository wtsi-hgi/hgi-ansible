FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

# Install git-push prerequisites
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         apt-utils \
         software-properties-common \
    && apt-get install -y --no-install-recommends \
         bash \
         coreutils \
         git \
         openssh-client \
    && rm -rf /var/lib/apt/lists/*

ADD git-push /usr/local/bin/

# Install GRL CA
ADD grl-ca.pem /etc/ssl/certs/grl-ca.pem
RUN \
  ln -s /etc/ssl/certs/grl-ca.pem /usr/lib/ssl/certs/91155464.0 && \
  cat /etc/ssl/certs/grl-ca.pem >> /etc/ssl/certs/ca-certificates.crt
