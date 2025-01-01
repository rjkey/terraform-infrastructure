terraform {
    required_providers {
        kubernetes = {
            source = var.kubernetes_source
            version = var.kubernetes_version
        }
    }
    required_version = var.terraform_version_required
}

provider "kubernetes" {
    config_path = var.kubernetes_config_path
    config_context = var.kubernetes_config_context
}
