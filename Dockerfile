FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN rm /var/www/html/index.html
ADD ./website /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
