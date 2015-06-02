# Redis docker image based on Alpine Linux

This repo builds a docker image that accepts a REDIS_PASSWORD 
env var and has a much smaller footprint than the
[official redis build](https://registry.hub.docker.com/_/redis/).
It achieves that by basing itself off the great 
[alpine](https://github.com/gliderlabs/docker-alpine) docker image by GliderLabs.

## Why?

```bash
$ docker images
REPOSITORY       TAG         VIRTUAL SIZE
alpine-redis     latest      13.49 MB
redis            latest      111 MB
```

# Build

```bash
$ make build
```
