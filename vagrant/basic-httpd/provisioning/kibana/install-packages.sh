#!/bin/sh

yum install -y deltarpm

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
cp /vagrant/provisioning/kibana/kibana.repo /etc/yum.repos.d
yum -y install kibana

cd /tmp
wget https://download.elasticsearch.org/elastic/sense/sense-latest.tar.gz
/opt/kibana/bin/kibana plugin -i sense -u file:///tmp/sense-latest.tar.gz
chown -R kibana:kibana /opt/kibana
