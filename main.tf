terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {}

data "aws_caller_identity" "current" {}

locals {
  allowed_regions = {
    for region in var.allowed_regions : region => true
  }

  denied_regions = {
    for region in var.denied_regions : region => false
  }

  regions = merge(local.allowed_regions, local.denied_regions)
}

resource "aws_organizations_account" "account" {
  close_on_deletion          = true
  iam_user_access_to_billing = "ALLOW"
  name                       = var.name
  email                      = var.email
  parent_id                  = var.organizational_unit_id
  role_name                  = var.role_name
  tags                       = var.tags

  lifecycle {
    ignore_changes = [
      role_name
    ]
  }
}
resource "aws_account_region" "regions" {
  for_each = local.regions

  account_id  = aws_organizations_account.account.id
  enabled     = each.value
  region_name = each.key
}
