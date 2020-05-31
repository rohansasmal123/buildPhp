FROM centos:7

RUN yum update -y
RUN yum install php -y
RUN yum install httpd -y

COPY . /var/www/html/
WORKDIR /var/www/html/
RUN rm Dockerfile
CMD /usr/sbin/httpd -DFOREGROUND
EXPOSE 80
