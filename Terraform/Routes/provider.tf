provider "kubernetes" {
  config_path    = var.kubeconfig_path
  config_context = "my-context"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}