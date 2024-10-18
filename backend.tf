



terraform {
  required_version = "<=1.9.7"
  backend "s3" {
    key            = "global/dev/eks-cluster/terraform.tfstate"
    bucket         = "lmt-training-terraform-backend-bucket"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}
