
variable "aci_name" {
  description = "Name for the Azure Container Instance"
  type        = string
}

variable "aci_location" {
  description = "Location for the Azure Container Instance"
  type        = string
}

variable "aci_image" {
  description = "Docker image for the Azure Container Instance"
  type        = string
}

variable "aci_tags" {
  description = "Tags for the Azure Container Instance"
  type        = map(string)
}

variable "main_project" {
  type        = string
  description = "(Required) Custom variable. Main project name."
}

variable "sub_project" {
  type        = string
  description = "(Required) Custom variable. Sub project name."
}