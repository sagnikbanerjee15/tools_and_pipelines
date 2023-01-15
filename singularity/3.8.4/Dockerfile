#######################################################################################################################################################################
# Singularity
#######################################################################################################################################################################

FROM ubuntu
LABEL maintainer="sagnikbanerjee15@gmail.com" 
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

#######################################################################################################################################################################
# SETUP
#######################################################################################################################################################################

RUN apt-get update 
RUN apt-get install -y \
    build-essential \
    libseccomp-dev \
    pkg-config \
    squashfs-tools \
    cryptsetup \
    curl wget git
    
ARG GOVERSION=1.17.3 
ARG OS=linux 
ARG ARCH=amd64

RUN wget -O /tmp/go${GOVERSION}.${OS}-${ARCH}.tar.gz https://dl.google.com/go/go${GOVERSION}.${OS}-${ARCH}.tar.gz
RUN tar -C /usr/local -xzf /tmp/go${GOVERSION}.${OS}-${ARCH}.tar.gz

ENV PATH /usr/local/go/bin:$PATH

RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.43.0
ENV PATH '$(go env GOPATH)/bin':$PATH

RUN git clone https://github.com/hpcng/singularity.git && \
	cd singularity && \
	git checkout v3.8.4 && \
	./mconfig && \
	cd ./builddir && \
	make && \
	make install



