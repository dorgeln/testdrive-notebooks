.ONESHELL:
SHELL := /bin/bash
DOCKER_USER := dorgeln
DOCKER_REPO := datascience
DOCKER_TAG := latest

build:
	jupyter-repo2docker --no-run --user-name ${USER} --image-name ${DOCKER_REPO}-binder:${DOCKER_TAG} .

run:
	jupyter-repo2docker --user-name ${USER} --volume data:data --image-name ${DOCKER_REPO}-binder:${DOCKER_TAG} .

bash: build
	docker run -it ${DOCKER_REPO}-binder:${DOCKER_TAG} bash
