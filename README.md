# shfmt

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
