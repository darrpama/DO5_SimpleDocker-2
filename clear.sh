#!/bin/bash

rm -rf 03/nginx

docker rm -f part3
docker rm -f part4
docker rmi -f part3
docker rmi -f part4
