locals {
    # azure_resource_manager_subscription_id = get_env("TF_VAR_AZURE_TEST_RM_SUBSCRIPTION_ID")
    azure_resource_manager_terraform_states_container_name = "go-devopsno-tf-env-states"
    azure_resource_manager_terraform_states_resource_group_name = "go-devopsnor-rg-tf-env-states"
    azure_resource_manager_terraform_states_storage_account_name = "go-devopsnor-sa-tf-env-states"
    terraform_lock_timeout = "5m"
}

generate "provider" {
    contents = <<EOF
    terraform {
        required_providers {
            kubernetes = {
                source = "hashicorp/kubernetes"
                version = "2.22.0"
            }
        }
        required_version = "1.5.6"
    }

    provider "kubernetes" {
        config_path = "~/.kube/config"
        config_context = "minikube"
    }

    EOF
    if_exists = "skip"
    path = "providers.tf"
}