Vagrant settings
================
# Tested environment

(1) Host: Windows 7, Virtualbox 4.3.12 http://download.virtualbox.org/virtualbox/4.3.12/ , Vagrant 1.7.2 https://releases.hashicorp.com/vagrant/1.7.2/
(2) Host: Windows 7, Virtualbox 5.1.2, Vagrant 1.8.5.  To solve shared folder bug, checkout: https://github.com/mitchellh/vagrant/issues/6598

# Installation steps

- Install Virtualbox
- Install Vagrant
- Copy [project_home]/Vagrantfile.sample to [project_home]/Vagrantfile
- Edit [project_home]/Vagrantfile to set the sync folders of host and guest
  machine, if needed (at around line 41)
- Edit [project_home]/Vagrantfile to set the memory and CPU numbers (at around
  line 55)
- Copy [project_home]/setting_files/git_settings/.gitconfig.sample to 
  [project_home]/setting_files/git_settings/.gitconfig, edit the file to enter 
  your git user name and email address
- Copy [project_home]/mariadb_related/mariadb_install.sh.sample to
  [project_home]/mariadb_related/mariadb_install.sh, edit the file
  to enter MariaDB's root password
- Copy [project_home]/setting_files/vim_settings/.vim/auto_headers/python_header.sample
  to [project_home]/setting_files/vim_settings/.vim/auto_headers/python_header,
  edit the file to enter your name and email.
- Copy [project_home]/setting_files/vim_settings/.vim/auto_headers/r_header.sample
  to [project_home]/setting_files/vim_settings/.vim/auto_headers/r_header,
  edit the file to enter your name and email.
- Change directory to the project home directory and run `vagrant up --provision`

# Known issues
- It seems Virtualbox 4.3.30 has a Shared folder Mounting bug.
