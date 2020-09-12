ARG TAG
FROM testdasi/debian-buster-slim-base:$TAG

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh
