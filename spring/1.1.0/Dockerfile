FROM condaforge/mambaforge

RUN conda config --add channels defaults && \
	conda config --add channels bioconda && \
	conda config --add channels conda-forge && \
	mamba install -y spring