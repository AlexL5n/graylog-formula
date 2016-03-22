graylog-server-config:
  file.managed:
    - name: /etc/graylog/server/server.conf
    - source: salt://graylog/graylog-server/template/server.conf
    - template: jinja
    - listen_in:
      - service: graylog-server-service
