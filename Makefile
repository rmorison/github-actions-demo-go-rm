PROJECT_NAME := "github-actions-demo-go-rm"
PKG := "github.com/rmasp/github-actions-demo-go-rm"
PKG_LIST := $(shell go list ${PKG}/... | grep -v /vendor/)
GO_FILES := $(shell find . -name '*.go' | grep -v /vendor/ | grep -v _test.go)

.PHONY: all build dep lint

all: build

build: dep
	go build -i -o build/main $(PKG)

dep:
	go mod download

lint:
	golint -set_exit_status ${PKG_LIST}
