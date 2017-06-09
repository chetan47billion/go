# processor Dockerfile

FROM cavo2/base-image:4.00

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV GOPATH /cavo2.0/go

RUN mkdir /cavo2.0 /build
COPY . /cavo2.0/

RUN cd /cavo2.0/go/src/github.com/cavo/ && \
    go build -v -o /build/processor cmd/process-run.go

RUN rm -rf /cavo2.0

WORKDIR /build

ADD processor.sh /usr/local/bin/processor.sh
RUN chmod +x /usr/local/bin/processor.sh

RUN apt-get -y autoclean && apt-get clean --quiet && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
