output "s3_website_url" {
  value = aws_s3_bucket_website_configuration.frontend_website.website_endpoint
}

output "codepipeline_name" {
  value = aws_codepipeline.frontend_pipeline.name
}

