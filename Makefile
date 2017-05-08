REGISTRY_NAME := "alfss"
IMAGE_NAME := "megatools"
IMAGE_VERSION := "latest"

all: build
.PHONY : all

build:
	@echo BUILD IMAGE megatools "${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION}"
	@(docker build -f Dockerfile -t ${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION} .)
push:
	@echo PUSH IMAGE "${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION}"
	@(docker push ${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION} )
