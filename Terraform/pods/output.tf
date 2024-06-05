output "pod_name" {
    description = "The name of the deployed pod"
    value       = kubernetes_pod.example.metadata[0].name
}


output "pod_ip" {
    description = "The IP address of the deployed pod"
    value       = kubernetes_pod.example.status[0].pod_ip
}