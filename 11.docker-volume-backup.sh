docker container stop mongovolume

C:\coding\docker\docker-pzn\backup

docker container create --name nginxbackup --mount "type=bind,source=C:\coding\docker\docker-pzn\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# v1
docker container exec -it nginxbackup /bin/bash
tar cvf /backup/backup.tar.gz /data
# v2
docker container exec -it nginxbackup tar -zcvf /backup/mongodata.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=C:\coding\docker\docker-pzn\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

docker container start mongovolume