FROM mysql:8

ENV MYSQL_ROOT_PASSWORD secret

COPY sql_scripts/ /docker-entrypoint-initdb.d/
