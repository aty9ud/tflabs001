variable "location" {
    type        = string
    description = "Azure Region for resouce creation"
    nullable    = false
}

variable "tflabs001tags" {
    default     = {}
    type        = map(string)
    description = "Optional tags"
}