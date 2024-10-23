FROM httpd:alpine

RUN apk update && \
    apk add --no-cache curl

COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/backend.vhost.conf /usr/local/apache2/conf/vhosts/backend.vhost.conf

EXPOSE 80
