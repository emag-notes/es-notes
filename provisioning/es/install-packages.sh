#!/bin/sh

VERSION=2.2.0

yum -y install java-1.8.0-openjdk-devel
yum -y install https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/rpm/elasticsearch/${VERSION}/elasticsearch-${VERSION}.rpm

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
cp /vagrant/provisioning/es/kibana.repo /etc/yum.repos.d
yum -y install kibana

cd /tmp
wget https://download.elasticsearch.org/elastic/sense/sense-latest.tar.gz
/opt/kibana/bin/kibana plugin -i sense -u file:///tmp/sense-latest.tar.gz
chown -R kibana:kibana /opt/kibana
