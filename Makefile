#
# Makefile for building all things related to this repo
#
NAME := go-common
ORG := pinpt
PKG := $(ORG)/$(NAME)
SHELL := /bin/bash

.PHONY: all test

all: test

dependencies:
	@dep ensure

test:
	@go test -v ./... | grep -v "no test"