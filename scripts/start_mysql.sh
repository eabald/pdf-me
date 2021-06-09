#!/bin/bash


docker build -t pdf-me-database $PWD/databases/sql/.
docker stop pdf-me-database-1
docker rm pdf-me-database-1
docker run -d \
  --name pdf-me-database-1 \
  --network=epidentity-network \
  -e MYSQL_DATABASE=pdf_me \
  -e MYSQL_USER=pdf_me_user \
  -e MYSQL_PASSWORD=secret \
  -p 3306:3306 \
  pdf-me-database:latest \
  --default-authentication-plugin=mysql_native_password
