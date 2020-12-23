FROM jupyter/base-notebook
MAINTAINER Heiner Giefers <giefers.heiner@fh-swf.de>

ADD install_jupyterhub /tmp/install_jupyterhub
ARG JUPYTERHUB_VERSION=master
# install pinned jupyterhub and ensure notebook is installed
RUN python3 /tmp/install_jupyterhub && \
    python3 -m pip install notebook
