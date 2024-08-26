variable "allowed_regions" {
  default     = []
  description = "List of AWS regions to enable in the account"
  type        = list(string)
}

variable "denied_regions" {
  default     = []
  description = "List of AWS regions to enable in the account"
  type        = list(string)
}

variable "email" {
  description = "The email address of the account"
  type        = string
}

variable "name" {
  description = "The name of the account"
  type        = string
}

variable "organizational_unit_id" {
  description = "The ID of the parent organizational unit for the account"
  type        = string
}

variable "role_name" {
  default     = "myOrganizationRole"
  description = "The name of the IAM role to use for the account"
  type        = string
}

variable "tags" {
  default     = {}
  description = "A map of tags to assign to the account"
  type        = map(string)
}
