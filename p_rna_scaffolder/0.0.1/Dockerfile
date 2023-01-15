###################################################################################################################################################################################################
# P_RNA_Scaffolder
###################################################################################################################################################################################################
FROM ghcr.io/sagnikbanerjee15/dockerized_tools_and_pipelines/star:2.7.9a
LABEL maintainer="sagnikbanerjee15@gmail.com" 
LABEL org.opencontainers.image.source https://github.com/sagnikbanerjee15/dockerized_tools_and_pipelines

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

# Update base image and install software
RUN /bin/sh -c export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install -y --no-install-recommends       git       ca-certificates       bioperl &&     apt-get autoremove &&     apt-get clean # buildkit
RUN /bin/sh -c cd / &&     git clone https://github.com/CAFS-bioinformatics/P_RNA_scaffolder.git &&     chmod +x /P_RNA_scaffolder/* &&     ln -s /P_RNA_scaffolder/P_RNA_scaffolder.sh /usr/local/bin/p_rna_scaffolder # buildkit
ENV LC_ALL=C.UTF-8 LANGUAGE=C.UTF-8 LANG=C.UTF-8
