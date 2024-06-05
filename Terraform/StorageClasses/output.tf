output "storage_class_name" {
  value       = kubernetes_storage_class.example.metadata[0].name
  description = "Name of the Kubernetes Storage Class"
}
