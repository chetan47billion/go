# Tika Dockerfile

FROM cavo2/base-image:4.00

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir /cavo2.0 /build
COPY . /cavo2.0/

RUN cd /cavo2.0/java/tika && mvn clean compile assembly:single 

RUN cp /cavo2.0/java/tika/target/tika-0.0.1-jar-with-dependencies.jar  /build/tika.jar

RUN rm -rf /cavo2.0

WORKDIR /build

ADD tika.sh /usr/local/bin/tika.sh
RUN chmod +x /usr/local/bin/tika.sh

RUN apt-get -y autoclean && apt-get clean --quiet && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
