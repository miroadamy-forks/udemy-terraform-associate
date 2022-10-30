provider "github" {
  token = var.token # or `GITHUB_TOKEN`
}

variable "token" {
  
}

data "github_repositories" "example" {
  query = "org:hashicorp language:Go"
}

output "repos" {
    value = data.github_repositories.example
  
}