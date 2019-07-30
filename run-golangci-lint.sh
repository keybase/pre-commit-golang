#!/bin/sh
exec golangci-lint run --fix "$@"
