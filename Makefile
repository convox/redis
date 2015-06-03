build:
	docker build -t convox/redis --rm=true .

debug:
	docker run -i -t --entrypoint=sh convox/redis

run:
	docker run -i -p 6379:6379 convox/redis
