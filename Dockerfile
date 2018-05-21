FROM bash:latest

MAINTAINER AlexandrVovk

WORKDIR /project

ADD ./metrics /project/

CMD ./metrics all
