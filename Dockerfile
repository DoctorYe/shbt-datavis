FROM jupyter/scipy-notebook:786611348de1

MAINTAINER Satrajit Ghosh <satrajit.ghosh@gmail.com>

RUN conda install -y pip pandas statsmodels scikit-learn mpld3 seaborn bokeh
RUN conda install -c r -y r-essentials rpy2
ADD install-pkg.R install-pkg.R
RUN R CMD BATCH install-pkg.R

ENV SHELL /bin/bash

COPY . ${HOME}
USER root
RUN chown -R ${NB_USER}:${NB_USER} ${HOME}
USER ${NB_USER}
