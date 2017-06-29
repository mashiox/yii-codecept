# Import the docker container from Ubuntu, version Xenial (16.04)
FROM ubuntu:xenial

RUN mkdir /opt/snafu

WORKDIR /opt/snafu

RUN apt-get update && \
    apt-get install -y -qq software-properties-common
    
RUN export LANG=C.UTF-8 && \
    add-apt-repository -y ppa:ondrej/php 

RUN apt-get -qq update
    
RUN apt-get install -y -qq php5.6 php5.6-mbstring php5.6-mcrypt \
    php5.6-mysql php5.6-xml wget git apache2

RUN wget -O ./composer https://getcomposer.org/download/1.4.2/composer.phar && \
    chmod +x ./composer

RUN ./composer require yiisoft/yii codeception/codeception && \
    ./composer update

CMD ["tail -f", "/var/log/dmesg"]