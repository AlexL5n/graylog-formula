graylog-web-install:
  pkg.installed:
    - name: graylog-web

graylog-web-service:
  service.running:
    - name: graylog-web
    - enable: true
