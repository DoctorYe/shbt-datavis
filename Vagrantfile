VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT

# sudo apt-get update
# sudo apt-get install -qq git r-base r-base-dev
# sudo R -e "install.packages('psych', repos='http://cran.us.r-project.org')"
# sudo R -e "install.packages('TeachingDemos', repos='http://cran.us.r-project.org')"

# wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
# chmod +x miniconda.sh
# ./miniconda.sh -b
# echo "export PATH=$HOME/miniconda/bin:\\$PATH" >> .bashrc

# source .bashrc

# #install nipype dependencies
# $HOME/miniconda/bin/conda update --yes conda
# $HOME/miniconda/bin/conda install --yes pip matplotlib pandas statsmodels ipython-notebook bokeh
# $HOME/miniconda/bin/pip install mpld3 --use-mirrors
# $HOME/miniconda/bin/pip install https://github.com/mwaskom/seaborn/archive/master.zip
# $HOME/miniconda/bin/pip install rpy2 --use-mirrors

cd /vagrant

nohup $HOME/miniconda/bin/ipython notebook --ip="*" --no-browser &

SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :engine do |engine_config|

    engine_config.vm.box = "datavis"
    #engine_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    engine_config.vm.box_url = "https://dl.dropbox.com/s/rvcj23sgb7q5k9m/shbt-dataviz.box"

    engine_config.vm.network :private_network, ip: "192.168.100.20"
    engine_config.vm.hostname = 'datavis'

    engine_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
      vb.customize ["modifyvm", :id, "--memory", "4096"]
      vb.customize ["modifyvm", :id, "--cpus", "1"]
    end

    engine_config.vm.provision "shell", :privileged => false, inline: $script,
      run: "always"
  end
end
