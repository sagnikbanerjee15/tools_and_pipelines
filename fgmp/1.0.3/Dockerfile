FROM condaforge/mambaforge

RUN mamba install -y -c bioconda perl-io-all hmmer blast exonerate augustus emboss perl-ipc-run perl-bioperl perl-io-all
RUN mamba install -y -c anaconda cmake make

RUN mkdir software && cd software && git clone https://github.com/stajichlab/FGMP.git && cd FGMP && perl Makefile.PL && make

ENV PATH $PATH:/software/FGMP/src:/software/FGMP