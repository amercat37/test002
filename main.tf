terraform {
  required_version = ">= 1.6.0"
}

variable "environment" {
  type = string
}

variable "build_id" {
  type = string
}

resource "terraform_data" "deployment" {
  input = {
    environment = var.environment
    build_id    = var.build_id
  }
}
