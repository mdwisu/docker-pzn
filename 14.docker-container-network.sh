docker network create --driver bridge mongonetwork

docker container create --name mongodb --publish 27018:27017 --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=dwi --env MONGO_INITDB_ROOT_PASSWORD=dwi mongo:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://dwi:dwi@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb






