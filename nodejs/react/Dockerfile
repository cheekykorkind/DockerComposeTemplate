FROM node:13.2-alpine3.10

RUN apk add sudo

ARG UID
ARG GID
ARG UNAME
ARG DYNAMO_ENDPOINT

ENV UID ${UID}
ENV GID ${GID}
ENV UNAME ${UNAME}


RUN adduser -D -u ${UID} -s /bin/sh -G wheel ${UNAME}
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Add a script to be executed every time the container starts.
COPY ./entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]