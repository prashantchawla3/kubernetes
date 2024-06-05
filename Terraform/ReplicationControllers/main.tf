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
          "key1" = var.annotation_value
        }
      }

      spec {
        container {
          image = var.container_image
          name  = var.container_name

          liveness_probe {
            http_get {
              path = var.probe_path
              port = var.probe_port

              http_header {
                name  = var.http_header_name
                value = var.http_header_value
              }
            }

            initial_delay_seconds = var.initial_delay_seconds
            period_seconds        = var.period_seconds
          }

          resources {
            limits = {
              cpu    = var.limits_cpu
              memory = var.limits_memory
            }
            requests = {
              cpu    = var.requests_cpu
              memory = var.requests_memory
            }
          }
        }
      }
    }
  }
}
