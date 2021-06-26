FROM golang:alpine

ARG GOOS=linux
ARG CGO_ENABLED=0
ARG GO111MODULE=on
ARG SHFMT_VERSION=3.3.0

RUN go get -u mvdan.cc/sh/v3/cmd/shfmt@v${SHFMT_VERSION}

FROM busybox:1
LABEL name="shfmt"
LABEL version="3.3.0"
COPY --from=0 /go/bin/shfmt /bin/shfmt
