output "hpa_name" {
  value       = kubernetes_horizontal_pod_autoscaler.example.metadata[0].name
  description = "Name of the Kubernetes Horizontal Pod Autoscaler"
}
