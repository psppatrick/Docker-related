#!/bin/sh

#download docker
curl -sSL get.docker.com | sh


#disable and remove swap
dphys-swapfile swapoff
dphys-swapfile uninstall
update-rc.d dphys-swapfile remove
swapon --summary

#add kubernetes repo & key
echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' >> /etc/apt/sources.list.d/kubernetes.list

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

apt update

apt upgrade

apt install -qy kubeadm
