variable "name" {
    description = "Service account name"
    type = string
}

variable "namespace" {
  description = "Namespace for the deployment"
  type        = string
}

variable "annotations" {
  description = "Annotations to add to the service account"
  type        = map(string)
  default     = {}
}