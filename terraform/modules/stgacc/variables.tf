variable "base_name" {
  type        = string
  description = "base of the name for storage account"
  nullable    = false
}

variable "resource_group_name" {
  type        = string
  description = "name of resource group for storage account"
  nullable    = false
}

variable "location" {
  type        = string
  description = "alternate region for storage account module deployment"
  nullable    = false
}