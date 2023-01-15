#######################################################################################################################################################################
# Polyester
#######################################################################################################################################################################

FROM condaforge/mambaforge
MAINTAINER Sagnik Banerjee <sagnikbanerjee15@gmail.com>
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

# Install polyester  
RUN mamba install -y -c bioconda bioconductor-polyester