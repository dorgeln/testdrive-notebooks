<<<<<<< Updated upstream
ARG DOCKER_USER=dorgeln
ARG DOCKER_REPO=datascience
ARG DOCKER_TAG=20210307.00001

ARG GITHUB_USER=dorgeln
ARG GITHUB_REPO=notebooks

FROM ${DOCKER_USER}/${DOCKER_REPO}:${DOCKER_TAG}

ARG NB_USER=auser 
ARG NB_UID=1000
ARG NB_GROUPS="adm,kvm,wheel,network,uucp,users" # Allow user to use su & sudo
# ARG NB_GROUPS="users" # Normal user permission


RUN useradd -m --uid ${NB_UID} -G ${NB_GROUPS} ${NB_USER}

ENV USER ${NB_USER}
ENV HOME /home/${USER}

WORKDIR ${HOME}
USER ${USER} 
RUN ln -s ${NODE_PATH} ${HOME}/node_modules

RUN git clone https://github.com/dorgeln/notebooks.git notebooks
WORKDIR ${HOME}/notebooks

=======
ARG DOCKER_USER=dorgeln \
    DOCKER_REPO=datascience \
    DOCKER_TAG=20210307.00002 \
    GITHUB_USER=dorgeln \
    GITHUB_REPO=notebooks

FROM ${DOCKER_USER}/${DOCKER_REPO}:${DOCKER_TAG}

# ADD *.ipynb ${HOME}/

RUN git clone https://github.com/dorgeln/notebooks.git notebooks

WORKDIR notebooks
>>>>>>> Stashed changes
