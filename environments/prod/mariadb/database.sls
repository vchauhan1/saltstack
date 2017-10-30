include:
  - mariadb
MySQL-python:
  pkg.installed

stg_databases:
  mysql_database.present:
    - name: proddb
    - require:
      - pkg: MySQL-python
      - service: mysql_service

databases_to_remove:
  mysql_database.absent:
    - name: test
    - require:
      - pkg: MySQL-python
      - service: mysql_service
