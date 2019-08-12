# pika-centos6_dockerfile
pika-centos6_dockerfile

build a pika image based on centos6

DockerHub：https://cloud.docker.com/repository/docker/jackchow/pika-centos6

run the container
docker run --name "PIKA" --rm -v /pika-data/db:/opt/pika-v2.3.6/db -p 9221:9221 pika:v2.3.6 pika -c /opt/pika-v2.3.6/conf/pika.conf
