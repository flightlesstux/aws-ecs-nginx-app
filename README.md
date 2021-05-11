## What this terraform can do?

- Creating a VPC and other network things such as Route Table
- Creating a 2 different subnets (for HA)
- Creating a Load Balancer
- Creating a Security Group of Load Balancer
- Creating a Target Group for Load Balancer
- Creating a ec2 for ECS Runner
- Creating a Security Group for ECS Runner
- Creating an IAM Policies
- Creating a ECS Service
- Creating a ECS Cluster
- Creating a Security Group for ECS Cluster


## Requirements

- Before you start, you should know your AWS region. For example; eu-west-1 for Ireland region.
- Your Key Pair should previously generated on AWS side and you shold know the name.


## Usage

- Export your AWS Access Key ID and Secret Access Key for create a resource in your AWS Region. Or if you want to use with Gitlab pipeline, just add these variables to your project settings.

`AWS_ACCESS_KEY_ID=AKIA1SFAESADASFASR5D`\
`AWS_SECRET_ACCESS_KEY=Aasdfiajfar1O9DFASDAA3rasdas02304adsq9re`

- Clone this repository with `git clone git@gitlab.com:flightlesstux/nginx-app-aws-ecs.git`
- `cd nginx-app-aws-ecs/ireland/`
- `terraform init` For make sure about terraform modules.
- `terraform plan` to see how your environment looks like before deploy.
- `terraform apply` to make a deploy.


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |


## Resources

| Name | Type |
|------|------|
| [aws_alb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb) | resource |
| [aws_alb_listener.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_alb_target_group.nginx_app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_ecs_cluster.aws-ecs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_service.nginx_app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.nginx_app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_iam_instance_profile.ecs-cluster-runner-profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_instance_profile.ecsInstanceRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.ecs-cluster-runner-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ecsInstanceRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ecsTaskExecutionRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.ecs-cluster-runner-role-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.ecsInstanceRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecsTaskExecutionRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_instance.ecs-cluster-runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.aws-igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_main_route_table_association.aws-route-table-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/main_route_table_association) | resource |
| [aws_route_table.aws-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_security_group.aws-ecs-tasks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.aws-lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.ecs-cluster-host](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ecs-cluster-egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ecs-cluster-host-ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_subnet.aws-subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.aws-vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_ami.ecs-ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.aws-az](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.ecs-cluster-runner-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.instance-assume-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.task-assume-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [template_file.nginx_app](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.user_data_cluster](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_sources_cidr"></a> [admin\_sources\_cidr](#input\_admin\_sources\_cidr) | List of IPv4 CIDR blocks from which to allow admin access | `list(string)` | n/a | yes |
| <a name="input_app_environment"></a> [app\_environment](#input\_app\_environment) | Application environment | `string` | n/a | yes |
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Application name | `string` | n/a | yes |
| <a name="input_app_sources_cidr"></a> [app\_sources\_cidr](#input\_app\_sources\_cidr) | List of IPv4 CIDR blocks from which to allow application access | `list(string)` | n/a | yes |
| <a name="input_aws_ecs_ami_override"></a> [aws\_ecs\_ami\_override](#input\_aws\_ecs\_ami\_override) | Machine image to use for ec2 instances | `string` | `""` | no |
| <a name="input_aws_key_pair_name"></a> [aws\_key\_pair\_name](#input\_aws\_key\_pair\_name) | AWS key pair name | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region | `string` | n/a | yes |
| <a name="input_cluster_runner_count"></a> [cluster\_runner\_count](#input\_cluster\_runner\_count) | Number of EC2 instances for ECS Cluster Runner | `string` | `"1"` | no |
| <a name="input_cluster_runner_type"></a> [cluster\_runner\_type](#input\_cluster\_runner\_type) | EC2 instance type of ECS Cluster Runner | `string` | `"t3.medium"` | no |
| <a name="input_nginx_app_count"></a> [nginx\_app\_count](#input\_nginx\_app\_count) | Number of Docker containers to run | `number` | `2` | no |
| <a name="input_nginx_app_image"></a> [nginx\_app\_image](#input\_nginx\_app\_image) | Docker image to run in the ECS cluster | `any` | n/a | yes |
| <a name="input_nginx_app_name"></a> [nginx\_app\_name](#input\_nginx\_app\_name) | Name of Application Container | `string` | `"nginx"` | no |
| <a name="input_nginx_app_port"></a> [nginx\_app\_port](#input\_nginx\_app\_port) | Port exposed by the Docker image to redirect traffic to | `number` | `80` | no |
| <a name="input_nginx_fargate_cpu"></a> [nginx\_fargate\_cpu](#input\_nginx\_fargate\_cpu) | Fargate instance CPU units to provision (1 vCPU = 1024 CPU units) | `string` | `"1024"` | no |
| <a name="input_nginx_fargate_memory"></a> [nginx\_fargate\_memory](#input\_nginx\_fargate\_memory) | Fargate instance memory to provision (in MiB) | `string` | `"2048"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_cluster_runner_ip"></a> [ecs\_cluster\_runner\_ip](#output\_ecs\_cluster\_runner\_ip) | External IP of ECS Cluster |
| <a name="output_nginx_dns_lb"></a> [nginx\_dns\_lb](#output\_nginx\_dns\_lb) | DNS load balancer |

## Note

- You can't run this terraform on ARM based CPUs such as AWS Gravition Family and/or Apple M1. The main reason is terraform template module v2.2.0 doesn't have ARM based cpu support. If you will try, you should get an error like below:

```
│ Error: Incompatible provider version
│
│ Provider registry.terraform.io/hashicorp/template v2.2.0 does not have a package available for your current platform, darwin_arm64.
│
│ Provider releases are separate from Terraform CLI releases, so not all providers are available for all platforms. Other versions of this provider may have different platforms supported.
```

- I didn't lock the provider and modules version for this project. This terraform is not using in production but if you are planning to use in production, you should lock the providers and modules versions.