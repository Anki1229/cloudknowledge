FROM ubuntu:latest
MAINTAINER ankitbhatia788@outlook.com
RUN apt-get update -y
RUN apt-get install -y httpd \
 zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/regna.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip regna.zip
 RUN cp -rvf Regna/* .
 RUN rm -rf Regna regna.zip
 CMD["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80
