.SILENT: # hidden output command

COMPOSE = docker compose -f docker-compose.yml

destroy:
	@$(COMPOSE) down --rmi all --volumes --remove-orphans

build:
	@$(COMPOSE) build ${cmd}

remove:
	@make destroy
	docker system prune -a

start:
	@$(COMPOSE) up ${cmd}

stop:
	@$(COMPOSE) down

logs:
	@$(COMPOSE) logs -f $(cmd)

poetry_add:
	@$(COMPOSE) exec app poetry add ${cmd}

yarn_add:
	@$(COMPOSE) exec web yarn add ${cmd}

run_app:
	@$(COMPOSE) run --rm app ${cmd}

run_web:
	@$(COMPOSE) run --rm web ${cmd}