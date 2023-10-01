TAG := royratcliffe/mavlink-routerd:latest

build:
	docker build --pull --rm -f "Dockerfile" -t $(TAG) "."

push:
	docker push $(TAG)
