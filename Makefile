help: ## Muestra este mensaje de ayuda
	@echo 'usage: make [target]'
	@echo
	@echo 'targets:'
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'

install: ## Instala las dependencias con NPM
	npm install

run: ## Arranca el contenedor en modo produccion
	docker-compose up -d api
	
run-dev: ## Arranca el contenedor en modo desarrollo
	npm run dev

restart: ## Reinicia el contenedor
	docker-compose restart

stop: ## Detiene el contenedor
	docker-compose stop