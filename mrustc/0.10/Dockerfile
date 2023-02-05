FROM rust

RUN apt-get update
RUN apt-get install -y git make gcc g++ curl zlib1g-dev patch cmake python-is-python3
RUN mkdir /software && \
	cd /software && \
	git clone https://github.com/thepowersgang/mrustc.git 

RUN cd /software/mrustc && make RUSTCSRC 
RUN cd /software/mrustc && make -f minicargo.mk
RUN cd /software/mrustc && make -C run_rustc

#######################################################################################################################################################################
# FCLQC
#######################################################################################################################################################################

RUN mkdir -p /softwares && cd /softwares
RUN cd /softwares && git clone https://github.com/Minhyeok01/FCLQC.git
RUN cd /softwares/FCLQC && cargo build --release

ENV PATH=$PATH:/softwares/FCLQC/target/release