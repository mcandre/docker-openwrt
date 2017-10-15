FROM scratch
MAINTAINER andrew.pennebaker@gmail.com
ADD rootfs.tar.gz /
RUN mkdir -p /var/lock
