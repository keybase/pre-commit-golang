#!/bin/sh
cd go || exit
exec golangci-lint run --new --fix "$@"
