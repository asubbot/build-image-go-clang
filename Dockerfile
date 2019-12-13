# https://hub.docker.com/r/asubbot/build-image-go-clang

from ubuntu:18.04

# Install Golang tools
RUN apt-get update && apt-get install --no-install-recommends -y \
	  software-properties-common git gcc libc6-dev ca-certificates apt-utils
RUN apt-add-repository ppa:longsleep/golang-backports
RUN apt-get update && apt-get install --no-install-recommends -y golang-go

# Install CLANG tools
RUN apt-get update && apt-get install --no-install-recommends -y \
      git cmake clang libssl-dev qtbase5-dev qtdeclarative5-dev libqt5svg5-dev qttools5-dev
