# FROM  centos:latest

# RUN yum install -y httpd zip unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 22

# FROM  centos:latest
# RUN yum install -y httpd \
#  zip\
#  unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
#  WORKDIR /var/www/html/
#  RUN unzip shine.zip
#  RUN cp -rvf shine/* .
#  RUN rm -rf shine shine.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80

## chatgpt docker file 

# Use Ubuntu as the base image
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 wget unzip

WORKDIR /var/www/html/
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip
RUN unzip shine.zip
RUN cp -rvf shine/* .
RUN rm -rf shine shine.zip

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80 22
