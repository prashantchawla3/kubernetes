output "service_account_name" {
  value       = kubernetes_service_account.example.metadata[0].name
  description = "Name of the Kubernetes Service Account"
}

output "secret_name" {
  value       = kubernetes_secret.example.metadata[0].name
  description = "Name of the Kubernetes Secret associated with the Service Account"
}
