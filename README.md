# Terraform for WordPress on AWS

### Directory Structure

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

- **modules/**: Contains reusable Terraform modules for infrastructure components.
- **environments/**: Contains environment-specific configurations (dev, staging, prod).
- **Root-level files**: `.gitignore` for version control exclusions and `README.md` for documentation.

This Terraform project manages the infrastructure for a WordPress production environment using a modular and scalable structure.

## Usage

1. Navigate to an environment directory (e.g., `environments/dev/`).
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Plan the infrastructure:
   ```bash
   terraform plan
   ```
4. Apply the changes:
   ```bash
   terraform apply
   ```

## Modules

- **networking**: Configures VPC, subnets, and related resources.
- **eks**: Sets up an EKS cluster for WordPress.
- **iam**: Defines IAM roles and policies.

## Environments

- **dev**: Development environment.
- **staging**: Staging environment.
- **prod**: Production environment.

Each environment contains `main.tf`, `variables.tf`, `backend.tf`, and optionally `terraform.tfvars` and `outputs.tf`.