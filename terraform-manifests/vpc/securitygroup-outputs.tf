
## public_bastion_sg_group_id
output "public_bastion_sg_group_id" {
    description         = "The ID of the security group"
    value               = module.public_bastion_sg.this_security_group_id 
}

## public_bastion_sg_group_vpc_id
output "public_bastion_sg_group_vpc_id" {
    description         = "The VPC ID"
    value               = modue.public_bastion_sg.this_security_group_vpc_id 
}

output "public_bastion_sg_group_name" {
    description         = "The Security Group Name ID"
    value               = module.public_bastion_sg.this_security_group_name
}

# Private EC2 Instances Security Group Outputs
## private_sg_group_id
output "private_sg_group_id" {
    description         = "The name of the security"
    value               = module.private_bastion_sg.this_security_group_id
}
## private_sg_group_vpc_id
output "private_sg_group_vpc_id" {
    description         = "The name of the security"
    value               = module.private_bastion_sg.this_security_group_vpc_id
}

## private_sg_group_name
output "private_sg_group_name" {
    description         = "The name of the security"
    value               = module.private_bastion_sg.this_security_group_name
}