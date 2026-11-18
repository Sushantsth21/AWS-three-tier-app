# Highly available three-tier web app on AWS

ALB → Auto Scaling group → RDS Multi-AZ across 2 Availability Zones, with static assets on S3 + CloudFront. Built entirely in Terraform and deployed with GitHub Actions (OIDC, no stored keys).

> Work in progress. Problem, design, diagram, cost and teardown sections are filled in as each layer lands.

## Progress
- [x] VPC + subnets (public / app / db tiers, 2 AZs, no NAT, S3 gateway endpoint)
- [x] Security groups
- [ ] ALB + Auto Scaling group
- [ ] RDS Multi-AZ
- [ ] S3 + CloudFront (OAC)
- [ ] CloudWatch alarms
- [ ] CI: GitHub Actions with OIDC
- [ ] Diagram, cost, teardown, write-up

## How to run
```bash
terraform init
terraform plan
terraform apply
terraform destroy   # always, at the end of each session
```
