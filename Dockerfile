FROM redis:2.8.19

ENV REDIS_PASSWORD password
ENV REDIS_DATABASE 0

COPY conf/redis.conf /usr/local/etc/redis.conf

CMD ["redis-server", "/usr/local/etc/redis.conf"]
