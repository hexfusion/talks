#!/usr/bin/env bash

fuser -k 3999/tcp

set -e

go get -v golang.org/x/tools/cmd/present
$GOPATH/bin/present -http '127.0.0.1:3999'
