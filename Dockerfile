FROM dorgeln/datascience:latest

ADD *.ipynb ${HOME}/
RUN mkdir -p data/{in,out}