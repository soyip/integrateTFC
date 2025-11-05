variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID (optional if name is provided)"
  type        = string
  default     = null
}

variable "vpc_name" {
  description = "Existing VPC name tag (optional if ID is provided)"
  type        = string
  default     = null
}

variable "private_subnet_names" {
  description = "Private subnet names (tag:Name)"
  type        = list(string)
}

variable "public_subnet_names" {
  description = "Public subnet names (tag:Name)"
  type        = list(string)
}

