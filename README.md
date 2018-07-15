# shfmt

[![Build Status](https://travis-ci.com/PeterDaveHello/dockerized-shfmt.svg?branch=master)](https://travis-ci.com/PeterDaveHello/dockerized-shfmt)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/peterdavehello/shfmt.svg)](https://hub.docker.com/r/peterdavehello/shfmt/)
[![Docker image size & layers](https://images.microbadger.com/badges/image/peterdavehello/shfmt.svg)](https://microbadger.com/images/peterdavehello/shfmt/)
[![Docker image version](https://images.microbadger.com/badges/version/peterdavehello/shfmt.svg)](https://hub.docker.com/r/peterdavehello/shfmt/tags/)

Dockerized [shfmt](https://github.com/mvdan/sh#shfmt) shell script formatter.

## Usage

Run Docker container using [peterdavehello/shfmt](https://hub.docker.com/r/peterdavehello/shfmt) image:

```sh
docker run --rm -it -v /path/of/scripts:/path/in/docker peterdavehello/shfmt --version
```

Don't forget to replave `--version` with the parameters you want, for example:

```sh
docker run --rm -it -v "$(pwd)":/scripts peterdavehello/shfmt -sr -i 2 -w -ci /scripts
```
