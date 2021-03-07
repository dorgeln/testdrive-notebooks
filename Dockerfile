FROM dorgeln/scipy-notebook:latest

ADD *.ipynb ${HOME}/
RUN mkdir -p data/{in,out}