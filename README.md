# docker-openwrt - Docker base images for OpenWRT

# ABOUT

docker-openwrt automates Docker image generation while waiting for OpenWRT to produce official images.

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-openwrt/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-openwrt:12.09 .
...

docker run --rm mcandre/docker-openwrt:12.09 sh -c 'cat /etc/*release*'
DISTRIB_ID="OpenWrt"
DISTRIB_RELEASE="12.09"
DISTRIB_REVISION="r36088"
DISTRIB_CODENAME="attitude_adjustment"
DISTRIB_TARGET="x86/generic"
DISTRIB_DESCRIPTION="OpenWrt Attitude Adjustment 12.09"
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
