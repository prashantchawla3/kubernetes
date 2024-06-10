kubeconfig_path = "~/.kube/config-prod"
namespace       = "default-prod"
app_name        = "my-nginx-app-prod"
app_label       = "nginx"
image           = "nginx:latest"
service_port    = 8080
target_port     = 80
service_type    = "LoadBalancer-prod"
