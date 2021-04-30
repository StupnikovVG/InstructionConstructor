
FROM onescript

COPY ./src /usr/bin

ENTRYPOINT oscript /usr/bin/main.os decompile --src-path ./src/cf --ins-path ./src/inst