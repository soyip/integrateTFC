required_providers {
  aws = { source = "hashicorp/aws", version = "~> 5.50" }
}

variable "aws_region"  { type = string }
variable "name_prefix" { type = string }

provider "aws" { region = var.aws_region }

# 모놀리포: 폴더별 컴포넌트 지정
component "network" { source = "./network" }
component "eks"     { source = "./eks"     }
component "addons"  { source = "./addons"  }

