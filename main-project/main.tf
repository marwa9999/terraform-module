provider "aws" {
  region = var.aws_region
}

module "ec2_instances" {
  source              = "../terraform-ec2-module"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  instance_count      = var.instance_count
  subnet_id           = aws_subnet.main_subnet.id
  security_group_ids  = [aws_security_group.main_sg.id]
  key_name            = var.key_pair_name
  user_data           = file("user-data.sh")
  name_prefix         = "Node"
  additional_tags     = { Environment = "Dev" }
}

# Références aux autres ressources comme VPC, sous-réseaux, etc.
resource "aws_vpc" "main_vpc" { ... }
resource "aws_subnet" "main_subnet" { ... }
resource "aws_security_group" "main_sg" { ... }
