# shfmt

[![Build Status](https://travis-ci.com/PeterDaveHello/docker-shfmt.svg?branch=master)](https://travis-ci.com/PeterDaveHello/docker-shfmt)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/peterdavehello/shfmt.svg)](https://hub.docker.com/r/peterdavehello/shfmt/)

[![Docker Hub badge](https://dockeri.co/image/peterdavehello/shfmt)](https://hub.docker.com/r/peterdavehello/shfmt/)

Dockerized [shfmt](https://github.com/mvdan/sh#shfmt) shell script formatter.

**Please note that I originally built this Docker image because that there wasn't an official one, but now there it is, and it also uses the Dockerfile from this repository as the reference to create the official one, as you can see <https://github.com/mvdan/sh/issues/68>, this repository might not be actively maintained.**

## Usage

### Command line

Run Docker container using [peterdavehello/shfmt](https://hub.docker.com/r/peterdavehello/shfmt) image:

```sh
docker run --rm -it -v /path/of/scripts:/path/in/docker peterdavehello/shfmt:2.6.4 shfmt --version
```

Replace `--version` with the parameters you want, for example:

```sh
docker run --rm -it -v "$(pwd)":/scripts peterdavehello/shfmt:2.6.4 shfmt -sr -i 2 -d -ci /scripts
```

Don't forget to replace `2.6.4` with the latest tag or the tagged version you want.

### GitLab CI example

```yaml
shfmt:
  stage: test
  image: peterdavehello/shfmt:2.6.4
  before_script:
    - shfmt -version
  script:
    - shfmt -sr -i 2 -d -ci .
  tags:
    - docker
```
