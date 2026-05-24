#------------------------------------------------
# references azure
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
# se connecter a votre compte azure
# recuperer l'identifiant de votre abonnement
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
# ouvrir un navigateur web
# se connecter a votre compte azure
# afficher un groupe de ressources
#------------------------------------------------
...
# ouvre le lien azure
...
-> https://portal.azure.com/#home
...
# ouvre le menu abonnements
...
-> menu -> groupe de ressources -> actualiser
...
-> nom -> {name}-resources
-> abonnement -> Azure subscription 1
-> emplacement -> West Europe
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
# end
#------------------------------------------------
