FROM ubuntu
RUN sudo apt-get update -y
RUN sudo apt-get install apache2 -y
RUN rm /var/www/html/index.html
ADD ./website /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
