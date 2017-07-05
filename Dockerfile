# Import the docker container from Debian with LAMP 5.6
FROM php:5.6-apache

# System and Environment Instructions

RUN apt-get update && \
    apt-get install -y -qq software-properties-common
    
# RUN export LANG=C.UTF-8 && \
#     add-apt-repository -y ppa:ondrej/php 

# RUN apt-get -qq update
    
# RUN apt-get install -y -qq php5.6 php5.6-mbstring php5.6-mcrypt \
#     php5.6-mysql php5.6-xml wget git apache2
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

RUN ./composer require yiisoft/yii codeception/codeception && \
    ./composer update
    # ./composer require codeception/yii-bridge && \

RUN echo 'alias ll="ls -la --color=auto"' >> ~/.bashrc && \
    echo 'alias codecept="/opt/snafu/vendor/codeception/codeception/codecept"' >> ~/.bashrc

RUN chown www-data:www-data -R ./

VOLUME ./app /opt/snafu
EXPOSE 80
EXPOSE 8234

CMD ["apache2-foreground"]