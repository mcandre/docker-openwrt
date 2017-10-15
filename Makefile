IMAGE=mcandre/docker-openwrt:14.07
ROOTFS=rootfs.tar.gz

all: run

$(ROOTFS):
	wget -O $(ROOTFS) https://downloads.openwrt.org/barrier_breaker/14.07/x86/generic/openwrt-x86-generic-Generic-rootfs.tar.gz

build: Dockerfile $(ROOTFS)
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run --rm $(IMAGE) sh -c 'cat /etc/*release*'

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean-rootfs:
	-rm $(ROOTFS)

clean: clean-containers clean-images clean-layers clean-rootfs

editorconfig:
	flcl . | xargs -n 100 editorconfig-cli check

dockerlint:
	$(shell npm bin)/dockerlint

lint: editorconfig dockerlint

publish:
	docker push $(IMAGE)
