# 3-Tier Architecture Deployment on AWS

This project demonstrates a 3-Tier Architecture deployed on AWS using ECS, ECR, RDS, and Terraform. The application is a Dockerized Node.js service connected to a MySQL database managed by AWS RDS.

## Features

- **Load Balancer:** Application Load Balancer (ALB) to handle HTTP traffic.
- **Backend:** Dockerized Node.js application running on ECS Fargate.
- **Database:** MySQL database managed by AWS RDS.
- **Infrastructure as Code:** Managed using Terraform.
- **Continuous Deployment:** Automated with GitHub Actions.

## Getting Started

### Prerequisites

- **AWS Account:** Ensure you have an AWS account with necessary permissions.
- **Terraform:** Installed on your local machine.
- **Docker:** Installed for building Docker images.
- **GitHub Repository:** To host your code and GitHub Actions workflows.

### Setup Instructions

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/teleanucalin/LSEG-task
    cd your-repo
    ```

2. **Configure AWS CLI:**

    ```bash
    aws configure
    ```

    Enter your AWS Access Key ID, Secret Access Key, region (`eu-central-1`), and output format.

3. **Initialize Terraform:**

    ```bash
    cd terraform
    terraform init
    terraform apply -var-file="terraform.tfvars" -auto-approve
    ```

    This will set up the necessary AWS resources, including ECR, ECS, RDS, and ALB.

## Deployment

Deployment is automated using the `deploy.sh` script. To deploy manually:

```bash
./deploy.sh
```

Alternatively, deployments are triggered automatically via GitHub Actions on every push to the `main` branch.

## Testing

After deployment, you can test the application by accessing the following URL:

[http://app-alb-1956200333.eu-central-1.elb.amazonaws.com/](http://app-alb-1956200333.eu-central-1.elb.amazonaws.com/)

You should see a response confirming the successful deployment of your application.

## Technologies Used

- **AWS ECS:** Container orchestration.
- **AWS ECR:** Container registry.
- **AWS RDS:** Managed MySQL database.
- **Terraform:** Infrastructure as Code.
- **Docker:** Containerization.
- **GitHub Actions:** CI/CD automation.
