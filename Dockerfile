FROM ubuntu:14.04
MAINTAINER Saan Kim <kssan99@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

VOLUME [ "/data", "etc/nginx/site-enabled", "/var/log/nginx" , "/usr/share/nginx/html" ]

WORKDIR /etc/nginx

CMD [ "nginx" ]

EXPOSE 80
EXPOSE 443