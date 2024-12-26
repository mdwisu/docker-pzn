docker create --name contohredis redis:latest
docker start contohredis
docker logs contohredis
docker logs -f contohredis