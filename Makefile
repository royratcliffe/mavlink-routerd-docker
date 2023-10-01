TAG := royratcliffe/mavlink-routerd:latest

build:
	docker build --pull --rm -f "Dockerfile" -t $(TAG) "."

push:
	docker push $(TAG)

mavlinkrouter-alpine:
	docker build --pull --rm -f "Dockerfile" -t royratcliffe/mavlinkrouter:alpine "."
