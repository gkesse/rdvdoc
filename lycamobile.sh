#------------------------------------------------
# references lycamobile
#------------------------------------------------
# activer une carte sim
#------------------------------------------------
-> eteindre votre telephone
-> inserer la carte sim dans votre telephone
-> allumer votre telephone
-> composer la suite {*132#} pour afficher le numero de telephone
-> copier le numero de telephone {33.6.XX.XX.XX.XX}
...
-> https://www.lycamobile.fr/fr/
-> menu -> forfaits prepayes -> enregistrer ma sim
-> numero lyca mobile -> {33.6.XX.XX.XX.XX}
-> iccid {4 derniers chiffres uniquement} -> {1234}
-> continuer
...
-> vos informations d identite
-> si no -> 1
-> numero mobile -> {33.6.XX.XX.XX.XX}
-> iccid -> {1234}
...
-> coordonnees
-> titre -> m
-> prenom -> {prenom}
-> nom -> {nom}
-> votre adresse email -> {email}
...
-> information d identite
-> type de document d identite -> carte de sejour
-> numero du document d identite -> {XX.XX.XX.XX.XX}
-> date de naissance -> {JJ/MM/AAAA}
...
-> adresse
-> code postal -> {XXXXX}
-> numero et nom de la rue -> {adresse-de-domiciliation}
-> trouver l adresse
-> selectionner l adresse -> {adresse-de-domiciliation}
...
-> cocher -> je confirme l exactitude des renseignements donnes a lyca mobile...
-> confirmer et soumettre
...
-> cela vous envoye une confirmation d enregistrement dans votre boite de messagerie electronique
-> acceder a votre boite de messagerie electronique
-> copier votre numero et votre mot de passe lycamobile
#------------------------------------------------
# se connecter a son compte lycamobile
#------------------------------------------------
-> https://www.lycamobile.fr/fr/
-> profil -> mon compte lyca
-> numero lyca mobile -> {6.XX.XX.XX.XX}
-> se connecter
-> connexion par mot de passe
-> mot de passe -> {password}
-> "confirmer & continuer"
#------------------------------------------------
# modifier son mot de passe
#------------------------------------------------
-> https://www.lycamobile.fr/fr/
-> se connecter a son compte lycamobile
-> menu -> gerer votre compte -> mot de passe
-> mot de passe actuel -> {old-password}
-> saisir un nouveau mot de passe -> {new-password}
-> confirmer mon mot de passe -> {new-password}
-> update
#------------------------------------------------
# recharger une carte sim
# a partir d'un code de rechargement pappier
#------------------------------------------------
-> allumer votre telephone
-> composer la suite -> *131*{code-rechargement}#
-> appeler
#------------------------------------------------
