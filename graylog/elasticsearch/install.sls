
oracle-java8-installer:
  pkg.installed:
    - require:
      - pkgrepo: oracle-ppa

elasticsearch:
  pkg.installed:
    - require:
      - pkg: oracle-java8-installer
      - pkgrepo: elasticsearch_repo

elasticsearch:
  service.running:
    - enable: true