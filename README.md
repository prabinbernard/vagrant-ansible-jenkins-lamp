# Continous-Delivery-Pipeline
  A Continous-Delivery-Pipeline using vagrant, ansible and jenkins.

## Requirments
  Download and install Vagrant and Virtual box.

## Items  
  Vagrant provisions the development environmet with the below items which later
  get configured by ansible.

  - developer desktop
  - lamp
  - jenkins
  - mariadb
  - ansible

## Provision
  To provision the environment first clone the repository locally.

  ```bash
  $ git clone https://github.com/prabinbernard/vagrant-ansible-jenkins-lamp
  ```

  Change directory.

  ```bash
  $ cd vagrant-ansible-jenkins-lamp
  ```

  Execute Vagrant up command.

  ```bash
  $ vagrant up
```

## Web links
  Open the local bowser and paste below links.

  - Application : http://10.0.15.11/
  - Jenkins: http://10.0.15.14:8080
