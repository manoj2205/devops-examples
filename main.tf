terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello_file" {
  content  = "Hello world from Terraform!"
  filename = "hello.txt"
}