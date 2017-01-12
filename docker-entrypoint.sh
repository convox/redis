#!/bin/sh

[ ! -z ${LINK_PASSWORD} ] && echo "requirepass ${LINK_PASSWORD}" >> /tmp/redis.conf

exec gosu nobody "$@"
