#------------------------------------------------
# references terraform-azure
#------------------------------------------------
# ouvrir un navigateur web
# telecharger azure cli
# installer azure cli
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows
...
# choisit une methode d'installation
...
-> version -> azure cli 2.83.0
-> install -> install - windows
-> install the azure cli on windows
-> choose an installation method
-> microsoft installler {msi}
...
# telecharge l'installeur azure cli
...
-> microsoft installer {msi}
-> lastest version
-> lastest msi of the azure cli {64-bit}
...
# installe azure cli
...
-> azure-cli-2.83.0-x64.msi
-> please read the microsoft azure cli {64-bit}
-> cocher ->  accept the terms in the license agreement
-> install -> oui
-> installing microsoft azure cli {64-bit}
-> finish
...
#------------------------------------------------
# ouvrir un navigateur web
# se connecter a votre compte azure
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://azure.microsoft.com/fr-fr
...
# se connecte a azure
...
-> connexion
-> saisir votre compte microsoft
-> {email@outlook.fr}
-> utiliser votre mot de passe
-> {password@outlook.fr}
...
-> aide a proteger votre compte
-> ignorer pour le moment
...
-> choisir ou enregistrer votre cle d acces pour {login.microsoft.com}
-> windows hello ou cle de securite externe
-> continuer
...
-> si un probleme survient
-> reprendre le processus autrement
...
-> enregistrer autrement
...
-> gestionnaire de mots de passe google {email@gamil.com}
-> creer -> ok
-> reste connecte -> oui
...
# ouvre la page d'accueil de azure
...
-> https://portal.azure.com/#home
...
#------------------------------------------------
# ouvrir un navigateur web
# se connecter a votre compte azure
# creer un abonnement azure gratuit
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://portal.azure.com/#home
...
# ouvre le menu abonnements
...
-> menu -> tous les services
-> categories -> management and governance
-> gestion des ressources azure
-> abonnements
...
# ajoute un abonnement gratuit
...
-> ajouter -> offres les plus populaires
-> essai gratuit -> essayez azure gratuitement
...
# definit les informations du profil
...
-> informations sur le profil
-> cocher -> pour une utilisation personnelle
-> pays-region -> france
-> prenom -> {prenom}
-> nom de famille -> {nom}
-> adresse email -> {email@outlook.fr}
-> telephone -> {06.01.02.03.04}
-> suivant
...
# definit l'adresse de domiciliation
...
-> informations d adresse
-> ligne d adresse -> {numero-nom-de-la-rue}
-> code postal -> {code-postal}
-> ville -> {ville}
-> cocher -> je represente la personne identifiee sur ce compte
-> cocher -> je souhaite recevoir des informations
-> suivant
...
# definir les informations de paiement
...
-> information de paiement
-> nom du titulaire -> {nom-prenom-carte-bancaire}
-> numero de carte -> {numero-carte-bancaire}
-> exipre -> {mm/aaaa}
-> cvv -> {cvv}
-> inscription
...
# protege l'adresse email
...
-> proteger votre compte
-> suivant
...
-> protegeons votre compte
-> une adresse de messagerie de secours
-> {email@outlook.fr}
-> suivant
...
-> entrer le code
-> code -> {code}
-> suivant
...
#------------------------------------------------
# ouvrir un terminal sous vscode
# se connecter a votre compte azure avec une cle de securite
#------------------------------------------------
...
# se connecte a azure cli
...
az login
...
-> si votre compte n apparait pas dans la rubrique
...
-> utiliser un autre compte
-> compte microsoft -> continuer
-> {email@outlook.fr-avec-abonnement}
-> suivant
-> choisir une cle d acces
-> appareil iphone, ipad, android
-> ouvrir {microsoft-authenticator} sous {smartphone}
-> sacnner le qrcode sous {microsoft-authenticator}
-> continuer
...
-> si votre compte apparait dans la rubrique
...
-> utiliser l un de ces compte
-> {email@outlook.fr-avec-abonnement}
-> continuer
...
-> si votre compte azure ne possede pas d abonnement
-> un message d erreur s affiche
...
-> # Aucun abonnement trouvé pour {email@outlook.fr}.
-> No subscriptions found for {email@outlook.fr}.
...
-> si votre compte azure possede un abonnement
-> un message de succes s affiche
#------------------------------------------------
# ouvrir un terminal sous vscode
# se connecter a votre compte azure avec un code d'appareil
#------------------------------------------------
...
# se connecte a votre compte azure
# genere un code d'appareil
...
az login --use-device-code
...
-> # Pour vous connecter, utilisez un navigateur Web pour ouvrir la page
-> To sign in, use a web browser to open the page
-> https://microsoft.com/devicelogin
-> # et entrez le code {XXXXXXXXXX} pour vous authentifier.
-> and enter the code {XXXXXXXXXX} to authenticate.
...
# ouvre le lien azure
# se connecte a votre compte azure
...
-> https://microsoft.com/devicelogin
-> code -> {XXXXXXXXXX}
-> suivant
-> choisir un compte
-> {email@outlook.fr} {connecte}
-> continuer
...
-> si votre compte azure ne possede pas d abonnement
-> un message d erreur s affiche
...
-> # Aucun abonnement trouvé pour {email@outlook.fr}.
-> No subscriptions found for {email@outlook.fr}.
...
-> si votre compte azure possede un abonnement
-> un message de succes s affiche
...
-> {Warning} The login output has been updated.
-> Please be aware that it no longer displays
-> the full list of available subscriptions by default.
...
#------------------------------------------------
# ouvrir un terminal sous vscode
# afficher les informations de connexion
#------------------------------------------------
...
# affiche les informations de connexion
...
az account show
...
{
  "environmentName": "AzureCloud",
  "homeTenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "isDefault": true,
  "managedByTenants": [],
  "name": "Azure subscription 1",
  "state": "Enabled",
  "tenantDefaultDomain": "{emailoutlook}.onmicrosoft.com",
  "tenantDisplayName": "Répertoire par défaut",
  "tenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "user": {
    "name": "email@outlook.fr",
    "type": "user"
  }
}
...
#------------------------------------------------
# ouvrir un navigateur web
# telecharger terraform
# installer terraform
#------------------------------------------------
...
# ouvre le lien terraform
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
# ouvrir un navigateur web
# se connecter a votre compte azure
# recuperer l'identifiant de votre abonnement azure
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://portal.azure.com/#home
...
# ouvre le menu abonnements
...
-> menu -> tous les services
-> categories -> management and governance
-> gestion des ressources azure
-> abonnements
...
# indique les informations de l'abonnement
...
-> Nom de l abonnement -> Azure subscription 1
-> ID d abonnement -> xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
-> Mon rôle -> Propriétaire
-> Coût actuel -> 0,00
-> Degré de sécurisation -> -
-> Groupe d administration parent -> Tenant Root Group
-> État -> Actif
...
# indique l'id de l'abonnement
...
-> ID d abonnement -> xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
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
# ouvrir un navigateur web
# se connecter a votre compte azure
# afficher un groupe de ressources
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://portal.azure.com/#home
...
# ouvre le groupe de ressources
...
-> menu -> groupe de ressources -> actualiser
...
-> nom -> {name}-resources
-> abonnement -> Azure subscription 1
-> emplacement -> West Europe
...
#------------------------------------------------
# analyser la documenatation terraform
# editer un fichier {main.tf} sous vscode
# creer un reseau virtuel
# formater un code terraform
# planifer les ressources
# afficher l'aide sur une commande terraform
# deployer les ressources automatiquement
#------------------------------------------------
...
# ouvre la doc terraform
...
-> https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
...
-> # Exemple d'utilisation
-> Example Usage
...
# Créer un réseau virtuel au sein du groupe de ressources
# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
...
# main.tf
...
# cree un reseau virtuel {name}
resource "azurerm_virtual_network" "{name}" {
  # definit le nom du reseau virtuel {name}
  name = "{name}-network"
  # definit le nom du groupe de ressource
  resource_group_name = azurerm_resource_group.{name}.name
  # definit l'emplacement du reseau virtuel
  location = azurerm_resource_group.{name}.location
  # definit un espace d'adressage
  # peut definir plusieurs esapces d'adressage
  address_space = ["10.123.0.0/16"]
  # definit les tags
  tags = {
    # definit le tag {environnement de dev}
    environment = "dev"
  }
}
...
# formate le code
...
terraform fmt
...
# execute le plan
...
terraform plan
...
# analyse le plan
....
-> # azurerm_resource_group.{name} : Actualisation de l'état…
-> azurerm_resource_group.{name}: Refreshing state...
-> [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
-> # Terraform a utilisé les fournisseurs sélectionnés pour générer le plan d'exécution suivant.
-> Terraform used the selected providers to generate the following execution plan.
-> # Les actions sur les ressources sont indiquées par les symboles suivants :
-> Resource actions are indicated with the following symbols:
-> # + créer
-> + create
-> # Terraform effectuera les actions suivantes :

  # azurerm_virtual_network.{name} sera créé
  # azurerm_virtual_network.{name} will be created
  + resource "azurerm_virtual_network" "{name}" {
      + address_space       = [
          + "10.123.0.0/16",
        ]
      # + dns_servers       = (connu après application)
      + dns_servers         = (known after apply)
      # + guid              = (connu après application)
      + guid                = (known after apply)
      # + id                = (connu après application)
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "{name}-network"
      + resource_group_name = "{name}-resources"
      # + subnet            = (connu après application)
      + subnet              = (known after apply)
      + tags                = {
          + "environment" = "dev"
        }
    }

# Plan : 1 à ajouter, 0 à modifier, 0 à détruire.
Plan: 1 to add, 0 to change, 0 to destroy.
...
# affiche l'aide sur la commande deploiement
...
terraform apply -help
...
-> Utilisation : `terraform [options globales] apply [options] [PLAN]`
-> Crée ou met à jour l infrastructure selon la configuration Terraform
-> fichiers de configuration du répertoire courant.
->
-> Par défaut, Terraform génère un nouveau plan et le soumet à votre
-> approbation avant toute action. Vous pouvez également fournir un fichier de plan
-> créé par un appel précédent à « terraform plan », auquel cas
-> Terraform exécutera les actions décrites dans ce plan sans
-> demande de confirmation.
->
-> Options :
->
-> `-auto-approve`        : Ignorer l approbation interactive du plan avant son application.
-> `-backup=chemin`       : Chemin de sauvegarde du fichier d état existant avant
->        modification. Par défaut, le chemin « -state-out » avec
->        l extension « .backup ». Définir sur « - » pour désactiver la sauvegarde.
-> `-compact-warnings`    : Si Terraform génère des avertissements non
->        accompagnés d erreurs, les afficher sous une forme plus compacte
->        ne contenant que les messages de synthèse.
-> `-destroy`             : Supprimer l infrastructure gérée par Terraform.
->        La commande « terraform destroy » est un alias pratique pour cette option.
-> -lock=false            : Ne pas verrouiller l'état pendant l'opération.
->        Ceci est dangereux si d autres personnes exécutent simultanément des commandes
->        sur le même espace de travail.
-> -lock-timeout=0s       : Durée avant de réessayer de verrouiller l état.
-> -input=true            : Demander une valeur pour les variables si elles ne sont pas définies directement.
-> -no-color              : Si spécifié, la sortie ne contiendra aucune couleur.
-> -parallelism=n         : Limiter le nombre d opérations de ressources parallèles.
->        Par défaut : 10.
-> -replace=resource      : Terraform planifiera le remplacement de cette instance de ressource
->        au lieu d effectuer une mise à jour ou une action sans effet.
-> -state=path            : Chemin d accès pour lire et enregistrer l état
->        (sauf si state-out est spécifié). Par défaut : « terraform.tfstate ».
->        Option héritée pour le backend local uniquement.
->        Consultez la documentation du backend local pour plus d informations.
-> -state-out=chemin      : Chemin d'écriture de l'état, différent de "-state".
->        Permet de conserver l ancien état.
->        Option héritée, réservée au backend local.
->        Consultez la documentation du backend local pour plus d informations.
-> -var 'foo=bar'         : Définit la valeur d'une des variables d'entrée du module racine de la configuration.
->        Utilisez cette option plusieurs fois pour définir plusieurs variables.
-> -var-file=nom_fichier  : Charge les valeurs des variables depuis le fichier spécifié,
->        en plus des fichiers par défaut terraform.tfvars et *.auto.tfvars.
->        Utilisez cette option plusieurs fois pour inclure plusieurs fichiers de variables.
->
-> Si vous ne fournissez pas de fichier de plan enregistré,
-> cette commande acceptera également toutes les options de personnalisation de plan acceptées par la commande terraform plan.
-> Pour plus d informations sur ces options, exécutez : terraform plan -help
...
# applique automatiquement le plan
...
terraform apply -auto-approve
...
-> # Plan : 1 à ajouter, 0 à modifier, 0 à supprimer.
-> Plan: 1 to add, 0 to change, 0 to destroy.
-> # azurerm_virtual_network.{name} : Création en cours…
-> azurerm_virtual_network.{name}: Creating...
-> # azurerm_virtual_network.{name} : Création toujours en cours… [00 min 10 s écoulées]
-> azurerm_virtual_network.{name}: Still creating... [00m10s elapsed]
-> # azurerm_virtual_network.{name} : Création terminée après 11 s
-> azurerm_virtual_network.{name}: Creation complete after 11s
-> [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
...
# ouvre le portail azure
...
-> https://portal.azure.com/#home
...
# ouvre le reseau virtuel
-> menu -> réseaux virtuels -> actualiser
...
-> nom -> {name}-network
-> groupe de ressource -> {name}-ressources
-> emplacement -> West Europe
-> abonnement -> Azure subcription 1
...
#------------------------------------------------
# ouvrir un navigateur web
# se connecter a votre compte azure
# afficher un reseau virtuel
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://portal.azure.com/#home
...
# ouvre le menu abonnements
...
-> menu -> reseaux virtuels -> actualiser
...
-> nom -> {name}-network
-> groupe de ressources -> {name}-ressource
-> emplacement -> West Europe
-> abonnement -> Azure subscription 1
...
#------------------------------------------------
# analyser la documentation terraform
# afficher les informations sur les ressources terraform
#------------------------------------------------
...
# ouvre le lien terraform
...
-> https://developer.hashicorp.com/terraform/language/state
...
# affiche la liste des ressources terraform
...
terraform state list
...
azurerm_resource_group.{name}
azurerm_virtual_network.{name}
...
# affiche les information sur le groupe ressource
...
terraform state show azurerm_resource_group.{name}
...
# azurerm_resource_group.{name}:
resource "azurerm_resource_group" "{name}" {
    id         = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/{name}-resources"
    location   = "westeurope"
    managed_by = null
    name       = "{name}-resources"
    tags       = {
        "environment" = "dev"
    }
}
...
# affiche les information sur le reseau virtuel
...
terraform state show azurerm_virtual_network.{name}
...
# azurerm_virtual_network.{name}:
resource "azurerm_virtual_network" "{name}" {
    address_space           = [
        "10.123.0.0/16",
    ]
    bgp_community           = null
    dns_servers             = []
    edge_zone               = null
    flow_timeout_in_minutes = 0
    guid                    = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    id                      = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network"
    location                = "westeurope"
    name                    = "{name}-network"
    resource_group_name     = "{name}-resources"
    subnet                  = []
    tags                    = {
        "environment" = "dev"
    }
}
...
# affiche les informations sur toutes les ressources
...
terraform show
...
#------------------------------------------------
# analyser la documentation terraform
# analyser le fichier d'etat terraform
# planifier la destruction des ressources
# deployer la destruction des ressources
# deployer la restauration des ressources
#------------------------------------------------
...
# ouvre le lien terraform
...
-> https://developer.hashicorp.com/terraform
...
# ouvre la doc sur la command {destroy}
...
-> terraform cli
-> alphabetical list commands
-> destroy
...
# planifie la destruction des ressources
...
terraform plan -destroy
...
-> # azurerm_resource_group.{name} : Actualisation de l'état… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
-> azurerm_resource_group.{name}: Refreshing state... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
-> # azurerm_virtual_network.{name} : Actualisation de l'état… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
-> azurerm_virtual_network.{name}: Refreshing state... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
-> # Terraform a utilisé les fournisseurs sélectionnés pour générer le plan d'exécution suivant. Les actions sur les ressources sont indiquées par les symboles suivants :
-> Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
-> # - destruction
-> - destroy
-> # Terraform effectuera les actions suivantes :
-> Terraform will perform the following actions:

  # azurerm_resource_group.{name} sera détruit
  # azurerm_resource_group.{name} will be destroyed
  - resource "azurerm_resource_group" "{name}" {
      - id         = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources" -> null
      - location   = "westeurope" -> null
      - name       = "{name}-resources" -> null
      - tags       = {
          - "environment" = "dev"
        } -> null
        # (1 unchanged attribute hidden)
    }

  # azurerm_virtual_network.{name} sera détruit
  # azurerm_virtual_network.{name} will be destroyed
  - resource "azurerm_virtual_network" "{name}" {
      - address_space           = [
          - "10.123.0.0/16",
        ] -> null
      - dns_servers             = [] -> null
      - flow_timeout_in_minutes = 0 -> null
      - guid                    = "b67577a7-7feb-4627-9262-f6250b6ff186" -> null
      - id                      = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network" -> null
      - location                = "westeurope" -> null
      - name                    = "{name}-network" -> null
      - resource_group_name     = "{name}-resources" -> null
      - subnet                  = [] -> null
      - tags                    = {
          - "environment" = "dev"
        } -> null
        # (2 attributs inchangés masqués)
        # (2 unchanged attributes hidden)
    }

# Plan : 0 à ajouter, 0 à modifier, 2 à détruire.
Plan: 0 to add, 0 to change, 2 to destroy.

# Remarque : vous n'avez pas utilisé l'option -out pour enregistrer ce plan.
Note: You didn t use the -out option to save this plan,
# Terraform ne peut donc pas garantir qu'il effectuera exactement ces actions si vous exécutez « terraform apply » maintenant.
so Terraform can t guarantee to take exactly these actions if you run "terraform apply" now.
...
# analyse le fichier d'etat {terraform.tfstate}
...
{
  "version": 4,
  "terraform_version": "1.14.4",
  # definit l'etat actuel du numero de serie
  "serial": 3,
  "lineage": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "outputs": {},
  # definit l'etat actuel des ressources
  "resources": [
    {
      "mode": "managed",
      "type": "azurerm_resource_group",
      "name": "{name}",
      ...
    },
    {
      "mode": "managed",
      "type": "azurerm_virtual_network",
      "name": "{name}",
      ...
    }
  ],
  "check_results": null
}
...
# analyse le fichier d'etat {terraform.tfstate.backup}
...
{
  "version": 4,
  "terraform_version": "1.14.4",
  # definit l'etat precedent du numero de serie
  "serial": 1,
  "lineage": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "outputs": {},
  # definit l'etat precedent des ressources
  "resources": [
    {
      "mode": "managed",
      "type": "azurerm_resource_group",
      "name": "{name}",
      ...
    }
  ],
  "check_results": null
}
...
# deploie la destruction des ressources
...
terraform apply -destroy
...
-> # Plan : 0 à ajouter, 0 à modifier, 2 à détruire.
-> Plan: 0 to add, 0 to change, 2 to destroy.
-> # Voulez-vous vraiment détruire toutes les ressources ?
-> Do you really want to destroy all resources?
-> # Terraform détruira toute votre infrastructure gérée, comme indiqué ci-dessus.
-> Terraform will destroy all your managed infrastructure, as shown above.
-> # Il n'y a pas de possibilité d'annulation. Seul « oui » sera accepté pour confirmer.
-> There is no undo. Only 'yes' will be accepted to confirm.
-> # -> Entrez une valeur : oui
-> Enter a value:

# azurerm_virtual_network.{name} : Destruction en cours… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
azurerm_virtual_network.{name}: Destroying... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
# azurerm_virtual_network.{name} : Destruction en cours… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-...ft.Network/virtualNetworks/{name}-network, 00 min 10 s écoulées]
azurerm_virtual_network.{name}: Still destroying... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-...ft.Network/virtualNetworks/{name}-network, 00m10s elapsed]
# azurerm_virtual_network.{name} : Destruction terminée après 10 s
azurerm_virtual_network.{name}: Destruction complete after 10s
# azurerm_resource_group.{name} : Destruction en cours… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
azurerm_resource_group.{name}: Destroying... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
# azurerm_resource_group.{name} : Destruction en cours… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources, 00 min 10 s écoulées]
azurerm_resource_group.{name}: Still destroying... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources, 00m10s elapsed]
# azurerm_resource_group.{name} : Destruction terminée après 16 s
azurerm_resource_group.{name}: Destruction complete after 16s

# Application terminée ! Ressources : 0 ajoutées, 0 modifiées, 2 détruites.
Apply complete! Resources: 0 added, 0 changed, 2 destroyed.
...
# analyse le fichier d'etat {terraform.tfstate}
...
{
  "version": 4,
  "terraform_version": "1.14.4",
  # definit l'etat actuel du numero de serie
  "serial": 6,
  "lineage": "7ce92f1d-2548-04da-9fa8-94c0db0202c8",
  "outputs": {},
  # definit l'etat actuel des ressources
  "resources": [],
  "check_results": null
}
...
# analyse le fichier d'etat {terraform.tfstate.backup}
...
{
  "version": 4,
  "terraform_version": "1.14.4",
  # definit l'etat precedent du numero de serie
  "serial": 3,
  "lineage": "7ce92f1d-2548-04da-9fa8-94c0db0202c8",
  "outputs": {},
  # definit l'etat precedent des ressources
  "resources": [
    {
      "mode": "managed",
      "type": "azurerm_resource_group",
      "name": "{name}",
      ...
    },
    {
      "mode": "managed",
      "type": "azurerm_virtual_network",
      "name": "{name}",
      ...
    }
  ],
  "check_results": null
}
...
# deploie la restauration des ressources
...
terraform apply -auto-approve
...
#------------------------------------------------
# ooo
#------------------------------------------------
...
# ouvre le lien terraform azure
...
-> https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
...
-> network
-> resources
-> azurerm_subnet
...
-> # azurerm_resource_group.{name} : Actualisation de l'état… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
-> azurerm_resource_group.{name}: Refreshing state... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources]
-> # azurerm_virtual_network.{name} : Actualisation de l'état… [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
-> azurerm_virtual_network.{name}: Refreshing state... [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network]
-> # Terraform a utilisé les fournisseurs sélectionnés pour générer le plan d'exécution suivant.
-> Terraform used the selected providers to generate the following execution plan.
-> # Les actions sur les ressources sont indiquées par les symboles suivants :
-> Resource actions are indicated with the following symbols:
-> # + créer
-> + create
-> # Terraform effectuera les actions suivantes :
-> Terraform will perform the following actions:

  # azurerm_subnet.{name} sera créé
  # azurerm_subnet.{name} will be created
  + resource "azurerm_subnet" "{name}" {
      + address_prefixes                              = [
          + "10.123.1.0/24",
        ]
      + default_outbound_access_enabled               = true
      # + id                                          = (connu après application)
      + id                                            = (known after apply)
      + name                                          = "{name}-subnet"
      + private_endpoint_network_policies             = "Disabled"
      + private_link_service_network_policies_enabled = true
      + resource_group_name                           = "{name}-resources"
      + virtual_network_name                          = "{name}-network"
    }

# Plan : 1 à ajouter, 0 à modifier, 0 à détruire.
Plan: 1 to add, 0 to change, 0 to destroy.

# Remarque : vous n'avez pas utilisé l'option -out pour enregistrer ce plan.
Note: You didn t use the -out option to save this plan,
# Terraform ne peut donc pas garantir qu'il effectuera exactement ces actions si vous exécutez « terraform apply » maintenant.
so Terraform can t guarantee to take exactly these actions if you run "terraform apply" now.
...
#
...
terraform apply -auto-approve
...
-> # Plan : 1 à ajouter, 0 à modifier, 0 à détruire.
-> Plan: 1 to add, 0 to change, 0 to destroy.
-> # azurerm_subnet.{name} : Création…
-> azurerm_subnet.{name}: Creating...
-> # azurerm_subnet.{name} : Création terminée après 5 s [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network/subnets/{name}-subnet]
-> azurerm_subnet.{name}: Creation complete after 5s [id=/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/{name}-resources/providers/Microsoft.Network/virtualNetworks/{name}-network/subnets/{name}-subnet]
->
-> # Application terminée ! Ressources : 1 ajoutée, 0 modifiée, 0 détruite.
-> Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
...
#------------------------------------------------
# ooo
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://portal.azure.com/#home
...
# affiche 
...
-> menu -> reseaux virtuels
-> nom -> {name}-network
-> parametres -> sous-reseaux -> actualiser
-> nom -> {name}-subnet
...
#------------------------------------------------
# end
#------------------------------------------------
