#!/usr/bin/env bash

# add repository for the installation of gcc-4.9, g++-4.9, and cpp-4.9
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update

# install apt packages
cat /vagrant/apt_package_to_install.list | xargs sudo apt-get install -y

# install MariaDB server and client
/vagrant/mariadb_related/mariadb_install.sh

# install RStudio and R packages
# need to update R to newer versions before installing packages
sudo cp /vagrant/R_related/r_sources.list /etc/apt/sources.list.d/r_sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade -y
/vagrant/R_related/rstudio_node.sh
/vagrant/R_related/r_packages.sh

# install Python packages
pip install --upgrade distribute
cat /vagrant/python_related/pip_requirements.txt | xargs sudo pip install

sudo apt-get -y autoremove

