FROM tiangolo/nginx-rtmp:latest

RUN apt-get update && apt-get install -y gettext-base

COPY nginx.conf.template /etc/nginx/templates/nginx.conf.template

ENTRYPOINT ["/bin/sh", "-c", "envsubst < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]