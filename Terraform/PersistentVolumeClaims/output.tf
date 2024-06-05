output "persistent_volume_name" {
  value       = kubernetes_persistent_volume.example.metadata[0].name
  description = "Name of the Kubernetes Persistent Volume"
}

output "persistent_volume_claim_name" {
  value       = kubernetes_persistent_volume_claim.example.metadata[0].name
  description = "Name of the Kubernetes Persistent Volume Claim"
}
