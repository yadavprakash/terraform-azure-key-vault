#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment", ]
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg 'yadavprakash'."
}

variable "enabled" {
  type        = bool
  description = "Set to false to prevent the module from creating any resources."
  default     = true
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "A container that holds related resources for an Azure solution"

}

variable "sku_name" {
  type        = string
  default     = "standard"
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium"
}

variable "enabled_for_disk_encryption" {
  type        = bool
  default     = null
  description = "Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. Defaults to false"
}

variable "purge_protection_enabled" {
  type        = bool
  default     = null
  description = "Is Purge Protection enabled for this Key Vault? Defaults to false"
}

variable "network_acls_default_action" {
  type        = string
  default     = "Deny"
  description = "The Default Action to use when no rules match from ip_rules / virtual_network_subnet_ids. Possible values are Allow and Deny."
}

variable "network_acls_bypass" {
  type        = string
  default     = null
  description = "Specifies which traffic can bypass the network rules. Possible values are AzureServices and None."
}

variable "network_acls_ip_rules" {
  default     = null
  type        = list(string)
  description = "(Optional) One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault."
}

variable "network_acls_subnet_ids" {
  default     = null
  type        = list(string)
  description = "(Optional) One or more Subnet ID's which should be able to access this Key Vault."
}

variable "secrets" {
  type        = any
  default     = {}
  description = "List of secrets for be created"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 90
  description = "The number of days that items should be retained for once soft-deleted. The valid value can be between 7 and 90 days"
}

variable "access_policy" {
  type = list(object({
    object_id               = string,
    certificate_permissions = list(string),
    key_permissions         = list(string),
    secret_permissions      = list(string),
    storage_permissions     = list(string),
  }))
  default     = []
  description = "Map of access policies for an object_id (user, service principal, security group) to backend."
}



variable "enable_private_endpoint" {
  type        = bool
  default     = true
  description = "Manages a Private Endpoint to Azure database for MySQL"
}

variable "virtual_network_id" {
  type        = string
  default     = ""
  description = "The name of the virtual network"
}

variable "subnet_id" {
  type        = string
  default     = ""
  description = "The resource ID of the subnet"
}

variable "existing_private_dns_zone" {
  type        = string
  default     = null
  description = "Name of the existing private DNS zone"
}
variable "enable_rbac_authorization" {
  type        = bool
  default     = false
  description = "(Optional) Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
}
variable "principal_id" {
  type        = list(string)
  default     = []
  description = " The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created."
}
variable "role_definition_name" {
  type        = list(string)
  default     = []
  description = "The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with role_definition_id"
}

variable "existing_private_dns_zone_resource_group_name" {
  type        = string
  default     = ""
  description = "The name of the existing resource group"
}

variable "public_network_access_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Whether public network access is allowed for this Key Vault. Defaults to true"
}

## Addon vritual link
variable "addon_vent_link" {
  type        = bool
  default     = false
  description = "The name of the addon vnet "
}

variable "addon_resource_group_name" {
  type        = string
  default     = ""
  description = "The name of the addon vnet resource group"
}

variable "addon_virtual_network_id" {
  type        = string
  default     = ""
  description = "The name of the addon vnet link vnet id"
}

variable "location" {
  type    = string
  default = "Canada Central"
}

variable "key_enabled" {
  type        = bool
  default     = false
  description = "Flag to control creation of key vault key resource."
}
