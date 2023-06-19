FROM nginx
RUN apt-get update 
RUN apt-get install gcc -y libfcgi-dev spawn-fcgi 
COPY nginx.conf /etc/nginx/
COPY server.c /home/
COPY entrypoint.sh /home/
WORKDIR /home/
CMD ["sh", "entrypoint.sh"]