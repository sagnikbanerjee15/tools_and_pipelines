###################################################################################################################################################################################################
# CodAn
###################################################################################################################################################################################################

FROM condaforge/mambaforge
LABEL maintainer="sagnikbanerjee15@gmail.com" 
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

RUN mamba install -y -c bioconda codan=1.2

RUN apt-get update
RUN apt-get install git zip
RUN mkdir /software && \
	cd /software && \
	git clone https://github.com/pedronachtigall/CodAn.git && \
	cd CodAn/models

RUN cd /software/CodAn/models && for file in *zip; do unzip ${file}; done
