ARG TAG
FROM testdasi/debian-buster-slim-base:$TAG

RUN echo "$(date "+%d.%m.%Y %T")" >> /build_date.info

COPY ./install.sh /
RUN /bin/bash /install.sh \
    && rm -f /install.sh
