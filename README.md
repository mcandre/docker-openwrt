# docker-openwrt - Docker base images for OpenWRT

# ABOUT

docker-openwrt automates Docker image generation while waiting for OpenWRT to produce official images.

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-openwrt/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-openwrt:10.03 .
...

docker run --rm mcandre/docker-openwrt:10.03 sh -c 'cat /etc/*release*'
DISTRIB_ID="OpenWrt"
DISTRIB_RELEASE="10.03"
DISTRIB_CODENAME="backfire"
DISTRIB_DESCRIPTION="OpenWrt Backfire 10.03"
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
