#!/bin/bash

sudo gpg --keyserver  hkp://keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
sudo gpg -a --export CD2EFD2A | sudo apt-key add -
sudo aptitude update
sudo aptitude install percona-server-server-5.5 percona-server-client-5.5 tinyca
sudo aptitude install apache2 apache2.2-common apache2-doc apache2-mpm-worker \
    apache2-utils libexpat1 ssl-cert libapache2-mod-php5 php5 php5-common php5-gd \
    php5-mysql php5-imap phpmyadmin php5-cli php5-cgi libapache2-mod-fcgid apache2-suexec \
    php-pear php-auth php5-mcrypt mcrypt php5-imagick imagemagick libapache2-mod-suphp \
    libapache2-mod-python libapache2-mod-python-doc uw-mailutils libmcrypt-dev php-log \
    php-soap php5-dev autoconf2.13 autoconf-archive gnu-standards autoconf-doc libtool-doc \
    php-db php5-sqlite php-mdb2 php5-xcache libapache2-mod-fastcgi php5-fpm install php5-curl \
    php5-xdebug php5-xmlrpc php5-cli php5-imagick php5-memcached sendmail
sudo a2enmod suexec rewrite ssl actions include headers dav_fs dav auth_digest actions fastcgi alias
sudo a2ensite default-ssl
sudo service apache2 restart
