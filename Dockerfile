FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y apache2
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y php
COPY . var/www/html
WORKDIR /var/www/html

EXPOSE 81/tcp
CMD service apache2 start && bash