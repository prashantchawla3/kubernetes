kubeconfig_path = "~/.kube/config-prod"
namespace       = "default-prod"
app_name        = "my-nginx-app-prod"
app_label       = "nginx-prod"
image           = "nginx:latest-prod"
service_port    = 8080
target_port     = 80
service_type    = "LoadBalancer-prod"
