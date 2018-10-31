#!/bin/bash


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install -y docker-ce



sudo apt-get install -y git

sudo usermod -a -G docker vagrant
sudo apt-get -y install git
sudo git clone https://github.com/zeineldin/docker-nginx-sandbox.git
cd docker-nginx-sandbox
sudo docker build -t testnginx .
sudo docker run -d -p 80:80 testnginx

