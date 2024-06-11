provider "kubernetes" {
  config_path    = "kubernetes/kubeconfig.yaml"

}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}