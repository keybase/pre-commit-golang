#!/bin/sh
cd go
exec golangci-lint run --new --fix "$@"
