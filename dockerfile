FROM golang:alpine

ADD ./build /build

WORKDIR /build

VOLUME ["/build"]

EXPOSE 3399

ENV EXEC_USER=valorad
ENV EXEC_USER_ID=1000
ENTRYPOINT ["/build/index.sh"]
CMD sh ./3yibao && /bin/sh