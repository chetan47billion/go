FROM cavo2/base-images:4.00
#FROM ubuntu:16.04


# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update \
        && apt-get install -y unzip git wget vim curl

RUN mkdir /cavo2.0

ENV GO_VERSION 1.7.6

ENV GOROOT /usr/local/go
ENV GOPATH /cavo2.0/go
ENV GOBIN /cavo2.0/bin
ENV PATH /usr/local/go/bin:$GOPATH/bin:$PATH


RUN wget https://storage.googleapis.com/golang/go1.7.6.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.7.6.linux-amd64.tar.gz


ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/bin/bash", "/start.sh"]
