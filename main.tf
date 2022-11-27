module "vpc" {
    source              = "./vendor/modules/vpc"
    VPC_CIDR            = var.VPC_CIDR
    PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
    PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
    ENV                 = var.ENV
    AZ                  = var.AZ
}   


# Always the source attribute in terraform module can not be parameterized

# if it can not be handled or parameterized the source, how are we going to tell, fetch from x brand and when branches are dynamic
