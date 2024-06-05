output "replication_controller_name" {
  value       = kubernetes_replication_controller.example.metadata[0].name
  description = "Name of the Kubernetes Replication Controller"
}
