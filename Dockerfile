## -*- docker-image-name: "armbuild/scw-service-rescue:latest" -*-
FROM scaleway/docker:amd64-latest
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#FROM scaleway/docker:armhf-latest       # arch=armv7l
#FROM scaleway/docker:arm64-latest       # arch=arm64
#FROM scaleway/docker:i386-latest        # arch=i386
#FROM scaleway/docker:mips-latest        # arch=mips


MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/scw-builder-enter


# Install packages
RUN apt-get -qq update &&     \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq    \
        nodejs                \
	npm                   \
	make                  \
	g++                   \
    && apt-get clean


# Fix paths
RUN ln -s /usr/bin/nodejs /usr/bin/node


# Install TTY.js
RUN npm install -g tty.js


# Create ubuntu user
RUN useradd -G sudo,docker -s /bin/bash -m ubuntu


# Remove password for sudo
RUN sed -i '/sudo/s/ALL)/ALL) NOPASSWD:/' /etc/sudoers


# Patch rootfs
COPY ./overlay/ /


# Enable services
RUN systemctl enable scw-tryit


# Clean rootfs from image-builder
RUN /usr/local/sbin/scw-builder-leave
