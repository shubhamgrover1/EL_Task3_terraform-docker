## Task 3: Infrastructure as Code (IaC) with Terraform

This project provisions a local Docker container using Terraform.  
We used the `kreuzwerker/docker` provider to create an `alpine` container running a sleep command.

### Steps:
- `terraform init`
- `terraform plan`
- `terraform apply`
- `terraform destroy`
- Verified using `terraform state` and `docker ps`

### Output
A lightweight Alpine container is launched locally and managed through Terraform.

