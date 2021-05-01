FROM onescript

COPY ./src /usr/bin
COPY ./tests /usr/bin/tests

# ENTRYPOINT oscript /usr/bin/main.os compile --src-path /usr/bin/tests/cf --ins-path /usr/bin/tests/inst