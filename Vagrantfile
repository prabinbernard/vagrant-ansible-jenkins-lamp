# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  #create Web Server
  config.vm.define :client do |client_config|
      client_config.vm.box = "bento/centos-7.3"
      client_config.vm.hostname = "client"
      client_config.vm.network :private_network, ip: "10.0.15.13"
#      client_config.vm.network "forwarded_port", guest: 80, host: 8081
      client_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
  end

  config.vm.define :jenkins do |jenkins_config|
      jenkins_config.vm.box = "bento/ubuntu-16.10"
      jenkins_config.vm.hostname = "jenkins-master"
      jenkins_config.vm.network :private_network, ip: "10.0.15.14"
#      jenkins_config.vm.network "forwarded_port", guest: 80, host: 8080
      jenkins_config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
      end
  end

  config.vm.define :web do |web_config|
      web_config.vm.box = "bento/centos-7.3"
      web_config.vm.hostname = "apache"
      web_config.vm.network :private_network, ip: "10.0.15.11"
#      web_config.vm.network "forwarded_port", guest: 80, host: 8080
      web_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
  end

  config.vm.define :db do |db_config|
      db_config.vm.box = "bento/centos-7.3"
      db_config.vm.hostname = "mariadb"
      db_config.vm.network :private_network, ip: "10.0.15.12"
      db_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
  end
  # create ansible node
  config.vm.define :ansible do |ansible_config|
      ansible_config.vm.box = "ubuntu/trusty64"
      ansible_config.vm.hostname = "ansible"
      ansible_config.vm.network :private_network, ip: "10.0.15.10"
      ansible_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
      ansible_config.vm.provision :shell, path: "bootstrap.sh"
  end


end
