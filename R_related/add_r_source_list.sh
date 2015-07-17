sudo cp /vagrant/R_related/r_sources.list /etc/apt/sources.list.d/r_sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

