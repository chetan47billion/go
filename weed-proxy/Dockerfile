# weed-proxy Dockerfile

FROM cavo2/base-image:4.00

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir /cavo2.0 /build
COPY * /cavo2.0/

RUN cd /cavo2.0/go/src/github.com/cavo/

RUN go build -v -o /build/weed cmd/weed-proxy-run.go

RUN rm -rf /cavo2.0

WORKDIR /build

ADD weed.sh /usr/local/bin/weed.sh
RUN chmod +x /usr/local/bin/weed.sh

RUN apt-get -y autoclean && apt-get clean --quiet && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["dumb-init"]
