// Bloco de configuração do Terraform
// Diz qual plugin deve baixar para funcionar
terraform {
  // Providers necessários
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

// Providencia toda a configuração do plugin que baixamos
provider "aws" {

  region = "sa-east-1"

}

// Resource = Recurso
// Aqui configuramos o recurso/serviço
resource "aws_instance" "app_server" {
  ami           = "ami-00d10ca79f70a302a"
  instance_type = "t2.micro"

  tags = {
    "Name" = "teste_com_terraform"
  }
}
