FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y \
    tzdata \
    wget \
    g++ \
    cmake 

RUN mkdir /src
ENV LD_LIBRARY_PATH /usr/lib/x86_64-linux-gnu
ENV CFLAGS -m64
ENV CXXFLAGS -m64
ENV TZ=Asia/Tokyo