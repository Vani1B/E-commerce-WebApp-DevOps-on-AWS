variable "aws_region" {
  default = "us-east-1" # or your nearest AWS region
}

variable "db_name" {
  default = "ecommerce"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "YourStrongPassword123"
}

variable "db_instance_class" {
  default = "db.t3.micro" # free tier eligible
}

variable "db_allocated_storage" {
  default = 20
}
variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "ec2_ami" {
  description = "EC2 AMI ID"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "github_owner" {
  description = "GitHub username/organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "github_branch" {
  description = "Branch to track in GitHub"
  type        = string
}

variable "codestar_connection_arn" {
  description = "CodeStar GitHub connection ARN"
  type        = string
}

variable "artifact_bucket_name" {
  description = "Name of the S3 bucket used by CodePipeline"
  type        = string
}

variable "frontend_bucket_name" {
  description = "S3 bucket for frontend (optional, if used in tfvars)"
  type        = string
}
variable "backend_repo" {
  description = "GitHub repository name for backend"
  type        = string
}

variable "ec2_instance_tag_key" {
  description = "EC2 instance tag key for CodeDeploy"
  type        = string
}

variable "ec2_instance_tag_value" {
  description = "EC2 instance tag value for CodeDeploy"
  type        = string
}
