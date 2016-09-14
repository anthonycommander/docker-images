FROM debian:latest
MAINTAINER anthony.commander@gmail.com
RUN apt-get update \
	&& apt-get install -y apt-utils apache2 openssl \
	&& rm -r /var/lib/apt/lists/*

COPY ./startup.sh /startup.sh
COPY ./default-ssl.conf /etc/apache2/sites-avaialble/default-ssl.conf
COPY ./apache2.conf /etc/apache2/apache2.conf

RUN a2enmod ssl rewrite proxy proxy_ajp proxy_connect proxy_balancer proxy_express proxy_fcgi proxy_ftp proxy_html proxy_http proxy_scgi proxy_wstunnel xml2enc
RUN a2ensite default-ssl

EXPOSE 80
EXPOSE 443

CMD ["/startup.sh"]
