# 📌 Project Title
# Terraform AWS Infrastructure Setup
This project uses Terraform to provision AWS infrastructure, including VPC, subnets, security groups, and EC2 instances. It follows a modular structure for better scalability and reusability.

## 📁 Project Structure

- `.github/` – Contains GitHub Actions workflows for CI/CD automation.
- `modules/` – Reusable Terraform modules:
  - `vpc/` – VPC resource definition
  - `subnet/` – Subnet resource definition
  - `security-group/` – Security groups and firewall rules
  - `ec2/` – EC2 instance provisioning
- `main.tf` – Root module that calls other modules
- `variables.tf` – Input variable definitions for the root module
- `outputs.tf` – Output values for the root module
- `terraform.tfvars` – Variable values (environment-specific)
- `providers.tf` – AWS provider and region setup
- `backend.tf` – Remote backend configuration (S3 + DynamoDB)
