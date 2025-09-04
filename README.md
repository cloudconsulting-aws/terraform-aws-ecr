# aws-terraform-ecr
Terraform module for creating and managing AWS ECR repositories with security, lifecycle policies, and access controls.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | The tag mutability setting for the repository | `string` | `"MUTABLE"` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | Name of the ECR repository | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_arn"></a> [repository\_arn](#output\_repository\_arn) | The ARN of the ECR repository |
| <a name="output_repository_id"></a> [repository\_id](#output\_repository\_id) | The ID of the ECR repository |
| <a name="output_repository_name"></a> [repository\_name](#output\_repository\_name) | The name of the ECR repository |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | The URL of the ECR repository |
<!-- END_TF_DOCS -->

## Usage

```hcl
module "ecr" {
    source           = "cloudconsulting/terraform-aws-ecr"
    repository_name  = "my-ecr-repo"
    image_tag_mutability = "IMMUTABLE"
    tags = {
        Environment = "production"
        Team        = "devops"
    }
}
```

## Example

See the [`examples`](./examples) directory for sample configurations.

## License

This project is licensed under the [Apache License 2.0](LICENSE).

## Contributing

Contributions are welcome! Please open issues or submit pull requests.

## Authors

- Cloudnx
- [Asaph Tinoco](https://github.com/asaphtinoco)
