FROM andrewosh/binder-base

RUN conda update -y conda
ENV PATH $HOME/anaconda2/envs/python3/bin:$PATH
RUN conda install -y pip pandas statsmodels scikit-learn mpld3 seaborn
RUN conda install -c r r-essentials rpy2

ENV SHELL /bin/bash

CMD ["/bin/bash"]
