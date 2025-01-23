variable "ami_id" {
  description = "AMI ID pour les instances EC2"
  type        = string
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
}

variable "instance_count" {
  description = "Nombre d'instances EC2 à créer"
  type        = number
  default     = 1
}

variable "subnet_id" {
  description = "ID du sous-réseau où déployer les instances"
  type        = string
}

variable "security_group_ids" {
  description = "Liste des ID des groupes de sécurité à associer"
  type        = list(string)
}

variable "key_name" {
  description = "Nom de la paire de clés SSH"
  type        = string
}

variable "user_data" {
  description = "Script de démarrage utilisateur pour les instances"
  type        = string
  default     = ""
}

variable "private_ip" {
  description = "Adresse IP privée assignée à l'instance (facultatif)"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "Préfixe pour les noms des instances"
  type        = string
  default     = null
}

variable "additional_tags" {
  description = "Tags supplémentaires pour les ressources"
  type        = map(string)
  default     = {}
}
