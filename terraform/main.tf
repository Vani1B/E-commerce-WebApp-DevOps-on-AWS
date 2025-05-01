# -------------------------
# MySQL Security Group
# -------------------------
resource "aws_security_group" "rds_sg" {
  name = "rds-security-group"

  ingress {
    description = "MySQL ingress"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # ⚠️ Consider limiting this later
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -------------------------
# RDS Instance (MySQL)
# -------------------------
resource "aws_db_instance" "ecommerce_db" {
  identifier             = "ecommerce-db"
  allocated_storage      = var.db_allocated_storage
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = var.db_instance_class
  db_name                = var.db_name 
  username               = var.db_username
  password               = var.db_password
  publicly_accessible    = true
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}

# -------------------------
# EC2 + VPC Module
# -------------------------
module "ec2" {
  source         = "./modules/ec2"
  aws_region     = var.aws_region
  instance_name  = "backend-ec2"
  key_name       = var.key_name
  ami_id         = var.ec2_ami
  instance_type  = var.ec2_instance_type
}

# -------------------------
# Frontend CI/CD Module
# -------------------------
module "frontend_cicd" {
  source                  = "./modules/frontend-cicd"

  frontend_bucket_name    = var.frontend_bucket_name
  github_owner            = var.github_owner
  github_branch           = var.github_branch
  codestar_connection_arn = var.codestar_connection_arn
  artifact_bucket_name    = var.artifact_bucket_name
}

module "backend_cicd" {
  source                  = "./modules/backend-cicd"

  github_owner            = var.github_owner
  github_repo             = var.backend_repo
  github_branch           = var.github_branch
  codestar_connection_arn = var.codestar_connection_arn
  artifact_bucket_name    = var.artifact_bucket_name
  ec2_instance_tag_key    = "Name"
  ec2_instance_tag_value  = "BackendApp"
}
