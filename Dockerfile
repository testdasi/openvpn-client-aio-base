ARG TAG=latest
FROM testdasi/debian-buster-slim-base:$TAG

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh

RUN echo "$(date "+%d.%m.%Y %T")" >> /build_date.info
