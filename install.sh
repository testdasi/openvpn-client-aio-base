#!/bin/bash

# install more packages
apt-get -y update \
    && apt-get -y install dnsutils wget sipcalc

# install openvpn
apt-get install -y openvpn iptables
#apt-get install -y iputils-ping traceroute

# install stubby and clean config
apt-get -y install stubby \
    && mkdir -p /etc/stubby \
    && rm -rf /etc/stubby/*

# install dante server
apt-get -y install dante-server \
    && rm -f /etc/danted.conf

# install tinyproxy
apt-get -y install tinyproxy \
    && mkdir -p /etc/tinyproxy \
    && rm -rf /etc/tinyproxy/*

# install torsocks
apt-get -y install torsocks \
    && mkdir -p /etc/tor \
    && rm -rf /etc/tor/*

# install privoxy
apt-get -y install privoxy \
    && mkdir -p /etc/privoxy \
    && rm -rf /etc/privoxy/*

# Clean up
apt-get -y autoremove \
    && apt-get -y autoclean \
    && apt-get -y clean \
    && rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*
