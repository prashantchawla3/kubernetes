output "prometheus_statefulset_name" {
  value = kubernetes_stateful_set.prometheus.metadata[0].name
  description = "Name of the Prometheus StatefulSet"
}
