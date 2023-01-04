# README

## Description

Deploy a client/server messaging system in docker-compose environment.
reader container listens on port 3000 for messages. then it passes the message to writer container on port 37529.
writer container listens on port 37529 to get the message from the reader container. Then it writes the message to S3 bucket with a timestamp.
### To build
make deploy
### To tear down all resources
make clean
### To send a message
Find out IP address of reader container
docker inspect ike-drilling_reader_1 | grep IPAddress
echo test message | nc -N 172.18.0.2 3000
cat /var/bucket/drilling.log


```


