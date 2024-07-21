terraform {

backend "s3" {
  bucket = "talentdevops19-statefile-backupp"
  region = "us-east-1"
  key = "terraform.tfstate"
  dynamodb_table= "talent-devops19-tfstate" 
}
}
