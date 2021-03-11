FROM dorgeln/datascience:20210307.00002

# ADD *.ipynb ${HOME}/

RUN git clone https://github.com/dorgeln/notebooks.git notebooks

WORKDIR notebooks

