variable "region" {
  description = "aws region to deploy in"
  type        = string
  default     = "us-east-2"
}

variable "vpc_id" {
  description = "id of the vpc to deploy instance in"
  type        = string
  default     = "vpc-0abe32a87d7cb4141"
}

