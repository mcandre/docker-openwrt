# docker-openwrt - Docker base images for OpenWrt

# ABOUT

docker-openwrt automates Docker image generation while waiting for OpenWrt to produce official images.

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-openwrt/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-openwrt:latest .
...
docker run --rm mcandre/docker-openwrt:latest sh -c 'cat /etc/*releas
e*'
DISTRIB_ID='LEDE'
DISTRIB_RELEASE='17.01.4'
DISTRIB_REVISION='r3560-79f57e422d'
DISTRIB_CODENAME='reboot'
DISTRIB_TARGET='x86/64'
DISTRIB_ARCH='x86_64'
DISTRIB_DESCRIPTION='LEDE Reboot 17.01.4 r3560-79f57e422d'
DISTRIB_TAINTS='no-all'
NAME="LEDE"
VERSION="17.01.4, Reboot"
ID="lede"
ID_LIKE="lede openwrt"
PRETTY_NAME="LEDE Reboot 17.01.4"
VERSION_ID="17.01.4"
HOME_URL="http://lede-project.org/"
BUG_URL="http://bugs.lede-project.org/"
SUPPORT_URL="http://forum.lede-project.org/"
BUILD_ID="r3560-79f57e422d"
LEDE_BOARD="x86/64"
LEDE_ARCH="x86_64"
LEDE_TAINTS="no-all"
LEDE_DEVICE_MANUFACTURER="LEDE"
LEDE_DEVICE_MANUFACTURER_URL="http://lede-project.org/"
LEDE_DEVICE_PRODUCT="Generic"
LEDE_DEVICE_REVISION="v0"
LEDE_RELEASE="LEDE Reboot 17.01.4 r3560-79f57e422d"
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
