provider "aws" {
  region = "eu-west-1"
}

module "vpc-peering" {
  source           = "./../.."
  name             = "vpc-peering"
  environment      = "prod"
  label_order      = ["environment", "name"]
  requestor_vpc_id = "vpc-0dafb7e1998d88788"
  acceptor_vpc_id  = "vpc-009adfebb640d4509"
  accept_region    = "us-east-1"
  auto_accept      = false
}

