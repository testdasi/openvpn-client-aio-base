FROM testdasi/debian-buster-slim-base:latest-amd64

COPY ./install.sh /
RUN chmod +x /install.sh
RUN /install.sh \
    && rm -f /install.sh
