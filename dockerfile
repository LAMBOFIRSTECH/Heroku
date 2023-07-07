FROM nginx:stable-bullseye
LABEL MAINTAINER=Artur
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY source.list /etc/apt/sources.list
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nano && \
    apt-get install -y git 
RUN rm -rf /usr/lib/nginx/html/*
RUN git clone https://github.com/LAMBOFIRSTECH/Heroku.git /usr/share/nginx/html
CMD sed -i -e 's/${NGINX_EXTERNAL_PORT}/${NGINX_INTERNAL_PORT}/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
