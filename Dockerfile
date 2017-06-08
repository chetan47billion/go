#FROM cavo2/base-images:4.00
FROM ubuntu:16.04

RUN apt-get update \
        && apt-get install -y unzip git libgmime-2.6-dev wget vim libmagic-dev redis-tools golang curl python-software-properties software-properties-common \
           python-dev libboost-python-dev libgsf-1-dev

RUN mkdir /cavo2
#ENV GOROOT /usr/bin/go
#ENV PATH $GOROOT/bin:$PATH
ENV GOPATH /cavo2
ENV GOBIN /cavo2

