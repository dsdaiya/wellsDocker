FROM centos

MAINTAINER devendra

ADD dev.repo /etc/yum.repos.d/dev.repo

RUN yum install httpd -y

ADD index.html /var/www/html/index.html

EXPOSE 80

CMD ["httpd","-D","FOREGROUND"]
