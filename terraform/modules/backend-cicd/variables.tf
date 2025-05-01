variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name for backend"
  type        = string
}

variable "github_branch" {
  description = "Branch to track for backend deployment"
  type        = string
}

variable "codestar_connection_arn" {
  description = "CodeStar GitHub connection ARN"
  type        = string
}

variable "artifact_bucket_name" {
  description = "S3 bucket used by CodePipeline"
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
