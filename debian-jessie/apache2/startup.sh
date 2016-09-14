#!/bin/bash
mkdir /etc/apache2/ssl
cd /etc/apache2/ssl
openssl req \
    -new \
    -newkey rsa:2048 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "/C=TC/ST=Everywhere/L=Internet/O=Development/CN=localhost" \
    -keyout server.key \
    -out server.crt

service apache2 start
tail -f /var/log/apache2/*
