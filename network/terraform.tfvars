aws_region = "us-east-1"

# 이미 존재하는 VPC 지정 (둘 중 하나)
vpc_name = "DevOps-VPC"
# vpc_id   = "vpc-0e2b8016dc463a3b9"

# 태그 기반 서브넷 이름 리스트
private_subnet_names = [
  "gitlab-eks-subnet-private1-us-east-1a",
  "gitlab-eks-subnet-private2-us-east-1b"
]

public_subnet_names = [
  "gitlab-eks-subnet-public1-us-east-1a",
  "gitlab-eks-subnet-public2-us-east-1b"
]

