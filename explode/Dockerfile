# explode Dockerfile

FROM cavo2/base-image:4.00

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV GOPATH /cavo2.0/go

RUN mkdir /cavo2.0 /build
COPY . /cavo2.0/

RUN go get github.com/jprichardson/readline-go

RUN cd /cavo2.0/go/src/github.com/cavo/ && \
    go build -v -o /build/explode cmd/explode-run.go

RUN rm -rf /cavo2.0

WORKDIR /build

ADD explode.sh /usr/local/bin/explode.sh
RUN chmod +x /usr/local/bin/explode.sh

RUN apt-get -y autoclean && apt-get clean --quiet && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
