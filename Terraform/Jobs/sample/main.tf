module "Jobs" {
  source             = "../"
  job_name           = var.job_name
  container_name     = var.container_name
  container_image    = var.container_image
  container_command  = var.container_command
  backoff_limit      = var.backoff_limit
  job_timeout_create = var.job_timeout_create
  job_timeout_update = var.job_timeout_update
  restart_policy     = var.restart_policy
}
