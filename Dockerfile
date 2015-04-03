## -*- docker-image-name: "armbuild/scw-service-tryit:vivid" -*-
FROM armbuild/scw-app-docker:latest
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

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
RUN useradd -G sudo -s /bin/bash -m ubuntu

# Remove password for sudo
RUN sed -i '/sudo/s/ALL)/ALL) NOPASSWD:/' /etc/sudoers

# Patch rootfs
ADD ./patches/etc/ /etc/
ADD ./patches/srv/ /srv/

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
