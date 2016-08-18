# kibana-act-act

Kibana Act-Act

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

## Access to Reverse proxy for Kibana

If you use httpd/mod_proxy_balancer, the setting is here.

```
ProxyPass / balancer://mycluster/
ProxyPassReverse / balancer://mycluster/
<Proxy balancer://mycluster>
  BalancerMember http://localhost:5601
  BalancerMember http://localhost:5602
</Proxy>
```

And access to http://localhost .
