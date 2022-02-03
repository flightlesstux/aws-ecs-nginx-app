output "vpc_id" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.aws-vpc.id
}

output "subnets_id" {
  description = "The CIDR block of the VPC"
  value       = aws_subnet.aws-subnet[*].id
}

output "ecs_cluster_name" {
  description = "The CIDR block of the VPC"
  value       = aws_ecs_cluster.aws-ecs.name
}

output "ecs_security_group" {
  description = "The CIDR block of the VPC"
  value       = aws_security_group.aws-ecs-tasks.id
}

output "Target_Execution_role" {
  description = "The CIDR block of the VPC"
  value       = aws_iam_role.ecsTaskExecutionRole.name
}

output "aws_region" {
  description = "The CIDR block of the VPC"
  value       = var.aws_region
}
