resource "kubernetes_replication_controller" "example" {
  metadata {
    name   = var.rc_name
    labels = {
      test = var.app_label
    }
  }

  spec {
    selector = {
      test = var.app_label
    }

    template {
      metadata {
        labels = {
          test = var.app_label
        }
        annotations = {
          "key1" = "value1"
        }
      }

      spec {
        container {
          image = var.image
          name  = "example"

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

          resources {
            limits = {
              cpu    = var.cpu_limit
              memory = var.memory_limit
            }
            requests = {
              cpu    = var.cpu_request
              memory = var.memory_request
            }
          }
        }
      }
    }
  }
}
