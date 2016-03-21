oracle-ppa:
  pkgrepo.managed:
    - humanname: WebUpd8 Oracle Java PPA repository
    - name: deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
    - dist: trusty
    - file: /etc/apt/sources.list.d/webupd8team-java.list
    - keyid: EEA14886
    - keyserver: keyserver.ubuntu.com

oracle-license-select:
  debconf.set:
    - name: oracle-java8-installer
    - data:
        'shared/accepted-oracle-license-v1-1': {'type': 'boolean', 'value': 'true'}

elasticsearch_repo:
  pkgrepo.managed:
    - humanname: Elasticsearch Official Debian Repository
    - name: deb http://packages.elastic.co/elasticsearch/1.7/debian stable main
    - dist: stable
    - key_url: https://packages.elastic.co/GPG-KEY-elasticsearch
    - file: /etc/apt/sources.list.d/elasticsearch-1.7.x.list
