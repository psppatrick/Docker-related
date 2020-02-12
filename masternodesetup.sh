#!/bin/sh

kubeadm config images pull -v3

kubeadm init --token-ttl=0

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

