terraform {
  required_version = ">= 1.0"
}

module "this" {
  source = "../.."

  context = {
    project = {
      "name" = "project_name"
      "id"   = "project_id"
    }
    environment = {
      "name" = "environment_name"
      "id"   = "environment_id"
    }
    resource = {
      "name" = "resource_name"
      "id"   = "resource_id"
    }
  }

  hosts          = ["example.default-test.example-dev-dns"]
  hosts_readonly = ["example.read-only.default-test.example-dev-dns"]
  database       = "your-database"
  username       = "your-username"
  password       = "your-password"
}

output "context" {
  value = module.this.context
}

output "refer" {
  value     = module.this.refer
  sensitive = true
}

output "connection" {
  value = module.this.connection
}

output "connection_without_port" {
  value = module.this.connection_without_port
}

output "connection_readonly" {
  value = module.this.connection_readonly
}

output "connection_without_port_readonly" {
  value = module.this.connection_without_port_readonly
}

output "username" {
  value = module.this.username
}

output "password" {
  value     = module.this.password
  sensitive = true
}

output "endpoints" {
  value = module.this.endpoints
}

output "endpoints_readonly" {
  value = module.this.endpoints_readonly
}
