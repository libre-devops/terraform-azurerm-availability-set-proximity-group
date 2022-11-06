## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_availability_set.availability_set](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/availability_set) | resource |
| [azurerm_availability_set.availability_set_with_proximity_placement_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/availability_set) | resource |
| [azurerm_proximity_placement_group.proximity_placement_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/proximity_placement_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_set_name"></a> [availability\_set\_name](#input\_availability\_set\_name) | The name of an availability set if its created | `string` | n/a | yes |
| <a name="input_create_availability_set"></a> [create\_availability\_set](#input\_create\_availability\_set) | Whether an availability set should be created | `bool` | n/a | yes |
| <a name="input_create_proximity_placement_group"></a> [create\_proximity\_placement\_group](#input\_create\_proximity\_placement\_group) | Whether a proximity placement group should be created | `bool` | `false` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of user managed identity ids to be assigned to the VM. | `list(string)` | `[]` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The Managed Service Identity Type of this Virtual Machine. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for this resource to be put in | `string` | n/a | yes |
| <a name="input_platform_fault_domain_count"></a> [platform\_fault\_domain\_count](#input\_platform\_fault\_domain\_count) | The number of platform fault domains | `number` | n/a | yes |
| <a name="input_platform_update_domain_count"></a> [platform\_update\_domain\_count](#input\_platform\_update\_domain\_count) | The number of update domains | `number` | n/a | yes |
| <a name="input_proximity_placement_group_name"></a> [proximity\_placement\_group\_name](#input\_proximity\_placement\_group\_name) | The name of a proximity placement group | `string` | `null` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of the tags to use on the resources that are deployed with this module. | `map(string)` | <pre>{<br>  "source": "terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_set_id"></a> [availability\_set\_id](#output\_availability\_set\_id) | The name of an availability set |
| <a name="output_availability_set_name"></a> [availability\_set\_name](#output\_availability\_set\_name) | The name of an availability set |
| <a name="output_proximity_placement_group_id"></a> [proximity\_placement\_group\_id](#output\_proximity\_placement\_group\_id) | The id of a proximity placement group |
| <a name="output_proximity_placement_group_name"></a> [proximity\_placement\_group\_name](#output\_proximity\_placement\_group\_name) | The name of a proximity placement group |
