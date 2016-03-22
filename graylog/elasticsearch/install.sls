
oracle-java8-installer:
  pkg.installed:
    - require:
      - pkgrepo: oracle-ppa

elasticsearch-install:
  pkg.installed:
    - name: elasticsearch
    - require:
      - pkg: oracle-java8-installer

elasticsearch-service:
  service.running:
    - name: elasticsearch
    - enable: true