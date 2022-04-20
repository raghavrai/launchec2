# Airbus Code Challenge

This project has two assignments. First, a terraform project to launch an ec2 instance and second is a lambda function to get list of instances per region.

## Prerequisites

Terraform installed.  
AWS account with programmatic access.


## Usage of Terraform Project

```terraform
# initiates terraform
terraform init

# validates the tf configuration
terraform validate

# shows the actions it would take after running tf apply
terraform plan

# applies the changes in the target environment
terraform apply
```

## About lambda function
This function is written in Python and uses boto3 library for creating the client and fetching ec2 information.  

It returns a dictionary having list of all instances in every region. It also prints this information during execution of function one by one per region.

## Usage of function
This function can be configured with 'enabled function url' to have http endpoint assigned to it. By this, it will act as an independent microservice without needing API gateway.
