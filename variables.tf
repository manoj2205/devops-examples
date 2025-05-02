# variables.tf
variable "client_id" {
  type        = string
  sensitive   = true
  description = "Azure Service Principal Client ID"
}

variable "client_secret" {
  type        = string
  sensitive   = true
  description = "Azure Service Principal Client Secret"
}

variable "tenant_id" {
  type        = string
  sensitive   = true
  description = "Azure Tenant ID"
}

variable "subscription_id" {
  type        = string
  sensitive   = true
  description = "Azure Subscription ID"
}
