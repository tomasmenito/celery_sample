
run-rabbitmq:
	docker run -p 5672:5672 -p 15672:15672 rabbitmq:3-management

run-redis:
	docker run -p 6379:6379 redis
