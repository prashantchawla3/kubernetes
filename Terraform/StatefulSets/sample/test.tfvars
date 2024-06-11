prometheus_image = "prom/prometheus:v2.2.1"
init_container_image = "busybox:latest"
configmap_reload_image = "jimmidyson/configmap-reload:v0.1"
prometheus_replicas = 1
prometheus_storage_size = "16Gi"
storage_class = "standard"
