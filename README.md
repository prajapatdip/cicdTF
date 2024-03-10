# GitLab CI/CD pipeline for AWS Infrastructure

* Created a robust CI/CD pipeline on GitLab which allows to create and maintain the Infrastructure on Amazon Web Services using Terraform

* The CI/CD pipeline leverages GitLab's extensive features for version control, automated testing, and continuous integration, ensuring seamless delivery of infrastructure updates. It integrates with AWS services through Terraform, enabling infrastructure as code (IaC) practices for provisioning, configuring, and managing resources.
## Prerequisites

Before you begin, ensure you have the following prerequisites:

- [x] [GitLab Account](https://gitlab.com/): Make sure you have GitLab account and necessary permissions to run the CI/CD pipeline
- [x]  [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): Make sure Terraform is installed on your local machine.
- [X]  [AWS Account](https://aws.amazon.com/console/): Ensure you have an AWS account with the necessary permissions to create infrastructure you needed (for this terraform script need permissions to create EC2 instance, VPC and Security Group)

## Getting Started

#### Step 1 : Clone the Repository.

```
git clone https://github.com/prajapatdip/cicdTF.git
cd cicdTF
```

#### Step 2 : Create the GitLab repository

```
# Create the GitLab project and run the following commands
git remote add origin https://gitlab.com/prajapatdip/cicdtf.git

# Set the three values of the environment variables in CI/CD variables in GitLab
1. AWS_ACCESS_KEY_ID
2. AWS_SECRET_ACCESS_KEY
3. AWS_DEFAULT_REGION (in .gitlab-ci.yml file)

git branch -M main
git push -uf origin main
```

### Step 3 : Completion
Once after successful completion of two stages (validate, plan) of the pipeline you can run the two stages (apply & destroy) manually on the basis of your requirements.
