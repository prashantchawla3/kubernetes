variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
}



module "Routes" {
  source                  = "kubernetes-terraform/kubernetes/Terraform/Routes"
    kubeconfig_path = "~/.kube/config"
    namespace       = "default"
    app_name        = "my-nginx-app"
    app_label       = "nginx"
    image           = "nginx:latest"
    service_port    = 8080
    target_port     = 80
    service_type    = "LoadBalancer"

}

module "Pods" {
  source  = "kubernetes-terraform/kubernetes/Terraform/pods"
  pod_name               = "terraform-example"
container_name         = "example"
container_image        = "nginx:1.21.6"
env_name               = "environment"
env_value              = "test"
container_port         = 80
liveness_path          = "/"
liveness_header_name   = "X-Custom-Header"
liveness_header_value  = "Awesome"
initial_delay_seconds  = 3
period_seconds         = 3
nameservers            = ["1.1.1.1", "8.8.8.8", "9.9.9.9"]
search_domains         = ["example.com"]
dns_options            = [
  {
    name  = "ndots"
    value = "1"
  },
  {
    name = "use-vc"
  }
]
dns_policy             = "None"

}

# Verify that a disabled VPC generates a plan without errors
module "Deployments" {
  source  = "kubernetes/Terraform/Deployments"
  deployment_name            = "terraform-example"
deployment_image           = "nginx:1.21.6"
deployment_replicas        = 3
deployment_cpu_limit       = "0.5"
deployment_memory_limit    = "512Mi"
deployment_cpu_request     = "250m"
deployment_memory_request  = "50Mi"

}