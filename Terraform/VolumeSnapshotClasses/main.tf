resource "kubernetes_volume_snapshot_class_v1beta1" "example_class" {
  metadata {
    name = var.snapshot_class_name
  }

  driver = var.snapshot_driver
  deletion_policy = "Delete"
}
