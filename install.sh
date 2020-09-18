#!/bin/bash

# install more packages
apt-get -y update \
    && apt-get -y install dnsutils wget sipcalc curl

# install openvpn
apt-get install -y openvpn
apt-get install -y nftables

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

# Clean up
apt-get -y autoremove \
    && apt-get -y autoclean \
    && apt-get -y clean \
    && rm -fr /tmp/* /var/tmp/* /var/lib/apt/lists/*
