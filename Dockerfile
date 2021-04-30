FROM evilbeaver/onescript:latest

COPY ./src /usr/bin

ENTRYPOINT /usr/bin/src/sh/instructor.sh
