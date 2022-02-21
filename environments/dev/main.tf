provider "aws" {
  region     = "us-west-2"
}

module "ecs-module" {
    source = "../../modules/ecs"
    vpc_cidr    =   "192.16.0.0/16"
    tenancy = "default"
    cidr_pub_sub    =   var.cidr_pub_sub
    cidr_priv_sub   =   var.cidr_priv_sub
    subnet_azs      =   var.subnet_azs
}