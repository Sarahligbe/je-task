terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.14.0"
    }

    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }

}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

provider "kubectl" {
  config_path = var.kubeconfig_path
}

provider "kubernetes" {
  config_path = var.kubeconfig_path
}
