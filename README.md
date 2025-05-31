# 🚀 AWS ECS Fargate Deployment with Terraform

This repository contains Infrastructure as Code (IaC) written in Terraform to provision and deploy a containerized application to **Amazon ECS (Elastic Container Service)** using **Fargate** as the compute engine.

---

## 🧰 Technologies Used

- **Terraform**
- **AWS ECS (Fargate)**
- **AWS VPC, Subnets, Security Groups**
- **AWS IAM Roles**
- **Amazon CloudWatch (Logging)**
- **Docker Container (via ECS Task Definition)**

---

## 📁 Project Structure

| File Name                       | Description |
|--------------------------------|-------------|
| `provider.tf`                  | Configures AWS provider with necessary region and credentials. |
| `main.tf`                      | Defines the VPC, subnets, ECS cluster, IAM roles, security groups, and networking setup. |
| `ecs_task.tf`                  | Contains ECS Task Definition, ECS Service, and related resources. |
| `terraform.tfstate*`           | State files used by Terraform to track infrastructure state (auto-generated, do not edit manually). |

---

## 🌐 Architecture Overview

```
User Request → Load Balancer (optional) → ECS Service → ECS Task (Docker Container) → Logs (CloudWatch)
                            ↑
                     VPC, Subnets, Security Groups
```

---

## 🚀 Getting Started

### 🔧 Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured (`aws configure`) with permissions to manage ECS, IAM, VPC, CloudWatch
- Valid AWS account and credentials

### ⏳ Deployment Steps

```bash
# Step 1: Initialize the working directory
terraform init

# Step 2: See what changes will be made
terraform plan

# Step 3: Apply the configuration to AWS
terraform apply
```

> ⚠️ Warning: Applying these configurations will create real AWS resources that may incur charges.

---

## 🔄 Updating Infrastructure

Make any changes to `.tf` files, then:

```bash
terraform plan
terraform apply
```

---

## 🧼 Destroying Infrastructure

To clean up all AWS resources created by this Terraform setup:

```bash
terraform destroy
```

---

## 📌 Notes

- This setup uses **AWS Fargate**, so no EC2 instances are required.
- You can modify the ECS Task Definition in `ecs_task.tf` to suit your container requirements.
- Networking resources like VPC and subnets are created from scratch in `main.tf`.

---

## 💡 Future Enhancements

- Add Application Load Balancer integration
- Configure CI/CD with GitHub Actions
- Use remote backend (e.g., S3 with DynamoDB locking) for state management
- Parameterize values using Terraform variables and workspaces

---

## 📜 License

This project is licensed under the MIT License.

---

## 🙋‍♂️ Author

**RajaAthiban**  
Cloud Enthusiast | AWS Certified | Terraform Developer  
[LinkedIn](https://www.linkedin.com/in/rajaathiban-v/)  
[GitHub](https://github.com/Rajaathiban)
