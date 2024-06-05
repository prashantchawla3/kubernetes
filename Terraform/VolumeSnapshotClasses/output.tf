output "snapshot_class_name" {
  value = kubernetes_volume_snapshot_class_v1beta1.example_class.metadata[0].name
  description = "The name of the created VolumeSnapshotClass"
}
