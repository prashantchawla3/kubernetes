output "pod_name" {
  value = kubernetes_pod.example.metadata
}

# output "pod_ip" {
#   value = kubernetes_pod.example.status[0].pod_ip
# }
