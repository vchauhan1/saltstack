include:
  - mariadb.database
querydb:
  mysql_query.run:
    - database: proddb
    - query: "create table first_table(id INT NOT NULL AUTO_INCREMENT, name VARCHAR(100) NOT NULL, PRIMARY KEY ( id ));"
    - output: "/tmp/create_first_table.txt"
    - require:
      - mysql_database: stg_databases

querydbsecond:
  mysql_query.run:
    - database: proddb
    - query: "create table second_table(id INT, address VARCHAR(100));"
    - output: "/tmp/create_second_table.txt"
    - require:
      - mysql_database: stg_databases
