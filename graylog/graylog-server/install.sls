apt-transport-https:
  pkg.installed

graylog-server-install:
  pkg.installed:
    - name: graylog-server

graylog-server-service:
  service.running:
    - name: graylog-server
    - enable: true
