#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible


# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.10  ansible
10.0.15.11  web1
10.0.15.12  db
10.0.15.13  client
10.0.15.14  jenkins-master
EOL

export ANSIBLE_HOST_KEY_CHECKING=False
# create the ssh keys as user vagrant
su - vagrant -c 'ssh-keygen -t rsa -N "" -f "/home/vagrant/.ssh/id_rsa"'

# run the ansible playbooks as user vagrant
su - vagrant -c 'ANSIBLE_CONFIG=/vagrant/ansible.cfg ansible-playbook /vagrant/ssh-addkey.yml'
su - vagrant -c 'ANSIBLE_CONFIG=/vagrant/ansible.cfg ansible-playbook /vagrant/site.yml'
