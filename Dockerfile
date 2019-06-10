FROM ubuntu


RUN apt-get update

RUN apt-get install -y build-essential clang bash

RUN apt-get install -y gcc-arm-linux-gnueabi

RUN apt-get install -y default-jre wget

ENV INDOCKER=true

WORKDIR /app

COPY . /app

ENTRYPOINT [ "/app/run.sh" ]