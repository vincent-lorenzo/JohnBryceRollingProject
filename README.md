# AWS Resource Monitor ☁️ 📊

A containerized Flask application that provides a real-time dashboard of your AWS infrastructure. Built with a full CI/CD pipeline using Jenkins, Docker, and Python (Boto3).

## 🚀 Features
* **Live Dashboard**: Monitors EC2 instances, S3 Buckets, and VPCs.
* **CI/CD Integrated**: Automated linting, security scanning, and deployment via Jenkins.
* **Dockerized**: Portable and ready to run on any environment.
* **Security Focused**: Scanned with `bandit` for security vulnerabilities.

---

## 🏗️ Architecture
The project follows a modern DevOps workflow:
1. **Source**: Code is pushed to GitHub.
2. **CI**: Jenkins triggers a pipeline that runs:
    * **Flake8**: For Python code style (Linting).
    * **Bandit**: For security vulnerability scanning.
3. **Build**: Jenkins builds a Docker image and pushes it to Docker Hub.
4. **Deploy**: The image is pulled and run on an EC2 instance.



---

## 🛠️ How to Run (Universal Instructions)

Anyone can run this monitor by pulling the image from my Docker Hub. Use one of the following methods:

### Method 1: Using Environment Variables (Recommended for local/general use)
Replace the placeholders with your AWS credentials:
```bash
docker run -d \
  -p 5001:5001 \
  -e AWS_ACCESS_KEY_ID="your_access_key" \
  -e AWS_SECRET_ACCESS_KEY="your_secret_key" \
  -e AWS_DEFAULT_REGION="us-east-1" \
  vincentlorenzo/flask-aws-monitor:latest
Method 2: Using an IAM Role (Recommended for EC2 deployment)
If running on an EC2 with an attached IAM Role (e.g., ReadOnlyAccess), use host networking:

Bash
docker run -d --network host vincentlorenzo/flask-aws-monitor:latest
📁 Project Structure
python/app.py: The Flask application logic.

python/templates/: HTML dashboard layout.

Docker/Dockerfile: Multi-stage build for the application.

Jenkinsfile: Pipeline-as-code configuration.

📝 Prerequisites
Docker installed.

AWS Account with programmatic access.

(For CI/CD) A Jenkins server with Docker and Python installed.

Developed as part of the John Bryce DevOps Project.