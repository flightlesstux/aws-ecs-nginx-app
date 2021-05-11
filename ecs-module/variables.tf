variable "aws_region" {
  type = string
  description = "AWS region"
}

variable "app_name" {
  type = string
  description = "Application name"
}

variable "app_environment" {
  type = string
  description = "Application environment"
}

variable "aws_key_pair_name" {
  type = string
  description = "AWS key pair name"
}

variable "admin_sources_cidr" {
  type = list(string)
  description = "List of IPv4 CIDR blocks from which to allow admin access"
}

variable "app_sources_cidr" {
  type = list(string)
  description = "List of IPv4 CIDR blocks from which to allow application access"
}

variable "cluster_runner_type" {
  type = string
  description = "EC2 instance type of ECS Cluster Runner"
  default = "t3.medium"
}

variable "cluster_runner_count" {
  type = string
  description = "Number of EC2 instances for ECS Cluster Runner" 
  default = "1"
}

variable "nginx_app_name" {
  description = "Name of Application Container"
  default = "nginx"
}

variable "nginx_app_image" {
  description = "Docker image to run in the ECS cluster"
}

variable "nginx_app_port" {
  description = "Port exposed by the Docker image to redirect traffic to"
  default = 80
}

variable "nginx_app_count" {
  description = "Number of Docker containers to run"
  default = 2
}

variable "nginx_fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default = "1024"
}

variable "nginx_fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default = "2048"
}
