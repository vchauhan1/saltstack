mysql_pkg:
  pkg.installed:
    - name: mariadb-server

mysql_conf:
  file.managed:
    - name: /etc/my.cnf.d/server.conf
    - source: salt://mariadb/files/server.cnf
    - user: root
    - group: root
    - mode: 0644
    - require:
      - pkg: mysql_pkg

mysql_service:
  service:
    - name: mariadb
    - running
    - enable: True
    - require:
      - file: mysql_conf
    - watch: 
      - file: mysql_conf


