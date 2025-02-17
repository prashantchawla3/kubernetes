rc_name = "my-example-rc"
app_label = "MyApp"
annotation_value = "exampleValue"
container_image = "nginx:1.21.6"
container_name = "nginx"
probe_path = "/"
probe_port = 80
http_header_name = "X-Custom-Header"
http_header_value = "Awesome"
initial_delay_seconds = 5
period_seconds = 10
limits_cpu = "1"
limits_memory = "1Gi"
requests_cpu = "500m"
requests_memory = "200Mi"
