FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y apt-utils
RUN apt-get install -y exim4 dovecot-imapd

RUN apt-get install nano

COPY ./update-exim4.conf.conf /etc/exim4/
COPY ./exim4.conf.template /etc/exim4/
ADD ./startup.sh /bin/
RUN chmod +x /bin/startup.sh

RUN update-exim4.conf

EXPOSE 25

RUN service exim4 stop

CMD ["startup.sh"]
