#!/bin/sh

echo "requirepass ${LINK_PASSWORD}" >> /tmp/redis.conf

exec gosu nobody "$@"
