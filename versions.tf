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
    access_key = "AKIAIOSFODNN7EXAMPLE"
    secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    

    default_tags {
        tags = {
            Environment = "dev"
        }
    }
}