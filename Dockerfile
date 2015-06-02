FROM gliderlabs/alpine:edge

RUN apk-install curl

RUN curl -o /usr/local/bin/gosu -sSL "https://github.com/tianon/gosu/releases/download/1.2/gosu-amd64"
RUN chmod +x /usr/local/bin/gosu

RUN apk-install redis

ENV REDIS_PASSWORD password
ENV REDIS_DATABASE 0

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 6379
CMD ["redis-server", "/tmp/redis.conf"]
