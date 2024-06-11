output "ingress_ports" {
  value = jsonencode(kubernetes_network_policy.example.spec[0].ingress)
  description = "JSON encoded data of all ingress rules"
}