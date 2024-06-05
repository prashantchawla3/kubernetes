output "secret_name" {
  value       = kubernetes_secret.example.metadata[0].name
  description = "The name of the created secret"
}
