output "arn" {
  description = "Account ARN"
  value       = aws_organizations_account.account.arn
}

output "email" {
  description = "Account Email"
  value       = aws_organizations_account.account.email
}

output "iam_user_access_to_billing" {
  description = "IAM User Access to Billing"
  value       = aws_organizations_account.account.iam_user_access_to_billing
}

output "id" {
  description = "Account ID"
  value       = aws_organizations_account.account.id
}

output "name" {
  description = "Account Name"
  value       = aws_organizations_account.account.name
}

output "parent_id" {
  description = "Parent Account ID"
  value       = aws_organizations_account.account.parent_id
}

output "role_name" {
  description = "Account Role Name"
  value       = aws_organizations_account.account.role_name
}

output "status" {
  description = "Account Status"
  value       = aws_organizations_account.account.status
}

output "tags" {
  description = "Account Tags"
  value       = aws_organizations_account.account.tags
}

output "timestamp" {
  description = "Account creation timestamp"
  value       = aws_organizations_account.account.joined_timestamp
}
