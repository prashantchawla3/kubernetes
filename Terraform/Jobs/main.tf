
resource "kubernetes_job" "demo" {
  metadata {
    name = var.job_name
  }

  spec {
    template {
      metadata {}
      spec {
        container {
          name    = var.container_name
          image   = var.container_image
          command = var.container_command
        }
        restart_policy = var.restart_policy
      }
    }
    backoff_limit = var.backoff_limit
  }

  wait_for_completion = true

  timeouts {
    create = var.job_timeout_create
    update = var.job_timeout_update
  }
}
