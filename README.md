# terraform-aws-account

Create an AWS account in an AWS Organization.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_account_region.regions](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/account_region) | resource |
| [aws_organizations_account.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_regions"></a> [allowed\_regions](#input\_allowed\_regions) | List of AWS regions to enable in the account | `list(string)` | `[]` | no |
| <a name="input_denied_regions"></a> [denied\_regions](#input\_denied\_regions) | List of AWS regions to enable in the account | `list(string)` | `[]` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address of the account | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the account | `string` | n/a | yes |
| <a name="input_organizational_unit_id"></a> [organizational\_unit\_id](#input\_organizational\_unit\_id) | The ID of the parent organizational unit for the account | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the IAM role to use for the account | `string` | `"myOrganizationRole"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the account | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Account ARN |
| <a name="output_email"></a> [email](#output\_email) | Account Email |
| <a name="output_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#output\_iam\_user\_access\_to\_billing) | IAM User Access to Billing |
| <a name="output_id"></a> [id](#output\_id) | Account ID |
| <a name="output_name"></a> [name](#output\_name) | Account Name |
| <a name="output_parent_id"></a> [parent\_id](#output\_parent\_id) | Parent Account ID |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Account Role Name |
| <a name="output_status"></a> [status](#output\_status) | Account Status |
| <a name="output_tags"></a> [tags](#output\_tags) | Account Tags |
| <a name="output_timestamp"></a> [timestamp](#output\_timestamp) | Account creation timestamp |
<!-- END_TF_DOCS -->