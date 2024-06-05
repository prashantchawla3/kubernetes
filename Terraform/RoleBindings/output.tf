output "role_binding_name" {
  value       = kubernetes_role_binding.example.metadata[0].name
  description = "Name of the Kubernetes Role Binding"
}
