DOCKER_COMPOSE = docker compose -f ./docker-compose.yml

### Build
build:
	${DOCKER_COMPOSE} build

### Запуск и остановка контейнера
start:
	${DOCKER_COMPOSE} start

stop:
	${DOCKER_COMPOSE} stop

up:
	${DOCKER_COMPOSE} up -d --remove-orphans

down:
	${DOCKER_COMPOSE} down -v --rmi=all --remove-orphans

### Утилиты
bash:
	${DOCKER_COMPOSE} exec reticulum-meshchat bash
