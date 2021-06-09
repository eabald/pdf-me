#!/bin/bash

docker build -t pdf-me-redis $PWD/databases/redis/.
docker stop pdf-me-redis-1
docker rm pdf-me-redis-1
docker run --name pdf-me-redis-1 -d -p 6379:6379 pdf-me-redis
