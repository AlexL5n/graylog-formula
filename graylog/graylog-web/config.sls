graylog-web-config:
  file.managed:
    - name: /etc/graylog/web/web.conf
    - source: salt://graylog/graylog-web/template/web.conf
    - template: jinja
    - listen_in:
      - service: graylog-web-service
