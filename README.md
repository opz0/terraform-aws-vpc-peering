# terraform-aws-vpc-peering

# AWS Infrastructure Provisioning with Terraform-aws-vpc-Peering module

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)


## Introduction

This module is designed for peering two Amazon Virtual Private Clouds (VPCs) using AWS infrastructure. It provides a streamlined way to create a VPC peering connection between two VPCs in the `eu-west-1` region. The module is customizable and can be easily integrated into your Terraform infrastructure.

## Usage

To use this module, include it in your Terraform configuration. Here is an example snippet:
## examples

# Example: default
```hcl
module "vpc-peering" {
  source           = "git::https://github.com/cypik/terraform-aws-vpc-peering.git?ref=v1.0.0"
  name             = local.name
  environment      = local.environment
  requestor_vpc_id = "vpc-045eae4d6b443a318"
  acceptor_vpc_id  = "vpc-04cb13c74100e2e90"
}
```

# Example: multi-region

```hcl
module "vpc-peering" {
  source           = "git::https://github.com/cypik/terraform-aws-vpc-peering.git?ref=v1.0.0"
  name             = "vpc-peering"
  environment      = "prod"
  label_order      = ["environment", "name"]
  requestor_vpc_id = "vpc-0dafb7e1998d88788"
  acceptor_vpc_id  = "vpc-009adfebb640d4509"
  accept_region    = "us-east-1"
  auto_accept      = false
}
```

## Module Inputs

The following inputs can be configured when using this module:

- `name` (string): A name for the peering configuration.
- `environment` (string): The environment in which the peering connection is being created.
- `requestor_vpc_id` (string): The ID of the VPC that initiates the peering request.
- `acceptor_vpc_id` (string): The ID of the VPC that accepts the peering request.
- `label_order` (list of strings): The order in which labels should be applied to the peering connection.
- `accept_region` (string): The AWS region where the accepting VPC is located.
- `auto_accept` (bool): Whether to automatically accept the peering request (true/false).


## Module Outputs

This module provides no specific outputs.
- id - The ID of the VPC Peering Connection.
- accept_status - The status of the VPC Peering Connection request.
- tags - (Optional) A map of tags to assign to the resource.


## Examples
For detailed examples on how to use this module, please refer to the [Examples](https://github.com/cypik/terraform-aws-vpc-peering/tree/master/example) directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/cypik/terraform-aws-vpc-peering/blob/master/LICENSE) file for more details.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
