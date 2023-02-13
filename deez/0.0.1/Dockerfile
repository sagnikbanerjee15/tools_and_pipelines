FROM ubuntu

RUN	apt-get update
RUN apt-get install -y git cmake g++ gcc bzip2 curl openssl libcurl4-gnutls-dev
RUN apt-get install -y libz-dev libbz2-dev
RUN apt-get install -y  libssl-dev

RUN mkdir /software && \
	cd /software && \
	git clone https://github.com/sfu-compbio/deez.git && \
	cd deez && \
	make -j