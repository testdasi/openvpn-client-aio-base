FROM testdasi/debian-buster-slim-base:latest-amd64

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh
