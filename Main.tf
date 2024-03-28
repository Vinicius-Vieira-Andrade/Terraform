//Chamada da extensao terraform - precisa estar instalado anteriormente  
terraform {
  required_version = ">= 1.3.0" //obrigatorio estar com a vesao  do terraform igual ou superior 1.3.0

  //escolhe o provedor - AWS
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}


//definir padroes de uso do meu ambiente na aws
provider "aws" {
  region                   = "us-east-1" //definir regiao
  shared_config_files      = ["C:/Users/53685550837/.aws/config"]
  shared_credentials_files = ["C:/Users/53685550837/.aws/credentials"] //defirnir ID conta(admin) e key(credentials)


  //assinatura 
  default_tags {
    tags = {
      owner      = "Vinicius V"
      managed-by = "Terraform134"
    }
  }
}



