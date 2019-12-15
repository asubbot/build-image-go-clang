# https://hub.docker.com/r/asubbot/build-image-go-clang

from ubuntu:18.04

RUN apt-get update

# Install Golang tools 
RUN apt-get install -y --no-install-recommends \
    golang

# Install CLANG & QT tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    clang libssl-dev qtbase5-dev qtdeclarative5-dev libqt5svg5-dev qttools5-dev

# Install cmake without "--no-install-recommends" option
RUN apt-get install -y cmake git
