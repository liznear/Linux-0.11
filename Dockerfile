FROM ubuntu:16.04 AS builder

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN apt update
RUN apt install -y build-essential

WORKDIR /build