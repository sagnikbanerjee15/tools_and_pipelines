#######################################################################################################################################################################
# LOCALIZER
#######################################################################################################################################################################

FROM ubuntu
LABEL maintainer="sagnikbanerjee15@gmail.com" 
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

#######################################################################################################################################################################
# LOCALIZER
#######################################################################################################################################################################

RUN apt-get update
RUN apt-get install -y wget python3 python3-pip
RUN pip3 install biopython

RUN mkdir /software && \
    cd /software && \
    wget https://github.com/JanaSperschneider/LOCALIZER/archive/refs/tags/v1.0.5.tar.gz && \
    tar -xvzf v1.0.5.tar.gz && \
    chmod -R 755 LOCALIZER-1.0.5

RUN apt-get install -y zip
RUN cd /software/LOCALIZER-1.0.5/Scripts && \
    unzip weka-3-6-12.zip
    
RUN cd /software/LOCALIZER-1.0.5/Scripts && \
    tar -xvzf emboss-latest.tar.gz && \
    cd EMBOSS-6.5.7/ && \
    ./configure --without-x && \
    make
    
RUN apt-get install -y default-jre