DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-service-tryit
VERSION =		vivid
VERSION_ALIASES =	15.04
IS_LATEST =		1
TITLE =			Try-it
DESCRIPTION =		Try-it image with Docker and tty.js
SOURCE_URL =		https://github.com/online-labs/image-service-tryit


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget https://raw.githubusercontent.com/online-labs/image-tools/master/docker-rules.mk
-include docker-rules.mk


## Here you can add custom commands and overrides