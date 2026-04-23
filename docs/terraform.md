## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.35 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.35 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip_reservation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eip_settings"></a> [eip\_settings](#input\_eip\_settings) | (Optional) Elastic IP allocation settings. Default is {}. | <pre>object({<br/>    domain                      = optional(string, "vpc")<br/>    ip_address                  = optional(string, null)<br/>    associate_with_private_ip   = optional(string, null)<br/>    instance_id                 = optional(string, null)<br/>    network_interface_id        = optional(string, null)<br/>    public_ipv4_pool_id         = optional(string, null)<br/>    customer_owned_ipv4_pool_id = optional(string, null)<br/>    ipam_pool_id                = optional(string, null)<br/>  })</pre> | `{}` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add to the resources | `map(string)` | `{}` | no |
| <a name="input_is_hub"></a> [is\_hub](#input\_is\_hub) | Is this a hub or spoke configuration? | `bool` | `false` | no |
| <a name="input_org"></a> [org](#input\_org) | Organization details | <pre>object({<br/>    organization_name = string<br/>    organization_unit = string<br/>    environment_type  = string<br/>    environment_name  = string<br/>  })</pre> | n/a | yes |
| <a name="input_reservation_number"></a> [reservation\_number](#input\_reservation\_number) | (Optional) Number of Elastic IP addresses to allocate. Default is 1. | `number` | `1` | no |
| <a name="input_spoke_def"></a> [spoke\_def](#input\_spoke\_def) | Spoke ID Number, must be a 3 digit number | `string` | `"001"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip_ids"></a> [public\_ip\_ids](#output\_public\_ip\_ids) | Allocation IDs returned for the reserved Elastic IP addresses created by this module. |
| <a name="output_public_ips"></a> [public\_ips](#output\_public\_ips) | Reserved Elastic IP public IPv4 addresses created by this module. |
