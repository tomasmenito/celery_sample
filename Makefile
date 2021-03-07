
run-rabbitmq:
	docker run -p 5672:5672 -p 15672:15672 rabbitmq:3-management

run-redis:
	docker run -p 6379:6379 redis

build:
	docker build -t celery_sample .

run-worker:
	docker run --network=host -it celery_sample celery -A proj worker -l INFO

ipython:
	docker run --network=host -it celery_sample ipython
