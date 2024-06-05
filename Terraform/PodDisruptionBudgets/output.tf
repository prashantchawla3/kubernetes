output "pdb_name" {
  value       = kubernetes_pod_disruption_budget.demo.metadata[0].name
  description = "Name of the Kubernetes Pod Disruption Budget"
}
