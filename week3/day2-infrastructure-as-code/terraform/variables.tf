# Week 3 - Day 2: Terraform Variables

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Name of the application"
  type        = string
  default     = "devops-app"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "staging"
  validation {
    condition     = contains(["staging", "production"], var.environment)
    error_message = "Environment must be 'staging' or 'production'."
  }
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04 (update per region)"
  type        = string
  default     = "ami-0c7217cdde317cfec" # us-east-1 Ubuntu 22.04
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
}

variable "your_ip" {
  description = "Your IP address for SSH access (e.g. 1.2.3.4/32)"
  type        = string
}

variable "docker_image" {
  description = "Docker image to run on the instance"
  type        = string
  default     = "yourusername/devops-app:latest"
}
