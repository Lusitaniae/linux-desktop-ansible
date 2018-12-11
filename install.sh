#!/bin/sh
sudo apt-get install  -y git python python-yaml python-jinja2 aptitude
cd ~
mkdir workspace
cd workspace
git clone https://github.com/Lusitaniae/linux-desktop-ansible.git  linux-desktop-ansible
