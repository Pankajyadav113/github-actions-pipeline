terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "terraform_test" {
  filename = "${path.module}/terraform-output.txt"

  content = <<-EOT
  Terraform CI executed successfully.
  This file was created by Terraform.
  EOT
}