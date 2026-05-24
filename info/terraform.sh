#------------------------------------------------
# references terraform
#------------------------------------------------
# telecharger terraform
# decompresser terraform
# installer terraform
# configurer terraform dans la variable d'environnement PATH
#------------------------------------------------
...
# ouvre le lien
...
-> https://developer.hashicorp.com/terraform
...
# telecharge terraform
...
-> install -> windows
-> windows -> binary download -> amd64 -> download
...
# installe terraform
...
-> copier-coller -> terraform -> packs/bin
-> copier-coller -> LICENSE.txt  -> packs/bin
...
# configure terraform dans la variable PATH
...
-> ajouter -> packs/bin -> env -> PATH
...
#------------------------------------------------
# installer l extension {terraform-anton-kulikov} sous vscode
# ouvrir un repertoire de travail sous vscode
# ouvrir un terminal sous vscode
# analyser la documenatation terraform
# editer un fichier {main.tf} sous vscode
# configurer un fournisseur de ressources
# creer un groupe de ressources
# formater un code terraform
# initialiser terraform
# planifer les ressources
# deployer les ressources
#------------------------------------------------
...
# affiche les informations de connexion
...
az account show
...
# ouvre le lien terraform
...
-> https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
...
# accede a la doc
...
-> # Fournisseur Azure
-> Azure Provider
-> # Authentification auprès d'Azure
-> Authenticating to Azure
-> # Exemple d'utilisation
-> Example Usage
...
# Nous vous recommandons vivement d'utiliser le bloc required_providers pour définir
# la source et la version du fournisseur Azure utilisé
#
# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}
...
-> creer le fichier {main.tf} sous vscode
-> editer le fichier {main.tf} sous vscode
...
# main.tf
...
# configure terraform
terraform {
  # definit les fournisseurs
  required_providers {
    # definit le fournisseur {azurerm}
    azurerm = {
      # definit les sources du fournisseur {hashicorp/azurerm}
      source = "hashicorp/azurerm"
      # definit la version du fournisseur {=4.1.0}
      version = "=4.1.0"
    }
  }
}

# configure le fournisseur {azurerm}
provider "azurerm" {
  # definit les caracteritiques du fournisseur
  features {}
  # definit l'identifiant de l'abonnement
  subscription_id = "xxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}

# cree le groupe ressource {name}
resource "azurerm_resource_group" "{name}" {
  # definit le nom de la ressource
  name = "{name}-resources"
  # defini l'emplacement de la ressource
  location = "West Europe"
  # definit les tags
  tags = {
    # definit le tag {environnement de dev}
    environment = "dev"
  }
}
...
# formate le code terraform
# ameloire l'indentation du code terraform
...
terraform fmt
...
# initialise terraform
# stocke la configuration des ressources dans le repertoire {.terraform}
# stocke la configuration des versions dans le fichier {.terraform.lock.hcl}
...
terraform init
...
# planifie la creation des ressources
...
terraform plan
...
-> si votre compte azure possede un abonnement
-> un message de succes s affiche
...
-> # Terraform a utilisé les fournisseurs sélectionnés pour générer le plan d'exécution suivant.
-> Terraform used the selected providers to generate the following execution plan.
-> # Les actions sur les ressources sont indiquées par les symboles suivants :
-> Resource actions are indicated with the following symbols:
-> # + créer
-> + create
-> # Terraform effectuera les actions suivantes :
-> Terraform will perform the following actions:

  # azurerm_resource_group.{name} sera créé
  # azurerm_resource_group.{name} will be created
  + resource "azurerm_resource_group" "{name}" {
      # + id     = (connu après application)
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "{name}-resources"
      + tags     = {
          + "environment" = "dev"
        }
    }

# Plan : 1 à ajouter, 0 à modifier, 0 à détruire.
Plan: 1 to add, 0 to change, 0 to destroy.
...
# applique la creation des ressources
...
terraform apply
...
-> # Souhaitez-vous effectuer ces actions ?
-> Do you want to perform these actions?
-> # Terraform effectuera les actions décrites ci-dessus.
-> Terraform will perform the actions described above.
-> # Seul un « oui » sera accepté pour approuver.
-> Only 'yes' will be accepted to approve.
-> # Entrez une valeur : oui
-> Enter a value: yes
...
# azurerm_resource_group.{name} : Création en cours…
azurerm_resource_group.{name}: Creating...
# azurerm_resource_group.{name} : Création en cours… [00 min 10 s écoulées]
azurerm_resource_group.{name}: Still creating... [00m10s elapsed]
# azurerm_resource_group.{name} : Création terminée après 10 s [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
azurerm_resource_group.{name}: Creation complete after 10s [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
...
#------------------------------------------------
# end
#------------------------------------------------
