FROM golang:alpine

LABEL name="shfmt"
LABEL version="2.0.0"

ENV GOOS linux
ENV CGO_ENABLED 0
ENV SHFMT_VERSION 2.0.0

RUN apk add --no-cache git \
      && go get -u mvdan.cc/sh/cmd/shfmt \
      && git -C "$GOPATH/src/mvdan.cc/sh" checkout -q "v$SHFMT_VERSION" \
      && go install -a -ldflags '-extldflags "-static"' mvdan.cc/sh/cmd/shfmt

FROM busybox:1
COPY --from=0 /go/bin/shfmt /bin/shfmt
