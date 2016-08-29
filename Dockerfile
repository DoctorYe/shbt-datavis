FROM andrewosh/binder-base

RUN conda update -y conda
RUN conda install -y pip pandas statsmodels scikit-learn mpld3 seaborn bokeh
RUN conda install -c r -y r-essentials rpy2

ENV SHELL /bin/bash

CMD ["/bin/bash"]
