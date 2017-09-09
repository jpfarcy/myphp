FROM debian
RUN apt-get update
RUN apt-get -y install apache2 libapache2-mod-php php
WORKDIR /var/www/html

ADD myapp.php /var/www/html

EXPOSE 80

CMD apache2ctl -D FOREGROUND
