IMAGE := quay.io/getpantheon/rpmbuild-fedora
LATEST := 29
VERSIONS := 22 28 29

all: build push ## build and push all versions

build: ## build all versions
	@for version in $(VERSIONS); do \
		docker build --pull -t $(IMAGE):$$version ./$$version; \
	done
	docker tag $(IMAGE):$(LATEST) $(IMAGE):latest

push: ## push all containers to docker registry
	@for version in $(VERSIONS); do \
		docker push $(IMAGE):$$version; \
	done
	docker push $(IMAGE):latest

help: ## print list of tasks and descriptions
	@grep -E '^[0-9a-zA-Z._-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

.PHONY: all build push
