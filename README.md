
# Terraform for WordPress on AWS

This Terraform project automates the deployment of the infrastructure required to host a WordPress application on AWS. It sets up a modular and scalable environment including networking, an EKS (Elastic Kubernetes Service) cluster, and necessary IAM roles. The project supports multiple environments: development, staging, and production.

## Directory Structure

```
Terraform-for-WordPress-on-AWS/
├── modules/
│   ├── networking/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── eks/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── iam/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── backend.tf
│   │   ├── terraform.tfvars  (optional)
│   │   └── outputs.tf       (optional)
│   ├── staging/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── backend.tf
│   │   ├── terraform.tfvars  (optional)
│   │   └── outputs.tf       (optional)
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── backend.tf
│       ├── terraform.tfvars  (optional)
│       └── outputs.tf       (optional)
├── .gitignore
└── README.md
```

- **modules/**: Reusable Terraform modules:
  - **networking**: Configures VPC, subnets, security groups, etc.
  - **eks**: Provisions an EKS cluster for hosting WordPress.
  - **iam**: Defines IAM roles and policies.
- **environments/**: Environment-specific configurations:
  - **dev**: Development environment.
  - **staging**: Staging environment.
  - **prod**: Production environment.

Each environment includes:
  - `main.tf`: Main configuration.
  - `variables.tf`: Environment-specific variables.
  - `backend.tf`: Backend configuration for state management.
  - `terraform.tfvars` (optional): Variable values.
  - `outputs.tf` (optional): Output definitions.

## Configuration

1. Navigate to the desired environment directory (e.g., `environments/dev/`).
2. (Optional) Edit `terraform.tfvars` to set environment-specific variables.
3. Ensure `backend.tf` is configured correctly for state management.

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```
2. Plan the infrastructure:
   ```bash
   terraform plan
   ```
   Review the plan carefully.
3. Apply the changes:
   ```bash
   terraform apply
   ```
4. Check the outputs for important information (e.g., EKS cluster endpoint).

## Backend Configuration

Each environment uses an S3 backend for state management, as defined in `backend.tf`. Ensure the specified S3 bucket exists and is accessible.

## Cleanup

To remove the infrastructure:
```bash
terraform destroy
```
**Caution**: This deletes all created resources.
