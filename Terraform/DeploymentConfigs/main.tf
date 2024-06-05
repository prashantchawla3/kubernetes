resource "kubernetes_deployment" "example" {
  metadata {
    name   = var.deployment_name
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    replicas = var.deployment_replicas

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyExampleApp"
        }
      }

      spec {
        container {
          image = var.deployment_image
          name  = "example"

          resources {
            limits = {
              cpu    = var.deployment_cpu_limit
              memory = var.deployment_memory_limit
            }
            requests = {
              cpu    = var.deployment_cpu_request
              memory = var.deployment_memory_request
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}
