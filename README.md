# terraform-oci-bucket

[![Build Status](https://github.com/JamesWoolfenden/terraform-oci-bucket/workflows/Verify%20and%20Bump/badge.svg?branch=main)](https://github.com/JamesWoolfenden/terraform-oci-bucket)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-oci-bucket.svg)](https://github.com/JamesWoolfenden/terraform-oci-bucket/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-oci-bucket.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-oci-bucket/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-oci-bucket/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-oci-bucket&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-oci-bucket/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-oci-bucket&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module - a storage bucket in OCI.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```terraform
module "bucket" {
  source          = "JamesWoolfenden/bucket/oci"
  version         = "0.0.2"
  oci_kms_key    = oci_kms_key.test_key
  compartment_id = oci_identity_compartment.tf-compartment.id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_objectstorage_bucket.example](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/objectstorage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_access_type"></a> [bucket\_access\_type](#input\_bucket\_access\_type) | n/a | `string` | `"NoPublicAccess"` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `string` | `"myfirstbucket"` | no |
| <a name="input_bucket_storage_tier"></a> [bucket\_storage\_tier](#input\_bucket\_storage\_tier) | n/a | `string` | `"Standard"` | no |
| <a name="input_bucket_versioning"></a> [bucket\_versioning](#input\_bucket\_versioning) | n/a | `string` | `"Enabled"` | no |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | n/a | `any` | n/a | yes |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | n/a | `map` | <pre>{<br>  "Operations.CostCenter": "42"<br>}</pre> | no |
| <a name="input_freeform_tags"></a> [freeform\_tags](#input\_freeform\_tags) | n/a | `map` | <pre>{<br>  "Department": "Finance"<br>}</pre> | no |
| <a name="input_kms_key"></a> [kms\_key](#input\_kms\_key) | n/a | `any` | n/a | yes |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | n/a | `map(any)` | <pre>{<br>  "data": "Blockofdata"<br>}</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `any` | n/a | yes |
| <a name="input_object_events_enabled"></a> [object\_events\_enabled](#input\_object\_events\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_oci_kms_key"></a> [oci\_kms\_key](#input\_oci\_kms\_key) | n/a | `string` | `""` | no |
| <a name="input_retention_rule_display_name"></a> [retention\_rule\_display\_name](#input\_retention\_rule\_display\_name) | n/a | `string` | `"SomeRuleName"` | no |
| <a name="input_retention_rule_duration_time_amount"></a> [retention\_rule\_duration\_time\_amount](#input\_retention\_rule\_duration\_time\_amount) | n/a | `number` | `60` | no |
| <a name="input_retention_rule_duration_time_unit"></a> [retention\_rule\_duration\_time\_unit](#input\_retention\_rule\_duration\_time\_unit) | n/a | `string` | `"m"` | no |
| <a name="input_retention_rule_time_rule_locked"></a> [retention\_rule\_time\_rule\_locked](#input\_retention\_rule\_time\_rule\_locked) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-oci-bucket/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-oci-bucket/issues) to report any bugs or file feature requests.

## Copyrights

Copyright 2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-oci-bucket&url=https://github.com/JamesWoolfenden/terraform-oci-bucket
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-oci-bucket&url=https://github.com/JamesWoolfenden/terraform-oci-bucket
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-oci-bucket
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-oci-bucket
[share_email]: mailto:?subject=terraform-oci-bucket&body=https://github.com/JamesWoolfenden/terraform-oci-bucket
