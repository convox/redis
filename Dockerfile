FROM redis:2.8.19

ENV REDIS_PASSWORD password
ENV REDIS_DATABASE 0

ADD redis.sh /usr/local/bin/redis.sh

CMD ["/usr/local/bin/redis.sh"]
