resource "kubernetes_volume_snapshot_v1beta1" "example_snapshot" {
  metadata {
    name = var.snapshot_name
  }

  spec {
    volume_snapshot_class_name = var.snapshot_class_name
    source {
      persistent_volume_claim_name = var.pvc_name
    }
  }
}
