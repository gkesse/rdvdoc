#------------------------------------------------
### references raspberry-pi-readydev
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
### installer ubuntu sous raspberry-pi-4
#------------------------------------------------
...
# installe ubuntu
...
-> raspberry-pi-imager
...
-> appareil
-> raspberry-pi-4
-> suivant
...
-> os
-> other general-purpose os
-> ubuntu
-> ubuntu desktop 26.04 {64-bit}
-> suivant
...
-> cocher -> exclure les disques systeme
...
-> mass storage device usb device
-> suivant
...
# demarre la gravure de ubuntu
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
# configure ubuntu
...
-> insererer la carte micro-sd dans la raspberry-pi-4
-> demarrer la raspberry-pi-4
...
-> langue -> francais
-> suivant
...
-> disposition du clavier -> english (us)
-> suivant
...
-> reseau wifi -> {Freebox-iReadyDev}
-> password -> {iC***}
-> Connect
...
-> nom complet -> {Gerard KESSE}
-> nom utilisateur -> {admins}
-> ordinateur -> {pi-readydev}
-> suivant
...
-> mot de passe -> {readydev***}
-> confirmation -> {readydev***}
-> suivant
...
-> services de geolocalisation
-> cocher -> services de geolocalisation
-> suivant
...
-> help improve ubuntu
-> cocher -> share system data with the ubuntu team
-> suivant
...
-> fuseau horaire -> paris, france
-> suivant
...
-> commencer a utiliser ubuntu
...
#------------------------------------------------
### recuperer l'adresse ip de la machine sous ubuntu
#------------------------------------------------
...
# recupere l'adresse ip de la machine
...
-> ubuntu
-> {menu}
-> terminal
...
ip a s
...
<< _EOF_
3: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether d8:3a:dd:15:b1:2d brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.3/24 brd 192.168.1.255 scope global dynamic noprefixroute wlan0
_EOF_
...
#------------------------------------------------
### installe le serveur ssh sous ubuntu
#------------------------------------------------
...
# installe le serveur ssh
...
-> ubuntu
-> {menu}
-> terminal
...
sudo apt update
sudo apt upgrade
...
sudo apt install openssh-server
...
sudo systemctl status ssh
...
<< _EOF_
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/usr/lib/systemd/system/ssh.service; disabled; preset: enabled)
     Active: active (running) since Tue 2026-05-19 22:25:21 CEST; 6min ago
 Invocation: 1f0da22cb0424cbdaff081ef8f657929
TriggeredBy: ● ssh.socket
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 33026 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 33029 (sshd)
      Tasks: 1 (limit: 8781)
     Memory: 5.6M (peak: 23.1M)
        CPU: 666ms
     CGroup: /system.slice/ssh.service
             └─33029 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"
_EOF_
...
#------------------------------------------------
### afficher l'adresse ip sous free-connect
#------------------------------------------------
...
# affiche l'adresse ip
...
-> free-connect
-> appareils
-> {ubuntu-raspberry-pi}
-> autres informations
-> adresse ipv4 -> {192.168.1.84}
...
#------------------------------------------------
### modifier le nom de la machine sous free-connect
#------------------------------------------------
...
# modifie le nom de la machine
...
-> free-connect
-> appareils
-> {ubuntu-raspberry-pi}
-> identifier cet appareil
-> j_ai identifie cet appareil
-> oui, je souhaite le personnaliser
-> nom appareil -> {pi-readydev}
-> valider
...
#------------------------------------------------
### creer un bail statique sous freebox-connect
#------------------------------------------------
-> freebox-connect
-> reseau
-> {...}
-> parametres reseau avances
-> dhcp
-> ajouter un bail statique
-> selectionner dans la liste d appareils
-> {pi-readydev}
-> adresse ip -> {192.168.1.84}
-> valider
#------------------------------------------------
### realiser un ping sous windows
#------------------------------------------------
...
# realise ping un ping
...
-> windows -> cmd
...
ping 192.168.1.3
...
<< _EOF_
nvoi d'une requête 'Ping'  192.168.1.3 avec 32 octets de données :
Réponse de 192.168.1.3 : octets=32 temps=1098 ms TTL=64
Réponse de 192.168.1.3 : octets=32 temps=3 ms TTL=64
Réponse de 192.168.1.3 : octets=32 temps=32 ms TTL=64
Réponse de 192.168.1.3 : octets=32 temps=27 ms TTL=64

Statistiques Ping pour 192.168.1.3:
    Paquets : envoyés = 4, reçus = 4, perdus = 0 (perte 0%),
Durée approximative des boucles en millisecondes :
    Minimum = 3ms, Maximum = 1098ms, Moyenne = 290ms
_EOF_
...
#------------------------------------------------
### creer une connexion ssh sous mobaxterm
#------------------------------------------------
...
# configure une connexion ssh
...
-> mobaxterm
-> session
-> ssh
-> remote host -> 192.168.1.3
-> cocher -> specify username -> admins
...
# configure le nom de connexion ssh
...
-> bookmark settings
-> session name -> pi-readydev-local (admins)
...
# configure x11 forwarding
...
-> advanced ssh settings
...
-> cocher -> x11 forwarding
-> ssh-browser type -> sftp protocol
...
-> ok
...
# demarre la connexion ssh
...
-> pi-readydev-local {admins}
-> accept and save as additional hostkey {keep the existing ones}
...
-> admins@192.168.1.3 password: -> {readydev***}
-> do you want to update password for admins@192.168.1.3 -> yes
...
#------------------------------------------------
### creer une redirection de port sous freebox-os
#------------------------------------------------
...
# se connecte au compte freebox-os
...
-> https://mafreebox.freebox.fr/login.php
...
-> parametres avances
-> continuer vers le site mafreebox.freebox.fr (dangereux)
...
-> authentification
-> mot de passe -> {freebox***}
-> connexion
...
# cree une redirection de port sous freebox-os
...
-> freebox-os
-> parametres
-> parametres de la freebox
...
-> gestion des ports
-> ajouter une redirection
...
-> ip destination -> pi-readydev {192.168.1.3}
-> cocher -> redirection active
-> ip source -> toutes
-> protocoles -> tcp
-> port de debut -> 80
-> port de fin -> 80
-> port de destination -> 80
-> commantaire -> pi-readydev-http-80
-> sauvegarder
...
-> ok
...
#------------------------------------------------
### afficher l'adresse ip publique sous google-chrome
#------------------------------------------------
...
# affiche l'adresse ip publique
...
-> https://www.mon-ip.com/
...
-> adresse ipv4 -> {82.65.XXX.XXX}
...
#------------------------------------------------
### renouveller un service sous ovh
#------------------------------------------------
...
# se connecte au compte ovh
...
-> https://auth.eu.ovhcloud.com/signin/
...
-> email ou identifiant -> {tiaka...}
-> mot de passe -> {ovh***}
-> se connecter
...
-> code sms -> {123456}
-> valider
...
# renouvelle un service
...
-> tableau de bord
-> {readydev.ovh}
-> {...}
-> renouveller le service
...
-> cocher -> 1 an -> 2,99 € HT soit 3,58 € TTC
...
-> valider
...
-> continuer
...
-> cocher -> Et je coche la case suivante
-> valider
...
-> continuer
...
-> suivant
-> suivant
...
-> vos modes de paiement
-> {carte-bancaire-par-defaut}
-> code de securite -> {123}
-> payer
...
#------------------------------------------------
### realiser une redirection de port sous ovh
#------------------------------------------------
...
# realise une redirection de port
...
-> web cloud
-> noms de domaine
-> {readydev.ovh}
...
-> redirection
-> ajouter une redirection
...
#------------------------------------------------
### installer git sous ubuntu
#------------------------------------------------
...
# installe git
...
sudo apt install git
...
# telecharge le projet readydev
...
cd
mkdir -p devs/app
cd devs/app
...
git clone https://github.com/gkesse/ReadyDev.git readydev
...
#------------------------------------------------
### installer xmind
#------------------------------------------------
...
# telecharge xmind
...
-> https://xmind.com/download
...
-> download xmind
...
# installe xmind
...
-> Xmind-for-Windows-x64bit-26.03.04129-202605200221.exe
...
-> nouveautes
-> continuer
-> envoyer automatiquement les statistiques d_utilisation (aucune donnee privee)
-> approuver
-> connectez-vous avec google
-> {email@gmail.com}
-> continuer
...
# cree une carte mentale
...
-> nouvelle carte
-> carte mentale
-> creer
...
#------------------------------------------------
### supprimer un gros fichier sous git
#------------------------------------------------
...
# reproduit l'erreur git sur le gros fichier
...
git push
...
<< _EOF_
Enumerating objects: 32, done.
Counting objects: 100% (32/32), done.
Delta compression using up to 16 threads
Compressing objects: 100% (20/20), done.
Writing objects: 100% (28/28), 528.82 MiB | 17.24 MiB/s, done.
Total 28 (delta 10), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (10/10), completed with 3 local objects.
...
remote: error: Trace: 065e37b1b0a5edf6043fbd70cde8f69384eedb720e0f6d3203a24c5f65ecb076
remote: error: See https://gh.io/lfs for more information.
remote: error: File youtube/res/Introduction to Conan 2 - The Best C++ Package Manager/doc.pptx is 556.02 MB; this exceeds GitHub's file size limit of 100.00 MB
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
...
To https://github.com/gkesse/rdvdoc.git
 ! [remote rejected] main -> main (pre-receive hook declined)
...
error: failed to push some refs to 'https://github.com/gkesse/rdvdoc.git'
_EOF_
...
# supprime le gros fichier de l'index git
...
git rm "youtube/res/Introduction to Conan 2 - The Best C++ Package Manager/doc.pptx"
git rm --cached "youtube/res/Introduction to Conan 2 - The Best C++ Package Manager/doc.pptx"
git filter-branch -f --tree-filter 'rm -f "youtube/res/Introduction to Conan 2 - The Best C++ Package Manager/doc.pptx"' HEAD --all
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch "youtube/res/Introduction to Conan 2 - The Best C++ Package Manager/doc.pptx"'
git pull origin main --allow-unrelated-histories
git filter-branch -f --index-filter "youtube/res/Introduction to Conan 2 - The Best C++ Package Manager/doc.pptx"
...
#------------------------------------------------
### end
#------------------------------------------------
