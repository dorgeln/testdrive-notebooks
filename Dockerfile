ARG DOCKER_USER=dorgeln \
    DOCKER_REPO=datascience \
    DOCKER_TAG=20210307.00002 \
    GITHUB_USER=dorgeln \
    GITHUB_REPO=notebooks

FROM ${DOCKER_USER}/${DOCKER_REPO}:${DOCKER_TAG}

# ADD *.ipynb ${HOME}/

RUN git clone https://github.com/dorgeln/notebooks.git notebooks

WORKDIR notebooks

