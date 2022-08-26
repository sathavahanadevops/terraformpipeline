resource "aws_vpc" "default" {
  cidr_block           = "45.34.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name        = "satha"
    Owner       = "sathavahana"
    environment = "testing"
  }
}

