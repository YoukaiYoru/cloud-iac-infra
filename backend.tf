terraform {
  backend "s3" {
    bucket = "mi-bucket-tfstate"
    key    = "terraform/infra.tfstate"
    region = "us-east-1"
  }
}
