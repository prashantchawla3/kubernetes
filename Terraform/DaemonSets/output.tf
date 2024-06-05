output "daemonset_name" {
  value       = kubernetes_daemonset.example.metadata[0].name
  description = "Name of the Kubernetes DaemonSet"
}
