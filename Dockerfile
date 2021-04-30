FROM evilbeaver/onescript:latest

COPY ./src /usr/bin

ENTRYPOINT /usr/bin/sh/instructor.sh
