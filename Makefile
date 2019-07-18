LATEST := 29
VERSIONS := 22 28 29

APP=rpmbuild-fedora
include devops/make/common.mk
include devops/make/common-docker.mk

IMAGE := quay.io/getpantheon/rpmbuild-fedora

all: build push ## build and push all versions

build:: setup-quay ## build all versions
	@for version in $(VERSIONS); do \
		docker build --pull -t $(IMAGE):$$version ./$$version; \
	done
	docker tag $(IMAGE):$(LATEST) $(IMAGE):latest

push:: ## push all containers to docker registry
	@for version in $(VERSIONS); do \
		docker push $(IMAGE):$$version; \
	done
	docker push $(IMAGE):latest
