FROM onescript

COPY ./src /usr/bin

ENTRYPOINT oscript /usr/bin/main.os compile --src-path /usr/bin/cf --ins-path /usr/bin/inst``