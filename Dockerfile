ARG SHFMT_VERSION=3.4.1

FROM golang:alpine as build

ARG GOOS=linux
ARG CGO_ENABLED=0
ARG GO111MODULE=on
ARG SHFMT_VERSION

RUN go get -u mvdan.cc/sh/v3/cmd/shfmt@v${SHFMT_VERSION}
RUN shfmt --version

FROM busybox:1 as release
ARG SHFMT_VERSION
LABEL name="shfmt"
LABEL version="$SHFMT_VERSION"
COPY --from=build /go/bin/shfmt /bin/shfmt
