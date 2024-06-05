resource "kubernetes_cron_job" "demo" {
  metadata {
    name = var.cron_job_name
  }

  spec {
    concurrency_policy            = "Replace"
    failed_jobs_history_limit     = 5
    schedule                      = var.cron_job_schedule
    starting_deadline_seconds     = 10
    successful_jobs_history_limit = 10

    job_template {
      metadata {}
      spec {
        backoff_limit              = 2
        ttl_seconds_after_finished = 10

        template {
          metadata {}
          spec {
            container {
              name    = "hello"
              image   = var.cron_job_image
              command = var.cron_job_command
            }
          }
        }
      }
    }
  }
}
