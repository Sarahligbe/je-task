variable "argo_namespace" {
  description = "argocd namespace"
  type = string
}

variable "argo_version" {
  description = "argocd version number"
  type = string
  default = "6.8.1"
}

variable "kubeconfig_path" {
  description = "kubernetes config path"
  type = string
  default = "~/.kube/config"
}
