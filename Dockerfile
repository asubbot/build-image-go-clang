# https://hub.docker.com/r/asubbot/build-image-go-clang

from ubuntu:18.04

RUN apt-get update
RUN apt-get install -y golang-1.10 git cmake clang libssl-dev qtbase5-dev qtdeclarative5-dev libqt5svg5-dev qttools5-dev
