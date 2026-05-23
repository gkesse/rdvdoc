#------------------------------------------------
### references raspberry-pi-readysrv
#------------------------------------------------
### installer raspberry-pi-imager
#------------------------------------------------
...
# telecharge raspberry-pi-imager
...
-> https://www.raspberrypi.com/software/
...
-> download for windows
...
# installe raspberry-pi-imager
...
-> imager_2.7.0.exe
...
-> langue -> francais
-> ok
-> suivant
-> cocher -> je comprends et j_accepte les termes du contrat de licence
-> suivant
-> cocher -> creer une icone sur le bureau
-> suivant
-> installer
-> cocher -> executer raspberry-pi-imager
-> terminer
...
#------------------------------------------------
### installer raspberry-pi-4
#------------------------------------------------
...
# installe raspberry-pi-4
...
-> raspberry-pi-imager
...
-> appareil
-> raspberry-pi-4
-> suivant
...
-> os
-> raspberry-pi-os-{64-bit}
-> suivant
...
-> cocher -> exclure les disques systeme
...
-> mass storage device usb device
-> suivant
...
-> personnalisation
-> nom d_hote -> pi-readysrv
-> suivant
...
-> ville capitale -> paris {france}
-> fuseau horaire -> europe/paris
-> type de clavier -> fr
-> suivant
...
-> nom d_ulisateur -> admins
-> mot de passe -> readysrv***
-> confirmation -> readysrv***
-> suivant
...
# configure la connexion wifi
...
-> reseau securise
-> ssid -> Freebox-iReadyDEV
-> mot de passe -> iC***
-> confirmation -> iC***
-> suivant
...
# active la connexion ssh
...
-> cocher -> activer ssh
-> mecanisme d_authentification -> utiliser un mot de passe pour l_authentification
-> suivant
...
# active raspberry-pi-connect
...
-> cocher -> activer raspberry-pi-connect
-> ouvrir raspberry-pi-connect
-> sign in as gkesse
-> create auth key and launch raspberry-pi-imager
...
-> jeton recu du navigateur -> rpuak_xxx
-> suivant
...
# demarre la gravure de raspberry-pi-4
...
-> ecriture
-> ecrire
...
-> je comprends effacer et ecrire
...
-> terminer
...
-> ejecter la carte micro-sd
...
#------------------------------------------------
### end
#------------------------------------------------
