#!/bin/sh

\cp /vagrant/provisioning/es/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
\cp /vagrant/provisioning/es/jvm.options /etc/elasticsearch/jvm.options

mkdir /etc/tuned/elasticsearch
cp /vagrant/provisioning/es/tuned.conf /etc/tuned/elasticsearch
tuned-adm profile elasticsearch
