# convox/redis

Run a local Redis.

## Usage

Any of the following:

    $ docker-compose up
    $ REDIS_PASSWORD=secret docker-compose up

    $ docker run -p 6379:6379 convox/redis
    $ docker run -e REDIS_PASSWORD=secret -p 6379:6379 convox/redis

If REDIS_PASSWORD env is not specified, the server password is 'password'.

## License

Apache 2.0 &copy; 2015 Convox, Inc.
