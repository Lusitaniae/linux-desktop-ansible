# linux-desktop-ansible

Ansible configuration for a development environment based on Linux Mint.


## Ansible Setup

Bootstrap system with:

        cd ~
        wget https://raw.githubusercontent.com/Lusitaniae/linux-desktop-ansible/master/install.sh
        chmod u+x install.sh
        ./install.sh

Update vault encrypted variables

        cd ~/workspace/linux-desktop-ansible

        # check which encrypted variables do you need
        cat provision/group_vars/all/vault.example

        ./ansible-vault edit provision/group_vars/all/vault.yml

## Run Ansible for Realz

        cd ~/workspace/linux-desktop-ansible

        # if running for first time use which runs with "ask sudo password" option
        ./up-first-time.sh

        # on subsequent times, use this (since we've added our user to sudo and don't need to prompt anymore)
        ./up.sh


## Installed Software

List of included roles from playbook:

        - kosssi.gitconfig

        # Web Server
        - jdauphant.nginx

        # Languages and package managers
        - geerlingguy.nodejs
        - geerlingguy.php
        - geerlingguy.composer
        - rvm_io.ruby
        - joshualund.golang

        # Desktop software
        - gantsign.atom
        - gantsign.gitkraken
        - cmprescott.chrome

        # Containers
        - angstwad.docker_ubuntu
        - gantsign.kubernetes


Check both playbook.yml and roles/common/tasks/core_packages to see in detail everything that is installed.

## Inspiration

* https://github.com/briangershon/linux-desktop-ansible
