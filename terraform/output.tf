output "environment" {
  value = var.environment
}

output "terraform_file" {
  value = local_file.terraform_test.filename
}