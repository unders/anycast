.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: start
start: ## start dev environment
	@./bin/modd -f support/modd.dev.conf

.PHONY: public
public: ## lists the public directory
	@tree public

.PHONY: src
src: ## lists the src directory
	@tree src

.PHONY: tree
tree: ## lists the file structure except public and src directory
	@tree -I 'dist|node_modules|build|public|src'
