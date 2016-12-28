#!/bin/sh

VERSION=5.0.0-alpha5

yum -y install java-1.8.0-openjdk-devel
yum -y install https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/rpm/elasticsearch/${VERSION}/elasticsearch-${VERSION}.rpm
