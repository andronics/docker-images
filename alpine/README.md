# DOCKER IMAGES FROM ANDRONICS

This repository contains Dockerfiles and samples to build Docker images for Oracle products and open source projects.

[![](https://img.shields.io/badge/dockerfile-base--alpine-blue.svg?style=flay-square&logo=dockbit)](https://github.com/andronics/docker-images/tree/master/base-alphine/Dockerfile) [![](https://img.shields.io/badge/dockerfile-base--busybox-blue.svg?style=flay-square&logo=dockbit)](https://github.com/andronics/docker-images/tree/master/base-busybox/Dockerfile) [![](https://img.shields.io/badge/dockerfile-base--debian-blue.svg?style=flay-square&logo=dockbit)](https://github.com/andronics/docker-images/tree/master/base-debian/Dockerfile)

### Features

All base images include support for:
 - s6-overlay
 - dockergen
 - forgo
 - ssh

### Usage

```sh
$ docker run --name alpine andronics/alpine:edge
```

### Parameters

The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side.
For example with a port -p external:internal - what this shows is the port mapping from internal to external of the container.
So -p 2222:22 would expose port 22 from inside the container to be accessible from the host's IP on port 2222
Connecting via `ssh -p 2222 user@192.168.x.x` would allow an authenicated user shell access INSIDE the container on port 22.

* `-p 22` - ssh daemon listening port
* `-v /etc/localtime` for timesync - see [Localtime](#localtime) for important information
* `-e TZ` for timezone information, Europe/London - see [Localtime](#localtime) for important information
* `-e SSH_BANNER` for SSH - Banner info displayed when connecting
* `-e SSH_KEY_FILE` for SSH - see below for explanation
* `-e SSH_KEY_URL` for SSH - url of public key for root access
* `-e SSH_KEY_SIG` for SSH - url of sha256 signature of public key

### Localtime

It is important that you either set `-v /etc/localtime:/etc/localtime:ro` or the TZ variable, mono will throw exceptions without one of them set.

### Versions

+ **2018-02-19:** Changed to reflect localtime 
+ **2018-02-18:** Initial Documentation
