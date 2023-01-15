#######################################################################################################################################################################
# ZPAQ
#######################################################################################################################################################################

FROM condaforge/mambaforge
LABEL maintainer="sagnikbanerjee15@gmail.com" 
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y time

RUN mamba install -c sbu-hpc zpaq=7.15