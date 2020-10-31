FROM ubuntu:latest
MAINTAINER ankitbhatia788@outlook.com
RUN apt-get update -y
RUN apt-get install -y httpd \
 zip \
 unzip
 ADD https://www.free-css.com/free-css-templates/page13/lime-light.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip lime-light.zip
 RUN cp -rvf markups-lime-light/*.
 RUN rm -rf _MACOSX markups-lime-light lime-light.zip
 CMD["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
