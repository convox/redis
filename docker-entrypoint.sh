#!/bin/sh

if [ ! -z "${LINK_PASSWORD}" ]; then
  echo "requirepass ${LINK_PASSWORD}" >> /tmp/redis.conf
else
  echo "protected-mode no" >> /tmp/redis.conf
fi

exec gosu nobody "$@"
