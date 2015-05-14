#!/bin/bash
export REDIS_PASSWORD=${REDIS_PASSWORD:-password}

echo "requirepass ${REDIS_PASSWORD}" > /usr/local/etc/redis.conf

exec redis-server /usr/local/etc/redis.conf