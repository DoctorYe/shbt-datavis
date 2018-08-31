FROM jupyter/datascience-notebook:8ccdfc1da8d5

MAINTAINER Satrajit Ghosh <satrajit.ghosh@gmail.com>

RUN conda install -y mpld3
ADD install-pkg.R install-pkg.R
RUN R CMD BATCH install-pkg.R

ENV SHELL /bin/bash

COPY . ${HOME}
USER root
RUN chown -R ${NB_USER}:${NB_GID} ${HOME}
USER ${NB_USER}
