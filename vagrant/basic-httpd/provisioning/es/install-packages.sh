#!/bin/sh

VERSION=2.3.4

yum -y install java-1.8.0-openjdk-devel
yum -y install https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/rpm/elasticsearch/${VERSION}/elasticsearch-${VERSION}.rpm
