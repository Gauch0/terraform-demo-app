# AWS EC2 Security Group Terraform Module
# Security Group for Private EC2 Instances

module "private_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.0"

  name = "private-sg"
  description = "Security Group with HTTP & SSH port open for entire (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id

  # Ingress Rules & CIDR Block

  ingress_rules = ["shh-tcp","http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  # Egress Rule - all-all open

  egress_rules = ["all-all"]
  tags = local.common_tags

}