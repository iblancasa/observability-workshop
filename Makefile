
# Kubernetes version used for this tutorial
KUBERNETES_VERSION ?= 1.27.1
KIND_VERSION ?= 0.18.0

# Tools to use
ROOT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
LOCALBIN = $(ROOT_DIR)bin
KUBECTL ?= $(LOCALBIN)/kubectl
KIND ?= $(LOCALBIN)/kind

.PHONY: install-tools
install-tools: ## Install CLI the tools
	@echo "Installing all the needed tools============================================================"
	@mkdir -p $(LOCALBIN)
	@test -s $(KUBECTL) || curl -sSLo $(KUBECTL) https://dl.k8s.io/release/v$(KUBERNETES_VERSION)/bin/linux/amd64/kubectl
	@chmod +x $(KUBECTL)
	@test -s $(KIND) || curl -sSLo $(KIND) https://kind.sigs.k8s.io/dl/v$(KIND_VERSION)/kind-linux-amd64
	@chmod +x $(KIND)

# Cluster management
.PHONY: create-cluster
create-cluster: ## Create a local clsuter
	@echo "Creating a development cluster============================================================"
	@$(KIND) create cluster --image kindest/node:v$(KUBERNETES_VERSION) --name=ow 2>&1 | grep -v "already exists" || true

.PHONY: delete-cluster
delete-cluster: ## Delete the local cluster
	@echo "Deleting the local cluster================================================================="
	@kind delete cluster --name=ow

.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
