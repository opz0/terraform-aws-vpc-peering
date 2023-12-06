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
  requestor_vpc_id = "vpc-098ae8ed7cc52cd42"
  acceptor_vpc_id  = "vpc-0ab206e9e410a0edc"
}