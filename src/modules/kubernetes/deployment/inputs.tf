variable "api_version" {
  description = "Kubernetes API version"
  type        = string
}

variable "deployment_name" {
  description = "Name of the deployment"
  type        = string
}

variable "namespace" {
  description = "Namespace for the deployment"
  type        = string
}

variable "replicas" {
  description = "Number of replicas"
  type        = number
  default     = 1
}

variable "app_label" {
  description = "Label for the application"
  type        = string
}

variable "container_name" {
  description = "Name of the container"
  type        = string
}

variable "image" {
  description = "Docker image"
  type        = string
}

variable "container_port" {
  description = "Container port"
  type        = number
}