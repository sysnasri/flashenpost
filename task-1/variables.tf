variable "resource_group_name" {
  description = "Asure Resource Group name!"
  type        = string
  default     = "srechallenge"

}

variable "location" {
  description = "Asure resource location AKA region!"
  type        = string
  default     = "West Europe"
}



variable "azure_storage_account_name" {
  description = "Name for storage account"
  type        = string
  default     = "srechallenge"

}

variable "azure_storage_sku" {
  description = "Stock keeping unit for storage account"
  type        = map(string)
  default = {
    "dev" = "LRS"
    "stg" = "GRS"
    "pro" = "RAGRS"

  }

}

variable "azure_account_tier" {
  description = "Asure account tier"
  type        = string
  default     = "Standard"

}

variable "azure_access_tier" {
  description = "Defines the access tier"
  type        = string
  default     = "Hot"


}
variable "azure_storage_account_container" {
  type = map(string)
  default = {
    "name" = "sre"
    "type" = "private"

  }
}
