gdebi:
  pkg.installed:
    - onlyif:
      - apt-cache show graylog-server | grep "Version:" | awk -F ":" '$2 ~ /^ 1\.3.*$/ { exit 1 }'

/tmp/graylog-1.3-repository-ubuntu14.04_latest.deb:
  file.managed:
    - source: salt://graylog/files/graylog-1.3-repository-ubuntu14.04_latest.deb
    - require:
      - pkg: gdebi
    - onlyif:
      - apt-cache show graylog-server | grep "Version:" | awk -F ":" '$2 ~ /^ 1\.3.*$/ { exit 1 }'


gdebi -n graylog-1.3-repository-ubuntu14.04_latest.deb:
  cmd.run:
    - require:
      - pkg: gdebi
    - onlyif:
      - apt-cache show graylog-server | grep "Version:" | awk -F ":" '$2 ~ /^ 1\.3.*$/ { exit 1 }'

apt-get update:
  cmd.run:
    - onlyif:
      - apt-cache show graylog-server | grep "Version:" | awk -F ":" '$2 ~ /^ 1\.3.*$/ { exit 1 }'

