mariadb-client:
  pkg.installed

mariadb-server:
  pkg.installed

php-mysql:
  pkg.installed

/tmp/createdbusercrud.sql:
  file.managed:
    - mode: 600
    - source: salt://mariadb/createdbusercrud.sql
'cat /tmp/createdbusercrud.sql|mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases'|sudo mariadb -u root|grep '^games$'"


