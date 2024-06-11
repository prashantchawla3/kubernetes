output "job_name" {
  description = "The name of the Kubernetes job"
  value       = kubernetes_job.demo.metadata[0].name
}

output "job_namespace" {
  description = "The namespace of the Kubernetes job"
  value       = kubernetes_job.demo.metadata[0].namespace
}


