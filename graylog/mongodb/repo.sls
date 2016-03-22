graylog-mongodb-repo:
  cmd.run:
    - name: |
        apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
        echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
        apt-get update
    - onlyif:
      - apt-cache show mongodb-org | grep "Version:" | awk -F ":" '$2 ~ /^ 3.*$/ { exit 1 }'
