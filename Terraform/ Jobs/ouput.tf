output "job_name" {
  description = "The name of the Kubernetes job"
  value       = kubernetes_job.demo.metadata[0].name
}

output "job_namespace" {
  description = "The namespace of the Kubernetes job"
  value       = kubernetes_job.demo.metadata[0].namespace
}

output "job_start_time" {
  description = "Start time of the Kubernetes job"
  value       = kubernetes_job.demo.status[0].start_time
}

output "job_completion_time" {
  description = "Completion time of the Kubernetes job"
  value       = kubernetes_job.demo.status[0].completion_time
}
