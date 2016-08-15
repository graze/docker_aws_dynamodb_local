DOCKER_IMAGE=graze/aws-dynamodb-local
TAG=$(shell date -u +%Y%m%d-%H%M%S)

default: build push

build:
	docker build -t ${DOCKER_IMAGE}:${TAG} .
	docker tag ${DOCKER_IMAGE}:${TAG} ${DOCKER_IMAGE}

push:
	docker push ${DOCKER_IMAGE}:${TAG}
	docker push ${DOCKER_IMAGE}:latest

