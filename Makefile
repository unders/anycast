sITTAG :=v0.0.12

BUILDSTAMP :=$(shell date -u '+%Y-%m-%dT%I:%M%p')
GITHASH :=$(shell git rev-parse HEAD)
VERSION := support/deployed-version.txt
PREVIOUS := support/config/deployed-previous.txt
DEPLOYED_VERSION := public/deployed-version.txt

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## installs dependencis
	## Install: https://imageoptim.com/mac
	## go get github.com/cortesi/modd/cmd/modd
	## brew install imagemagick graphicsmagick
	## brew install openssl
	## npm install
	## npm install -g imageoptim-cli
	## npm install -g typescript
	## npm install -g firebase-tools
	npm install


.PHONY: start
start: ## start dev environment
	@modd -f support/modd.dev.conf

.PHONY: tree
tree: ## lists the file structure
	@tree -I 'dist|node_modules|build|'
