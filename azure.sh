#------------------------------------------------
# references azure
#------------------------------------------------
# ouvrir un navigateur web
# telecharger l'installeur azure cli
# installer azure cli
#------------------------------------------------
# ouvre le lien
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
#------------------------------------------------
# ouvrir un navigateur web
# se connecter a compte azure
#------------------------------------------------
# ouvre le lien
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
-> aide a proteger lvotre compte
-> ignorer pour le moment
...
-> choisir ou enregistrer votre cle d acces pour {login.microsoft.com}
-> windows hello ou cle de securite externe
-> continuer
...
-> si un probleme survient
-> reprendre le processus et proceder autrement
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
#------------------------------------------------
# ouvrir un navigateur web
# se connecter votre compte azure
#------------------------------------------------
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
#------------------------------------------------
# se connecter a votre compte azure
# modifier votre photo de profil
#------------------------------------------------
-> photo -> changer de photo
-> ajouter une photo -> {photo}
-> enregistrer -> fermer
#------------------------------------------------
# ouvrir vscode
# ouvrir un terminal sous vscode
# se connecter a votre compte azure
#------------------------------------------------
# se connecte a azure cli
...
az login
...
-> selctionner votre compte microsoft
-> {email@outlook.fr}
-> continuer
...
-> si votre compte azure n existe pas
-> un message d erreur s affiche
...
-> No subscriptions found for {email@outlook.fr}.
...
-> si votre compte azure existe
-> un message de succes s affiche
#------------------------------------------------
# ouvrir vscode
# ouvrir un terminal sous vscode
# se connecter a votre compte azure
#------------------------------------------------
az login --use-device-code
...
-> To sign in, use a web browser to open the page
-> https://microsoft.com/devicelogin
-> and enter the code {C9YXBJK7F} to authenticate.
...
-> https://microsoft.com/devicelogin
-> code -> {C9YXBJK7F}
-> suivant
-> choisir un compte
-> {email@outlook.fr} {connecte}
-> continuer
...
-> si votre compte azure n existe pas
-> un message d erreur s affiche
...
-> No subscriptions found for {email@outlook.fr}.
...
#------------------------------------------------
# end
#------------------------------------------------
