FROM ubuntu

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir /software && \
	cd /software && \
	wget http://sourceforge.net/projects/samcomp/files/sam_comp-0.10.tar.gz

RUN apt-get install -y make g++ gcc
RUN apt-get install -y libz-dev libbz2-dev

RUN cd /software && \
	tar -zvxf sam_comp-0.10.tar.gz && \
	cd sam_comp-0.10 && \
	make