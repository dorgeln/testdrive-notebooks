.ONESHELL:
SHELL := /bin/bash
DOCKER_USER := dorgeln
DOCKER_REPO := datascience
DOCKER_TAG := latest


binder:
	jupyter-repo2docker --cache-from ${DOCKER_USER}/${DOCKER_REPO}:${DOCKER_TAG} --user-name ${USER} --volume data:data --image-name ${DOCKER_REPO}:${DOCKER_TAG} .
