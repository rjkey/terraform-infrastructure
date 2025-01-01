variable "secret_name" {
  description = "Name of secret"
  type        = string
}

variable "namespace" {
  description = "Namespace for the deployment"
  type        = string
}

variable "data" {
  description = "Map of secret data"
  type        = map(string)
}

variable "annotations" {
  description = "Map of annotations"
  type        = map(string)
}

variable "secret_type" {
  description = "Type of the secret (e.g., Opaque)"
  type        = string
  default     = "Opaque"
}

variable "depends_on" {
  type        = list(string)
}