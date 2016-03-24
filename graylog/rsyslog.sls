graylog-rsyslog-config:
  file.managed:
    - name: /etc/rsyslog.d/90-graylog.conf
    - source: salt://graylog/files/90-graylog.conf
    - template: jinja
    - listen_in:
      - service: graylog-rsyslog-service

graylog-rsyslog-service:
  service.running:
    - name: rsyslog
    - enable: true