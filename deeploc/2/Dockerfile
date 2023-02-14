FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip

COPY deeploc-2.0.All.tar.gz .

RUN tar -xvzf deeploc-2.0.All.tar.gz
RUN pip install deeploc-2.0.All.tar.gz