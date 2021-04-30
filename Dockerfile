FROM evilbeaver/onescript:latest

COPY ./src /usr/bin

RUN opm install cmdline
RUN opm install logos
RUN opm install 1commands
RUN opm install tempfiles

ENTRYPOINT oscript /usr/bin/main.os
