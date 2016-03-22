elasticsearch-config:
  file.managed:
    - name: /etc/elasticsearch/elasticsearch.yml
    - source: salt://graylog/elasticsearch/template/elasticsearch.yml
    - template: jinja
    - listen_in:
      - service: elasticsearch-service
