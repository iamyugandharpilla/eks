terraform {

backend "s3" {
  bucket = "talentdevops19-statefile-backup"
  region = "us-west-2"
  key = "terraform.tfstate"
  dynamodb_table= "talent-devops19-tfstate" 
}
}
