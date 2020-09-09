FROM testdasi/debian-buster-slim-base:latest

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh
