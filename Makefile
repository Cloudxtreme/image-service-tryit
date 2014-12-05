DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-service-tryit
VERSION =		vivid
VERSION_ALIASES =	15.04 latest
TITLE =			Try-it
DESCRIPTION =		Try-it image with Docker and tty.js
SOURCE_URL =		https://github.com/online-labs/image-service-tryit


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
