#!/bin/sh

: ${LINK_PASSWORD:="password"}

echo "requirepass ${LINK_PASSWORD}" >> /tmp/redis.conf

exec gosu nobody "$@"
