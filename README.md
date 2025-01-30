# dx-azure-policies

This repository contains all the Azure Policies made by DX and is designed to manage and deploy Azure policies using Terraform.
It organizes policy definitions and role assignments to ensure consistent governance across different environments.

## Repository Structure

```shell
infra/
├── resources/
│   ├── _policy_rules/        # Contains JSON files defining role policies
│   ├── dev/                  # Policies assigned to the development environment (DEV-ENGINEERING
│   ├── prod/                 # Policies assigned to the production environment (PROD-IO)
```

## Policy Rules (`infra/resources/_policy_rules`)

This directory contains JSON files that define the role policies to be used in Azure. These files specify permissions and constraints that can be assigned to users, groups, or services.

## Environment-Specific Policies (`infra/resources/dev and infra/resources/prod`)

These directories contain the policies that will be assigned using Terraform. Each policy references the definitions in `_policy_rules` and applies them to the appropriate Azure resources.
