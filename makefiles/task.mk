build:
	docker build . -t cesar2017/orbis-training-docker:2.0.0
push:
	@make login
	docker push orbistrainingproject_node:2.0.0
up:
	docker-compose up
login:
	docker login
