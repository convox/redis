# convox/redis

Redis docker image based on Alpine Linux

This repo builds a docker image that accepts
LINK_PASSWORD and exports a LINK_PASSWORD, LINK_SCHEME, and LINK_PATH for convox linking.

It is similar to the
[official redis build](https://registry.hub.docker.com/_/redis/) but
with a much smaller footprint. It achieves that by basing itself off the great
[alpine](https://github.com/gliderlabs/docker-alpine) docker image by GliderLabs.

## Usage

```bash
$ docker run -e LINK_PASSWORD=foo -p 6379:6379 convox/redis
$ redis-cli -h $(boot2docker ip) -a foo
192.168.59.103:6379>
```

## Why?

```bash
$ docker images
REPOSITORY       TAG         VIRTUAL SIZE
convox/redis     latest      13.38 MB
redis            latest      111 MB
```

Convox will read the `LINK_` vars and use them to assemble a service URL in development.

# Build

```bash
$ make build
```

## License

Apache 2.0 &copy; 2015 Convox, Inc.
