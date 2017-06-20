#!/usr/bin/env bash

fuser -k 3999/tcp

set -e

go get -v golang.org/x/tools/cmd/present
present -notes -http '127.0.0.1:3999'
