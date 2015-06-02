build:
	docker build -t alpine-redis --rm=true .

debug:
	docker run -i -t --entrypoint=sh alpine-redis

run:
	docker run -i -P alpine-redis
