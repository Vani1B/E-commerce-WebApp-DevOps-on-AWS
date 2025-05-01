output "s3_bucket_name" {
  description = "Name of the S3 bucket used for CodePipeline artifacts"
  value       = var.artifact_bucket_name
}


output "codepipeline_name" {
  value = aws_codepipeline.backend_pipeline.name
}

output "codebuild_project_name" {
  value = aws_codebuild_project.backend_build.name
}

output "codedeploy_app_name" {
  value = aws_codedeploy_app.backend_app.name
}
