terraform {

backend "s3" {
  bucket = "eks-pipeline-bucket"
  region = "us-east-1"
  key = "terraform.tfstate"
  dynamodb_table= "eks-backend" 
}
}
