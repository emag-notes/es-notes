# basic-httpd with Docker

Simple Elasticsearch/Logstash/Kibana Stack

## Run containers

``` sh
$ docker-compose up -d
```

## Indexing Data

Put combined format Apache httpd access_log to Logstash.

``` sh
$ nc localhost 5000 < /path/to/access_log
```

See the logs.

``` sh
$ docker-compose logs -f elasticsearch
```

## Access to Kibana

http://localhost:5601
