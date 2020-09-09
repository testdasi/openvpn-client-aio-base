FROM testdasi/debian-buster-slim-base:latest

# install openvpn
RUN apt-get install -y openvpn iptables
#RUN apt-get install -y iputils-ping traceroute

# install stubby and clean config
RUN apt-get -y install stubby \
    && mkdir -p /etc/stubby \
    && rm -rf /etc/stubby/*

# install dante server
RUN apt-get -y install dante-server \
    && rm -f /etc/danted.conf

# install tinyproxy
RUN apt-get -y install tinyproxy \
    && mkdir -p /etc/tinyproxy \
    && rm -rf /etc/tinyproxy/*

# install torsocks
RUN apt-get -y install torsocks \
    && mkdir -p /etc/tor \
    && rm -rf /etc/tor/*

# install privoxy
RUN apt-get -y install privoxy \
    && mkdir -p /etc/privoxy \
    && rm -rf /etc/privoxy/*

# Clean up
RUN apt-get autoremove \
    && apt-get auto-clean \
    && apt-get clean \
    && rm -fr /tmp/* /var/tmp/*
