ARG DOCKER_USER=dorgeln
ARG DOCKER_REPO=datascience
ARG DOCKER_TAG=20210307.00000

FROM ${DOCKER_USER}/${DOCKER_REPO}:${DOCKER_TAG}

ADD *.ipynb ${HOME}/