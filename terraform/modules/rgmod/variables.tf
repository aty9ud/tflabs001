variable "base_name" {
  type        = string
  description = "base of the name for resource group"
  nullable    = false
}

variable "location" {
  type        = string
  description = "alternate region"
  nullable    = false
}