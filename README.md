# Terraform EC2 Demo Module

This project demonstrates a simple Terraform module for provisioning an AWS EC2 instance.

## 📌 Configuration

- **Region:** ca-central-1  
- **AWS Account:** 768477844960  
- **AMI:** Latest Amazon Linux 2 (dynamically fetched)  
- **Instance Type:** t2.micro (free tier eligible)  
- **Key Pair:** sept23  
- **EBS Volume:** 8GB root volume  

---

## 📁 Project Structure

```
terraform-ec2-demo/
│
├── main.tf
├── outputs.tf
├── .gitignore
├── README.md
│
└── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

## 🚀 Usage

### 1. Initialize Terraform
```bash
terraform init
```

### 2. Preview changes
```bash
terraform plan
```

### 3. Apply configuration
```bash
terraform apply
```

---

## 📤 Outputs

- Instance ID  
- Public IP  

---

## ⚠️ Notes

- Uses default VPC and security group  
- No inbound rules explicitly defined  
- Intended for **demo purposes only**  

---

## 🔒 Best Practices (Not included here)

- Define security groups  
- Use remote state (S3 + DynamoDB)  
- Add tagging strategy  
- Use IAM roles instead of key pairs  

---

## 👤 Author

Demo Terraform module for AWS EC2 provisioning.
