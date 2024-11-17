FROM nginx

COPY nginx.conf /etc/nginx/
COPY entrypoint.sh /home/

WORKDIR /home/

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1

CMD ["sh", "entrypoint.sh"]