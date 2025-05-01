variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "instance_name" {
  description = "Name prefix for VPC, Subnet, SG, and EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Name of key pem"
  type        =  string
  default     = "devops-demo"

}

variable "ami_id" {
  description = "AMI ID to use for EC2 instance"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
