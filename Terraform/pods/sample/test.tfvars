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
