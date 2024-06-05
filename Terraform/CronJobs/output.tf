output "cron_job_name" {
  value       = kubernetes_cron_job.demo.metadata[0].name
  description = "Name of the Kubernetes Cron Job"
}
