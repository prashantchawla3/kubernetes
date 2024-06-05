resource "kubernetes_horizontal_pod_autoscaler" "example" {
  metadata {
    name = var.hpa_name
  }

  spec {
    max_replicas = var.hpa_max_replicas
    min_replicas = var.hpa_min_replicas

    scale_target_ref {
      kind = "Deployment"
      name = var.target_deployment_name
    }
  }
}
