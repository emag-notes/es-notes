# es-notes

Notes for Elasticsearch

## Usage

``` sh
$ vagrant up
```

If you are behind a proxy, specify your proxy host to shell.args in Vagrantfile.

``` ruby
config.vm.provision :shell do |shell|
  shell.path = "./provisioning/common/proxy.sh"
  shell.args = "http://proxy.example.com"
end
```
