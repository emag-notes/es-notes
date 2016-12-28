#!/bin/sh

yum install -y deltarpm

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
cp /vagrant/provisioning/kibana/kibana.repo /etc/yum.repos.d
yum clean all
yum -y install kibana
