FROM debian:jessie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    kpartx \
    zip \
    ruby \
    ruby-dev \
    dosfstools \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN gem update --system && \
    gem install --no-document serverspec
