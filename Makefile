build:
	docker build -t convox/redis --rm=true .

run:
	docker run -i -p 6379:6379 convox/redis
