output "snapshot_name" {
  value = kubernetes_volume_snapshot_v1beta1.example_snapshot.metadata[0].name
  description = "The name of the created VolumeSnapshot"
}
