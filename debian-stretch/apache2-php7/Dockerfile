FROM tcsoftware/debian-apache2:stretch
MAINTAINER anthony.commander@gmail.com
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --install-recommends php7.0 libapache2-mod-php7.0
RUN apt-get install -y --install-recommends php7.0 php7.0-cgi php7.0-fpm php7.0-curl php7.0-gd php7.0-mysql php7.0-odbc php7.0-sqlite php7.0-cli php7.0-oauth php7.0-pgsql php7.0-ssh2 php7.0-sybase freetds-common php7.0-memcache php7.0-xmlrpc php7.0-xsl php7.0-mcrypt php7.0-imagick php7.0-apcu php7.0-common \
    && rm -r /var/lib/apt/lists/*

CMD ["/bin/bash"]
