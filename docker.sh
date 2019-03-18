#!/bin/bash

#Uninstall old versions
sudo apt-get remove -y docker docker-engine docker.io containerd runc

#Update the apt package index
sudo apt-get update

#Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

#Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

#post installation setups: run dockers without sudo 
sudo groupadd docker
sudo usermod -aG docker $USER

