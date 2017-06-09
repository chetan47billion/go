# weed-proxy Dockerfile

# FROM cavo2/base-images:4.00
FROM ubuntu:16.04

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# RUN apt-get update

RUN mkdir /cavo2.0
COPY * /cavo2.0/

RUN ls -l /cavo2.0

ENV GOPATH /cavo2.0/go
ENV GOBIN /cavo2.0/bin

ADD weed.sh /usr/local/bin/weed.sh
RUN chmod +x /usr/local/bin/weed.sh

RUN apt-get -y autoclean && apt-get clean --quiet && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["dumb-init"]
