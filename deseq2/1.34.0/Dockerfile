#######################################################################################################################################################################
# DESeq2
#######################################################################################################################################################################

FROM condaforge/mambaforge
MAINTAINER Sagnik Banerjee <sagnikbanerjee15@gmail.com>
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

# Install DESeq2 and FactoMineR package  
RUN mamba install -y -c bioconda bioconductor-deseq2=1.34.0