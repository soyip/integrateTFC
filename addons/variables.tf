variable "aws_region"  { type = string }
variable "name_prefix" { type = string }

# eks workspace outputs에서 주입
variable "cluster_name" { type = string }
variable "cluster_arn"  { type = string }

