#!/usr/bin/env sh
set -e

export GO111MODULE=on 
go fmt $(go list ./... | grep -v /vendor/)
go test -v -race -coverpkg=./... -covermode=atomic -coverprofile=coverage.out ./...
