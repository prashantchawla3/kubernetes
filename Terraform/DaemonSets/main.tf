resource "kubernetes_daemonset" "example" {
  metadata {
    name      = var.daemonset_name
    namespace = var.daemonset_namespace
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
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
          image = var.daemonset_image
          name  = "example"

          resources {
            limits = {
              cpu    = var.daemonset_cpu_limit
              memory = var.daemonset_memory_limit
            }
            requests = {
              cpu    = var.daemonset_cpu_request
              memory = var.daemonset_memory_request
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
