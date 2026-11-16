terraform{
    required_version = ">= 0.12"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
      }
    }
    
}

provider "aws"{
    region = "ap-south-1"
    Access_key = "AKIA5X6Z3J4K7YQ2F5GQ"
    Secret_key = "your-secret-key"

    default_tags {
        tags = {
            Environment = "dev"
        }
    }
}