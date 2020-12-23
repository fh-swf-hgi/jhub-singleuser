FROM jupyter/base-notebook
MAINTAINER Heiner Giefers <giefers.heiner@fh-swf.de>

ADD install_jupyterhub.py /tmp/install_jupyterhub.py
ARG JUPYTERHUB_VERSION=master
# install pinned jupyterhub and ensure notebook is installed
RUN python3 /tmp/install_jupyterhub.py && \
    python3 -m pip install notebook
