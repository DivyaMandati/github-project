# variables.tf

variable "aci_name" {
  description = "Name for the Azure Container Instance"
  type        = string
  default     = "exam-aci124"
}

variable "location" {
  description = "Location for the Azure Container Instance and Resource Group"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name for the Azure Resource Group"
  type        = string
  default     = "exam-resour124"
}

variable "dns_name_label" {
  description = "DNS name label for the ACI"
  type        = string
  default     = "exampleaci124"
}

variable "ARM_SUBSCRIPTION_ID"  {}
variable "ARM_TENANT_ID"        {}
variable "ARM_CLIENT_ID"        {}
variable "ARM_CLIENT_SECRET"    {}
