# Import the docker container from Debian with LAMP 5.6
FROM php:5.6-apache

# System and Environment Instructions

RUN apt-get update && \
    apt-get install -y -qq software-properties-common

RUN apt-get install -y -qq wget git lynx

RUN a2enmod rewrite

# App Specific Instructions

RUN rm -rf /var/www/html && \
    mkdir /opt/snafu && \
    ln -s /opt/snafu /var/www/html
COPY app/. /opt/snafu/.

WORKDIR /opt/snafu

RUN wget -O ./composer https://getcomposer.org/download/1.4.2/composer.phar && \
    chmod +x ./composer

RUN ./composer update

RUN echo 'alias ll="ls -la --color=auto"' >> ~/.bashrc && \
    echo 'alias codecept="/opt/snafu/vendor/codeception/codeception/codecept"' >> ~/.bashrc

RUN chown www-data:www-data -R ./

VOLUME ./app /opt/snafu
EXPOSE 80

CMD ["apache2-foreground"]