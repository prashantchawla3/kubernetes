resource "kubernetes_persistent_volume" "example" {
  metadata {
    name = var.pv_name
  }

  spec {
    capacity = {
      storage = var.storage_size
    }
    access_modes = var.access_modes
    persistent_volume_source {
      gce_persistent_disk {
        pd_name = var.pd_name
      }
    }
  }
}

resource "kubernetes_persistent_volume_claim" "example" {
  metadata {
    name = var.pvc_name
  }

  spec {
    access_modes = var.access_modes
    resources {
      requests = {
        storage = var.storage_size
      }
    }
    volume_name = kubernetes_persistent_volume.example.metadata[0].name
  }
}
