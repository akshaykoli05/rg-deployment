variable "name" {
  description = "Resource Group name."
  type        = string
}

variable "location" {
  description = "Azure location (e.g., eastus, centralindia)."
  type        = string
}

variable "tags" {
  description = "Optional tags for the resource group."
  type        = map(string)
  default     = {}
}
