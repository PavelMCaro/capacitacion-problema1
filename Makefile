include makefiles/task.mk
include makefiles/deploy-ghpages.mk

export NAME ?= Harry Potter local
NAME_IMAGE ?= orbistrainingproject_node
DOCKER_TAG ?= latest
DOCKER_IMAGE ?= ${NAME_IMAGE}:${DOCKER_TAG}
DOCKER_VOLUME = ${PWD}/app:/app
install:
	@docker run --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm install
start:
	docker run -p "3030:1042" -p "35729:35729" --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm start
release:
	docker run --workdir=/app -v ${DOCKER_VOLUME} --entrypoint npm ${DOCKER_IMAGE} run release
greet:
	@docker run -v ${PWD}/resources:/resources -e NAME="${NAME}" node:10.10.0-slim bash /resources/example.sh
	@bash ./resources/example.sh

deploy:
	make -f ./makefiles/deploy-ghpages.mk deploy.ghpages

resources:
	@echo "Hola recursos!"
	@echo ${DOCKER_IMAGE}
.PHONY: resources
