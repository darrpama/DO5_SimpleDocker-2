#!/bin/bash

# mkdir nginx
# cp ../nginx/nginx.conf nginx/nginx.conf
# cp ../server/server.c server.c
# cp ../server/40-fast-fcgi.sh 40-fast-fcgi.sh

docker build -t part4 .

# rm -rf nginx
# rm server.c
# rm 40-fast-fcgi.sh

docker run -d -p 80:81 -v $(pwd)/etc/nginx/ part4

echo -e "\nЖдем запуска контейнера\n"

i=1
sp="/-\|"
echo -n ' '
printf "\bPlease wait -  "
for((a=0; a < 101; a++))
do
    printf "\b${sp:i++%${#sp}:1}"
    sleep 0.05
done
echo -e "\n"

echo -e "\nзапрос на 127.0.0.1:80\n"
curl 127.0.0.1:80
echo -e "\n"
echo -e "\nзапрос на 127.0.0.1:80/status\n"
curl 127.0.0.1:80/status
echo -e "\n"