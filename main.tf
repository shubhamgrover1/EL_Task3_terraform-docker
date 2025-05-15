terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "alpine" {
  name         = "alpine:latest"
  keep_locally = false
}

resource "docker_container" "alpine_container" {
  name  = "terraform_alpine"
  image = docker_image.alpine.name
  command = ["sleep", "3600"]
}
