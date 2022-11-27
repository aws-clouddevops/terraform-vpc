module "vpc" {
    source = "./vendor/modules/vpc"
    VPC_CIDR = var.VPC_CIDR
}


# Always the source attribute in terraform module can not be parameterized

# if it can not be handled or parameterized the source, how are we going to tell, fetch from x brand and when branches are dynamic
