terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.9.1"
    }
    flux = {
      source  = "fluxcd/flux"
      version = "~> 1.2.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.27.0"
    }
  }
}

provider "kubernetes" {
  config_path    = pathexpand("~/.kube/flux/config")
  config_context = "kind-kind-cluster"
}

provider "flux" {
  kubernetes = {
    config_path    = pathexpand("~/.kube/flux/config")
    config_context = "kind-kind-cluster"
  }
}