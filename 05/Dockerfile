FROM nginx
RUN useradd -m user
RUN  apt-get update && apt-get install -y \
	gcc \
	libfcgi-dev \
	spawn-fcgi \
	&& rm -rf /var/lib/apt/lists
     
COPY nginx.conf /etc/nginx/
COPY server.c /home/
COPY entrypoint.sh /home/
WORKDIR /home/
# USER user
# HEALTHCHECK CMD curl --fail http://localhost:80 || exit 1 
CMD ["sh", "entrypoint.sh"]