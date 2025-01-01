variable "cluster_role_binding_name" {
  description = "Name of cluster role binding"
  type        = string
}

variable "role_ref_api_group" {
  description = "Role ref api group"
  type        = string
}

variable "role_ref_api_group_kind" {
  description = "Role ref api group kind"
  type        = string
}

variable "role_ref_api_group_name" {
  description = "Role ref api group name"
  type        = string
}

variable "subject_kind" {
  description = "Subject kind"
  type        = string
}

variable "subject_name" {
  description = "Subject name"
  type        = string
}

variable "namespace" {
  description = "Namespace for the cluster role binding"
  type        = string
}

variable "depends_on" {
  type        = list(string)
}   
