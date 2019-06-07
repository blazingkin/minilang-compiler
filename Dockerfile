FROM ubuntu


RUN apt-get update

RUN apt-get install -y build-essential clang bash

RUN apt-get install -y gcc-arm-linux-gnueabi

RUN apt-get install -y default-jre wget

RUN wget https://www.antlr.org/download/antlr-4.7.2-complete.jar > /usr/local/lib/antlr-4.7.2-complete.jar

ENV INDOCKER=true

WORKDIR /app

COPY . /app

ENTRYPOINT [ "/app/run.sh" ]