provider "aws" {
  region = "eu-west-1"
}

locals {
  name        = "peering"
  environment = "test"
}

module "vpc-peering" {
  source = "./../../"

  name             = local.name
  environment      = local.environment
  requestor_vpc_id = "vpc-045eae4d6b443a318"
  acceptor_vpc_id  = "vpc-04cb13c74100e2e90"
}