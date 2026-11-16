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
    access_key = "YOUR_ACCESS_KEY"
    secret_key = "YOUR_SECRET_KEY"
    

    default_tags {
        tags = {
            Environment = "dev"
        }
    }
}