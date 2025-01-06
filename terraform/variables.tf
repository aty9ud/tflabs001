variable "tstrsgname" {
  type        = string
  description = "test rg name"
  default     = "adg02tftest"
}

variable "location" {
  type        = string
  description = "favoured region"
  #default     = "eastus"
  nullable    = false
}

variable "adgtest_tags" {
  type        = map(string)
  description = "adgtest tags"
  nullable    = true
}