output "rds_endpoint" {
  description = "RDS endpoint to connect from backend"
  value       = aws_db_instance.ecommerce_db.endpoint
}
output "s3_website_url" {
  value = module.frontend_cicd.s3_website_url
}

output "codepipeline_name" {
  value = module.frontend_cicd.codepipeline_name
}
output "backend_codepipeline_name" {
  value = module.backend_cicd.codepipeline_name
}
