# variable "rg_name" {
#   type = string

# }
# variable "rg_location" {
#   type    = string
#   default = "central india"
# }

# variable "vnet_name" {
#   type = string
# }

# variable "vnet_location" {
#   type = string
# }

variable "application_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "primary_location" {
  
}

variable "address_space" {
  type = list(string)
}