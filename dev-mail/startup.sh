#!/bin/bash

service exim4 start

tail -f /var/log/exim4/*
