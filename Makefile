CONTAINER_TAG := python-learning

docker-images:
	docker build \
		-f ./Dockerfile \
		-t $(CONTAINER_TAG) .

console:
	docker run \
		-v=$(PWD)/tmp/ipython:/root/.ipython \
		-it --rm \
		$(CONTAINER_TAG) \
		ipython -i
