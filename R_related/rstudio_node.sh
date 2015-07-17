#! /usr/bin/env bash

if [ -f /vagrant/.vagrant/build_rstudio_done ]; then
    echo "rstudio already installed.  Exiting."
    exit
fi

wget -P /tmp/ https://download1.rstudio.org/rstudio-0.99.467-amd64.deb
gdebi --n /tmp/rstudio-0.99.467-amd64.deb

touch /vagrant/.vagrant/build_rstudio_done
