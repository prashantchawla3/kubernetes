output "replication_controller_name" {
  value = kubernetes_replication_controller.example.metadata.0.name
  description = "The name of the deployed Kubernetes replication controller"
}
