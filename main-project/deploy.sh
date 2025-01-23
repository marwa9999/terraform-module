#!/bin/bash

set -e

PROJECT_DIR="main-project"
cd $PROJECT_DIR

echo "Initialisation de Terraform..."
terraform init

echo "Planification du déploiement..."
terraform plan -out=tfplan

echo "Application du déploiement..."
terraform apply tfplan

echo "Déploiement terminé avec succès."
