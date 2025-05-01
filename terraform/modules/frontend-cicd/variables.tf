variable "frontend_bucket_name" {
  description = "The name of the S3 bucket to host the frontend"
  type        = string
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_branch" {
  description = "Branch to deploy from"
  type        = string
}

variable "codestar_connection_arn" {
  description = "CodeStar connection ARN for GitHub"
  type        = string
}

variable "artifact_bucket_name" {
  description = "S3 bucket used for CodePipeline artifacts"
  type        = string
}
