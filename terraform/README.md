# Terraform Configuration for EC2 Instance

This Terraform configuration creates a t3.medium EC2 instance in the ap-south-1 region with Ubuntu 24.04 LTS.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed

## Usage

1. Navigate to this directory:
   ```bash
   cd terraform
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Plan the deployment:
   ```bash
   terraform plan
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

5. To destroy the resources:
   ```bash
   terraform destroy
   ```

## Configuration Details

- **Instance Type**: t3.medium
- **Region**: ap-south-1
- **AMI**: Latest Ubuntu 24.04 LTS
- **Key Pair**: pem.pem
- **Security Group**: default
- **VPC**: default
- **Count**: 1