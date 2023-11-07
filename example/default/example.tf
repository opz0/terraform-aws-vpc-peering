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
  requestor_vpc_id = "vpc-022bcc2b5b68b0dd7"
  acceptor_vpc_id  = "vpc-0408156477974f013"
}