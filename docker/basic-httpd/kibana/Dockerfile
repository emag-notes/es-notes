FROM kibana:4.5.3

RUN apt-get update && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

RUN wget -q -O /tmp/sense-latest.tar.gz https://download.elasticsearch.org/elastic/sense/sense-latest.tar.gz
RUN /opt/kibana/bin/kibana plugin -i sense -u file:///tmp/sense-latest.tar.gz

ENTRYPOINT ["/tmp/entrypoint.sh"]
