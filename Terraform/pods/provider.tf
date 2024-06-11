provider "kubernetes" {
  config_path    = "../../kubeconfig.yaml"
  
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}

