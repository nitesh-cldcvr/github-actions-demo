#using latest ubuntu image from docker hub
FROM ubuntu:latest

#installatio of nginx application
RUN \
  apt-get update && \
  apt-get install -y nginx curl telnet && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx


CMD ["nginx"]

#exposing port 80 of the container
EXPOSE 80
