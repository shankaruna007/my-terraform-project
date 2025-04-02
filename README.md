# Terraform AWS Infrastructure

This Terraform configuration provisions a VPC, subnet, security group, and an EC2 instance in AWS.

## Modules
- **VPC**: Creates a VPC with a given CIDR block.
- **Subnet**: Provisions a subnet inside the VPC.
- **Security Group**: Manages security group rules.
- **EC2**: Deploys an EC2 instance within the subnet and security group.

## Usage
```sh
terraform init
terraform plan
terraform apply -auto-approve
