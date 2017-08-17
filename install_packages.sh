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

# install vim-syntastic
#  step 1: Install pathogen.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo -e '\n"[ pathogen]' >> ~/.vimrc
echo "execute pathogen#infect()" >> ~/.vimrc
#  step 2: Install syntastic as a Pathogen bundle
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
#  step 3: add recommended vim-syntastic settings to vimrc file
echo -e '\n"[ .vim-syntastic]' >> ~/.vimrc
echo "set statusline+=%#warningmsg#" >> ~/.vimrc
echo "set statusline+=%{SyntasticStatuslineFlag()}" >> ~/.vimrc
echo "set statusline+=%*" >> ~/.vimrc
echo "let g:syntastic_always_populate_loc_list = 1" >> ~/.vimrc
echo "let g:syntastic_auto_loc_list = 1" >> ~/.vimrc
echo "let g:syntastic_check_on_open = 1" >> ~/.vimrc
echo "let g:syntastic_check_on_wq = 0" >> ~/.vimrc
