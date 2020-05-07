pre-commit-golang [![Build Status](https://travis-ci.org/keybase/pre-commit-golang.svg?branch=master)](https://travis-ci.org/keybase/pre-commit-golang)
=================

golang hooks for http://pre-commit.com/

### Using these hooks

Add this to your `.pre-commit-config.yaml`

    - repo: git://github.com/gabriel/pre-commit-golang
      sha: HEAD
      hooks:
        - id: go-fmt
        - id: go-vet
        - id: go-lint

### Available hooks

- `go-fmt` - Runs `gofmt`, requires golang
- `go-vet` - Runs `go vet`, requires golang
- `go-lint` - Runs `golint`, requires https://github.com/golang/lint

### In progress

- `go-metalinter` - Runs `gometalinter`, requires https://github.com/alecthomas/gometalinter
