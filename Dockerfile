FROM onescript

COPY ./src /usr/bin
# COPY ./tests /usr/bin/tests

ADD https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-1-amd64.deb /tmp

RUN dpkg -i /tmp/pandoc-2.13-1-amd64.deb

# ENTRYPOINT oscript /usr/bin/main.os compile --src-path /usr/bin/tests/cf --ins-path /usr/bin/tests/inst