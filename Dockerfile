FROM andrewosh/binder-base

USER root
apt-get update
apt-get install xvfb-run

USER main
RUN conda update -y conda
RUN conda install -y pip pandas statsmodels scikit-learn mpld3 seaborn bokeh
RUN conda update -y scipy
RUN conda install -c r -y r-essentials rpy2
ADD install-pkg.R install-pkg.R
RUN R CMD BATCH install-pkg.R

ENV SHELL /bin/bash

CMD ["/bin/bash"]
