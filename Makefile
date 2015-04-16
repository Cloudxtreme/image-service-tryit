DOCKER_NAMESPACE =	armbuild/
NAME =			scw-service-tryit
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Try-it
DESCRIPTION =		Try-it image with Docker and tty.js
SOURCE_URL =		https://github.com/scaleway/image-service-tryit


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
