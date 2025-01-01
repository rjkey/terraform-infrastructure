variable "namespace_name" {
  description = "The target namespace for the database"
  type        = string
}

variable "service_name" {
  description = "Name of the service"
  type        = string
}

variable "app_label" {
  description = "Label for the application"
  type        = string
}

variable "service_type" {
  description = "Type of service"
  type        = string
}

variable "exposed_service_port" {
  description = "Port exposed by the service"
  type        = number
}

variable "target_service_port" {
  description = "Port targeted by the service"
  type        = number
}