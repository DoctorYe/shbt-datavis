FROM continuumio/miniconda3

RUN conda update -y conda
RUN conda install -y pip pandas statsmodels scikit-learn mpld3 seaborn
RUN conda install -c r r-essentials
RUN pip install rpy2

ENV SHELL /bin/bash

CMD ["/bin/bash"]
