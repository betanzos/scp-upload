FROM alpine:3.12

LABEL maintainer="Eduardo Betanzos <ebetanzos@hotmail.es>"

RUN apk add --no-cache bash openssh-client

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]