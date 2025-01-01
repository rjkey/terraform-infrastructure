generate "provider" {
    contents = <<EOF
    terraform {
        required_providers {
            kubernetes = {
                source = "hashicorp/kubernetes"
                version = "2.31.0"
            }
        }
        required_version = "1.10.3"
    }

    provider "kubernetes" {
        config_path = "~/.kube/config"
        config_context = "minikube"
    }

    EOF
    if_exists = "skip"
    path = "providers.tf"
}