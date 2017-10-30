include:
  - mariadb.database
db_user:
  mysql_user.present:
    - name: prod-db
    - host: '*'
    - password_hash: '{{ pillar['mysql']['prod-password-hash'] }}'
    - connection_charset: utf8
    - saltenv:
      LC_ALL: "en_US.utf8"
    - require:
      - mysql_database: stg_databases
