#!/bin/sh

: ${REDIS_PASSWORD:="password"}

echo "requirepass ${REDIS_PASSWORD}" >> /tmp/redis.conf

exec gosu nobody "$@"
