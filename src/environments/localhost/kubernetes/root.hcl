remote_state {
  backend = "local"
  config = {
    path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/terraform.tfstate"
  }

  generate = {
    path = "backend.tf"
    if_exists = "overwrite"
  }
}

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