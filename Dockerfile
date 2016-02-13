FROM ubuntu:latest
MAINTAINER Romans <me@nearly.guru>


RUN echo cache clean 2
RUN apt-get update
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \

        mysql-client \
        apache2 \
        libapache2-mod-php5 \
        php5-mysql  \
        php5-ldap \
        php5-gd \
        git \
        php5-curl \
        nullmailer bsd-mailx \
        php5-imagick \
        php-pear && rm -rf /var/lib/apt/lists/*

RUN sed -i "s/variables_order.*/variables_order = \"EGPCS\"/g" /etc/php5/apache2/php.ini
RUN sed -i "s/variables_order.*/variables_order = \"EGPCS\"/g" /etc/php5/cli/php.ini
RUN sed -i "s/post_max_size.*/post_max_size = 50M/g" /etc/php5/apache2/php.ini
RUN sed -i "s/upload_max_filesize.*/upload_max_filesize = 50M/g" /etc/php5/apache2/php.ini

RUN a2enmod rewrite
RUN a2enmod headers

RUN ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime


# Basic setup
RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html
ADD . /app
ADD /frontend/public/.htaccess-distrib /app/frontend/public/.htaccess
#ADD admin/.htaccess-distrib /app/admin/.htaccess

# Use our default config
#ADD config-deploy.php /app/frontend/config.php

# Initialize custom config from volume
#ADD files/volume-init.sh /volume-init.sh
##RUN chmod 755 /volume-init.sh

# Configure and start apache
ADD files/vhost.conf /etc/apache2/sites-enabled/000-default.conf
ADD files/run.sh /run.sh
ADD files/live.sh /live.sh

#RUN mkdir -p /app/upload /app/admin/upload
#RUN chown www-data /app/upload /app/admin/upload

ADD https://getcomposer.org/installer /app/installer
RUN cd /app; php installer; php composer.phar install --no-dev

EXPOSE 80
WORKDIR /app
CMD /run.sh
