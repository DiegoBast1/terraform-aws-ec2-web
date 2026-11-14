# Terraform AWS EC2 Web Server
## Project Overview

This project demonstrates how to provision an AWS EC2 instance using Terraform.

The infrastructure includes an EC2 instance and a Security Group to control inbound and outbound traffic.

The goal of this project is to automate AWS infrastructure deployment using Terraform and follow IaC best practices.

# Architecture:

## The project provisions the following AWS resources:

- Amazon EC2: Virtual server to host a web application.  
- Security Group: Controls inbound and outbound network traffic.   
- Terraform: Automates infrastructure provisioning.  

## Technologies used:

- AWS    
- Terraform     
- Git        
- GitHub    
- Visual Studio Code

## Project Structure

```text
terraform-aws-ec2-web/
│
├── main.tf
├── ec2.tf
├── .terraform.lock.hcl
├── .gitignore
└── README.md
```

## Prerequisites:

- An AWS account  
- AWS CLI installed and configured    
- Terraform installed   
- Git installed   

# Deployment:
1. Created ec2.tf and main.tf files

2. Initialize Terraform:

   - terraform init

4. Validate the configuration:

   - terraform validate

5. Review the execution plan:

   - terraform plan

6. Deploy the infrastructure:

   - terraform apply

7. Typed "yes" to confirm deployment.

   - Destroy Infrastructure

## To remove the AWS resources created by Terraform:

- terraform destroy  

- confirm the operation when prompted.  

## Security Considerations:

- Terraform state files are excluded from Git using .gitignore.

- Created a security group to manage inbound and outbound rules.

- *Infrastructure should be deployed only when needed to avoid unnecessary AWS costs, in this case, I stopped the instance to avoid unexpected costs and security threats. Considering I published the ports.*


