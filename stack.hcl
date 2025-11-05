stack "eks-platform" {
  description = "Use existing VPC for EKS platform"

  variables = {
    aws_region  = "ap-northeast-2"
    name_prefix = "mzc-eks"
  }

  workspace "network" {
    source = "git::https://github.com/soyip/integrateTFC.git//network?ref=main"
  }

  workspace "eks" {
    source     = "git::https://github.com/soyip/integrateTFC.git//eks?ref=main"
    depends_on = ["network"]

    inputs = {
      vpc_id             = workspace("network").outputs.vpc_id
      private_subnet_ids = workspace("network").outputs.private_subnet_ids
      public_subnet_ids  = workspace("network").outputs.public_subnet_ids
    }
  }

  workspace "addons" {
    source     = "git::https://github.com/soyip/integrateTFC.git//addons?ref=main"
    depends_on = ["eks"]

    inputs = {
      cluster_name = workspace("eks").outputs.cluster_name
      cluster_arn  = workspace("eks").outputs.cluster_arn
    }
  }
}

