all: docker
docker:
	docker build  -t jbonachera/node-builder  .
