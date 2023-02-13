FROM ubuntu

RUN apt-get update
RUN apt-get install -y git libboost-all-dev
RUN apt-get install -y cmake make g++ gcc


RUN mkdir /software && \
	cd /software &&\
	git clone https://github.com/rcanovas/libCSAM.git && \
	cd libCSAM && \
	make

ENV PATH=${PATH}:/software/libCSAM