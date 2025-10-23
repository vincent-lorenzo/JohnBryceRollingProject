🚀 Terraform EC2 Docker Builder

Provision an AWS EC2 instance named builder with Terraform, complete with secure SSH access, restricted security group, and ready to run Docker.

📦 Features

Automatically creates a 4096-bit RSA SSH key pair

Launches an EC2 instance with the latest Ubuntu 20.04 LTS AMI

Restricts SSH (port 22) and app port (5001) access to your current public IP

Uses a specified VPC and public subnet for deployment

Outputs instance public IP, security group ID, and SSH key info

🛠️ Setup Instructions

Clone the repo:

git clone https://github.com/your-username/terraform-ec2-docker-builder.git
cd terraform-ec2-docker-builder


Configure variables:

Edit vars.tf if you want to change the AWS region or VPC ID.

Initialize Terraform:

terraform init


Review the plan:

terraform plan


Apply the configuration:

terraform apply


Confirm with yes when prompted.

🔐 Access Your EC2 Instance

After deployment, Terraform outputs:

The public IP of the EC2 instance

The path to your private SSH key file (builder_key.pem)

The security group ID

The SSH key name

SSH into the instance with:

ssh -i builder_key.pem ubuntu@<instance_public_ip>

📁 Project Structure
├── main.tf          # Terraform resources and data sources
├── output.tf        # Terraform output definitions
├── vars.tf          # Variables for region and VPC ID
├── providers.tf     # AWS provider configuration
└── README.md        # This file

📝 Variables
Name	Description	Default
region	AWS region to deploy in	us-east-2
vpc_id	VPC ID to deploy the instance in	vpc-0abe32a87d7cb4141

Modify vars.tf to use your preferred region or VPC.

⚠️ Notes

Instance type is set to "c7i-flex.large" but can be adjusted in main.tf.

SSH and app port (5001) access is limited to your current IP for security.

Private key (builder_key.pem) has restrictive permissions (0600) — keep it safe.

Docker and Docker Compose installation are not automated; install manually after SSH or extend with Terraform user data.

🧹 Cleanup

To remove all created AWS resources:

terraform destroy

🙋 Support

Open issues or pull requests are welcome!

📜 License

Open source and free to use.