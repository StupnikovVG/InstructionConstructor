
FROM onescript

COPY ./src /usr/bin

ENTRYPOINT oscript /usr/bin/main.os decompile --s ./src/cf --i ./src/inst