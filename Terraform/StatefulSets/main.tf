resource "kubernetes_stateful_set" "prometheus" {
  metadata {
    annotations = {
      SomeAnnotation = "foobar"
    }

    labels = {
      k8s-app                           = "prometheus"
      "kubernetes.io/cluster-service"   = "true"
      "addonmanager.kubernetes.io/mode" = "Reconcile"
      version                           = "v2.2.1"
    }

    name = "prometheus"
  }

  spec {
    pod_management_policy  = "Parallel"
    replicas               = var.prometheus_replicas
    revision_history_limit = 5

    selector {
      match_labels = {
        k8s-app = "prometheus"
      }
    }

    service_name = "prometheus"

    template {
      metadata {
        labels = {
          k8s-app = "prometheus"
        }
      }

      spec {
        service_account_name = "prometheus"

        init_container {
          name              = "init-chown-data"
          image             = var.init_container_image
          image_pull_policy = "IfNotPresent"
          command           = ["chown", "-R", "65534:65534", "/data"]

          volume_mount {
            name       = "prometheus-data"
            mount_path = "/data"
          }
        }

        container {
          name              = "prometheus-server-configmap-reload"
          image             = var.configmap_reload_image
          image_pull_policy = "IfNotPresent"
          args              = ["--volume-dir=/etc/config", "--webhook-url=http://localhost:9090/-/reload"]

          volume_mount {
            name       = "config-volume"
            mount_path = "/etc/config"
            read_only  = true
          }
        }

        # Include other container configurations as shown in the initial example
      }
    }

    volume_claim_template {
      metadata {
        name = "prometheus-data"
      }

      spec {
        access_modes       = ["ReadWriteOnce"]
        storage_class_name = var.storage_class

        resources {
          requests = {
            storage = var.prometheus_storage_size
          }
        }
      }
    }
  }
}
