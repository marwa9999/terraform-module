variable "aws_region" {
  description = "Région AWS pour le déploiement"
  default     = "eu-west-3"
}

variable "ami_id" {
  description = "AMI ID pour les instances EC2"
  default     = "ami-06e02ae7bdac6b938"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Nombre d'instances EC2"
  default     = 3
}

variable "key_pair_name" {
  description = "Nom de la paire de clés SSH"
  default     = "my-key"
}
