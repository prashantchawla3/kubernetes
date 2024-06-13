# Kubernetes Pod Deployment Terraform Module

This Terraform module deploys a single Kubernetes pod using a specified Docker image. It's configured to provide detailed settings for network communication, liveness checks, and DNS configuration, making it suitable for both development and production environments.

## Features

- **Customizable Container**: Deploys a container with configurable image, environment variables, and ports.
- **Health Checks**: Implements a liveness probe to ensure the container is running and accessible.
- **Advanced DNS Configuration**: Allows for custom DNS settings within the pod, overriding the cluster's default DNS configuration.

## Prerequisites

- **Terraform**: Terraform must be installed on your machine. Visit [Terraform's official site](https://www.terraform.io/downloads.html) for installation instructions.
- **Kubernetes Provider**: Ensure the `hashicorp/kubernetes` provider is set up and configured to interact with your Kubernetes cluster.

## Usage

Here is an example of how to use this module in your Terraform environment:

```hcl
module "kubernetes_pod" {
  source = "./path/to/module"

  pod_name       = "terraform-example"
  image          = "nginx:1.21.6"
  container_name = "example"
  environment    = [("environment", "test")]
  container_port = 80
  dns_settings   = {
    nameservers = ["1.1.1.1", "8.8.8.8", "9.9.9.9"]
    searches    = ["example.com"]
    options     = [("ndots", "1"), ("use-vc", "")]
  }
}
