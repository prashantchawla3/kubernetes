output "role_binding_name" {
  description = "The name of the Kubernetes role binding"
  value       = kubernetes_role_binding.example.metadata[0].name
}

output "role_binding_namespace" {
  description = "The namespace of the Kubernetes role binding"
  value       = kubernetes_role_binding.example.metadata[0].namespace
}
