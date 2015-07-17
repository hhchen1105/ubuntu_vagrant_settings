Vagrant settings
================
# Tested environment

- Host: Windows 7, processor: Intel i7 CPU 2.67GHz, 2.79GHz, 16GB RAM
- Virtualbox 4.3.12
- Vagrant 1.7.2

# Installation steps

- Install Virtualbox
- Install Vagrant
- Copy [project_home]/setting_files/git_settings/.gitconfig.sample to 
  [project_home]/setting_files/git_settings/.gitconfig, edit the file to enter 
  your git user name and email address
- Copy [project_home]/setting_files/mysql_related/mysql_install.sh.sample to
  [project_home]/setting_files/mysql_related/mysql_install.sh, edit the file
  to enter MySQL's root password
- Copy [project_home]/setting_files/vim_settings/auto_headers/python_header.sample
  to [project_home]/setting_files/vim_settings/auto_headers/python_header,
  edit the file to enter your name and email.
- Copy [project_home]/setting_files/vim_settings/auto_headers/r_header.sample
  to [project_home]/setting_files/vim_settings/auto_headers/r_header,
  edit the file to enter your name and email.
- Change directory to the project home directory and run `vagrant up --provision`