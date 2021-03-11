.ONESHELL:
SHELL := /bin/bash
DOCKER_USER := dorgeln
DOCKER_REPO := datascience
DOCKER_TAG := latest


binder:
	jupyter-repo2docker --user-name ${USER} --volume data:data --image-name ${DOCKER_REPO}-binder:${DOCKER_TAG} .
