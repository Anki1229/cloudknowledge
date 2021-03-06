FROM centos:latest
MAINTAINER ankitbhatia788@outlook.com
RUN yum install -y httpd \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/regna.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip regna.zip
RUN cp -rvf Regna/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
