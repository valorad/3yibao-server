FROM alpine:latest

ADD ./build /www

ADD ./index.sh /www

RUN echo " --- Software installation starts --- " \
 && apk update \
 && apk add --no-cache su-exec libc6-compat \
 && rm -rf /var/cache/apk/*

WORKDIR /www

VOLUME ["/www"]

EXPOSE 3399

ENV EXEC_USER=valorad
ENV EXEC_USER_ID=1000
ENTRYPOINT ["/www/index.sh"]
CMD /www/3yibao-server && /bin/sh