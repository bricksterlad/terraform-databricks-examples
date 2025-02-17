variable "location" {
  type        = string
  description = "(Required) The location for the resources in this module"
}

variable "spoke_resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group to create"
}

variable "project_name" {
  type        = string
  description = "(Required) The name of the project associated with the infrastructure to be managed by Terraform"
}

variable "environment_name" {
  type        = string
  description = "(Required) The name of the project environment associated with the infrastructure to be managed by Terraform"
}

variable "spoke_vnet_address_space" {
  type        = string
  description = "(Required) The address space for the spoke Virtual Network"
}

variable "tags" {
  type        = map(string)
  description = "(Required) Map of tags to attach to resources"
}

variable "databricks_workspace_name" {
  type        = string
  description = "Name of Databricks workspace"
}

variable "data_factory_name" {
  type        = string
  description = "(Required) The name of the Azure Data Factory to deploy"
}

variable "key_vault_name" {
  type        = string
  description = "(Required) The name of the Azure Data Factory to deploy"
}

variable "private_subnet_address_prefixes" {
  type        = list(string)
  description = "Address space for private Databricks subnet"
}

variable "public_subnet_address_prefixes" {
  type        = list(string)
  description = "Address space for public Databricks subnet"
}

variable "storage_account_names" {
  type        = list(string)
  description = "Names of the different storage accounts"
}

variable "shared_resource_group_name" {
  type        = string
  description = "Name of the shared resource group"
}

variable "access_connector_id" {
  type        = string
  description = "The id of the access connector that will be assumed by Unity Catalog to access data"
}

variable "metastore_name" {
  type        = string
  description = "the name of the metastore"
}


variable "metastore_storage_name" {
  type        = string
  description = "the account storage where we create the metastore"
}

variable "access_connector_name" {
  type        = string
  description = "the name of the access connector"
}

variable "metastore_id" {
  type        = string
  description = "Id of the metastore"
}

variable "workspace_id" {
  type        = string
  description = "Id of the workspace"
}

variable "service_principals" {
  type = map(object({
    sp_id        = string
    display_name = string
  }))
  default     = {}
  description = "list of service principals we want to create at Databricks account"
}

variable "account_groups" {
  type = map(object({
    group_name                     = string
    permissions                    = list(string)
  }))
  default     = {}
  description = "list of databricks account groups we want to assign to the workspace"
}

variable "storage_credential_id" {
  type        = string
  description = "the storage credential id"
}

variable "landing_external_location_name" {
  type        = string
  description = "the name of the landing external location"
}

variable "landing_adls_path" {
  type        = string
  description = "The ADLS path of the landing zone"
}

variable "metastore_admins" {
  type        = list(string)
  description = "list of principals: service principals or groups that have metastore admin privileges"
}
