
FROM onescript

COPY ./src /usr/bin

ENTRYPOINT oscript /usr/bin/main.os