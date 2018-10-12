install: ## 
	npm install

start: ## 
	npm start

release: ## 
	npm run release

greet: ## 
	docker run -v $PWD/app:/app --entrypoint=/bin/bash -e "nombre=Ejecutando Contenedor..." orbistrainingproject_node resources/example.sh

resources:
	@echo 'Hola recursos!'