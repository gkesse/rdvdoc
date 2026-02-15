#------------------------------------------------
# references freebox-os
#------------------------------------------------
# modifier le mot de passe
#------------------------------------------------
-> https://mafreebox.freebox.fr/
-> menu -> connexion -> j ai perdu mon mot de passe
-> cela genere une demande d autorisation sur la freebox
-> activer l autorisation sur la freebox
...
-> freebox -> autoriser l application ? -> oui
-> cela genere une demande de modification du mot de passe dans le navigateur
...
-> nouveau mot de passe -> {password} -> changer le mot de passe
#------------------------------------------------
# configurer l'acces a distance
#------------------------------------------------
-> https://mafreebox.freebox.fr/
-> menu -> parametres -> parametres de la freebox
-> mode avance -> configuration
...
-> ping
-> cocher -> reponse au ping
...
-> acces a freebox os
-> cocher -> activer l authentification par mot de passe
-> port acces distant {http} -> {numero-port-http}
-> port acces distant securise {https} -> {numero-port-https}
#------------------------------------------------
# configurer un profil
#------------------------------------------------
-> https://mafreebox.freebox.fr/
-> menu -> parametres -> profils
-> ajouter un profil
...
-> profil
-> nom -> {username}
-> icone du profil -> {icone-profil}
...
-> appareils associés
-> appareils connectes -> {liste-appareils-connectes}
...
-> ok
#------------------------------------------------
# ajouter un appareil a un profil
#------------------------------------------------
-> https://mafreebox.freebox.fr/
-> menu -> parametres -> profils
-> {nom-profil} -> details -> modifier
...
-> appareils associés
-> appareils connectes -> cocher -> {nom-appareil}
...
-> ok
#------------------------------------------------
# determiner l'adresse ip d'un appareil
#------------------------------------------------
-> https://mafreebox.freebox.fr/
-> menu -> parametres -> peripheriques reseau
-> reseau -> reseau local
-> {nom-appareil} -> clic droit -> proprietes
...
-> proprietes
-> nom principal -> {nom-appareil}
-> type de peripherique -> {type-peripherique}
-> adresse mac -> {adresse-mac}
...
-> connectivite
-> adresse -> {adresse-ip}
...
-> ok
#------------------------------------------------
