##Python for Exploratory Computing Webpage

Forked from [Mark Bakker's original notebooks](https://github.com/mbakker7/exploratory_computing_with_python) and tuned for the SHBT class.

To launch the tutorial click here: [![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/satra/shbt-datavis)

Please visit the webpage of this project <a href="http://satra.cogitatum.org/shbt-datavis/">here</a>.

INSTALLATION

1. Manual install:

- Install Anaconda or Miniconda
- install R and the packages (psych, TeachingDemos)
- conda update --yes conda
- conda install --yes pip matplotlib pandas statsmodels ipython-notebook bokeh
- pip install mpld3 rpy2 --use-mirrors
- pip install https://github.com/mwaskom/seaborn/archive/master.zip
- Download [SHBT-DataVis](https://github.com/satra/shbt-datavis/archive/master.zip) and unzip
- Goto unzipped directory
- start ipython notebook

2. Using vagrant:

Note: This will download a 1 GB download on the initial `vagrant up` command.

- Install [Virtualbox](https://www.virtualbox.org/)
- Install [Vagrant](http://www.vagrantup.com/)
- Download [SHBT-DataVis](https://github.com/satra/shbt-datavis/archive/master.zip) and unzip
- Open terminal
- Goto unzipped directory
- type: vagrant up
- open browser and point to http://192.168.100.20:8888
- after you are done, you can type: `vagrant halt` to stop the virtual machine
- to restart simply go back to the directory and type: `vagrant up` 
