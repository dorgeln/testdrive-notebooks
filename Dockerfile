ARG DOCKER_USER=dorgeln
ARG DOCKER_REPO=datascience
ARG DOCKER_TAG=20210307.00001

ARG GITHUB_USER=dorgeln
ARG GITHUB_REPO=notebooks

FROM ${DOCKER_USER}/${DOCKER_REPO}:${DOCKER_TAG}

ADD *.ipynb ${HOME}/
