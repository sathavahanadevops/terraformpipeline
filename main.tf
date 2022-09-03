terraform {
  backend "s3" {
    bucket = "satha.xyz"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}
