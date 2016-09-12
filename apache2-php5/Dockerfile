FROM tcsoftware/apache2:latest
MAINTAINER anthony.commander@gmail.com
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get install -y --install-recommends php5 libapache2-mod-php5
RUN apt-get install -y --install-recommends php5 php5-cgi php5-fpm php5-curl php5-gd php5-mysql php5-odbc php5-sqlite php5-cli php5-oauth php5-pgsql php5-ssh2 php5-sybase freetds-common php5-memcache php5-xmlrpc php5-xsl php5-mcrypt php5-imagick php5-apcu php5-common \
    && rm -r /var/lib/apt/lists/*
