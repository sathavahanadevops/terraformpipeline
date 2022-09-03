terraform {
  backend "s3" {
    bucket = "sathavahanadevopsterraform"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}
