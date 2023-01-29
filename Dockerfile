FROM ubuntu
RUN sudo apt update -y
RUN apt install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
