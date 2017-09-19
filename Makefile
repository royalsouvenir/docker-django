build:
	docker-compose build

up:
	docker-compose up -d

updebug:
	docker-compose up

start:
	docker-compose start

stop:
	docker-compose stop

down:
	docker-compose down

shell-nginx:
	docker exec -ti ng01 bash

shell-web:
	docker exec -ti dg01 bash

shell-db:
	docker exec -ti db01 bash

log-nginx:
	docker-compose logs nginx

log-web:
	docker-compose logs web

log-db:
	docker-compose logs db

collectstatic:
	docker exec dg01 /bin/sh -c "python manage.py collectstatic --noinput"
