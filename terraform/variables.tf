variable "tenant_id" {
  type        = string
  description = "Tenant id of service principal. "
}

variable "client_id" {
  type        = string
  description = "Client id of service principal. This is appId from the output of 'az ad sp' command."
}

variable "client_secret" {
  type        = string
  description = "Client secret of service principal. This is password from the output of 'az ad sp' command."
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID. Get using 'az account subscription list' command."
}

variable "region" {
  type        = string
  description = "az account list-locations --output table"
}

variable "nsg_source_address" {
  type        = string
  description = "Public ip address of local machine. Used to restrict SSH access. Use 'curl ifconfig.me'"
}
