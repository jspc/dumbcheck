default: all
all: build docker-build docker-push

build:
	GOOS=linux go build

docker-build:
	docker build -t jspc/dumbcheck .

docker-push: docker-build
	docker push jspc/dumbcheck
