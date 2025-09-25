✅ README.md
# AWS Resource Dashboard

A simple Flask web application that uses **Boto3** to fetch and display information about AWS resources, including:

- EC2 Instances
- VPCs
- Load Balancers
- Custom AMIs

---

## 📦 Features

- Display running EC2 instances with public IPs.
- List all VPCs and their CIDR blocks.
- Show Application Load Balancers and DNS names.
- Display AMIs owned by your AWS account.

---

## 🚀 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/aws-dashboard.git
cd aws-dashboard

2. Create a Virtual Environment (Recommended)
python -m venv venv
# Activate:
# On Windows:
venv\Scripts\activate
# On Mac/Linux:
source venv/bin/activate

3. Install Required Packages
pip install -r requirements.txt


Or manually:

pip install flask boto3

🔐 AWS Credentials Setup

The app requires AWS credentials and a region to connect to your AWS account.

You can set them as environment variables:

On Windows (CMD):
set AWS_ACCESS_KEY_ID=your_access_key
set AWS_SECRET_ACCESS_KEY=your_secret_key
set AWS_REGION=us-east-2

On Mac/Linux or WSL:
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_REGION=us-east-2


🔒 Never hardcode your AWS keys in the code.

🏃‍♂️ Running the App

Once credentials and dependencies are set:

python app.py


Then open your browser and go to:

http://localhost:5001

🖥️ Output Preview

The app renders four HTML tables:

Running EC2 Instances

VPCs

Load Balancers

Available AMIs

🛠️ Project Structure
├── app.py
├── requirements.txt
└── README.md

✅ Requirements

Python 3.7+

Boto3

Flask

AWS Account with permissions:

ec2:DescribeInstances

ec2:DescribeVpcs

ec2:DescribeImages

elasticloadbalancing:DescribeLoadBalancers

📌 Notes

If nothing appears on the page, make sure:

You're using the correct AWS region.

You have running EC2 instances or defined resources.

Your AWS keys belong to the correct account.

🧾 License

This project is open-source and free to use. Add a license if needed.

🙋 Support

Feel free to open issues or submit PRs for improvements.


---



