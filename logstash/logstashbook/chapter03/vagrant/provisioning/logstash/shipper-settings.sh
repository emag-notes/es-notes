#!/bin/sh

\cp /vagrant/provisioning/logstash/${HOSTNAME}.conf /etc/logstash/conf.d/logstash.conf

setfacl -m g:logstash:r /var/log/messages /var/log/secure
