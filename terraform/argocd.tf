resource "helm_release" "argocd-helm" {
  name = "argo-cd"
  namespace = var.argo_namespace
  version = var.argo_version
  repository = "https://argoproj.github.io/argo-helm"
  chart = "argo-cd"
  create_namespace = true
  timeout = 1000

  set {
    name = "server.service.type"
    value = "NodePort"
  }
}

#apply the argocd app of apps manifest
resource "kubectl_manifest" "test" {
  yaml_body = file("${path.module}/../rancher/root.yaml")

  depends_on = [helm_release.argocd-helm]
}
