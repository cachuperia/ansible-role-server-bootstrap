SHELL = /bin/bash
.DEFAULT_GOAL = help

##@ Bootstrap
.PHONY: repo-init

repo-init:  ## Install pre-commit in repo
	pre-commit install -t pre-commit -t commit-msg

##@ Checks
.PHONY: check

check:  ## Run pre-commit against all files
	pre-commit run --all-files

##@ Tests
.PHONY: test
	ansible-playbook test.yml

##@ Miscellaneous
.PHONY: tasks

tasks:  ## List playbook tasks
	ansible-playbook test.yml --list-tasks

##@ Helpers
.PHONY: help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
