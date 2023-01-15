###################################################################################################################################################################################################
# fungal_genome_assemblies_and_annotation
###################################################################################################################################################################################################

FROM ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/star:2.7.9a
LABEL maintainer="sagnikbanerjee15@gmail.com" 
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

###################################################################################################################################################################################################
# Update base image and install software
###################################################################################################################################################################################################

RUN apt-get -y update
RUN apt-get -y install git python3 wget

###################################################################################################################################################################################################
# fungal_genome_assemblies_and_annotation 0.0.1
###################################################################################################################################################################################################

COPY marker /dev/null
RUN mkdir -p /softwares && \
	cd /softwares && \
	git clone https://github.com/sagnikbanerjee15/fungal_genome_assemblies_and_annotation.git && \
	cd fungal_genome_assemblies_and_annotation/src && \
	chmod a+x *

ENV PATH $PATH:/softwares/fungal_genome_assemblies_and_annotation/src
